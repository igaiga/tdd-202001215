class Excel < Product
  def name
    "MS Excel"
  end
  def price
    27800
  end
  def category
    "スプレッドシート"
  end
  def revenue_recognition_schedule(signed_on)
    [{revenue_recognized_on: signed_on,
      revenue_recognized_price: 18533},
     {revenue_recognized_on: signed_on + 30.days,
      revenue_recognized_price: 9267}
    ]
  end
end
