class AnunciosController < ApplicationController
  def show
    @anuncio = Anuncio.find params[:id]
  end

  def new
    @anuncio = Anuncio.new
  end
end
