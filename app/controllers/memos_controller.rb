class MemosController < ApplicationController
    def index
    end

    def new
        @memo = Memo.new
    end

    def create
        @memo = Memo.new(set_params)
        if @memo.valid?
            @memo.save
            redirect_to root_path
        else
            redirect_to root_path
        end
    end

    private

    def set_params
        params[:memo].permit(:memo)
    end
end
