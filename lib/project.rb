class Project
    def initialize(title)
        @title = title
    end
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

end
 