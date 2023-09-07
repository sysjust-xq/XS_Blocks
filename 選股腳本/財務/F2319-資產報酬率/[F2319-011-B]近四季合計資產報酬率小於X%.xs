{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近四季合計資產報酬率小於X%
// 顯示名稱: 近四季合計資產報酬率 < [10]%
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0,3,5,10,15,20
// 
input:_p1(10);
SetTotalBar(3);  
value1 = Summation(Getfield("本期稅後淨利","Q"),4) / Average(getfield("資產總額","Q"),4) *100; 
If Value1 <_p1 then ret = 1; 
OutputField1(Value1);