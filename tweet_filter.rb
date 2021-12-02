test_tweets = [
  "This president sucks!",
  "I hate this Blank House!",
  "I can't believe we're living under such bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad – it sucks."
  ]

banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]

count_tweets = 0
while count_tweets < test_tweets.length
  current_string = test_tweets[count_tweets]
  puts current_string.split("sucks").join("CENSORED")
  break
  count_tweets += 1
end