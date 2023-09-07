{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: ADOsc買進訊號
// 顯示名稱: ADOsc買進訊號
// 執行頻率: 日
// 
// 
variable: bp(0), sp(0), ado(0);
settotalBar(3);
bp = High - Open;//多方攻擊最大戰績
sp = Close - Low;//多方反攻最大戰績
if High <> low then
	ado = (bp + sp)/(2*(High - Low))*100
else
	ado = 50;
value1=average(ado,5);
if value1 crosses over 50 then ret=1;