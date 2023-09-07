{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: M頭
// 顯示名稱: M頭
// 執行頻率: 日(逐筆洗價)
// 
// 
settotalBar(102);
value1=swinghigh(high,30,10,10,1);
//這段時間的第一轉折最高點
value2=swinghigh(high,30,10,10,2);
//這段時間的第二轉折高點
value3=swinglow(low,30,10,10,1);
//這段時間的第一轉折低點
value4=swinghighbar(high,30,10,10,1);
//第一轉折高點距離現在幾根BAR
value5=swinghighbar(high,30,10,10,2);
//第二轉折高點距離現在幾根BAR
value6=swinghighbar(low,30,10,10,1);
//轉折低點距離現在幾根BAR
if absvalue(value1-value2)/value1*100<3
//兩個高點差小於3%
and value6>value4 and value6<value5
//兩個高點中間有一個這段時間的低點
and value2=highest(high,100)
//第一個高點是長期以來的最高點
and close crosses under value3
//收盤價跌破這段計算時間的低點
then ret=1;