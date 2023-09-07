{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 流動負債減流動資產大於總市值X%以上
// 顯示名稱: 流動負債 - 流動資產 > 總市值[50]%以上
// 執行頻率: 季
// 
// _p1參數: 
// _p1數值: 30,50,70,100,120
// 
input:_p1(50);
SetTotalBar(3);
If GetField("流動負債")-GetField("流動資產") >= (GetField("總市值(億)")*100)*((_P1*0.01)) then ret = 1;
outputField1(GetField("流動資產"),"流動資產");
outputField2(GetField("流動負債"),"流動負債");
outputField3(GetField("總市值(億)"),"總市值(億)");