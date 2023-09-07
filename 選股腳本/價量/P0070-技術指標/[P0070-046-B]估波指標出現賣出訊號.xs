{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 估波指標出現賣出訊號
// 顯示名稱: 估波指標出現賣出訊號
// 執行頻率: 日
// 
// 
settotalBar(100);
value1=(GetField("收盤價") - GetField("參考價","D")[6 - 1]) / GetField("參考價","D")[6 - 1] * 100;
value2=(GetField("收盤價") - GetField("參考價","D")[9 - 1]) / GetField("參考價","D")[9 - 1] * 100;
value3=value1+value2;
value4=xaverage(value3,10);
ret = value4 crosses below 0;