class Backer

    def initialize(name)
        @name = name
    end


    def name
        @name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        bucket = []

        ProjectBacker.all.each do |project_backer|
            if project_backer.backer == self
                bucket << project_backer.project
            end
        end
        return bucket
    end
 
end


