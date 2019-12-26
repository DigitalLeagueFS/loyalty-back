module Api
  class CompaniesController < ApiController

    private

    def resource_class
      Company
    end

    def resource_params
      params.require(:company).permit(:name, services_attributes: [:name])
    end

    def as_json_resource
      {
          only: [
              :id, :name
          ],
          include: {
              services: {}
          }
      }
    end
  end
end