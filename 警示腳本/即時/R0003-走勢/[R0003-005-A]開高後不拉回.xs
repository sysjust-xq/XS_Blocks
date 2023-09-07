{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 開高後不拉回
// 顯示名稱: 開高後不拉回（開高幅度[2]%，拉回幅度上限[1]%，早盤時段為[091500]）
// 執行頻率: 1分(非逐筆洗價)
// 
// 開高後，在早盤時段前不拉回
// _p1參數: 開高幅度的下限值
// _p1數值: 1,2,3
// _p2參數: 拉回幅度的上限值
// _p2數值: 1,2,3
// _p3參數: 
// _p3數值: 091500,093000,094500
// 
input: _p1(2);//至少開高幅度
input: _p2(1);//最大拉回幅度
input: _p3(091500);//定義早盤時段

if barfreq <> "Min" or barinterval <> 1
then raiseruntimeerror("歹勢，本腳本只適用於1分鐘線");

if date <> date[1] and GetField("參考價","D") <> 0 then begin
        value1 = 100 * 1 * (GetField("開盤價","D")/absvalue(GetField("參考價","D")) - sign(GetField("參考價","D")));
        value2 = 0;
        value3 = 0;
end else begin
        value1 = 0;
        value2 = 0;
        value3 = 0;
end;
if value1 < _p1 or value2 > _p2 then return; //開不夠高或拉回太深就不用算

if time <= _p3 then begin //計算早盤最大拉回
        value3 = GetField("最高價","D");
        if value3 <> 0 then
                value2 = 100 * -(1) * (GetField("最低價","D")/absvalue(value3) - sign(value3))
        else
                value2 = 100;
end else begin //再走高觸發
        if value2 < _p2 and GetField("最高價","D") > value3 then ret = 1;
end;