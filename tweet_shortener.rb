require "pry"

def dictionary
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
end

def word_substituter tweet
  tweet = tweet.split(" ")
  tweet.collect! do |word|
      if dictionary.has_key? word.downcase
        dictionary.collect do |key, value|
          if key == word.downcase
            word = value
          end
        end
      else
        word
      end
  end
  tweet = tweet.flatten.delete_if { |word| word == nil}
  tweet.join(" ")
end

def bulk_tweet_shortener tweetArr
    tweetArr.collect do |tweet|
      puts word_substituter(tweet)
    end
end

def selective_tweet_shortener tweet
  if tweet.length > 140
    word_substituter tweet
  else
    tweet
  end
end

def shortened_tweet_truncator tweet
  tweet = word_substituter tweet
  if tweet.length > 140
    tweet = tweet[0..136] + "..."
  else
    tweet
  end

end
