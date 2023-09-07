{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N日走勢上漲角度超過X度
// 顯示名稱: [10]日走勢上漲角度超過[30]度
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 3,5,7,10,15,20,60,120,240
// _p2參數: 
// _p2數值: 5,10,15,30,45,60
// 
input: _p1(10);
input: _p2(30);
SetTotalBar(3);
SetBarFreq("AD");
value1 = NDaysAngle(_p1);
if value1 >= _p2 then ret=1;
value2 = RateOfChange(Close, _p1);
OutputField(1, value1, 4, "角度");
OutputField(2, value2, 2, "區間漲幅%");