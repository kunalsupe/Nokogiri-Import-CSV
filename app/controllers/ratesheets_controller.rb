require 'csv'
class RatesheetsController < ApplicationController
  # GET /ratesheets
  # GET /ratesheets.xml
  def index
    @ratesheets = Ratesheet.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ratesheets }
    end
  end     
  
  # Importing CSV Sample              
  
  def csv_import
    
     CSV.foreach(params[:ratesheet]) do |row|
        # use row here...
        # For example, if you had users in a CSV file like "username,email" you could do:
        Ratesheet.create(:prefix => row[0], :city => row[1], :rate => row[2], :country_id => row[3])
       end
         
   
  end
  
  # GET /ratesheets/1
  # GET /ratesheets/1.xml
  def show
    @ratesheet = Ratesheet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ratesheet }
    end
  end

  # GET /ratesheets/new
  # GET /ratesheets/new.xml
  def new
    @ratesheet = Ratesheet.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ratesheet }
    end
  end

  # GET /ratesheets/1/edit
  def edit
    @ratesheet = Ratesheet.find(params[:id])
  end

  # POST /ratesheets
  #  # Importing actual CSV file 
  
  def create
    @ratesheet = Ratesheet.new(params[:ratesheet])
        
       # @result = CSV.open(params[:ratesheet][:file], 'r', ?,, ?\r)
        #CSV::Reader.parse(params[:ratesheet][:file]) do |row|
        # use row here...
        # For example, if you had users in a CSV file like "username,email" you could do:
       # Ratesheet.create(:prefix => row[0], :city => row[1], :rate => row[2], :country_id => row[3])
       #end 
       @parsed_file = CSV::Reader.parse(params[:ratesheet][:file])
       n=0
            @parsed_file.each  do |row|
            c = Ratesheet.new
            c.prefix = row[0]
            c.city = row[1]
            c.rate = row[2]
            c.country_id = row[3]
            if c.save
               n=n+1
               GC.start if n%50==0
            end
            flash.now[:message]="CSV Import Successful,  #{n} new records added to data base"
         end                              
         
    respond_to do |format|
      if @ratesheet.save
        format.html { redirect_to(@ratesheet, :notice => 'Ratesheet was successfully created.') }
        format.xml  { render :xml => @ratesheet, :status => :created, :location => @ratesheet }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ratesheet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ratesheets/1
  # PUT /ratesheets/1.xml
  def update
    @ratesheet = Ratesheet.find(params[:id])

    respond_to do |format|
      if @ratesheet.update_attributes(params[:ratesheet])
        format.html { redirect_to(@ratesheet, :notice => 'Ratesheet was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ratesheet.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ratesheets/1
  # DELETE /ratesheets/1.xml
  def destroy
    @ratesheet = Ratesheet.find(params[:id])
    @ratesheet.destroy

    respond_to do |format|
      format.html { redirect_to(ratesheets_url) }
      format.xml  { head :ok }
    end
  end
end
                      

