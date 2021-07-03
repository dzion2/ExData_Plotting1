source("data_load.R")
par(mfrow = c(2, 2))
with(household, {
  plot(datetime, Global_active_power, type = "l", xlab = "",
       ylab = "Global Active Power")
  
  plot(datetime, Voltage, type = "l")
  
  plot(datetime, Sub_metering_1, type = "l", ylab = "Energy sub metering",
       xlab = "")
  legend("topright", legend = names(household)[5:7], y.intersp = 0.4,
         col = c("black", "red", "blue"), pch = "_", box.lty = 0, inset = c(0, -0.1))
  lines(datetime, Sub_metering_2, col = "red")
  lines(datetime, Sub_metering_3, col = "blue")
  
  plot(datetime, Global_reactive_power, type = "l")
})
dev.copy(png, "plot4.png")
dev.off()

