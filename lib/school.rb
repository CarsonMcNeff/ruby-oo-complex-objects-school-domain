# code here!
class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student,grade)
        roster[grade] = [] if !roster.key?(grade)
        roster[grade] << student
    end

    def grade(grade)
        roster.values_at(grade).flatten
    end

    def sort
        roster.each do |grade, students|
            roster[grade] = students.sort
        end
    end
end