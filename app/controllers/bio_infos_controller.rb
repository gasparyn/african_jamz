class BioInfosController < ApplicationController
  # GET /bio_infos
  # GET /bio_infos.json
  def index
    @bio_infos = BioInfo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @bio_infos }
    end
  end

  # GET /bio_infos/1
  # GET /bio_infos/1.json
  def show
    @bio_info = BioInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @bio_info }
    end
  end

  # GET /bio_infos/new
  # GET /bio_infos/new.json
  def new
    @bio_info = BioInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @bio_info }
    end
  end

  # GET /bio_infos/1/edit
  def edit
    @bio_info = BioInfo.find(params[:id])
  end

  # POST /bio_infos
  # POST /bio_infos.json
  def create
    @bio_info = BioInfo.new(params[:bio_info])

    respond_to do |format|
      if @bio_info.save
        format.html { redirect_to @bio_info, :notice => 'Bio info was successfully created.' }
        format.json { render :json => @bio_info, :status => :created, :location => @bio_info }
      else
        format.html { render :action => "new" }
        format.json { render :json => @bio_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bio_infos/1
  # PUT /bio_infos/1.json
  def update
    @bio_info = BioInfo.find(params[:id])

    respond_to do |format|
      if @bio_info.update_attributes(params[:bio_info])
        format.html { redirect_to @bio_info, :notice => 'Bio info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @bio_info.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bio_infos/1
  # DELETE /bio_infos/1.json
  def destroy
    @bio_info = BioInfo.find(params[:id])
    @bio_info.destroy

    respond_to do |format|
      format.html { redirect_to bio_infos_url }
      format.json { head :no_content }
    end
  end
end
