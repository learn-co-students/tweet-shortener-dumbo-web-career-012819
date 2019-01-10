# Write your code here.
require 'pry'

def dictionary
	{
		"hello" => "hi",
		"to" => "2",
		"two" => "2",
		"too" => "2",
		"for" => "4",
		"four" => "4",
		"be" => "b",
		"you" => "u",
		"at" => "@",
		"and" => "&",
		"test" => "tst",
	}
end

def word_substituter(string)
	string.split.map do |x|
		if dictionary.keys.include?(x)
			x = dictionary[x]
		elsif dictionary.keys.include?(x.downcase)
			x = dictionary[x.downcase]	
		else
			x
		end
	end.join(" ")
end

#dictionary.keys.each do |k|
			#converted_string = k.to_s
			#if converted_string == x

def bulk_tweet_shortener(array)	
	 array.map {|a| puts word_substituter(a)}
end

def selective_tweet_shortener(tweet)
	if tweet.length > 140
		word_substituter(tweet)
	else
		tweet
	end
end

def shortened_tweet_truncator(tweet)
	sliced_tweet = word_substituter(tweet).slice(0..136) 
	if word_substituter(tweet).length > 140
		sliced_tweet << "..."
	end
	sliced_tweet
end	
