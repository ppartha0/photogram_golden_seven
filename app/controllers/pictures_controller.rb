class PicturesController < ApplicationController
    #### Create 
    def new_form
        render("pic_templates/new_form.html.erb")
    end
    
    def create_row
        render("pic_templates/create_row.html.erb")
    end
    
    #### Read
    def index
        render("pic_templates/index.html.erb")
    end
    
    def show
        render("pic_templates/show.html.erb")
    end
    
    #### Update
    def edit_form
        render("pic_templates/edit_form.html.erb")
    end
    
    def update_row
    end
    
end
