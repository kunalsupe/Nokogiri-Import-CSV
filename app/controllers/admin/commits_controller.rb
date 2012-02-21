class Admin::CommitsController < ApplicationController
  require_role :admin
  layout 'admin'
  
  def index
    # Render index.html.erb
  end
  
end