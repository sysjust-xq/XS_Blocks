{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 借券餘額減少大於等於N張
// 顯示名稱: 借券餘額減少 >= [100]張
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0,100,200,300,500,1000
// 
input: _p1(100);
SetTotalBar(2); 
Value1 = GetField("借券餘額張數") - GetField("借券餘額張數")[1] ;
if Value1 < 0 and Value1 <=  -1*_p1 then ret=1; 
OutputField(1, Value1);