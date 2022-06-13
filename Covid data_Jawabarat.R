#Berapa jumlah total kasus COVID-19 di Jawa Barat?
#Berapa persentase kematian akibat COVID-19 di Jawa Barat?
#Berapa persentase tingkat kesembuhan dari COVID-19 di Jawa Barat?


library(httr)
set_config(config(ssl_verifypeer = 0L))
resp_jabar <- GET("https://storage.googleapis.com/dqlab-dataset/prov_detail_JAWA_BARAT.json")
cov_jabar_raw <- content(resp_jabar, as = "parsed", simplifyVector = TRUE)


names(cov_jabar_raw)
cov_jabar_raw$kasus_total
cov_jabar_raw$meninggal_persen
cov_jabar_raw$sembuh_persen