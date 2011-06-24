class <%= controller_class_name %>Controller < ApplicationController
  respond_to :html, :only => :index
  respond_to :json
  def index
    respond_with <%= class_name %>.limit(50).order('created_at desc')  # for the purposes of the demo, just get the last 50 docs
  end

  def show
    respond_with <%= class_name %>.find(params[:id])
  end

  def create
    respond_with <%= class_name %>.create!(params)
  end

  def update
    <%= name %> = <%= class_name %>.find(params[:id])
    <%= name %>.update_attributes! params
    respond_with <%= name %>
  end
end

