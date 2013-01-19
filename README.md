**Output a set of numbers (say, 1-15), but whenever a number is divisible by 3, you output "Fizz" instead. If it's divisible by 5, you output "Buzz" instead. If it's divisible by 3 and 5, you output "FizzBuzz" instead.**

### Scripted

The "simplest thing that could possibly work": i.e., a script. A typical implementation takes roughly a dozen lines. Hint: % is Ruby's "modulo" operator... *a % b* divides a by b and returns the remainder. Resources: [Ruby Docs](http://www.ruby-doc.org/core), [The Pickaxe Book](http://www.ruby-doc.org/docs/ProgrammingRuby/)

### Single Method

Wrap your script in a method that accepts an argument of how many numbers to output. The method will output the results itself.

### Generator Method

Alter your method so that it collects the results and returns them to the caller. The caller will output the results.

### Classy and Multilingual

Wrap your method in a class that also implements methods returning output as plain-text, [JSON](http://www.ruby-doc.org/stdlib-1.9.3/libdoc/json/rdoc/JSON.html) and HTML.

### Tested

Write tests for your class using the popular [RSpec Test Framework](https://www.relishapp.com/rspec) to ensure it behaves correctly when supplied arguments of 15, 0 and nil. Also confirm your output methods behave as you expect. 

### Gemmed

Package your class as a simple gem using [Bundler](http://gembundler.com/v1.2/rubygems.html) and upload it to [GitHub](https://github.com/) for sharing with other developers.

### Web-Enabled

Use the [Sinatra](http://sinatrarb.com) framework to make your gem accessible from any web browser, deploying your final version to [Heroku](http://heroku.com). Try using [Twitter Bootstrap](http://twitter.github.com/bootstrap/index.html) to give it a bit of flair.

