class StaticPagesController < ApplicationController
  def inicio
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

  def cursos
    @navegacion = [
      {
        direccion: static_pages_cursos_path,
        caption: "Cursos",
        estado: "active"
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

  def tarifas
    @navegacion = [
      {
        direccion: static_pages_cursos_path,
        caption: "Cursos",
        estado: ""
      },
      {
        direccion: static_pages_tarifas_path,
        caption: "Tarifas",
        estado: "active"
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

  def contacto
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
        estado: "active"
      },
      {
        direccion: static_pages_nosotros_path,
        caption: "Nosotros",
        estado: ""
      },
    ]
  end

  def nosotros
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
        estado: "active"
      },
    ]
  end
end
