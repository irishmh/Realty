class PropertyOwnersController < ApplicationController
  # GET /property_owners
  # GET /property_owners.xml
  def index
    @property_owners = PropertyOwner.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @property_owners }
    end
  end

  # GET /property_owners/1
  # GET /property_owners/1.xml
  def show
    @property_owner = PropertyOwner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @property_owner }
    end
  end

  # GET /property_owners/new
  # GET /property_owners/new.xml
  def new
    @property_owner = PropertyOwner.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @property_owner }
    end
  end

  # GET /property_owners/1/edit
  def edit
    @property_owner = PropertyOwner.find(params[:id])
  end

  # POST /property_owners
  # POST /property_owners.xml
  def create
    @property_owner = PropertyOwner.new(params[:property_owner])

    respond_to do |format|
      if @property_owner.save
        flash[:notice] = 'PropertyOwner was successfully created.'
        format.html { redirect_to(@property_owner) }
        format.xml  { render :xml => @property_owner, :status => :created, :location => @property_owner }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @property_owner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /property_owners/1
  # PUT /property_owners/1.xml
  def update
    @property_owner = PropertyOwner.find(params[:id])

    respond_to do |format|
      if @property_owner.update_attributes(params[:property_owner])
        flash[:notice] = 'PropertyOwner was successfully updated.'
        format.html { redirect_to(@property_owner) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @property_owner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /property_owners/1
  # DELETE /property_owners/1.xml
  def destroy
    @property_owner = PropertyOwner.find(params[:id])
    @property_owner.destroy

    respond_to do |format|
      format.html { redirect_to(property_owners_url) }
      format.xml  { head :ok }
    end
  end
end
