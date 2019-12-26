module Admin
  class UsersController < AdminController

    private

    def resource_class
      User
    end

    def resource_params
      params.require(:user).permit(:balance, :name, :phone, :avatar)
    end
  end
end
