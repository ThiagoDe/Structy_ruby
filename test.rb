class NewJob
    attr_reader :company, :who, :position

    def initialize(company, who)
        @company = company
        @who = who 
        @position = nil 
    end

    def update_position(type)
        @position = type 
    end

end

