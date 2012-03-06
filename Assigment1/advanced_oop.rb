#Assigment1 Advanced OOP - Juan Felipe Arango - 

class Class
  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s  
    attr_reader attr_name  
    attr_reader attr_name+"_history" 
    
    code = <<-CODE
          def #{attr_name}=(val)
           @#{attr_name} = val
           @#{attr_name}_history ||= [nil]
           @#{attr_name}_history.push(val)
          end
        CODE
    class_eval code
  end
end

class Foo
  attr_accessor_with_history :bar
end

f = Foo.new
f.bar = 1
f.bar = 2
puts f.bar
puts f.bar_history