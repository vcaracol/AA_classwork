
def deep_dup(arr)
    arr.map do |ele|
        if ele.is_a?(Array)
            deep_dup(ele)
        else
            ele
        end
    end
end
robot_parts = [
  ["nuts", "bolts", "washers"],
  ["capacitors", "resistors", "inductors"]
]
robot_parts_copy = deep_dup(robot_parts)
robot_parts_copy << 'Hi'
p robot_parts

