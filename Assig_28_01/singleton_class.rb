require 'singleton'

class User
    #making class singleton i-e only one object can be instanciated
    include Singleton
    def get_username
        @username
    end
    def set_username(name)
        @username = name
    end
end

User.instance.set_username('pqr')
puts User.instance.get_username

#overwrite previous object
user1 = User.instance
user1.set_username('abc')
puts user1.get_username

#overwrite previous object
user2 = User.instance
user2.set_username('def')
puts user2.get_username

#check number of objects
puts ObjectSpace.each_object(User){}