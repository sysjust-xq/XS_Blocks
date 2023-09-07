{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: TSEKST買進訊號
// 顯示名稱: TSEKST買進訊號
// 執行頻率: 日
// 
// 
variable:kst(0);
settotalBar(40+2);
value1=(GetField("收盤價") - GetField("參考價","D")[12 - 1]) / GetField("參考價","D")[12 - 1] * 100;
value11=average(value1,10);
value2=(GetField("收盤價") - GetField("參考價","D")[20 - 1]) / GetField("參考價","D")[20 - 1] * 100;
value22=average(value2,10);
value3=(GetField("收盤價") - GetField("參考價","D")[30 - 1]) / GetField("參考價","D")[30 - 1] * 100;
value33=average(value3,8);
value4=(GetField("收盤價") - GetField("參考價","D")[40 - 1]) / GetField("參考價","D")[40 - 1] * 100;
value44=average(value4,15);
kst=value11+value22*2+value33*3+value44*4;
ret = kst crosses over average(kst,10);