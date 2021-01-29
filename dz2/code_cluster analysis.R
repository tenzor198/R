#k-means
set.seed (2)
x=matrix (rnorm (50*2) , ncol =2)
x[1:25 ,1]=x[1:25 ,1]+3
x[1:25 ,2]=x[1:25 ,2]-4
km.out =kmeans (x,2, nstart =20)
km.out$cluster
plot(x, col =(km.out$cluster +1) , main="K-Means ClusteringResults with K=2",
     xlab ="", ylab="", pch =20, cex =2)
km.out =kmeans (x,3, nstart =20)
km.out
km.out =kmeans (x,3, nstart =1)
km.out$tot.withinss
km.out =kmeans (x,3, nstart =20)
km.out$tot.withinss
km.out =kmeans (x,3, nstart =200)
km.out$tot.withinss
#Hierarchical Clustering
hc.complete =hclust (dist(x), method ="complete")
hc.average =hclust (dist(x), method ="average")
hc.single =hclust (dist(x), method ="single")
par(mfrow =c(1,3))
plot(hc.complete ,main =" Complete Linkage ", xlab="", sub ="",cex =.9)
plot(hc.average , main =" Average Linkage ", xlab="", sub ="",cex =.9)
plot(hc.single , main=" Single Linkage ", xlab="", sub ="",cex =.9)
cutree (hc.complete , 2)
cutree (hc.average , 2)
cutree (hc.single , 2)
#Assignment
library('ISLR')
data(NCI60)
summary(NCI60)
nci.labs=NCI60$labs
nci.data=NCI60$data


