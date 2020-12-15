class RevenueRecognitionTest < ActiveSupport::TestCase
  test "#schedule Wordを2020年3月1日に買ったとき、収益認識日が2020年3月1日、収益認識額が18,800円になること" do
    expected = [
                   {
                     revenue_recognized_on: Time.zone.parse("2020-05-01"),
                     revenue_recognized_price: 18800
                   }
    ]
    revenue_recognition = RevenueRecognition.new(
      product: Word.new,
      signed_on: Time.zone.parse("2020-05-01")
    )
    assert_equal(expected, revenue_recognition.schedule)
  end
  test "#schedule Excelを2020年5月1日に買ったとき、1つ目の収益認識日が2020年5月1日、収益認識額が18533円、2つ目の収益認識日が2020年5月31日、収益認識額が9267になること" do
    expected = [
                   {
                     revenue_recognized_on: Time.zone.parse("2020-05-01"),
                     revenue_recognized_price: 18533
                   },
                   {
                     revenue_recognized_on: Time.zone.parse("2020-05-31"),
                     revenue_recognized_price: 9267
                   }
    ]
    revenue_recognition = RevenueRecognition.new(
      product: Excel.new,
      signed_on: Time.zone.parse("2020-05-01")
    )
    assert_equal(expected, revenue_recognition.schedule)
  end
end
