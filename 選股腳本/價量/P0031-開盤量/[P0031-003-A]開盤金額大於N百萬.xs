{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 開盤金額大於N百萬
// 顯示名稱: 開盤金額 > [10]百萬
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 10,30,50,70,100,200,500
// 
input:_p1(10);
SetTotalBar(3); 
if GetField("開盤量") * GetField("開盤價") >=_p1*1000 then ret=1; 
OutputField1(GetField("開盤量") * GetField("開盤價"));