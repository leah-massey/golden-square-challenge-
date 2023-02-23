
# 1 
new_entry = DiaryEntry.new("Monday", "Swim")
new_entry.title 
# => "Monday"

# 2
new_entry = DiaryEntry.new("Monday", "Swim")
new_entry.contents 
# => "Swim"

# 3
new_entry = DiaryEntry.new("Monday", "Swim")
new_entry.count_words 
# => 1

# 4
new_entry = DiaryEntry.new("Monday", "Swim in the")
new_entry.reading_time(1)
# => 3

# 5
new_entry = DiaryEntry.new("Monday", "Swim in the pool")
new_entry.reading_chunk(3, 1)
# => 1 "Swim in the"





