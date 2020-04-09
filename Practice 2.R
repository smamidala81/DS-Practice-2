
e_quakes<-datasets::quakes

head(e_quakes)
tail(e_quakes)
e_quakes[,c(1,2)]
e_quakes$lat

#Summary#
summary(e_quakes$mag)
summary(e_quakes)

# Plot graph #
plot(e_quakes$lat)
plot(e_quakes$lat,e_quakes$mag)
plot(e_quakes)

# Plot and line graph #
plot(e_quakes$lat,type = 'l')
plot(e_quakes$lat,type = 'p')
plot(e_quakes$lat,type = 'b')
plot(e_quakes$lat,xlab = 'lat concentration',
     ylab = 'no of instances',main = 'lat levels in the city',col='blue')

# Horizontal bar plot #
barplot(e_quakes$lat,xlab = 'lat concentration',
        ylab = 'no of instances',main = 'lat levels in the city',col='blue',horiz=F)
barplot(e_quakes$lat,xlab = 'lat concentration',
        ylab = 'no of instances',main = 'lat levels in the city',col='blue',horiz=T)


# Histogram #
hist(e_quakes$depth)
hist(e_quakes$long)
hist(e_quakes$depth, main='Depth values',xlab='Depth rad',col='blue')
hist(e_quakes$long, main='long values',xlab='long rad',col='red')


# Single box plot #
boxplot(e_quakes$depth)
boxplot(e_quakes$long)

# Multiple bx plot #
boxplot(e_quakes[,1:4],main='Multiple box plot')

par(mfrow=c(3,3),mar=c(2,5,2,1),las=1,bty='o')

plot(e_quakes$lat)
plot(e_quakes$lat,e_quakes$mag)
plot(e_quakes$long,type="l")
plot(e_quakes$stations,type="l")
barplot(e_quakes$lat,xlab = 'lat levels',
        main = 'lat concentration in air',col='green',horiz=T)
hist(e_quakes$depth)
hist(e_quakes$long)
boxplot(e_quakes$depth)
boxplot(e_quakes[,0:4],main='multiple box plot')


