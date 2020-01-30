class Backer 
    attr_reader :name
    def initialize(name)
        @name = name 
    end
    def back_project(project)
        ProjectBacker.new(project, self)
    end
    def backed_projects
        ProjectBacker.all.select{ 
            |relationship|
             relationship.backer == self}.map{
                 |relationship| 
                 relationship.project }
    end

end

