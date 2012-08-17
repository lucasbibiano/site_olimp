class CompeticoesController < ApplicationController
  # GET /competicoes
  # GET /competicoes.json
  def index
    @competicoes = Competicao.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @competicoes }
    end
  end

  # GET /competicoes/1
  # GET /competicoes/1.json
  def show
    @competicao = Competicao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @competicao }
    end
  end

  # GET /competicoes/new
  # GET /competicoes/new.json
  def new
    @competicao = Competicao.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @competicao }
    end
  end

  # GET /competicoes/1/edit
  def edit
    @competicao = Competicao.find(params[:id])
  end

  # POST /competicoes
  # POST /competicoes.json
  def create
    @competicao = Competicao.new(params[:competicao])

    respond_to do |format|
      if @competicao.save
        format.html { redirect_to @competicao, notice: 'Competicao was successfully created.' }
        format.json { render json: @competicao, status: :created, location: @competicao }
      else
        format.html { render action: "new" }
        format.json { render json: @competicao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /competicoes/1
  # PUT /competicoes/1.json
  def update
    @competicao = Competicao.find(params[:id])

    respond_to do |format|
      if @competicao.update_attributes(params[:competicao])
        format.html { redirect_to @competicao, notice: 'Competicao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @competicao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competicoes/1
  # DELETE /competicoes/1.json
  def destroy
    @competicao = Competicao.find(params[:id])
    @competicao.destroy

    respond_to do |format|
      format.html { redirect_to competicoes_url }
      format.json { head :no_content }
    end
  end
end
