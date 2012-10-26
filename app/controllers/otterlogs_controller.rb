class OtterlogsController < ApplicationController
  respond_to "json"
  
  def index
    respond_with Otterlog.all
  end

  def get
    respond_with Otterlog.find(params[:id])
  end

  def put
    if @otterlog = Otterlog.find_by_id(params[:id])
      @Otterlog.update_attributes params[:otterlog]
    else
      @otterlog = Otterlog.create params[:otterlog]
    end
    respond_with @otterlog
  end

end
