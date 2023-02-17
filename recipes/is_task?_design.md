{{PROBLEM}} Method Design Recipe
1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

2. Design the Method Signature
Include the name of the method, its parameters, return value, and side effects.

# 'is_task?(text)' identifies whether text includes the string #TODO

is_todo = is_task?(text)

text: a string
is_todo = Boolean value

fails if text is not a string
fails if string is empty

The method returns a Boolean value (true or false)

3. Create Examples as Tests
Make a list of examples of what the method will take and return.

# 1.
# is_task?("")
# => fail 

# 2. 
# is_task?("#TODO play tennis")
# => true

# 3. 
# is_task?("play tennis")
# => false

# 4. 
# is_task?("#todo play tennis")
# => true

# 5. 
# is_task?("#Todo play tennis")
# => true

# 6. 
# is_task?("#TODOplay tennis")
# => false

# 7. 
# is_task?(2)
# => fail

# 8. 
# is_task?("TODO play tennis")
# => false

# 9. 
# is_task?("play tennis #TODO")
# => false

# 10. 
# is_task?("#TODO")
# => false



3. Encode each example as a test. You can add to the above list as you go.

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.