# program that filters bad words out of a tweet
test_tweets = [
  "This president sucks!",
  "I hate this Blank House!",
  "I can't believe we're living under such bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad – it sucks."
  ]

banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]

cleaned_test_tweets = []

count_tweets = 0
while count_tweets < test_tweets.length
  current_string = test_tweets[count_tweets]

  banned_phrases.each do |bad_word|
    current_string = current_string.split(bad_word).join('CENSORED')
  end

  cleaned_test_tweets.push(current_string)
  count_tweets += 1
end

puts cleaned_test_tweets
