{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 平台三角型整理跌破
// 顯示名稱: 平台三角型整理跌破
// 執行頻率: 日(逐筆洗價)
// 
// 
Var: _period(15);//資料區間
Var: _range(1);//區間寬容值
Var: _side(-1);//方向SIDE
variable:Kprice(0),KpriceH(0),KpriceL(0);
if GetInfo("Instance") = 2 then 
        settotalBar(15 + 10)
else
        settotalBar(3);
//起迄點有形成三角收斂
if not (high[1] <= high[_period] and low[1] >= low[_period]) then return;
//範圍內的高低點無出現突破現象
KpriceH = highest(high[1],_period);
KpriceL = lowest(low[1],_period);
Kprice = iff(_side = 1, KpriceH, KpriceL);
if not (KpriceH <= high[_period] * (1 + 0.01 * _range) and KpriceL >= low[_period] * (1 - 0.01 * _range)) then return;
value1 = iff(_side = 1, high - KpriceH, KpriceL - low);
value2 = iff(_side = 1, high[1] - KpriceH, KpriceL - low[1]);
if value1*value2 < 0 then
ret=1;