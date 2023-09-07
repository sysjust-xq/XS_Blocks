{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 櫃買指數轉彎剛加速
// 顯示名稱: 櫃買指數轉彎剛加速
// 執行頻率: 日(逐筆洗價)
// 
// 
settotalBar(22);
value1=NDaysAngle(7);
value2=average(value1,5);
value3=average(value1,20);
condition1 = value2[4]>-9 and value2[4]<0;
condition2 = value2>1 and value2<9;
condition3 = value3<3;
if condition1 and condition2 and condition3 then ret = 1;