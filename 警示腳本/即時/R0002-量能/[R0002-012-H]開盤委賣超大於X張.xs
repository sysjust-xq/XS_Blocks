{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 開盤委賣超大於X張
// 顯示名稱: 開盤委賣超  >= [100]張
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 
// _p1數值: 50,100,200,300,500,1000
// 
variable:_side(1); //1為>；-1為<
input:_p1(100);
SetTotalBar(2);
If getField("開盤委賣") < getField("開盤委買") then Return;

if _side = 1 then begin
        If getField("開盤委賣")-getField("開盤委買") >= _p1 then ret = 1;
end else if _side = -1 then begin
        If getField("開盤委賣")-getField("開盤委買") <= _p1 then ret = 1;
end;