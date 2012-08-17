class AtletasController < ApplicationController
  # GET /atletas
  # GET /atletas.json
  def index
    @atletas = Atleta.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @atletas }
    end
  end

  # GET /atletas/1
  # GET /atletas/1.json
  def show
    @atleta = Atleta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @atleta }
    end
  end

  # GET /atletas/new
  # GET /atletas/new.json
  def new
    @atleta = Atleta.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @atleta }
    end
  end

  # GET /atletas/1/edit
  def edit
    @atleta = Atleta.find(params[:id])
  end

  # POST /atletas
  # POST /atletas.json
  def create
    @atleta = Atleta.new(params[:atleta])

    respond_to do |format|
      if @atleta.save
        format.html { redirect_to @atleta, notice: 'Atleta was successfully created.' }
        format.json { render json: @atleta, status: :created, location: @atleta }
      else
        format.html { render action: "new" }
        format.json { render json: @atleta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /atletas/1
  # PUT /atletas/1.json
  def update
    @atleta = Atleta.find(params[:id])

    respond_to do |format|
      if @atleta.update_attributes(params[:atleta])
        format.html { redirect_to @atleta, notice: 'Atleta was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @atleta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atletas/1
  # DELETE /atletas/1.json
  def destroy
    @atleta = Atleta.find(params[:id])
    @atleta.destroy

    respond_to do |format|
      format.html { redirect_to atletas_url }
      format.json { head :no_content }
    end
  end
end
