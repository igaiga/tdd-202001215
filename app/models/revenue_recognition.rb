class RevenueRecognition
  def initialize(product:, signed_on:)
    @product = product
    @signed_on = signed_on
  end
  def schedule
    case @product
    when Word
      [{revenue_recognized_on: @signed_on,
        revenue_recognized_price: @product.price}]
    end
  end
end
