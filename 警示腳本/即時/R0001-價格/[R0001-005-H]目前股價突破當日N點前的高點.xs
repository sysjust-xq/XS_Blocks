{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 目前股價突破當日N點前的高點
// 顯示名稱: 目前股價突破當日[10點整]前的高點
// 執行頻率: 1分(逐筆洗價)
// 
// _p1參數: 
// _p1數值: 9.5=[09點30分],10=[10點整],11=[11點整],12=[12點整]
// 
var:side(1);//1=多方；-1=空方
settotalBar(300);
variable:intrabarpersist xHigh(0);
input:_p1(10);
If _p1 = 9.5 then value1 = 093000;
If _p1 = 10 then value1 = 100000;
If _p1 = 11 then value1 = 110000;
If _p1 = 12 then value1 = 120000;
if side = 1 then begin
        if date <> date[1] then xHigh = 0;
        If time <= value1 and GetField("High") > xHigh then xHigh = GetField("High");
        If time > value1 and xHigh <> 0 then Ret = GetField("Close") cross Above xHigh;
end else if side = -1 then begin
        if date <> date[1] then xHigh = 0;
        If time <= value1 and GetField("Low") < xHigh then xHigh = GetField("Low");
        If time > value1 and xHigh <> 0 then Ret= GetField("Close") cross Below xHigh;
end;