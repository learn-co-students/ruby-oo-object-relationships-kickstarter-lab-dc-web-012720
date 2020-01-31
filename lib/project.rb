class Project
    attr_reader :title
    def initialize(title)
        @title = title
    end
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    def backers
        ProjectBacker.all.select{|relationship|relationship.project == self
        }.map{|relationship|relationship.backer}
    end
end
 