{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 內部人持股N個月以來變化小於X%以內
// 顯示名稱: 內部人持股[3]個月以來變化小於[1]%以內
// 執行頻率: 月
// 
// _p1參數: 
// _p1數值: 1,2,3,6,12
// _p2參數: 
// _p2數值: 0.1,0.2,0.5,1,2,5,10,15,20,30
// 
input:_p1(3);
input:_p2(1);
SetTotalBar(2); 
Value1 = GetField("內部人持股比例");
Value2 = GetField("內部人持股比例")[_p1];
Value3 = Value1 - Value2;
If value2 <> 0 and (value3/value2)*100 < _p2 then ret = 1;
outputField1((value3/value2)*100);