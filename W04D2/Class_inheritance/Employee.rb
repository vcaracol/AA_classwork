# require_relative "Manager"
class Employee
    attr_reader :salary, :boss
    def initialize(name, salary, title, boss)
        @name = name
        @salary = salary
        @title = title
        @boss = boss
        # boss.total_employee_salaries += self.salary if boss
        boss.employees << self if boss
    end

    def bonus(multiplier)
        bonus = @salary * multiplier
    end
end