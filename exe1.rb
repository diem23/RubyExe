class Person
    @@count=0
    def initialize(name,age)
        @name=name
        @age=age
        @@count+=1
    end
    def name
        @name
    end
    def name=(name)
        @name=name
    end
    def age
        @age
    end
    def age=(age)
        @age=age
    end
    def introduce 
        puts "My name is #@name. I'm #@age years old"
    end
    def self.totalCount
        puts "Total number of people is #@@count"
    end
    def testRaiseMsg
        begin
            raise Exception.new "this is an exception!"
        rescue Exception => e
            puts e
        end
    end
end
def sml_18(number)
    number + 18
end
person1 = Person.new("diem",21)
person2 = Person.new("hehe",10)
person2.introduce
person1.introduce
Person.totalCount
puts "----------7.Create 20 peple in a list------------"
listPerson = []
20.times {|i| listPerson.append(Person.new("Person #{i+1}",rand(80)+10))}
listPerson.each do |i|    
    i.introduce
end

#8
listPerson1=listPerson.select {|v| v.age<18}
puts "---------8.Filt the list with person have age less than 18 years old---------"
listPerson1.each do |i|    
    i.introduce
end
#9
listPerson2=listPerson.select {|v| v.age>=18}
puts "---------9. Remove from the list when person have age less than 18 years old----------"
listPerson2.each do |i|    
    i.introduce
end
#10
listPerson3=listPerson.sort_by {|a| a.age}
puts "---------10. Sorting list with increasing order of age----------"
listPerson3.each do |i|    
    i.introduce
end
#11
listPerson4=listPerson3.reverse()
puts "---------11. Sorting list with decreasing order of age----------"
listPerson4.each do |i|    
    i.introduce
end
#12
index= 0
listPerson5 = listPerson
listPerson5=listPerson5.delete_at(index)
puts "---------12. Delete element 0th in list of people----------"
# listPerson5.each do |i| 
#     puts i   
#     i.introduce
# end
#13
oldestPerson = listPerson.inject(Person.new("temp",9)) { |mem,cur| mem.age > cur.age ? mem : cur}
youngestPerson = listPerson.inject(Person.new("temp",91)) { |mem,cur| mem.age > cur.age ? cur : mem}
puts "---------13----------"
puts "---------Oldest person-----"
oldestPerson.introduce
puts "---------Youngest person-----"
youngestPerson.introduce
# youngestPerson.introduce
#14
puts "----------14. List of people after gaining age by 1: --------"
listPerson.each do |i| 
    i.age=i.age+1
end
# puts listPerson.length()
listPerson.each do |i| 
    i.introduce
end
#15
listOfAge = listPerson.map {|i| i.age}
puts "----------15. Get array of age of person in list: -----------"
p listOfAge 
#16
listPerson16 = []
20.times {|i| listPerson16.append(Person.new("Person #{i+1}",rand(80)+10))}
concatArry= listPerson.concat(listPerson16)
puts "----------16. Get array of age of person in list: -----------"
concatArry.each do |i|    
    i.introduce
end
puts "-----------17. Test raising exception----------"
Person.new("diem",22).testRaiseMsg
# puts "listPerson3:"
# 20.times {|i| listPerson3[i].introduce}
# #11
# puts "listPerson4:"
# 20.times {|i| listPerson4[i].introduce}

# # 20.times {|i| listPerson[i].introduce}


    
    
    