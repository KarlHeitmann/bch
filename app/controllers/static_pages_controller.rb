class StaticPagesController < ApplicationController
  before_action :set_navigation_bar
  def inicio
  end

  def cursos
    @navegacion[0][:estado] = "active"
  end

  def tarifas
    @navegacion[1][:estado] = "active"
  end

  def contacto
    @navegacion[2][:estado] = "active"
    @contact = Contact.new
  end

  def contacto_create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      flash.now[:notice] = 'Thank you for your message!'
      render :contacto
    else
      flash.now[:error] = 'Cannot send message.'
      render :contacto
    end
  end

  def nosotros
    @navegacion[3][:estado] = "active"
  end

  private

    def set_navigation_bar
      @navegacion = [
      {
        direccion: static_pages_cursos_path,
        caption: "Cursos",
        estado: ""
      },
      {
        direccion: static_pages_tarifas_path,
        caption: "Tarifas",
        estado: ""
      },
      {
        direccion: static_pages_contacto_path,
        caption: "Contacto",
        estado: ""
      },
      {
        direccion: static_pages_nosotros_path,
        caption: "Nosotros",
        estado: ""
      },
    ]
    end
end
