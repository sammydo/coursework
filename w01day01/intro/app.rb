require "mac/say"

puts "Hello"
puts "World"

# talker = Mac::Say.new
# voice = talker.voice(:language, :en)&.sample(1)&.first&.fetch :name
# talker.say string: 'Hello world!', voice: voice

talker = Mac::Say.new(voice: :alex, rate: 200)
talker.say string: "We miss Webdev"
