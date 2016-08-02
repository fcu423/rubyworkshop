class Monster
  attr_reader :name, :actions

  def initialize(name)
    @name = name
    @actions = {
      screams: 0,
      scares: 0,
      runs: 0,
      hides: 0
    }
  end

  # Recieves a block and assigns it to block variable
  def say(&block)
    print  "#{name} says..."
    block.call # Can be replaced with 'yield'
  end

  # Other form for say method: Yield will execute any block sent to the method

  # def say
  #   print  "#{name} says..."
  #   yield
  # end

  def scream(&block)
    actions[:screams] += 1
    print "#{name} screams! "
    block.call # Can be replaced with 'yield'
  end

  def scare(&block)
    actions[:scares] += 1
    print "#{name} scares you! "
    block.call # Can be replaced with 'yield'
  end

  def run(&block)
    actions[:runs] += 1
    print "#{name} RUNS! "
    block.call # Can be replaced with 'yield'
  end

  def hide(&block)
    actions[:hides] += 1
    print "#{name} hides! "
    block.call # Can be replaced with 'yield'
  end

  def go_crazy(&block)
    puts "DID YOU TOUCH MY WIFE?!"
    if block_given?
      actions.each do |key, value|
        yield(key)
      end
    else
      puts "YOU DYING!"
    end
  end

  def print_scoreboard
    puts "--------------------"
    puts "#{name} scoreboard"
    puts "--------------------"
    puts "- Screams #{actions[:screams]}"
    puts "- Scares #{actions[:scares]}"
    puts "- Run #{actions[:runs]}"
    puts "- Hides #{actions[:hides]}"
  end
end

monster = Monster.new("CHUCK")
monster.say { puts "Welcome to my home."}

# Blocks can be passed between do-end or {} keywords.
monster.scream do
  puts "BOO!"
end

monster.scare { puts "Go away!" }

monster.run { puts "it's GTFO time!" }

monster.hide { puts "bitch-running time!" }

monster.go_crazy { |action| puts "CHUCK #{action}" }

monster.go_crazy

monster.print_scoreboard
