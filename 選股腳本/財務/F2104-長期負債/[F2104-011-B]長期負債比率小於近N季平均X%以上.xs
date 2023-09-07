{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 長期負債比率小於近N季平均X%以上
// 顯示名稱: 長期負債比率 < 近[4]季平均 [10]%以上
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 4,8,12
// _p2參數: 
// _p2數值: 0,5,10,15,20,30
// 
input:_p1(4);
input:_p2(10);

SetTotalBar(_p1+2);

value1 = 100 * GetField("長期負債")/GetField("資產總額");
value2 = Average(value1, _p1);

if _p2 = 0 and value1 < value2 then ret=1;
if _p2 <> 0 and value1 - value2 < -1*_p2 then ret=1; 

OutputField(1, value1, 2, "比率");
OutputField(2, value2, 2, "比率均值");