# count_frequency.rb

def count_frequency(word_list)
  counts = Hash.new(0)
  for word in word_list
    counts[word] += 1
  end
  counts
end

p count_frequency(["sparky", "the", "cat", "sat", "on", "the", "mat"])

p count_frequency(["but", "i", "didn't", "inhale", "he", "said", "emphatically", "tada"])

practice = Hash.new("dne")
practice["kyle"] = "ross"
practice["stephan"] = "taylor"
practice = 

puts practice["kyle"]
puts practice["stephan"]
puts practice["mike"]

practice1 = { "kyle" => "ross", "stephan" => "ross" }