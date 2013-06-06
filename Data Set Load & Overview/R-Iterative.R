# TODO: Add comment
# 
# Author: Josh
###############################################################################

number_1<-600851475143
number<-number_1
root_array<-1
facprod<-1

while (facprod<number_1)
{
c_root<-2
while (number/c_root != number%/%c_root)
{c_root<-c_root+1}

root_array<-c(root_array,c_root)
facprod<-facprod*c_root
number<-number/c_root
}

root_array

