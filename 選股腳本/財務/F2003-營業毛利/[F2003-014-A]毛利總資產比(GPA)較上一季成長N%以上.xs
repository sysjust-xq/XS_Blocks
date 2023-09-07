{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 毛利總資產比(GPA)較上一季成長N%以上
// 顯示名稱: 毛利總資產比(GPA)較上一季[成長10%以上]
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 0=[成長],10=[成長10%以上],20=[成長20%以上],30=[成長30%以上],50=[成長50%以上]
// 
input:_p1(10); 
SetTotalBar(2);
If _p1 = 0 and rateOfChange(summation(GetField("營業毛利"),4)/GetField("資產總額"),1) > 0 then ret = 1; 
If _p1 > 0 and rateOfChange(summation(GetField("營業毛利"),4)/GetField("資產總額"),1) > _p1 then ret = 1;
If _p1 < 0 and rateOfChange(summation(GetField("營業毛利"),4)/GetField("資產總額"),1) < _p1*-1  and rateOfChange(GetField("營業毛利")/GetField("資產總額"),1) > 0 then ret = 1;
outputField1(rateOfChange(summation(GetField("營業毛利"),4)/GetField("資產總額"),1));