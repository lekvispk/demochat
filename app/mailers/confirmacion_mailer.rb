class ConfirmacionMailer < ApplicationMailer
	default from: "lekvispk@gmail.com"

	def confirmacion_email(user)
	    @user = user
	    mail(to: @user.email, subject: 'Correo de confirmacion')
	end

end
