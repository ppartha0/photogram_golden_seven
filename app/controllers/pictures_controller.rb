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
        @p = Photo.all
        
        render("pic_templates/index.html.erb")
    end
    
    def show
        photo_id = params["the_id"].to_i
        
        pic = Photo.find(photo_id)
        
        @the_source = pic.source
        @the_caption = pic.caption
        
        render("pic_templates/show.html.erb")
    end
    
    #### Update
    def edit_form
        render("pic_templates/edit_form.html.erb")
    end
    
    def update_row
        render("pic_templates/update_row.html.erb")
    end
    
    #### Delete
    def destroy_row
        render("pic_templates/destroy_row.html.erb")
    end
    
end
