im = Rails.application.assets.find_asset(Spree::PdfGenerator::Config[:pdf_generator_logo_path])
image im , :at => [0,720], :scale => logo_scale

fill_color "E99323"
text Spree.t(:header_title), :align => :right, :style => :bold, :size => 18
fill_color "000000"
