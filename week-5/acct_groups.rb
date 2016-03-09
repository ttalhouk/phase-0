=begin
PsudoCode

Inputs: The program is expecting to receive a list of names most likely an array
Outputs: The output will be a hash that pairs each name with a group number

1) Check if there are 8 or more names in the list
2) If so take 5 names and place them into group 1 by assigning the value of group 1 to the name
3) Increment the name counter
4) Repeat this process until there are less than 8.
5) If 7 names then assign the next 4 names to a group otherwise the next 3.
6) Repeat until list is empty


=end

def group_maker(names)
  group={}
  g_count=1
  
  while names.length>0
    if names.length>=8
      x=5
    elsif names.length==7
      x=4
    else
      x=3
    end
    
    x.times do
      group.merge! names.pop => "Group " + g_count.to_s
    end
    
      g_count+=1
      
  end
  return group
end

  

cohort = ["Aarthi Gurusami", "Abid Ramay", "Adam Zmudzinski", "Alec Hendrickson", "Alex Wen", "Alicia Briceland", "Allison Paul", "Andrey Slonski", "Anna Lansfjord", "Ben Sanecki", 	"Ben Flores", "Buck Melton", "Caitlin Hoffman"]

puts group_maker(cohort)

=begin
What was the most interesting and most difficult part of this challenge?

The most difficult challenge was figuring out how to append to a hash.  I used the merge! command to overwrite the existing hash.

Do you feel you are improving in your ability to write pseudocode and break the problem down?

I think so.  My original psudocode was pretty much the same as when I went to code it.

Was your approach for automating this task a good solution? What could have made it even better?

My approch is can be used for any lenght of string as I tried varing the lenghts and it will accomodate any lenght with 
a minimum group size of 3 and max of 5.  The if statements are a bit wonky and there is probably a better method for that
but I couldn't find it.

What data structure did you decide to store the accountability groups in and why?

I stored it in a hash as that links the name to the group number.  Alteratively I could have stored them in seperate arrays, but
that is not as useful if I want to change them later.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

I looked for some but couldn't find anthing that fit perticularly well.


=end
        

