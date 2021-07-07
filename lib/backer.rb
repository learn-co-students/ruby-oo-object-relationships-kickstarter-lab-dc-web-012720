require 'pry'

class Backer
attr_reader :name
attr_accessor :project, :backer

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        arr = []
        ProjectBacker.all.each do |inst|
            if inst.backer == self
                arr << inst.project
            end
        end
        arr
    end
end