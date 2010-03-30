class PropertyPricesController < ApplicationController
  # GET /property_prices
  # GET /property_prices.xml
  def index
    @property_prices = PropertyPrice.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @property_prices }
    end
  end

  # GET /property_prices/1
  # GET /property_prices/1.xml
  def show
    @property_price = PropertyPrice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @property_price }
    end
  end

  # GET /property_prices/new
  # GET /property_prices/new.xml
  def new
    @property_price = PropertyPrice.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @property_price }
    end
  end

  # GET /property_prices/1/edit
  def edit
    @property_price = PropertyPrice.find(params[:id])
  end

  # POST /property_prices
  # POST /property_prices.xml
  def create
    @property_price = PropertyPrice.new(params[:property_price])

    respond_to do |format|
      if @property_price.save
        flash[:notice] = 'PropertyPrice was successfully created.'
        format.html { redirect_to(@property_price) }
        format.xml  { render :xml => @property_price, :status => :created, :location => @property_price }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @property_price.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /property_prices/1
  # PUT /property_prices/1.xml
  def update
    @property_price = PropertyPrice.find(params[:id])

    respond_to do |format|
      if @property_price.update_attributes(params[:property_price])
        flash[:notice] = 'PropertyPrice was successfully updated.'
        format.html { redirect_to(@property_price) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @property_price.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /property_prices/1
  # DELETE /property_prices/1.xml
  def destroy
    @property_price = PropertyPrice.find(params[:id])
    @property_price.destroy

    respond_to do |format|
      format.html { redirect_to(property_prices_url) }
      format.xml  { head :ok }
    end
  end
end
