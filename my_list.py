my_list=[] #creating the empty list

my_list= my_list + [10,20,30,40] #appending the elements 10,20,30 and 40

my_list.insert(1, 15) #inserting value 15 at 2nd position

list_a=[50,60,70]

my_list.extend(list_a) #extending my_list with lists containing elements 50,60,70

del(my_list[7]) #removing the last element

my_list.sort(reverse=True) #sorting according to ascending order

print(my_list.index(30))