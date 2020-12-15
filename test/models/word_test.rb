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
end
