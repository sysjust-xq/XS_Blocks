{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 資本支出+研發費用夠水準的公司
// 顯示名稱: 資本支出+研發費用夠水準的公司
// 執行頻率: 年
// 
// 
settotalBar(3);
input:ratio1(10,"佔營收最低比例");
input:s1(2,"絕對金額單位億");
value4=GetField("研發費用","Y")+(GetField("資本支出金額","Y"));
if GetField("營業收入淨額","Y")<>0
then value5=value4/GetField("營業收入淨額","Y")*100;
if value4/100>s1 
and value5>ratio1
then ret=1;
outputfield(1,GetField("研發費用","Y"),0,"研發費用百萬");
outputfield(2,GetField("資本支出金額","Y"),0,"資本支出金額");
outputfield(3,value5,1,"佔營收比例");