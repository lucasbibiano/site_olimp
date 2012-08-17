class OrganizacoesController < ApplicationController
  # GET /organizacoes
  # GET /organizacoes.json
  def index
    @organizacoes = Organizacao.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @organizacoes }
    end
  end

  # GET /organizacoes/1
  # GET /organizacoes/1.json
  def show
    @organizacao = Organizacao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @organizacao }
    end
  end

  # GET /organizacoes/new
  # GET /organizacoes/new.json
  def new
    @organizacao = Organizacao.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @organizacao }
    end
  end

  # GET /organizacoes/1/edit
  def edit
    @organizacao = Organizacao.find(params[:id])
  end

  # POST /organizacoes
  # POST /organizacoes.json
  def create
    @organizacao = Organizacao.new(params[:organizacao])

    respond_to do |format|
      if @organizacao.save
        format.html { redirect_to @organizacao, notice: 'Organizacao was successfully created.' }
        format.json { render json: @organizacao, status: :created, location: @organizacao }
      else
        format.html { render action: "new" }
        format.json { render json: @organizacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /organizacoes/1
  # PUT /organizacoes/1.json
  def update
    @organizacao = Organizacao.find(params[:id])

    respond_to do |format|
      if @organizacao.update_attributes(params[:organizacao])
        format.html { redirect_to @organizacao, notice: 'Organizacao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @organizacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organizacoes/1
  # DELETE /organizacoes/1.json
  def destroy
    @organizacao = Organizacao.find(params[:id])
    @organizacao.destroy

    respond_to do |format|
      format.html { redirect_to organizacoes_url }
      format.json { head :no_content }
    end
  end
end
