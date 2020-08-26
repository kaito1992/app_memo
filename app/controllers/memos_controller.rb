class MemosController < ApplicationController
    def index
        @memo = Memo.all
    end

    def new
        @memo = Memo.new
        @memos = Memo.all
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
        params[:memo].permit(:memo, :category).merge(user_id: current_user.id)
    end
end
