class CommonCoresController < ApplicationController
  # GET /common_cores
  # GET /common_cores.json
  def index
    @common_cores = CommonCore.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @common_cores }
    end
  end

  # GET /common_cores/1
  # GET /common_cores/1.json
  def show
    @common_core = CommonCore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @common_core }
    end
  end

  # GET /common_cores/new
  # GET /common_cores/new.json
  def new
    @common_core = CommonCore.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @common_core }
    end
  end

  # GET /common_cores/1/edit
  def edit
    @common_core = CommonCore.find(params[:id])
  end

  # POST /common_cores
  # POST /common_cores.json
  def create
    @common_core = CommonCore.new(params[:common_core])

    respond_to do |format|
      if @common_core.save
        format.html { redirect_to @common_core, :notice => 'Common core was successfully created.' }
        format.json { render :json => @common_core, :status => :created, :location => @common_core }
      else
        format.html { render :action => "new" }
        format.json { render :json => @common_core.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /common_cores/1
  # PUT /common_cores/1.json
  def update
    @common_core = CommonCore.find(params[:id])

    respond_to do |format|
      if @common_core.update_attributes(params[:common_core])
        format.html { redirect_to @common_core, :notice => 'Common core was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @common_core.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /common_cores/1
  # DELETE /common_cores/1.json
  def destroy
    @common_core = CommonCore.find(params[:id])
    @common_core.destroy

    respond_to do |format|
      format.html { redirect_to common_cores_url }
      format.json { head :no_content }
    end
  end
end
