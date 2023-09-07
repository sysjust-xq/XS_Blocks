{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 破底翻
// 顯示名稱: 破底翻
// 執行頻率: 日(逐筆洗價)
// 
// 
var:period(30);//設定計算低點的期間
var:L1(0),L2(0),L3(0),L4(0), L1B(0),L2B(0),L3B(0),L4B(0);
settotalBar(40);
L1=lowest(close,period);//找出最低點
L1B=lowestbar(close,period);//找出最低點所在位置
L2=swinglow(close,period,3,3,2);//找出波段次低點
L3=swinglow(close,period,3,3,3);//波段第三低點
L4=swinglow(close,period,3,3,4);//波段第四低點
L2B=swinglowbar(close,period,3,3,2);//找出波段次低點所在位置
L3B=swinglowbar(close,period,3,3,3);//波段第三低點位置
L4B=swinglowbar(close,period,3,3,4);//波段第四低點位置
ret = close[period]>close*1.1//大跌之後
and L1B> minlist(L2B,L3B,L4B)//破底價發生在盤整之後
and Maxlist(L2,L3,L4)<minlist(L2,L3,L4)*1.05//前面低點之間差距不到5%
and close cross over maxlist(L2,L3,L4);//股價突破原來的底部區