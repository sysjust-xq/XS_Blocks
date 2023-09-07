{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 散戶買進比例急遽下降但股價尚未大漲
// 顯示名稱: 散戶買進比例急遽下降但股價尚未大漲
// 執行頻率: 日
// 
// 
settotalBar(10);
value1=GetField("散戶買張")[1];
if volume>1000
then 
value2=value1/volume[1]*100;
if value2[5]-value2>30
and value2[5]>75
and value2 <40
and close[5]*1.07>close
and average(volume,5)>1000
then ret=1;