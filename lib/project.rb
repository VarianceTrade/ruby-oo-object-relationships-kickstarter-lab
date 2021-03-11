class Project

    def initialize(title)
        @title = title
    end

    def title
        @title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        bucket = []

        ProjectBacker.all.each do |project_backer|
            if project_backer.project == self
                bucket << project_backer.backer
            end
        end
        return bucket
    end

end
