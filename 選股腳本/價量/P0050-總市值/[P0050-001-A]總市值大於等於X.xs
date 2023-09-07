{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 總市值大於等於X
// 顯示名稱: 總市值 >= [100]億
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,20,50,70,100,200,300,500,700,800,1000
// 
input:_p1(100);
SetTotalBar(2); 
Value1 = GetField("總市值(億)");
if Value1 >= _p1 then ret=1; 
OutputField(1, Value1, 2, "總市值");