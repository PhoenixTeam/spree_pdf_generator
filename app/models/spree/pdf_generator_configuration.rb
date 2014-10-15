module Spree
  class PdfGeneratorConfiguration < Preferences::Configuration

    preference :pdf_generator_next_number, :integer, :default => nil
    preference :pdf_generator_logo_path, :string, :default => Spree::Config[:admin_interface_logo]
    preference :pdf_generator_logo_scale, :integer, :default => 50
    preference :pdf_generator_font_face, :string, :default => 'Helvetica'
    preference :pdf_button, :string, :default => 'pdf'
    preference :prawn_options, :hash, :default => {}

  end
end
