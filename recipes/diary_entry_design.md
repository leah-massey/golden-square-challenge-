# 1.
# new_entry = DiaryEntry.new("The Park", "I went for a run. " *2000 )
# new_entry.reading_time(20)
# => 500 

# 2.
# new_entry = DiaryEntry.new("The Park", "" )
# new_entry.reading_time(20)
# => 0

# 3.
# new_entry = DiaryEntry.new("The Park", "I went for a run. " )
# new_entry.reading_time(20)
# => 1 

# 4.
# new_entry = DiaryEntry.new("The Park", "Did a run. " * 101 )
# new_entry.reading_time(20)
# => 15.15 round up to 16 

