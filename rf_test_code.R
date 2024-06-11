library(raster)
# library(shapefiles)
# library(rgdal)
require(randomForest)
require(caret)


dat1 = read.csv("C://Users/bdmor/Desktop/20181007_points.csv")
dat1 = dat1[,-31]
# dat1 = dat1[complete.cases(dat1),]
dat2 = read.csv("C://Users/bdmor/Desktop/20191002_points.csv")
dat3 =  read.csv("C://Users/bdmor/Desktop/20200718_points.csv")

trnDat = dat1[dat1$rfMod == "trn",]
trnDat = dat1[]
tstDat = dat1[dat1$rfMod == "tst",]
df_RF <- randomForest(CLASS5 ~ Blue + Green + Red + VR1 + VR2 + VR3 + NIR  + SWIR1 + SWIR2, data = trnDat, importance = T, ntrees = 500)

#+ ndvi + ndavi + wavi + savi + rendvi1 + rendvi2 + ndwi + ndmi + mndwi, data = trnDat, importance = T, ntrees = 1000)
