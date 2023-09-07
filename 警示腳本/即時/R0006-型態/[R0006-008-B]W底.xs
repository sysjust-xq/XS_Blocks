{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: W底
// 顯示名稱: W底
// 執行頻率: 日(逐筆洗價)
// 
// 
settotalBar(100+2);
value1=swinglow(low,30,10,10,1);
//這段時間的第一轉折最低點
value2=swinglow(low,30,10,10,2);
//這段時間的第二轉折低點
value3=swinghigh(high,30,10,10,1);
//這段時間的第一轉折高點
value4=swinglowbar(low,30,10,10,1);
//第一轉折低點距離現在幾根BAR
value5=swinglowbar(low,30,10,10,2);
//第二轉折低點距離現在幾根BAR
value6=swinghighbar(high,30,10,10,1);
//轉折高點距離現在幾根BAR
if absvalue(value1-value2)/value1*100<3
//兩個低點差小於3%
and value6>value4 and value6<value5
//兩個低點中間有一個這段時間的高點
and value2=lowest(low,100)
//第一個低點是長期以來的最低點
and close crosses over value3
//收盤價突破這段計算時間的高點
then ret=1;