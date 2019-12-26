module Admin
  class AdminController < ApplicationController
    before_action :authenticate_user!

    before_action :set_resource, only: [:show, :edit, :update, :destroy]

    def index
      @collection = resource_class.all
    end

    def show; end

    def new
      @resource = resource_class.new
    end

    def edit; end

    def create
      @resource = resource_class.new(resource_params)
      if @resource.save
        redirect_to [:admin, @resource], notice: "#{resource_class} was successfully created."
      else
        render :new
      end
    end

    def update
      if @resource.update(resource_params)
        redirect_to [:admin, @resource], notice: "#{resource_class} was successfully updated."
      else
        render :edit
      end
    end

    # DELETE /companies/1
    def destroy
      @resource.destroy
      redirect_to [:admin, resource_class], notice: "#{resource_class} was successfully destroyed."
    end

    private

    def resource_class
      raise NotImplementedError
    end

    def resource_params
      raise NotImplementedError
    end

    def set_resource
      @resource = resource_class.find(params[:id])
    end
  end
end
