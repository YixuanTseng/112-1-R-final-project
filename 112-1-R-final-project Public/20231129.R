datalink = "https://datacenter.taichung.gov.tw/swagger/OpenData/fe8bc3b8-571f-493a-baf6-77cbc8ebfce2"
dataSet <- readr::read_csv(datalink)

dplyr::glimpse(dataSet)
# 哪個區域受傷最多
dataSet$區 |> 
  table() |>
  sort(decreasing = TRUE)
#