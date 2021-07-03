source("data_load.R")
with(household, {
  plot(datetime, Sub_metering_1, type = "l", ylab = "Energy sub metering",
       xlab = "")
  lines(datetime, Sub_metering_2, col = "red")
  lines(datetime, Sub_metering_3, col = "blue")
  legend("topright", legend = names(household)[5:7],
         col = c("black", "red", "blue"),
         pch = "_")
})
dev.copy(png, "plot3.png")
dev.off()
