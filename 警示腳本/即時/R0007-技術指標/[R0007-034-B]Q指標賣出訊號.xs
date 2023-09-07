{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: Q指標賣出訊號
// 顯示名稱: Q指標賣出訊號
// 執行頻率: 日(逐筆洗價)
// 
// 
var:t1(10),t2(5),t3(20),Qindicator(0);
settotalBar(30);
Qindicator=callfunction("Q指標",t1,t2,t3);
ret = linearregangle(Qindicator,5)<-40 and barslast(linearregangle(Qindicator,5)>45)[1]<-20;