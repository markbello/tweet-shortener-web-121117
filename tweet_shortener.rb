def dictionary
  dictionary = {"hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"}
end

def word_substituter(tweet)
  test_array = tweet.split
  test_array.each do |word|
    if dictionary.keys.include?(word)
      word = dictionary[word]
    end
  end
  test_array
end

def tweet
