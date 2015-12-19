class AnunciosController < ApplicationController
  before_action :set_anuncio, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @anuncio = Anuncio.new
  end

  def create
    @anuncio = Anuncio.new (anuncio_params)
    @anuncio.usuario = current_user

    if @anuncio.save
      flash[:success] = "Anúncio criado com sucesso"
      redirect_to current_user
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @anuncio.update(anuncio_params)
      redirect_to @anuncio, notice: 'Anuncio was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @anuncio.destroy
    redirect_to anuncios_url, notice: 'Anuncio was successfully destroyed.'
  end

  private
    def set_anuncio
      @anuncio = Anuncio.find(params[:id])
    end

    def anuncio_params
      whitelist = [:titulo, :autor, :edicao, :idioma, :tipo_anuncio, :troco_por, :prazo_emprestimo, :imagem_capa]
      params.require(:anuncio).permit(whitelist)
    end
end
