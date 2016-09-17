class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact  = Contact.new(params[:contact])
    @contact.request = request
    respond_to do |format|
      if @contact.deliver
        format.html { redirect_to @contact, notice: 'Uw bericht is verzonden, wij nemen zo spoedig mogelijk contact met u op!' }
        format.json { render :create, status: :created, location: @contact }
      else
        format.html { render 'contacts/new' }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end
end
