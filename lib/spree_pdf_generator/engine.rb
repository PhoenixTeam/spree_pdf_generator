module SpreePdfGenerator
  class Engine < Rails::Engine
    engine_name 'spree_pdf_generator'
    
    initializer "spree.pdf_generator.environment", :before => :load_config_initializers do |app|
      Spree::PdfGenerator::Config = Spree::PdfGeneratorConfiguration.new
    end
    
    initializer "spree.pdf_generator.mimetypes" do |app|
      Mime::Type.register('application/pdf', :pdf) unless Mime::Type.lookup_by_extension(:pdf)
    end
    
    def self.activate

      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end

    end

    config.autoload_paths += %W(#{config.root}/lib)
    config.to_prepare &method(:activate).to_proc
  end
end
