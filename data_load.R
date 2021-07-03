library(dplyr)
library(data.table)
library(lubridate)

if (!file.exists("household_power_consumption.txt")) {
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                destfile = "household_power_consumption.zip")
  unzip("household_power_consumption.zip")
}

household <- fread("household_power_consumption.txt", header = TRUE,
                        sep = ";", na.strings = "?",
                        colClasses = c("character", "character", "numeric", "numeric",
                                       "numeric", "numeric", "numeric", "numeric",
                                       "numeric")) %>%
  filter(Date == "1/2/2007" | Date == "2/2/2007") %>%
  mutate(datetime = dmy_hms(paste(Date, Time))) %>%
  select(Global_active_power:datetime)
         
         