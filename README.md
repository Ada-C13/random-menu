# Random Menu Generator

## At a Glance

- Individual, [stage 1](https://github.com/Ada-Developers-Academy/pedagogy/blob/master/rule-of-three.md#stage-1) project
- Due before class, **Tuesday 2/4**

## Learning Goals

- Reinforce creating, using, and manipulating strings
- Reinforce setting and accessing variables
- Reinforce creating arrays
- Reinforce accessing element(s) from an array

## Objective

We will create a program that runs from the Terminal that will create a random restaurant menu of food dishes based on several items that you determine.

We will create this random menu generator in a file named `random-menu.rb` that can be run from the Terminal using the command `$ ruby random-menu.rb`

This generator should pull one item each from different arrays you make to create a combined "menu item". The details about the different arrays are listed in the requirements section below.

When the program runs, it should create and show a list of ten numbered menu items.
```ruby
1. hot pan-fried dumplings
2. soft steamed clams
3. ...
...
10. creamy taco cake
```

## Getting Started: Review Workflow

Before we get started writing code, let's take one minute to review _where_ to write the code.

Take a minute to think about the following questions:

1. How many files will we be writing in today?
1. What are the names of those files?
1. What are the file extensions of those files?
1. What is the name of the ideal directory that these files live in? Why?
1. Does that directory already exist on my machine? Where should it exist, relative to my home (`~`) directory?
1. What does the path look like to this directory?

Also take the time to reflect:

In Terminal, what commands do I run to:
1. check what directory I am in?
1. create a new directory relative to where I am?
1. change directory?
1. list the files in this directory?
1. create a new file in this directory?

Once you are in a good project directory, you can open the directory in the text editor VS Code with the command `code .`. Opening this directory in VS Code will give you the ability to easily access all files and folders in this directory in one VS Code window.

## Implementation Requirements

In the file `random-menu.rb`, in your code, create three arrays of ten items each. These three arrays/lists will be a different type of food or descriptor for that food.

For example, the first array can contain adjectives, the second can be cooking styles, and the third can be foods.

Then, after you create those three arrays, write code that will create a randomized food item.

To create a randomized food item, write code that selects a random item from each of the three arrays, and then combines them. It could create a few items like:

  - hot pan-fried dumplings
  - soft steamed clams
  - spicy barbecued pasta
  - ... or more

Your program should create ten randomized food items this way.

Lastly, ensure that each item from the list of randomized food items prints/outputs to the console, so that anyone can read it from the console. We want the output to meet the following requirements:

- each randomized food item is on its own line
- each randomized food item is numbered, so that each line starts with either `1. `, `2. `, `3. ` ... etc.

## Testing and Verification Requirements

Before you submit your work, it's important to test your program and ensure it's working properly.  Later we will teach you nifty ways to automate this testing, but for now we'll do things the old fashioned way-- by running it manually and checking with our human eyes and human brains if it looks correct.

Make sure you run your program and ensure it's working. While running it, "test" the code with different inputs. Does the actual output match the expected output?

Ask the question "does the actual output match the expected output?" for each of the following points:

*  The menu items are selected and created randomly, and it is unlikely for items to ever repeat
*  There are 10 menu items
*  Each item should pull one word from each of the 3 arrays
*  The items are numbers 1-10 (not starting at zero)
*  Run the program a few times and ensure that the last word in the arrays are used.  Also ensure that the first word in the arrays are used at least occasionally

## Optional Enhancements

- Expand your solution to ensure that no descriptive term in a menu item is ever repeated. So if the first menu item is `hot pan-fried dumplings`, the the phrases `hot`, `pan-friend` and `dumpling` cannot individually be used in any other menu items
- Expand your solution to allow the user to determine how many items they'd like to see via user input
  - __Note:__ You will need to ensure that this user-chosen number of items is not larger than the number of items you have in your arrays.
- Instead of using hardcoded or predefined arrays, make your program accept user input. This user input will be utilized to generate the menu items. You'll need to prompt for and store a varying number of entries for each food-type array
