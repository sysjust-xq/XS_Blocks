{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 預估本益比(以近10年平均EPS估算)小於N倍
// 顯示名稱: 預估本益比(以近10年平均EPS估算) < [10]倍
// 執行頻率: 日
// 
// 最近十年本益比評價法，先算出目標價後，當收盤價 < 目標價，則篩選出該商品。
// _p1參數: 
// _p1數值: 5,6,7,8,9,10,11,12,13,14,15,20,30,40
// 
input:_p1(10);//合理本益比
settotalBar(2);
value1=average(getField("每股稅後淨利(元)", "Y"),10);
value2=summation(GetField("每股稅後淨利(元)", "Q"),4);
value3=(value1+value2)/2;
value4=value3*_p1;
if close < value4 then ret=1;
outputfield(1,value4,1,"目標價");
outputfield(2,close/value4,1,"折溢價率");