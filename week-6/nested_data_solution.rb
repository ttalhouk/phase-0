# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

def depth_iter(number_array)
    number_array.map! do |enum|
        if enum.is_a?(Array)
            depth_iter(enum)
        else
            enum + 5
        end
    end
    number_array
end

p depth_iter(number_array)




# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def startup_names_generator(startup_names)
    startup_names.map! do |enum|
        if enum.is_a?(Array)
            startup_names_generator(enum)
        else
            enum + "ly"
        end
    end
    startup_names
end

=begin
What are some general rules you can apply to nested arrays?
You are working typically one layer deep but can access the sub layers with their indecies the same way.
This is pretty straight forward if working with a position directly but is trickier if trying to itterate
through the array.


What are some ways you can iterate over nested arrays?
You can check if the input is an array then call an each on it.  However you need to know how many
layers down you want to go or you have to try and recall the loop mulitiple times. This is what 
lead us to recursively run the loop to call it self back and check for deeper levels.


Did you find any good new methods to implement or did you re-use
one you were already familiar with? What was it and why did you decide that was a good option?
For this challenge we used map! because it could replace the existing info which we wanted since it
was a destructive method.  We talked about flattening the array but felt that would be cheating and 
you would lose the nested data structure.


=end