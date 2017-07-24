class PicturesController < ApplicationController
    #### Create 
    def new_form
        
        render("pic_templates/new_form.html.erb")
    end
    
    def create_row
        p = Photo.new
        source = params["user_img_url"]
        caption = params["user_caption"]
        p.source = source
        p.caption = caption
        p.save
        @photo_count = Photo.count
        #render("pic_templates/create_row.html.erb")
        render_to("/photos")
    end
    
    #### Read
    def index
        @p = Photo.all
        
        render("pic_templates/index.html.erb")
    end
    
    def show
        photo = params["the_id"].to_i
        
        pic = Photo.find(photo)
        
        @photo_id = photo
        @the_source = pic.source
        @the_caption = pic.caption
        date_created = pic.created_at
        days_since_creation = date_created 
        @days_old = days_since_creation
        render("pic_templates/show.html.erb")
    end
    
    #### Update
    def edit_form
        @photo_number = params["an_id"].to_i
        p = Photo.find(@photo_number)
        @photo_source = p.source
        @photo_caption = p.caption
        render("pic_templates/edit_form.html.erb")
    end
    
    def update_row
        @photo_number = params["some_id"].to_i
        p = Photo.find(@photo_number)
        p.source = params["the_source"]
        p.caption = params["the_caption"]
        p.save
        
        render("pic_templates/update_row.html.erb")
    end
    
    #### Delete
    def destroy_row
        @photo_number = params["toast_id"].to_i
        p = Photo.find(@photo_number)
        p.destroy
        p.save
        @photo_count = Photo.count
        #render("pic_templates/destroy_row.html.erb")
        redirect_to("/photos")
    end
    
end
