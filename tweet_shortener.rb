# Write your code here.
require "pry"
def dictionary
 dictionary =
     {"hello"=> 'hi',
      "to"=> '2',
      "two" => '2',
      "too" => '2',
      "for" => '4',
      "four" => '4',
      "be" => 'b',
      "you" => 'u',
      "at" => '@',
      "and" => "&"}

end

def word_substituter (tweet)

  # takes in the tweet string and splits at each space
  tweet.split(" ").map do |word|
    # iterates over each word of the tweet
    if dictionary.keys.include?(word.downcase)
        # checks the lowercase words.. if the tweet is one of the keys from
        # the dictionary, replace it and store the VALUE of that key as
        # the variable word8

        word = dictionary[word.downcase]
    else
      # if the word we are on is NOT in the dictionary, we keep it as is
      word
    end
  end.join(" ")
  # joins the tweet back together with a space in between
end

def bulk_tweet_shortener (tweet)
  tweet.each do |x|
    puts word_substituter(x)
  end
end

def selective_tweet_shortener (tweet)
  if tweet.length <= 140
    tweet
  else
    word_substituter(tweet)
  end
end



def shortened_tweet_truncator (tweet)
  if tweet.length >= 140
    tweet[0..136]<< "..."
  else
    tweet
  end
end

