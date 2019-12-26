module Admin
  class CompaniesController < AdminController

    private

    def resource_class
      Company
    end

    def resource_params
      params.require(:company).permit(:name)
    end
  end
end
