class Api::EmailsController < ApiController
 
   def index
      emails = Email.all
      render json: emails, each_serializer: EmailSerializer
   end
   
   def create
      email = Email.new(email_params)
      if email.save
         render json: email
      else
         render json: { errors: email.errors.full_messages }, status: :unprocessable_entity
      end
   end
   
   private
   
   def email_params
      params.permit(:title, :link, :kind, :address)
   end

 end