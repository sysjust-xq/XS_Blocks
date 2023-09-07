{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: V型反轉
// 顯示名稱: V型反轉
// 執行頻率: 日(逐筆洗價)
// 
// 
Var:period(40);
variable:ld(0);
settotalBar(43);

ld=lowestbar(low,period);
//找出區間最低點所在的bar位置
if angle(date[period],date[ld])<-45
//區間起始點到最低點之間的角度是負的，且小於負的45度
and angle(date[ld],date)>45
//區間最低點到最近一期的角度是正的，且大於45度
and ld>=4
//最低點的位置距離現在超過三根bar以上
and close[ld]*1.3<highest(high,40)
//最低點距離兩個月來的高點跌幅超過四成
then condition1=true;
value1=barslast(condition1);
if value1[1]>60
//上一次發生這種V型反轉超過六十天
and value1=0
//今天發生V型反轉
then ret=1;