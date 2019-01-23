require 'pry'

def dictionary
 { "hello" => "hi",
["to, two, too"] => "2", 
["for, four"] => "4",
'be' => "b",
'you' => "u",
"at" => "@" ,
"and" => "&"}

end

def word_substituter(tweet)
  new_tweet = []
  
  new_tweet << tweet.split(" ")
  
  new_tweet.map do |word| puts word == dictionary.keys
 
 end.join(" ")
 
 
 
 end
end

