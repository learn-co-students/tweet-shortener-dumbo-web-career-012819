def dictionary
  substitute = {
    "and" => "&",
    "at" => "@",
    "be" => "b",
    "for" => "4",
    "four" => "4",
    "hello" => "hi",
    "to" => "2",
    "too" => "2",
    "two" => "2",
    "you" => "u"
  }
end

def word_substituter(tweet)
  arr = tweet.split(" ")
  dict = dictionary.keys
  

  arr.each_with_index do |word, index|
    dict.each do |key|
      arr[index] = dictionary[key] if word.downcase == key
    end
  end
  
  arr.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length <= 140
    return tweet
  else
    word_substituter(tweet)
  end
end

def shortened_tweet_truncator (tweet)
  short_tweet = word_substituter(tweet)
  if short_tweet.length >= 140
    short_tweet[0..136] + "..."
  else
    return short_tweet
  end
end