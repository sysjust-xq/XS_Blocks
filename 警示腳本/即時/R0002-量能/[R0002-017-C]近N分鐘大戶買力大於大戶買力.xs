{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 近N分鐘大戶買力大於大戶買力
// 顯示名稱: 近15分鐘大戶買力>大戶買力
// 執行頻率: 1分(非逐筆洗價)
// 
// 符合以下三個條件
// 1. 近15分鐘大戶買賣力>0
// 2. 大戶買賣力(開盤迄今)>0
// 3. 近15分鐘大戶買賣力 > 大戶買賣力
// 
settotalBar(15);
value1 = GetField("賣出特大單量","D") + GetField("賣出大單量","D");
value2 = GetField("買進特大單量","D") + GetField("買進大單量","D");
value3 = value2 - value1;
if value3 > 0 and DiffBidAskVolumeLxL > 0 and DiffBidAskVolumeLxL > value3 then ret = 1;