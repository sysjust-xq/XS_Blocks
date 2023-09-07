{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 單季EPS小於前四季總和
// 顯示名稱: 單季EPS < 前四季EPS總和
// 執行頻率: 季
// 
// 
SetTotalBar(3);
If GetField("每股稅後淨利(元)") < summation(GetField("每股稅後淨利(元)")[1],4)  then ret = 1;
outputField1(GetField("每股稅後淨利(元)"),"EPS");
outputField2(summation(GetField("每股稅後淨利(元)")[1],4),"4季EPS");