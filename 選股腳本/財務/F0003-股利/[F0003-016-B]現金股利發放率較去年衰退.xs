{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 現金股利發放率較去年衰退
// 顯示名稱: 現金股利發放率較去年衰退
// 執行頻率: 年
// 
// 
SetTotalBar(2);
if GetField("現金派息比率") < GetField("現金派息比率")[1] then ret=1;
OutputField(1, GetField("現金派息比率")*1);