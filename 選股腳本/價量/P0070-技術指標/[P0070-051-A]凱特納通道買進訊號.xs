{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 凱特納通道買進訊號
// 顯示名稱: 凱特納通道買進訊號
// 執行頻率: 日
// 
// 
settotalBar(200);
variable: MaPo(0),V1(0),V2(0);
V1 = Xaverage(typicalprice,20);
V2 = atr(20);
if MaPo < 1 then
begin
	if C >  V1+V2 then 
	begin
    MaPo=1;
    RET=1;
	end;
end
else
if MaPo >-1 then
begin

	if C <  V1-V2 then 
	begin
    MaPo=-1;
    //RET=1;
	end;
end;