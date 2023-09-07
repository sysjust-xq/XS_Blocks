{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 順勢指標翻多
// 顯示名稱: 順勢指標翻多
// 執行頻率: 日
// 
// 
settotalBar(10);
variable:bp1(0),abp1(0),abp2(0);
input:length1(5),length2(10);
bp1=(close-close[1])/truerange*100;
abp1=average(bp1,length1);
abp2=average(bp1,length2);
if abp1 <0 
and abp2 <0
and abp1 cross over abp2
then ret=1;