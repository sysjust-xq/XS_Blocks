{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N年平均自由現金發放率小於X%
// 顯示名稱: 近[1]年平均自由現金發放率 < [0]%
// 執行頻率: 年
// 
// _p1參數: 
// _p1數值: 1,2,3,5,10
// _p2參數: 
// _p2數值: 0,50,100,150,200
// 
input: _p1(1);
input: _p2(0);
SetTotalBar(3);
If GetField("每股自由現金流量") <> 0 then 
value1 = GetField("股利合計")/GetField("每股自由現金流量")*100;
If (summation(GetField("股利合計"),_p1)/summation(GetField("每股自由現金流量"),_p1))*100< _p2 then ret = 1;
outputField1(GetField("股利合計")/GetField("每股自由現金流量")*100,"發放率");
outputField2((summation(GetField("股利合計"),_p1)/summation(GetField("每股自由現金流量"),_p1))*100,"平均N年");