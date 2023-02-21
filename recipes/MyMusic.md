# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

_Put or write the user story here. Add any clarifying notes you might have._

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby
class MyMusic

    def initialize
        #...
    end

    def add(song)
    # allows user to add music to their list
    # takes a string as argument
    # no return value
    # throws error if song = empty string
    end

    def view_songlist
    # returns a list of strings 
    # returns the songs that have been added
    # throws error if list empty
    end

```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby

# 1
new_music_list = MyMusic.new
new_music_list.add("Toxic")
# => "Toxic"

# 2
new_music_list = MyMusic.new
new_music_list.add("Toxic")
new_music_list.add("Life's A Beach")
# => "Toxic", "Life's A Beach"

# 3
new_music_list = MyMusic.new
new_music_list.add("Toxic")
new_music_list.add("life's A Beach") # all inputs are updated using .capitalize
# => "Toxic", "Life's A Beach"

# 4
new_music_list = MyMusic.new
new_music_list.add("")
# => fail "This is not song"

# 5
new_music_list = MyMusic.new
new_music_list.view_songlist
# => fail "Your list is empty"

# 6
new_music_list = MyMusic.new
new_music_list.add("Toxic")
new_music_list.add("toxic") # when the same song is added twice
new_music_list.view_songlist
# => "Toxic"

# 7
new_music_list = MyMusic.new
new_music_list.add(7) #when argument is not a string
# => fail "Song needs to be a string"



```


```ruby
# EXAMPLE

# 1
reminder = Reminder("Kay")
reminder.remind_me_to("Walk the dog")
reminder.remind() # => "Walk the dog, Kay!"

# 2
reminder = Reminder("Kay")
reminder.remind() # fails with "No task set."

# 3
reminder = Reminder("Kay")
reminder.remind_me_to("")
reminder.remind() # => ", Kay!"
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->