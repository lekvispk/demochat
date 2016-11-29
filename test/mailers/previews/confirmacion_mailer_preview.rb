# Preview all emails at http://localhost:3000/rails/mailers/confirmacion_mailer
class ConfirmacionMailerPreview < ActionMailer::Preview

	def sample_mail_preview
		#current_user
	    ExampleMailer.sample_email(User.first)
  	end

end
