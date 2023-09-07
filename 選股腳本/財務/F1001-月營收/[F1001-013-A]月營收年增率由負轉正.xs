{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 月營收年增率由負轉正
// 顯示名稱: 月營收年增率由負轉正
// 執行頻率: 月
// 
// 
SetTotalBar(2);
If GetField("月營收年增率")[1] < 0 and GetField("月營收年增率") > 0 then ret = 1;
outputField1(GetField("月營收年增率"));