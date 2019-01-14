Calculator
Timings

45 - 90 minutes

Tasks

Your task is to write a command line calculator application that has two settings, (b)asic and (a)dvanced.

First you will need to ask the user for which calculator they want to use
Then you will need to ask the user for the numbers to operate on.
Then you need to work out what to do with the numbers, depending on what operation they choose.
Basic:

Additon
Multiplication
Division
Subtraction
Advanced:

Power
Square root
Example:


Setup

There is no starter code for this app.

Hints

Get user input - hello = $stdin.gets.chomp Output to console - puts "Hello Sparta"

Because of the way GitBash runs in Ruby, your gets.chomp message will not display properly unless you manually flush your input/output stream. Don't worry too much about how this works, just remember the following things:

When printing anything to the console, put $stdout first e.g. - $stdout.puts "Please enter your name"
Then, flush the output by putting $stdout.flush on the next line
If you then want to use gets.chomp to grab the value of some user input, put $stdin first e.g. - name = $stdin.gets.chomp

Bonus Tasks:
Add the following calculator feature into your app.

BMI Calculator
Calculate the BMI when given the height and weight - the user should be able to choose between the imperial and the metric system

BMI Link 1
BMI Link 1
SUPER Bonus task

Add the following calculator feature into your app.

Trip Calculator
This feature asks the user for four inputs; distance, fuel efficiency (mpg), cost per gallon, speed and it will give you the time and price of your journey.

Example output: "Your trip will take 3.5 hours and cost £255.33.""

Note: For every 1 MPH over 60 MPH, reduce the the MPG by 2 MPG (i.e. a car that normally gets 30 mpg would only get 28 mpg if its speed were 61 mph. Yes this gets silly at high speed where mpg goes to zero or gets negative - how will you handle this?)
