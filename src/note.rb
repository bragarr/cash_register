require "securerandom"
puts SecureRandom.uuid

class Note
    attr_reader :id

    def initialize(text)
        @id = SecureRandom.uuid
        @text = text
        @date = Time.now
    end
end