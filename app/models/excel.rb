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
  def revenue_recognition_schedule(signed_on:)
    # TODO RevenueRecognitionMaster(signed_onではなく、起算日からx日でx円収益確定するかに変更)
    [
      { RevenueRecognition.new(signed_on: signed_on,
                               price: 18533) },
      { RevenueRecognition.new(signed_on: signed_on + 30.days,
                               price: 9267) }
    ]
  end
end
