{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 近N分鐘大戶買超大於X張
// 顯示名稱: 近15分鐘大戶買超>[1000]張
// 執行頻率: 1分(非逐筆洗價)
// 
// 計算方式為「近15分鐘累計的(買進大單量+買進特大單量)-(賣出大單量+賣出特大單量)」
// _p1參數: 張數的下限值
// _p1數值: 0,1000,2000
// 
Input: _p1(1000);
SetTotalBar(1);
if BarFreq = "D" then begin
        if CurrentTime < 000000 then return;
end else begin
        if Time < 000000 then return;
end;
IF 1 * (DiffBidAskVolumeLxL[0] - _p1) > 0 then ret = 1;