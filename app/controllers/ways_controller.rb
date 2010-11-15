class WaysController < ApplicationController
  # GET /ways
  # GET /ways.xml
  def index
    @ways = Way.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ways }
    end
  end

  # GET /ways/1
  # GET /ways/1.xml
  def show
    @way = Way.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @way }
    end
  end

  # GET /ways/new
  # GET /ways/new.xml
  def new
    @way = Way.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @way }
    end
  end

  # GET /ways/1/edit
  def edit
    @way = Way.find(params[:id])
  end

  # POST /ways
  # POST /ways.xml
  def create
    @way = Way.new(params[:way])

    respond_to do |format|
      if @way.save
        format.html { redirect_to(@way, :notice => 'Way was successfully created.') }
        format.xml  { render :xml => @way, :status => :created, :location => @way }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @way.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ways/1
  # PUT /ways/1.xml
  def update
    @way = Way.find(params[:id])

    respond_to do |format|
      if @way.update_attributes(params[:way])
        format.html { redirect_to(@way, :notice => 'Way was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @way.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ways/1
  # DELETE /ways/1.xml
  def destroy
    @way = Way.find(params[:id])
    @way.destroy

    respond_to do |format|
      format.html { redirect_to(ways_url) }
      format.xml  { head :ok }
    end
  end
end
