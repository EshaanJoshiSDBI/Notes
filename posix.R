st_session = 'April 29,2021, 12:10:34'
dt_format = '%B %d,%Y, %H:%M:%S'
as.Date(st_session, format = dt_format)
st_date_format = as.POSIXct(st_session, format = dt_format)
st_date_format
Sys.time()
Sys.timezone()
format(as.Date(st_date_format, format = dt_format),'%B')
library(lubridate)
year(mdy(st_date_format))
