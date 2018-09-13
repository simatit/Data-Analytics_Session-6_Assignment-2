# 1. Import the Titanic Dataset from the link Titanic Data Set.
# a. Is there any difference in fares by different class of tickets?
# Note - Show a boxplot displaying the distribution of fares by class.
library(titanic)
boxplot(Fare~Pclass,data= titanic_train,
        main="Fares VS Passanger class",xlab="Class",ylab="Fare",col=c("yellow","purple","violet"))
# boxplot clarifies that Class 1 passangers has made high fare payments 
# in comprison with lower class passangers.


# b. Is there any association with Passenger class and gender?
# Note - Show a stacked bar chart
temp<-table(titanic_train$Sex,titanic_train$Pclass)
barplot(temp, main = "Class Gender Distribution", xlab = "Passanger class", 
        col=c("green", "yellow"), legend = c("Female","Male"), 
        names.arg = c("Class1", "Class2","Class3"))
# As per stacked Bar chart there is no association between Gender wise Passanger class.