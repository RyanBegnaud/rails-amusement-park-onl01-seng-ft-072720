module UsersHelper
    def admin? 
        if @user.admin == true
          true 
        else 
          false 
        end
    end
end
