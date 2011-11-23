class PagesController < ApplicationController

  def home

    @id = find_page(params[:id].to_i)

    @title = "Home"
    @images = Image.all(:limit=>6,:offset => @id*6).collect{|image| "#{image.name}.#{image.format_type}"}
    @users = ["Sebastian Lee","Arthur Ng","Dennis Ong","Shawn Toh","Justin Lim","Ali","Kenny Khek" ]
  end

  def find_page(id)

    return id if id > 0 and id < Image.count(:all)/6
    return 0

  end

  def contact
    @title = "Contact"
  end

  def new_image
    @image = "#{Image.first.name}.#{Image.first.format_type}"
  end


  def index
    @title = "index"

  end

end
