class PropertyDetailsController < ApplicationController
  # GET /property_details
  # GET /property_details.xml
  def index
    @property_details = PropertyDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @property_details }
    end
  end

  # GET /property_details/1
  # GET /property_details/1.xml
  def show
    @property_detail = PropertyDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @property_detail }
    end
  end

  # GET /property_details/new
  # GET /property_details/new.xml
  def new
    @property_detail = PropertyDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @property_detail }
    end
  end

  # GET /property_details/1/edit
  def edit
    @property_detail = PropertyDetail.find(params[:id])
  end

  # POST /property_details
  # POST /property_details.xml
  def create
    @property_detail = PropertyDetail.new(params[:property_detail])

    respond_to do |format|
      if @property_detail.save
        flash[:notice] = 'PropertyDetail was successfully created.'
        format.html { redirect_to(@property_detail) }
        format.xml  { render :xml => @property_detail, :status => :created, :location => @property_detail }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @property_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /property_details/1
  # PUT /property_details/1.xml
  def update
    @property_detail = PropertyDetail.find(params[:id])

    respond_to do |format|
      if @property_detail.update_attributes(params[:property_detail])
        flash[:notice] = 'PropertyDetail was successfully updated.'
        format.html { redirect_to(@property_detail) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @property_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /property_details/1
  # DELETE /property_details/1.xml
  def destroy
    @property_detail = PropertyDetail.find(params[:id])
    @property_detail.destroy

    respond_to do |format|
      format.html { redirect_to(property_details_url) }
      format.xml  { head :ok }
    end
  end
end
