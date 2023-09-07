{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 近N日價量配合
// 顯示名稱: 近[5]日價量配合
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 日的期數
// _p1數值: 3,5,7,10,15,20,60,120,240
// 
input:_p1(5);//近n日
variable:x(0),count(0);
settotalBar(_p1 + 6);
count=0;
for x=0 to _p1 if close[x]>close[x+1] xor volume[x]>volume[x+1] then count=count+1;
ret = count<=1;