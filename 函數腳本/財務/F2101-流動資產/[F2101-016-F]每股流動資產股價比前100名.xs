{@type:function}
// 腳本類型: 選股排行函數
// 腳本名稱: 每股流動資產股價比前100名
// 顯示名稱: 每股流動資產股價比前100名
// 執行頻率: 季
// 
// 
value1=GetField("現金及約當現金","Q");//百萬
value2=GetField("短期投資","Q");
value3=GetField("短期借款","Q");
value4=GetField("總市值","D");
value5=(value1+value2+value3)/(value4*100);
if value4<>0 then 
value6=value5/value4;
ret=value6;