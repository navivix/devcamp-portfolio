module PortfoliosHelper

  def image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end

  def portfolio_img img, type
    if img.model.thumb_image? || img.model.main_image?
<<<<<<< HEAD
      img.to_s
=======
      img
>>>>>>> 2d20387dfb8a29091a79f74f0b52bb61a6c2d518
    elsif type == 'thumb'
      image_generator(height: 350, width: 200)
    elsif type == 'main'
      image_generator(height: 600, width: 400)
    end
  end

end
