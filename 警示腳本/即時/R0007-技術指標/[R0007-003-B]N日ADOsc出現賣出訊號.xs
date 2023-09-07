{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: N日ADOsc出現賣出訊號
// 顯示名稱: [10]日ADOsc出現賣出訊號
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 日的ADOsc期數
// _p1數值: 5,10,20
// 
input:_p1(10);
variable: bp(0), sp(0), ado(0);
settotalBar(_p1+2);

value1=average(ado,_p1);

if value1 cross under 50 then ret=1;