require "test/unit"

def replace(array, from, to)
  array.each_with_index do |e, i|
    array[i] = to if e == from
  end
end

class ReplaceTest < Test::Unit::TestCase
  def test_replaces
    book_topics = ['html', 'java', 'css']
    replace(book_topics, 'java', 'ruby')
    expected = ['html', 'ruby', 'css']
    assert_equal(expected, book_topics)
  end
end
