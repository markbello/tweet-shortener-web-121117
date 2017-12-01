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
  new_array = []
  dictionary_keys = dictionary.keys
  test_array.each do |word|
    if dictionary_keys.include?(word.lowcase)
      new_array.push(dictionary[word])
    else
      new_array.push(word)
    end
  end
  new_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  new_tweets = []
  tweets.each do |tweet|
    new_tweet = word_substituter(tweet)
    new_tweets.push(new_tweet)
    puts new_tweet
  end
  new_tweets
end
