class AnunciosController < ApplicationController
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

  private
    def anuncio_params
      params.require(:anuncio).permit(:titulo, :autor, :edicao, :idioma, :tipo_anuncio, :troco_por, :prazo_emprestimo)
    end
end
