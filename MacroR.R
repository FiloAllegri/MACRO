library("plyr")  # load plyr
library("tidyverse") # load tidyverse
library("rio") # load rio
library("magrittr") # load magrittr
library("ggthemes") # load ggthemes
library("lmtest") # load lmtest
library("sandwich") # load sandwich
library("broom") # load broom


TaxRevenue <- import("TaxRevenue.csv")
TaxWedge <- import("TaxWedge.csv")
IntRate <- import("IntRate.csv")


TaxRevenueC <- TaxRevenue[ -c(2,3,4,5,7,8) ]
TaxWedgeC <- TaxWedge[ -c(2,3,4,5,7,8,9) ]
IntRateC <- IntRate[ -c(2,3,4,5,7) ]


Tax <- merge(x = TaxWedgeC, y = TaxRevenueC, by = c("LOCATION", "TIME"), all=TRUE)
Tax <- merge(x = Tax, y = IntRateC, by = c("LOCATION", "TIME"), all=TRUE)

x <- na.omit(Tax)








