def dictionary(word)
  words = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  key = word.downcase

  if words[key] != nil
    return words[key]
  else
    return word
  end
end

def word_substituter(tweet)
  words = tweet.split(" ")
  formatted_tweet = []

  words.each {|word| formatted_tweet << dictionary(word)}

  return formatted_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end

def shortened_tweet_truncator(tweet)
  formatted_tweet = selective_tweet_shortener(tweet)

  if formatted_tweet.length > 140
    return formatted_tweet[0..136] + "..."
  else
    return formatted_tweet
  end
end
