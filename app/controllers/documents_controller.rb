class DocumentsController < ApplicationController
  def index
    @documents = Document.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @documents }
    end
  end

  # GET /documents/1
  # GET /documents/1.json
  def show
    @document = Document.find(params[:id])
    @hide_notification = true

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @document }
    end
  end
end
