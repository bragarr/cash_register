require "../../db/db"

class Manager
    def initialize
        @database = Database.new
    end
end