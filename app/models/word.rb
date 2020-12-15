class Word < Product
  def name
    "MS Word"
  end
  def price
    18800
  end
  def category
    "ワードプロセッサ"
  end
  def revenue_recognition_schedule(signed_on)
    [{revenue_recognized_on: signed_on,
      revenue_recognized_price: price}]
  end
end
