{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 多方炮
// 顯示名稱: 多方炮
// 執行頻率: 日(逐筆洗價)
// 
// 
settotalBar(5);
ret = close[2]>open[2]*1.05//前兩根K棒是實體長紅棒
and close[1]*1.01<open[1]
and close[1]<close[2]//前一根K棒是實體黑棒且低於前兩根的收盤
and open >close[1]//今天跳空上漲
and close >= open*1.05;//目前已形成實體長紅K棒