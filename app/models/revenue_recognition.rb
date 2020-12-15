class RevenueRecognition
  def initialize(product:, signed_on:)
    @product = product
    @signed_on = signed_on
  end
  def schedule
    case @product
    when Word
      @product.revenue_recognition_schedule(@signed_on)
    when Excel
      @product.revenue_recognition_schedule(@signed_on)
    end
  end
end
