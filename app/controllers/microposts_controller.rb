class MicropostsController < ApplicationController
    before_action :authenticate_user!
    before_action :correct_user, only: [:destroy]
    
    def index
        @micropost = Micropost.all
    end
    
    def new
        @micropost = Micropost.new
    end
    
    def create
        @micropost = Micropost.new(micropost_params)
        respond_to do |format|
          if @micropost.save
            format.html { redirect_to @micropost, notice: 'Micropost was successfully created.' }
            format.json { render :show, status: :created, location: @micropost }
          else
            format.html { render :new }
            format.json { render json: @micropost.errors, status: :unprocessable_entity }
          end
        end
    end
    
    def destroy
        @micropost.destroy
        flash[:success] = "Micropost deleted"
        redirect_to request.referrer || root_url
    end
    
    
    private
    
    def micropost_params
        params.require(:micropost).permit(:content, :title)
    end
    
    def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to root_url if @micropost.nil?
    end
    
end
