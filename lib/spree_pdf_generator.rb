require 'spree_core'
require 'spree_pdf_generator/engine'
require 'prawn_handler'

module Spree
  module PdfGenerator
    def self.config(&block)
      yield(Spree::PdfGenerator::Config)
    end
  end
end
