class ProjectBacker
    attr_reader :project, :backer
    @@all = []
    def intitialize(project, backer)
        @project = project
        @backer = backer
        @@all << self
    end
    def self.all
        @@all
    end
end