class ContactsController < ApplicationController
  def new
    # @contact = Contact.new
  end

  def create
    @contact = Contact.new(params_contact)
    if @contact.valid?
      @contact.save
    else 
      # render "new"
      render action: "new"
    end
  end

  private

  def params_contact 
    params.require(:contact).permit(:email_journalist, :message_journalist)
  end
end
