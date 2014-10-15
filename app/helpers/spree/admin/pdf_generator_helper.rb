module Spree
  module Admin
    module PdfGeneratorHelper
      def font_faces
        fonts = Prawn::Font::AFM::BUILT_INS.reject { |f| f =~ /zapf|symbol|bold|italic|oblique/i }.map { |f| [f.tr('-', ' '), f] }
        options_for_select(fonts, Spree::PdfGenerator::Config[:pdf_generator_font_face])
      end

      def logo_scale
        Spree::PdfGenerator::Config[:pdf_generator_logo_scale].to_f / 100
      end
    end
  end
end
