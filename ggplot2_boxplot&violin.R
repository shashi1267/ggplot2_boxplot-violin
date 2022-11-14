#install and call the library
library(ggplot2)

#read/load data set
data("iris")
iris
View(iris)

#Qc of data
is.na(iris)

##plotting graph
#base line for plot

graph_box= ggplot(iris,aes(x=Species,y=Sepal.Length)) +
  labs(x="Species",y="Sepal length", title = "SEPAL LENGTH DISTRIBUTION") +
  geom_boxplot(width=0.5) +
  aes(fill=Species) +
  scale_fill_brewer(palette = "Dark2")
print(graph_box)

#geom_voilin
graph_violin= ggplot(iris,aes(x=Species,y=Sepal.Length)) +
  labs(x="Species",y="Sepal length", title = "SEPAL LENGTH DISTRIBUTION") +
  geom_violin(width=0.5) +
  theme(axis.text.x = element_text(angle = 90)) +
  aes(fill=Species) +
  scale_fill_brewer(palette = "Dark2")
print(graph_violin)
