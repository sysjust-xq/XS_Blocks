{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 漲停後持續成交
// 顯示名稱: 漲停後持續成交
// 執行頻率: 1分(非逐筆洗價)
// 
// 
var: _recordVolume(0);
SetTotalBar(0);

if GetFielddate("日期", "D") <> GetFielddate("日期", "D")[1] 
or GetField("漲停價", "D") <> GetField("收盤價", "D")
then begin 
        _recordVolume = 0;
        condition1 = false;
end;

//當日漲停
if condition1 = False and GetField("漲停價", "D") = GetField("收盤價", "D") then begin
        condition1 = True;
        _recordVolume = GetField("成交量", "D");
end;

//漲停後的單量大於100張
if condition1 = True and GetField("成交量") > 100 then ret = 1;