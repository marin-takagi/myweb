class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:success] = "送信しました。"
      redirect_to new_contact_path
    else
      render 'new'
    end
  end

  def destroy
    Contact.find(params[:id]).destroy
    redirect_to contacts_path
  end


  private
     def contact_params
       params.require(:contact).permit(:name, :email, :title, :body)
     end
end
