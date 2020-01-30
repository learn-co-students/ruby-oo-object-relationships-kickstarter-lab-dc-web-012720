class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers()
        ProjectBacker.all.select {|pbacker| pbacker.project == self }.map {|pbacker| pbacker.backer}
    end
end