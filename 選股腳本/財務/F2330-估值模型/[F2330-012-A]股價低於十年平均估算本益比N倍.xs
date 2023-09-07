{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股價低於十年平均估算本益比N倍
// 顯示名稱: 股價低於十年平均估算本益比[10]倍
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 8,10,12,13,15
// 
SetTotalBar(3);
value1=(getField("每股稅後淨利(元)", "Y")+
getField("每股稅後淨利(元)", "Y")[1]+
getField("每股稅後淨利(元)", "Y")[2]+
getField("每股稅後淨利(元)", "Y")[3]+
getField("每股稅後淨利(元)", "Y")[4]+
getField("每股稅後淨利(元)", "Y")[5]+
getField("每股稅後淨利(元)", "Y")[6]+
getField("每股稅後淨利(元)", "Y")[7]+
getField("每股稅後淨利(元)", "Y")[8]+
getField("每股稅後淨利(元)", "Y")[9])/10;
//最近十年平均EPS
value2=getField("每股稅後淨利(元)", "Q")
+getField("每股稅後淨利(元)", "Q")[1]
+getField("每股稅後淨利(元)", "Q")[2]
+getField("每股稅後淨利(元)", "Q")[3];

value3=(value1+value2)/2;

input:_p1(10);
value4=value3*_p1;
if close< value4 then ret=1;
outputfield(1,value4,1,"目標價");
outputfield(2,close/value4,1,"折溢價率");