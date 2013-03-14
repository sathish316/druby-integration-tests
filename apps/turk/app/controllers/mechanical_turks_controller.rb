class MechanicalTurksController < ApplicationController
  # GET /mechanical_turks
  # GET /mechanical_turks.json
  def index
    @mechanical_turks = MechanicalTurk.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mechanical_turks }
    end
  end

  # GET /mechanical_turks/1
  # GET /mechanical_turks/1.json
  def show
    @mechanical_turk = MechanicalTurk.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mechanical_turk }
    end
  end

  # GET /mechanical_turks/new
  # GET /mechanical_turks/new.json
  def new
    @mechanical_turk = MechanicalTurk.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mechanical_turk }
    end
  end

  # GET /mechanical_turks/1/edit
  def edit
    @mechanical_turk = MechanicalTurk.find(params[:id])
  end

  # POST /mechanical_turks
  # POST /mechanical_turks.json
  def create
    @mechanical_turk = MechanicalTurk.new(params[:mechanical_turk])

    respond_to do |format|
      if @mechanical_turk.save
        format.html { redirect_to @mechanical_turk, notice: 'Mechanical turk was successfully created.' }
        format.json { render json: @mechanical_turk, status: :created, location: @mechanical_turk }
      else
        format.html { render action: "new" }
        format.json { render json: @mechanical_turk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mechanical_turks/1
  # PUT /mechanical_turks/1.json
  def update
    @mechanical_turk = MechanicalTurk.find(params[:id])

    respond_to do |format|
      if @mechanical_turk.update_attributes(params[:mechanical_turk])
        format.html { redirect_to @mechanical_turk, notice: 'Mechanical turk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mechanical_turk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mechanical_turks/1
  # DELETE /mechanical_turks/1.json
  def destroy
    @mechanical_turk = MechanicalTurk.find(params[:id])
    @mechanical_turk.destroy

    respond_to do |format|
      format.html { redirect_to mechanical_turks_url }
      format.json { head :no_content }
    end
  end
end
