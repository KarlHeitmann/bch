class StaticPagesController < ApplicationController
  before_action :set_navigation_bar
  def inicio
  end

  def noticias
    @navegacion[0][:estado] = "active"
  end

  def cursos
    @navegacion[1][:estado] = "active"
  end

  def tarifas
    @navegacion[2][:estado] = "active"
  end

  def contacto
    @navegacion[3][:estado] = "active"
    @contact = Contact.new
  end

  def nosotros
    @navegacion[4][:estado] = "active"
  end

  def contacto_create
    UserMailer.contact(params[:contact]).deliver_now
    @contact = Contact.new(params[:contact])
    render :contacto
=begin
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:success] = 'Hemos enviado el correo, en breve te contactaremos.'
      render :contacto
    else
      flash.now[:error] = 'Momentáneamente no podemos atenderle. Puede ponerse en contacto escribiendo al siguiente correo: contacto@buceocanelillo.com'
      render :contacto
    end
=end
  end

  private

    def set_navigation_bar
      @navegacion = [
        {
          direccion: static_pages_noticias_path,
          caption: "Noticias",
          estado: ""
        },
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
      if admin_signed_in?
        @navegacion << {
          direccion: posts_path,
          caption: "Administrar noticias",
          estado: ""
        }
      end
    end
end
