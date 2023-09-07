{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 本業預估EPS大於等於N元
// 顯示名稱: 本業預估EPS >= [5]元
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 2,3,4,5,6
// 
input:_p1(5);
settotalBar(3);
value1 = summation(GetField("營業利益","Q"),4);
value2 = 100-getfield("有效稅率", "Q");
value3 = ((value1*value2/1000))/GetField("最新股本");
If value3 >= _p1 then ret = 1;
outputfield1(summation(GetField("營業利益","Q"),4),"四季營業利益");
outputfield2(getField("最新股本"),"最新股本");
outputField3(value3,"預估EPS");