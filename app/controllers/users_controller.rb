class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def show_users
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Signup successful!"
      log_in @user
      redirect_to root_path
    else
      render 'new'
      
    end
  end

  def calculate
    word = params[:calculate][:input]
    
    charArray = word.split(//)
    @sum = 0

    charArray.each { |char| 
      result = Integer(char) rescue false
      if result 
        @sum += result
      else
        result = char.downcase.match(/[a-z]/) ? true : false
        if result
          @sum += (char.ord - 96)
        else
          if char == "!"
            @sum += 11
          elsif char == "@"
            @sum += 12
          elsif char == "#"
            @sum += 13
          elsif char == "$"
            @sum += 14
          elsif char == "%"
            @sum += 15
          elsif char == "^"
            @sum += 16
          elsif char == "&"
            @sum += 17
          elsif char == "*"
            @sum += 18
          end
        end
      end
    }

    
    
    
  end


  private

    def user_params
      params.require(:user).permit(:firstName, :lastName, :phoneNumber, :email, :password, :password_confirmation)
    end
end
