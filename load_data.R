require(dplyr)
require(lubridate)

# Initial file import
dat <- tbl_df(read.table("dat.txt", sep = ";", header = T, stringsAsFactors = F))
dat <- dat %>%
  mutate(DateTime = paste(Date, Time)) %>%
  mutate(Date = dmy(Date)) %>%
  filter(Date %in% c(ymd("2007-02-01"),ymd("2007-02-02"))) %>%
  mutate(Time = hms(Time), DateTime = dmy_hms(DateTime)) %>%
  mutate(Global_active_power = as.numeric(Global_active_power))