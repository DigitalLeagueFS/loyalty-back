module Admin
  class UserActionsController < AdminController

    private

    def resource_class
      UserAction
    end

    def resource_params
      params.require(:user_action).permit(:service_id, :user_id)
    end
  end
end
