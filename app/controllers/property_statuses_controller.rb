class PropertyStatusesController < ApplicationController
  # GET /property_statuses
  # GET /property_statuses.xml
  def index
    @property_statuses = PropertyStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @property_statuses }
    end
  end

  # GET /property_statuses/1
  # GET /property_statuses/1.xml
  def show
    @property_status = PropertyStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @property_status }
    end
  end

  # GET /property_statuses/new
  # GET /property_statuses/new.xml
  def new
    @property_status = PropertyStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @property_status }
    end
  end

  # GET /property_statuses/1/edit
  def edit
    @property_status = PropertyStatus.find(params[:id])
  end

  # POST /property_statuses
  # POST /property_statuses.xml
  def create
    @property_status = PropertyStatus.new(params[:property_status])

    respond_to do |format|
      if @property_status.save
        flash[:notice] = 'PropertyStatus was successfully created.'
        format.html { redirect_to(@property_status) }
        format.xml  { render :xml => @property_status, :status => :created, :location => @property_status }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @property_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /property_statuses/1
  # PUT /property_statuses/1.xml
  def update
    @property_status = PropertyStatus.find(params[:id])

    respond_to do |format|
      if @property_status.update_attributes(params[:property_status])
        flash[:notice] = 'PropertyStatus was successfully updated.'
        format.html { redirect_to(@property_status) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @property_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /property_statuses/1
  # DELETE /property_statuses/1.xml
  def destroy
    @property_status = PropertyStatus.find(params[:id])
    @property_status.destroy

    respond_to do |format|
      format.html { redirect_to(property_statuses_url) }
      format.xml  { head :ok }
    end
  end
end
