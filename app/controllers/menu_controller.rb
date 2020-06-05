class MenuController < ApplicationController
    before_action :authenticate_user!
    before_action :must_be_admin, only: [:active_sessions]

    def index
    end

end