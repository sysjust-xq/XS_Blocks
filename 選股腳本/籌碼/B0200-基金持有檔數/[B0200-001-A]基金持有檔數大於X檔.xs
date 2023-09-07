{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 基金持有檔數大於X檔
// 顯示名稱: 基金持有檔數 > [100]檔
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 10,25,50,70,100
// 
input:_p1(100);
SetTotalBar(2); 
Value1 = GetField("股票基金持有檔數");
if Value1 >= _p1 then ret=1; 
OutputField(1, Value1);