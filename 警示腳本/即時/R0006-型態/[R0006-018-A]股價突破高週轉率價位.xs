{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 股價突破高週轉率價位
// 顯示名稱: 股價突破高週轉率價位
// 執行頻率: 日(逐筆洗價)
// 
// 
variable: _TO(0), Kprice(0);
settotalBar(100+3);
if GetField("發行張數(張)")[1] <> 0 then
        _TO = volume[1] / GetField("發行張數(張)")[1]
else
        _TO = 0;
if _TO cross Over highest(_TO[1],100) then Kprice = H;
ret = Kprice <> 0 and C crosses over Kprice;