class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    photo_index = params['id']
    @photo_source = Photo.find(photo_index).source
    @photo_caption = Photo.find(photo_index).caption
    render('show')
  end

  def destroy
    photo_index = params['id']
    i = Photo.find(photo_index)
    i.destroy
    @list_of_photos = Photo.all
    render('index')
  end

  def new_form
    render('new_form.html.erb')
  end


end
