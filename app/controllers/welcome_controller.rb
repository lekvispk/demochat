class WelcomeController < ApplicationController
  
  def index
  end

  def mail

  	@user = User.find( current_user.id );

  	respond_to do |format|
      # Sends email to user when user is created.
      #ExampleMailer.sample_email(@user).deliver / deliver_later  / deliver_now
      
      ConfirmacionMailer.confirmacion_email(@user).deliver_now
		#SendEmailJob.set(wait: 20.seconds).perform_later(@user)

		format.html
      #format.html { redirect_to @user, notice: 'User was successfully created.' }
      #format.json { render :show, status: :created, location: @user }
	end
  end

end
