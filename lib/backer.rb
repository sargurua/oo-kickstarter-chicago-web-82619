class Backer
    attr_reader :backed_projects, :name
    def initialize(name)
        @name = name
        @backed_projects = []
    end
    def back_project(project)
        @backed_projects << project
        if !(project.backers.find {|backer| backer.name == self.name})
            project.add_backer(self)
        end
    end
end
