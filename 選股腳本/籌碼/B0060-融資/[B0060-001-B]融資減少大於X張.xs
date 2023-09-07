{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 融資減少大於X張
// 顯示名稱: 融資減少 > [100]張
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0,100,200,300,500,1000,2000,5000,10000
// 
input:_p1(100);
SetTotalBar(2); 
Value1 = GetField("融資增減張數");
if Value1 < 0 and absvalue(Value1) > _p1 then ret=1; 
OutputField(1, Value1);