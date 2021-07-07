class Project
attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        arr = []
        ProjectBacker.all.each do |inst|
            if inst.project == self
                arr << inst.backer
            end
        end
        arr
    end

end