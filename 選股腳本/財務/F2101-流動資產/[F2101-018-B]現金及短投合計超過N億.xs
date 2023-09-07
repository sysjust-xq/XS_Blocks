{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 現金及短投合計超過N億
// 顯示名稱: 現金及短投合計超過[3]億
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,3,5,10,20,30,50
// 
input:_p1(3);
SetTotalBar(3);
value1=GetField("現金及約當現金","Q");//單位百萬
value2=GetField("短期投資","Q");//單位百萬
value3=(value1+value2)*0.01;//單位億之現金及短期投資合計金額
if value3>_p1 
then ret=1;
outputField1(value3);