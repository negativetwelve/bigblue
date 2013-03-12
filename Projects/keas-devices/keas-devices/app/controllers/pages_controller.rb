class PagesController  < ApplicationController
    def home
        respond_to do |format|
          format.html # show.html.erb
        end
    end
end