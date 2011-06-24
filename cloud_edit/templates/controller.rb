class DocumentsController < ApplicationController
  respond_to :html, :only => :index
  respond_to :json
  def index
    respond_with Document.limit(50).order('created_at desc')  # for the purposes of the demo, just get the last 50 docs
  end
  
  def show
    respond_with Document.find(params[:id])
  end
  
  def create
    respond_with Document.create!(params)
  end
  
  def update
    document = Document.find(params[:id])
    document.update_attributes! params
    respond_with document
  end
end

