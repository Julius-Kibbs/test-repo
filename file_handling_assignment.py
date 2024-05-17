#create the my_text.txt file
try:
    sth_new = open("my_file.txt","w")

#Insert the 3 lines which are a mix of strings and numbers
    sth_new.writelines(["\nWhat's good 2024","\nMy name is Julius,22 years old","\n2+2=4"])
finally:
    sth_new.close()

#appending 3 additional lines of text to my_text.txt
try:
    sth_new = open("my_file.txt","a")
    sth_new.writelines(["\nIts a beautiful day today","\nFridays are for biryani","\n5+5=10"])
finally:
    sth_new.close()

#Code to read the file contents
try:
    sth_new = open("my_file.txt","r")
    print(sth_new.read())
finally:    
    sth_new.close()

