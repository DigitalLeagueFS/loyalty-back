module Api
  class ServicesController < ApiController

    private

    def resource_class
      UserAction
    end

    def resource_params
      params.require(:service).permit(:name, :cost, :bonus, :company_id)
    end
  end
end