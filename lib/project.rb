class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.select do | x |
            x.project == self
        end.map do |y|
            y.backer
        end 
    end
end
