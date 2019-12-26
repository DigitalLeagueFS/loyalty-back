module Admin
  class ServicesController < AdminController

    private

    def resource_class
      Service
    end

    def resource_params
      params.require(:service).permit(:name, :cost, :bonus, :company_id)
    end
  end
end
