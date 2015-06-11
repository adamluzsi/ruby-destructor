# Destructor

This Add new callback to instance objects such as :initialize, but for the opposite effect: finalize


## Installation

Add this line to your application's Gemfile:

    gem 'destructor'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install destructor

## Usage

```ruby

    require 'destructor'
    
    class Foo
    
      attr_reader :bar
    
      def initialize
        @bar = 123
      end
    
      def finalize
        puts "Before Destroying OBJECT: #{self.inspect}"
      end
    
    end
    
    
    f=Foo.new
    
    f.instance_variable_set(:@bar,rand)
    puts "Foo.bar is #{f.bar} now"
    
    f=nil # mark for sweep for GC
    
    # Force ruby to start the Garbage Collector
    # In a real program you don't have to do this
    # ruby will run the GC automatically.
    GC.start
    
    sleep 3 # make sure you will see the message
    # before ruby quits
    
    puts 'done'
    
    #> Before Destroying OBJECT: #<Foo:0x007fdc298c66c8 @bar=0.8856108662303454>

```
## Contributing

1. Fork it ( https://github.com/[my-github-username]/destructor/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
