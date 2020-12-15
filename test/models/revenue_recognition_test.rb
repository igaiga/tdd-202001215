class RevenueRecognitionTest < ActiveSupport::TestCase
  test "#schedule Wordを2020年3月1日に買ったとき、収益認識日が2020年3月1日、収益認識額が18,800円になること" do
    expected = [
                   {
                     revenue_recognized_on: Time.zone.parse("2020-03-01"),
                     revenue_recognized_price: 18800
                   }
    ]
    revenue_recognition = RevenueRecognition.new(
      product: Word.new,
      signed_on: Time.zone.parse("2020-03-01")
    )
    assert_equal(expected, revenue_recognition.schedule)
  end
end
