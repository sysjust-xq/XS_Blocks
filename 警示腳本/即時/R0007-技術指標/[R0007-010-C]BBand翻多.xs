{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: BBand翻多
// 顯示名稱: BBand翻多
// 執行頻率: 日(逐筆洗價)
// 
// 
Var:Length(20);//,"天數"
Var:Up(2);//,"上"
Var:Down(2);//,"下"
Var:Threshold(1);//,"觸發標準"
variable:up1(0),down1(0),mid1(0),bbandwidth(0),_Side(0);
settotalBar(22);
up1 = bollingerband(GetField("收盤價"), Length, absvalue(Up));
down1 = bollingerband(GetField("收盤價"), Length, -1 * absvalue(Down));
mid1 = (up1 + down1) / 2;
bbandwidth = 100 * (up1 - down1) / mid1;
_Side = 1;
if _Side = 1 then
        ret = bbandwidth crosses above Threshold
else if _Side = -1 then
        ret = bbandwidth crosses below Threshold
else
        RaiseRunTimeError("XSCode的Side請填 1 或者 -1");