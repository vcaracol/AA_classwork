require_relative "Employee"
require "byebug"

class Manager < Employee
    attr_accessor :employees
    # :total_employee_salaries


    def initialize(name, salary, title, boss)
        # @total_employee_salaries = 0
        @employees = []
        super(name, salary, title, boss)
    end

    # def inspect
    #     @employees.inspect
    # end

    def bonus(multiplier)
        total = 0
        employees.each do |el|
            total += el.salary
        end
        total
        # total_employee_salaries * multiplier
    end
end

ned = Manager.new("Ned", 1000000, "Founder", nil)
darren = Manager.new("Darren", 78000, "TA Manager", ned)
shawna  = Employee.new("Shawna", 12000, "TA", darren)
david = Employee.new("David", 10000, "TA", darren)
p ned.bonus(5)