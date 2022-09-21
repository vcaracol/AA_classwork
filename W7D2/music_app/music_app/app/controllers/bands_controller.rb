class BandsController < ApplicationController
    before_action :set_band, only: [:edit, :show, :update, :destroy]

    def set_band
        @band = Band.find_by(id: params[:id])
    end

    def index
        @bands = Band.all
    end

    def create
        @band = Band.new

        if @band.save
            redirect_to band_url(@band)
        else
            render :new
        end
    end

    def new
        @band = Band.new
        render :new
    end

    def edit
        @band
        render :edit
    end

    def show
        @band
        render :show
    end

    def update
        if @band.update(user_params)
            redirect_to band_url(@band)
        else
            render :edit
        end
    end

    def destroy
        @band.destroy
        render :index
    end
end
