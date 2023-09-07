{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: U型底
// 顯示名稱: U型底
// 執行頻率: 日(逐筆洗價)
// 
// U型底部期數為20日；連續下降趨勢天數為20日；標準差放寬倍數為5倍
// 
variable:KP(0),HSV(0);
settotalbar(250);
value1=standarddev(weightedclose,10,2);//計算一定期數(10日)標準差
value2=average(value1,250)*0.5;//計算一年(250日)標準差，標準差放寬倍數為0.5
value3=average(C,5);//MA5
value4=average(C,10);//MA10
value5=average(C,20);//MA20
if value1 crosses over value2 then begin//若標準差向上跨越一年平均標準差
        KP=0;
        HSV=0;
end;
if value1>=value2 then begin//在連續變動趨勢中
        if value1>HSV then HSV=value1;//尋找標準差最大點
        if HSV<>HSV[1] then KP=C;//將標準差最大的點之收盤價視為關鍵價
end;
condition2=value1<value2;//標準差小於年均標準差
condition3=trueall(condition2,20);//連續20期
condition4=value4<value4[1];//MA10為下降趨勢
condition5=trueall(condition4,20);//連續下降20期
condition7=trueall(not condition4,20);//連續20期不下降
if not condition5 and condition5[1] then condition6 = true;//若連續下降
if C crosses over KP and condition3 and trueall(condition6,round(20/2,0))
//若收盤價突破關鍵價且期間內標準差小於年均且下降趨勢結束一段時間
then begin
        condition6=false;
        ret=1;//買進
end;