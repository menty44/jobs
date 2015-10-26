class RegistrationsController < ApplicationController
	before_action :find_registration, only: [:show, :edit, :update, :destroy]

	def index
	# if params[:category].blank?
	# 	@jobs = Job.all.order("created_at DESC")
	# else
	#     @category_id = Category.find_by(name: params[:category]).id
	#     @jobs = Job.where(category_id: @category_id).order("created_at DESC")
		end	
	end

	def show				
	end

	def new	
	  @registration = Registration.new			
	end

	def create	
	  @registration = Registration.new(registrations_params)

	  if @registration.save
	  	redirect_to @registration
	  else
	    render "New"		  			
	  end		
	end

	def edit				
	end

	def update	
	   if @registration.update(registrations_params)
	   redirect_to @registration
	   else
	       render "Edit"
	   end			
	end

	def destroy	
	@registration.destroy
	redirect_to root_path 			
	end

	private

	def registrations_params	
	   params.require(:registration).permit(:firstname, :lastname, :email, :gender, :phonenumber, :city, :password, :role)			
	end

	def find_registration		
	   @registration = Registration.find(params[:id])		
	end
end
