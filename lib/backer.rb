class Backer 

    attr_reader :name 

    def initialize(name)
        @name = name 
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        b_p = ProjectBacker.all.select do |projects|
            projects.backer == self 
        end

        b_p.map do |p|
            p.project
        end
    end
    



end
