class DemoContactsController < ApplicationController
  # GET /demo_contacts
  # GET /demo_contacts.xml
  def index
    @demo_contacts = DemoContact.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @demo_contacts }
    end
  end

  # GET /demo_contacts/1
  # GET /demo_contacts/1.xml
  def show
    @demo_contact = DemoContact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @demo_contact }
    end
  end

  # GET /demo_contacts/new
  # GET /demo_contacts/new.xml
  def new
    @demo_contact = DemoContact.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @demo_contact }
    end
  end

  # GET /demo_contacts/1/edit
  def edit
    @demo_contact = DemoContact.find(params[:id])
  end

  # POST /demo_contacts
  # POST /demo_contacts.xml
  def create
    @demo_contact = DemoContact.new(params[:demo_contact])

    respond_to do |format|
      if @demo_contact.save
        flash[:notice] = 'DemoContact was successfully created.'
        format.html { redirect_to(@demo_contact) }
        format.xml  { render :xml => @demo_contact, :status => :created, :location => @demo_contact }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @demo_contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /demo_contacts/1
  # PUT /demo_contacts/1.xml
  def update
    @demo_contact = DemoContact.find(params[:id])

    respond_to do |format|
      if @demo_contact.update_attributes(params[:demo_contact])
        flash[:notice] = 'DemoContact was successfully updated.'
        format.html { redirect_to(@demo_contact) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @demo_contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /demo_contacts/1
  # DELETE /demo_contacts/1.xml
  def destroy
    @demo_contact = DemoContact.find(params[:id])
    @demo_contact.destroy

    respond_to do |format|
      format.html { redirect_to(demo_contacts_url) }
      format.xml  { head :ok }
    end
  end
end
