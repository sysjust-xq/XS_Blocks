{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 佔大盤成交量比前100名
// 顯示名稱: 佔大盤週成交量比前100名
// 執行頻率: 週
// 
// 
If getfield("成交金額(元)","W")<> 0 then 
retval =(getfield("成交金額(元)","W")/getsymbolField("TSE.tw", "成交金額(元)","W"))*100;