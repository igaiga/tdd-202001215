require "test_helper"

class ExcelTest < ActiveSupport::TestCase
  test "#name" do
    assert_equal(Excel.new.name, "MS Excel")
  end

  test "#price" do
    assert_equal(Excel.new.price, 27800)
  end

  test "#category" do
    assert_equal(Excel.new.category, "スプレッドシート")
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
    assert_equal(expected, Excel.new.revenue_recognition_schedule(signed_on: Time.zone.parse("2020-05-01")))
  end
end
