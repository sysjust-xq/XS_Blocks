{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 旺季要來了
// 顯示名稱: 旺季要來了
// 執行頻率: 月
// 
// 
settotalbar(40);
variable:W1(0),W2(0),W3(0),F1(0),F2(0),F3(0);
value1=GetField("月營收","M");//單位:億元
W1=(value1[12]+value1[13]+value1[14])/3;
W2=(value1[24]+value1[25]+value1[26])/3;
W3=(value1[36]+value1[37]+value1[38])/3;
F1=(value1[11]+value1[10]+value1[9])/3;
F2=(value1[23]+value1[22]+value1[21])/3;
F3=(value1[35]+value1[34]+value1[33])/3;
if F1>=W1*1.1 and F2>=W2*1.1 and F3>=W3*1.1
then ret=1;