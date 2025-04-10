p Array.ancestors
places = ["東京", "大阪", "名古屋", "福岡", "札幌"]
# { } でブロック表記
new_places = places.map { |place|
  p place.class
  puts "#{place}（文字の長さ: #{place.size}）"
}

hash_places = {
  name: "東京",
  population: 13929286,
  area: 2194,
  area_code: 03,
}

hash_places.each do |key, value|
  puts "#{key} : #{value}"
end

[1, 2, 3].each do |n|
  puts n
end
