# The GildedRose Kata
A second attempt at The GildedRose during Makers Academy Tech Test Week. We had limited time to make progress with this kata of about 4 hours


# Gilded-Rose-Tech-Test
A first attempt at the Gilded Rose Tech Test in Ruby in 2.5 hours!

## Getting started

`$ git clone git@github.com:charlottebrf/Gilded-Rose-Tech-Test.git`
`$ bundle install`

## Usage

Run the files locally:
`$ ruby file_name.rb`

Run the program in a REPL to interact with classes and their methods, e.g. pry:

`$ pry`
```
require 'file_name.rb'
new ClassName
```

## Running tests

`$ rspec`


## Test suite

`Rspec`
`Simplecov`

## Test coverage

`98.5%`


# My Approach
I started by creating a Golden Master for my tests to ensure that I could check that these tests did not break as I refactored the kata.

To ensure consistency I iterated over my tests 30 times.

My next steps were to take very small refactoring steps. I looked to reduce the repetition that I could see, without necessarily understanding the logic of the code. This allowed me to get greater visibility on the logic by decluttering the number of nested if statements & repetition.

Once I had done this I then started splitting out specific item related code into separate private methods. This allowed me to disentangle the code further, to break them down into smaller and smaller reusable chunks that weren't interdependent on one another.

# Future Approach
As I had a very limited amount of time to complete the task, in the future I would like to finish separating out all my items into separate private methods. I would then separate these methods into their own classes before adding in the new feature.

This approach was inspired by Sandi Metz [All the little things](https://www.youtube.com/watch?v=8bZh5LMaSmE) and the desire to 'make this small'.
