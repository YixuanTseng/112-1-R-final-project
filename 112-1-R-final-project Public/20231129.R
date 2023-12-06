datalink = "https://datacenter.taichung.gov.tw/swagger/OpenData/fe8bc3b8-571f-493a-baf6-77cbc8ebfce2"
dataSet <- readr::read_csv(datalink)

dplyr::glimpse(dataSet)
# 哪個區域受傷最多
dataSet$區 |> 
  table() |>
  sort(decreasing = TRUE)

# 最常發生事故的位置
dataSet$事故位置 |>
  table() |>
  sort(decreasing = T)

# 當事者區分
dataSet$`當事者區分(類別)` |>
  table() |>
  sort(decreasing = T)

#主要肇因
dataSet$肇事因素主要 |>
  table() |>
  sort(decreasing = T)

#飲酒情形
dataSet$飲酒情形 |>
  table() |>
  sort(decreasing = T)

#事故類型及型態
dataSet$事故類型及型態 |>
  table() |>
  sort(decreasing = T)
