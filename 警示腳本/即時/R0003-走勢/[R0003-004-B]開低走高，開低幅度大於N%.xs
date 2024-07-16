{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 開低走高，開低幅度大於N%
// 顯示名稱: 開低走高(開低幅度>[2]%)
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 開低幅度的下限值
// _p1數值: 1,2,3,5,7
// 
input: _p1(2);//至少開高幅度
var: _p2(093000);//定義早盤時段
var: intrabarpersist _KeyPrice(0);//記錄早盤最高價
SetTotalBar(1);
value1 = GetField("參考價","D")[0];
if 100 * -1 * (GetField("開盤價","D")/absvalue(value1) - sign(value1)) < _p1 then return; //開不夠高就不用算
if time <= _p2 then _KeyPrice = GetField("最低價","D"); //取得早盤高點
if GetField("最低價","D") <> _KeyPrice then return; //高點不在早盤出現，不觸發
if -1 * (Close/absvalue(value1) - sign(value1)) < 0 //翻黑
        then ret = 1;