require "test_helper"

class WordTest < ActiveSupport::TestCase
  test "#name" do
    assert_equal(Word.new.name, "MS Word")
  end

  test "#price" do
    assert_equal(Word.new.price, 18800)
  end

  test "#category" do
    assert_equal(Word.new.category, "ワードプロセッサ")
  end

  test "#revenue_recognition_schedule Wordを2020年5月1日に買ったとき、収益認識日が2020年5月1日、収益認識額が18,800円になること" do
    expected = [
                   {
                     revenue_recognized_on: Time.zone.parse("2020-05-01"),
                     revenue_recognized_price: 18800
                   }
    ]
    assert_equal(expected, Word.new.revenue_recognition_schedule(signed_on: Time.zone.parse("2020-05-01")))
  end
end
