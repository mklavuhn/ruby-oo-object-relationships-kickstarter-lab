class Project

    attr_reader :title 

    def initialize(title)
        @title = title 
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        bakers = ProjectBacker.all.select do |backers|
            backers.project == self 
        end

        bakers.map do |b|
            b.backer
        end
    end

end