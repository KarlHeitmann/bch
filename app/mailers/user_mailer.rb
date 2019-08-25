class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.contact.subject
  #
  def contact(datos)
    @datos = datos
    puts datos
    puts datos[:email]

    mail to: datos[:email], subject: "Contacto"
  end
end
