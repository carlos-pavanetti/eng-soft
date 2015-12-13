class AnunciosController < ApplicationController
  def show
    @anuncio = Anuncio.find params[:id]
  end
end
