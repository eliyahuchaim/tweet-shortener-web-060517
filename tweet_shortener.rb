# Write your code here.
def substituter(tweet)

  w = nil

  the_tweet = tweet.split

  arr_tweet = []



    dictionary.each do |key, value|
      the_tweet.collect do |word|
      if word == key.to_s
        w = "#{value}"
      else
        w = word
      end
      arr_tweet << "#{w}"
    end
  end
  arr_tweet
end


def dictionary

subsitutes = {
:too => 2,
:to => 2,
:two => 2,
:hello => "hi",
:For => 4,
:for => 4,
:four => 4,
:be => "b",
:you => "u",
:at => "@",
:and => "&"
}

subsitutes

end


def word_substituter(tweet)

x = tweet.split


x.each do |word|
  dictionary.each do |key,value|
    if word == key.to_s
  word.gsub!(word, "#{value}")
end
end
end
x.join(" ").to_s
end


def bulk_tweet_shortener(tweet)

tweet.each do |the_tweet|
puts word_substituter("#{the_tweet}")
end

end

def selective_tweet_shortener(tweets)

    if tweets.length > 130 && tweets.length > 140
      word_substituter("#{tweets}")
    else
      tweets
  end
end

def shortened_tweet_truncator(tweet)

x = tweet

  if tweet.length > 140 && tweet.length > 130
    x = tweet[0...137]
    x << "..."
  else
    x
  end
end
