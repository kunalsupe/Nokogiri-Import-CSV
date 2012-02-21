# This controller handles the login/logout function of the site.  
require 'net/http'
    require 'uri' 
    require 'open-uri'
    require 'nokogiri'
class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => :create
  
  layout 'login'
  
  def new
  end
          
# Login to API through nokogiri

  def create
     a = "http://IP-adress/billing/api/login?u=#{params[:session][:email]}&p=#{params[:session][:password]}"   
     
     # Nokogiri Gem is used to Catch the XML response from the MOR & call the appropriate action on the received status
     
      doc = Nokogiri::XML(open(a))
         doc.xpath('/action/status').each do |link|  
        @abc = link.content
         end 
        
        # Condition to check whether the received response is 'Ok' or 'Failed' 
        
        if @abc == 'failed'
               
                flash[:notice] = "Invalid Username/Password" # If condition is failed redirect to root page
                 redirect_to '/' 
               else
               		# if condition is 'ok' redirect to MOR user dashboard
               		
                   redirect_to "http:/IP-address/billing/api/login?u=#{params[:session][:email]}&p=#{params[:session][:password]}"
             end
  end

  def destroy
    logout_killing_session!
    flash[:notice] = "You have been logged out."
    redirect_back_or_default(root_path)
  end

  def open_id_authentication
    authenticate_with_open_id(params[:openid_url], :required => [:nickname, :email]) do |result, identity_url|
      if result.successful? && self.current_user = User.find_by_identity_url(identity_url)
        successful_login
      else
        flash[:error] = result.message || "Sorry no user with that identity URL exists"
        @rememer_me = params[:remember_me]
        render :action => :new
      end
    end
  end
  
  protected

  def password_authentication
    user = User.authenticate(params[:login], params[:password])
    if user
      self.current_user = user
      successful_login
    else
      note_failed_signin
      @login = params[:login]
      @remember_me = params[:remember_me]
      render :action => :new
    end
  end
  
  def successful_login
    new_cookie_flag = (params[:remember_me] == "1")
    handle_remember_cookie! new_cookie_flag
    redirect_back_or_default(root_path)
    flash[:notice] = "Logged in successfully"
  end

  def note_failed_signin
    flash[:error] = "Couldn't log you in as '#{params[:login]}'"
    logger.warn "Failed login for '#{params[:login]}' from #{request.remote_ip} at #{Time.now.utc}"
  end
end
