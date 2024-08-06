class FriendsController < ApplicationController
    before_action :set_friend, only: %i[edit update destroy]
    def index
        @friends= Friend.all
      end

      def new
        @friend= Friend.new
      end
    
      def create
        @friend= Friend.new(friend_params)
        if @friend.save
          redirect_to friends_path, notice: 'Friendship was successfully created.'
        else
          render :new
        end
      end

    def edit

     end

      def update
        if @friend.update(friend_params)
          redirect_to friends_path, notice: 'Friendship was successfully updated.'
        else
          render :edit
        end
      end

      def destroy
        @friend.destroy
        redirect_to friends_path , notice: 'Friendship was successfully destroyed.'
      end

    
    private
    def set_friend
        @friend =Friend.find(params[:id])
    end

    def friend_params
        params.require(:friend).permit(:firstName, :lastName, :email, :contactNumber)
    end
end
