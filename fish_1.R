library(rfishdraw)
library(ggplot2)

# import package
file <- system.file("extdata", package = "rfishdraw")
dat <- readRDS(paste0(file, "/", "output_json.rds"))
for (i in seq(length(dat))) {
  dat[[i]] <- cbind(dat[[i]],i)
}
plot(NA, xlim = c(0,520),ylim = c(-320,0), axes = F, xlab = " ", ylab = " ")
for(i in seq(length(dat))) {
  lines(x = dat[[i]][,1],y = -dat[[i]][,2], lwd = 1, col = "red")
}