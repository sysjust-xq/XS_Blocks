{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 拉尾盤
// 顯示名稱: 拉尾盤幅度超過[1]%，尾盤時間為過[13點00分]後
// 執行頻率: 1分(非逐筆洗價)
// 
// _p1參數: 拉尾盤幅度的下限值
// _p1數值: 1,2,3
// _p2參數: HH點MM分後
// _p2數值: 130000=[13點00分],131000=[13點10分],132000=[13點20分]
// 
input: _p1(1), _p2(130000);
var: intrabarpersist _KeyPrice(0);
settotalbar(2);

if GetFieldDate("Date") <> GetFieldDate("Date")[1] then _KeyPrice = 0; //換日歸零
if time <= _p2 then 
        _KeyPrice = Close //時間未到計算基準時，基準價就是收盤價
else //時間過了基準時間
        if _KeyPrice > 0 //有計算基準價
        and 100 * 1 * (Close/absvalue(_KeyPrice) - sign(_KeyPrice)) >= _p1 //最新價格比基準價漲了一定比率
        then RET=1;