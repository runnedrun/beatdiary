class BeatsController < ApplicationController
  # GET /beats
  # GET /beats.xml
  def index
    @beats = Beat.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @beats }
    end
  end

  # GET /beats/1
  # GET /beats/1.xml
  def show
    @beat = Beat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @beat }
    end
  end

  # GET /beats/new
  # GET /beats/new.xml
  def new
    @beat = Beat.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @beat }
    end
  end

  # GET /beats/1/edit
  def edit
    @beat = Beat.find(params[:id])
  end

  # POST /beats
  # POST /beats.xml
  def create
    @beat = Beat.new(params[:beat])

    respond_to do |format|
      if @beat.save
        format.html { redirect_to(@beat, :notice => 'Beat was successfully created.') }
        format.xml  { render :xml => @beat, :status => :created, :location => @beat }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @beat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /beats/1
  # PUT /beats/1.xml
  def update
    @beat = Beat.find(params[:id])

    respond_to do |format|
      if @beat.update_attributes(params[:beat])
        format.html { redirect_to(@beat, :notice => 'Beat was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @beat.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /beats/1
  # DELETE /beats/1.xml
  def destroy
    @beat = Beat.find(params[:id])
    @beat.destroy

    respond_to do |format|
      format.html { redirect_to(beats_url) }
      format.xml  { head :ok }
    end
  end
end
