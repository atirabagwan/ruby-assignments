class Animal 
    def speak
        puts "Animal speak"
    end
    private
    def self.run
        puts "Animal run"
    end
    def swim
        puts "Animal swin"
    end
    protected
    def eat
        puts "Animal eat"
    end
end

class Cat < Animal
    def speak
        puts "cat speak"
    end
    def eat
        #here using super can call private method of parent class
        super
    end
    def swim
        super
    end
end

animal = Animal.new

cat = Cat.new

cat.speak

Cat.run  #can access private / protected class methods
Animal.run

#can't directly access private methods
#animal.eat  
# animal.swim

#calling private/protected methods of parent class using child class object
cat.eat
cat.swim


