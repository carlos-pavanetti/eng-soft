class AnunciosController < ApplicationController
  def index
  end

  def show
    @anuncio = Anuncio.find params[:id]
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
    @anuncio = Anuncio.find(params[:id])
  end

  def update
    @anuncio = Anuncio.find(params[:id])
    if @anuncio.update(anuncio_params)
      redirect_to @anuncio, notice: 'Anuncio was successfully updated.'
    else
      render :edit
    end
  end

  private
    def anuncio_params
      params.require(:anuncio).permit(:titulo, :autor, :edicao, :idioma, :tipo_anuncio, :troco_por, :prazo_emprestimo, :imagem_capa)
    end
end
