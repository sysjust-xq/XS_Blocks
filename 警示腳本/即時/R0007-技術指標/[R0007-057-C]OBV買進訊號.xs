{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: OBV買進訊號
// 顯示名稱: OBV買進訊號
// 執行頻率: 日(逐筆洗價)
// 
// 
variable: obvolume(0);
settotalBar(22);
if CurrentBar = 1 then
	obvolume = 0
else begin	
	if close > close[1] then
		obvolume = obvolume[1] + volume
	else begin
		if close < close[1] then
			obvolume = obvolume[1] - volume
		else
			obvolume = obvolume[1];
	end;		
end;
value1=average(obvolume,20);
ret = obvolume crosses over value1*1.3;