# Write your code here.
require 'pry'
def dictionary
  words = {hello: "hi", to: "2", two: "2", too: "2", for: "4", For: "4", four:"4", be: "b", you: "u", at: "@", and: "&"}
end
dictionary

def word_substituter(tweet)
array = tweet.split

dictionary.each do |key,value|
  array.each do |word|
   if key.to_s == word
     word.replace(value)


   end
  end
 end
array.join(" ")
end


def bulk_tweet_shortener(tweets)
tweets.each do |tweet|
puts  word_substituter(tweet)

end
end

def selective_tweet_shortener(tweet)
if tweet.length <= 140
  return tweet

elsif tweet.length > 140
  word_substituter(tweet)

end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet[0..136] << "..."

  else
    tweet
end
end
