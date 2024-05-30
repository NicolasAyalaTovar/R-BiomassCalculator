# Biomass - biomasa

# Welcome to the bug's world of data! Let's crunch some numbers and not insects. 
#Happy coding!

#This script is designed so you can use the formula for calculating biomass proposed 
#by Rogers et al, 1976, which was later used by Stork and Blackburn in their 1993 study. 
#The formula links the number of insects to their size (length) and is as follows:

#b = n (0.0305*l^2.62)

# n = Abundance 
# l = Size 

# Formula: 

biomass <-  function(n,l){
  r1<-l^2.62
  r2<-0.0305*r1
  resul<-n*r2
  return(resul)
}

biomass(5, 6.5) #First abundance and then size

#If you have a database with several species and with two columns, one with the abundance 
#data and the other with the length data for each species, you can use this version of the 
#biomass function:   

biomass <- function(n, l) {
  r1 <- l^2.62
  r2 <- 0.0305 * r1
  resul <- n * r2
  return(resul)
}

databiomass<- database %>%
  mutate(biomass = biomass(n, l))

print(databiomass) 

#Example 

library(dplyr) #This library it is important to create the new column with the biomass values.

database <- data.frame(
  Species = c("Species1", "Species2", "Species3", "Species4"),
  n = c(10, 15, 8, 20), # Abundance 
  l = c(5.2, 6.5, 4.8, 7.0) # Size (cm)
)

databiomass<- database %>%
  mutate(biomass = biomass(n, l)) 

print(databiomass) # Show the table with biomass values 

#References 

# Rogers, L., Hinds, L. y Buschbom, R. (1976) A general weight vs length relationships for insects. Ann. Entomol.Soc.Am. 69: 387-389
# Stork, N. E. y Blackburn, T. M. (1993). Abundance, body size and biomass of arthropods in tropical forest. Oikos 67: 483-489.