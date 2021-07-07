class Project
attr_reader :title

def initialize(title)
@title = title
end

def add_backer(backer)
	ProjectBacker.new(self, backer)
end

def backers
	ProjectBacker.all.select do |project|
		project.project == self
	end.map do |project_obj|
		project_obj.backer
	end
end

end