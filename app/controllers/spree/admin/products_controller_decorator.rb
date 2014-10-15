Spree::Admin::ProductsController.class_eval do
  respond_to :pdf, only: :show

  def show
    load_product
    respond_with(@product) do |format|
      format.pdf do
        template = params[:template] || "basic"
        render :layout => false , :template => "spree/admin/#{template}.pdf.prawn"
      end
    end
  end

  private
    def load_product
      @product = Spree::Product.find_by_slug!(params[:id])
    end
end
