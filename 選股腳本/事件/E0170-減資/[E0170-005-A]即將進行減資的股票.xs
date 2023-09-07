{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 即將進行減資的股票
// 顯示名稱: 即將進行減資的股票
// 執行頻率: 日
// 
// 
settotalBar(2);
If date < GetField("減資新股上市日") and GetField("減資新股上市日") <> 0 then ret = 1;
outputField1(GetField("減資新股上市日"),"減資新股上市日");