{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 月營收年增率較上個月成長
// 顯示名稱: 月營收年增率較上個月成長
// 執行頻率: 月
// 
// 
SetTotalBar(2);
if GetField("月營收年增率") > GetField("月營收年增率")[1] then ret=1;
OutputField(1, GetField("月營收年增率")*1);