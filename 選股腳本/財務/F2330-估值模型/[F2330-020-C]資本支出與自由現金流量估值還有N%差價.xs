{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 資本支出與自由現金流量估值還有N%差價
// 顯示名稱: 資本支出與自由現金流量估值還有[10]%差價
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,15,20,30
// 
input:_p1(10);
value1=GetField("來自營運之現金流量","Y")
+GetField("來自營運之現金流量","Y")[1]
+GetField("來自營運之現金流量","Y")[2]
+GetField("來自營運之現金流量","Y")[3]
+GetField("來自營運之現金流量","Y")[4]
+GetField("來自營運之現金流量","Y")[5]
+GetField("來自營運之現金流量","Y")[6]
+GetField("來自營運之現金流量","Y")[7]
+GetField("來自營運之現金流量","Y")[8]
+GetField("來自營運之現金流量","Y")[9];//百萬
value2=GetField("資本支出金額","Y")
+GetField("資本支出金額","Y")[1]
+GetField("資本支出金額","Y")[2]
+GetField("資本支出金額","Y")[3]
+GetField("資本支出金額","Y")[4]
+GetField("資本支出金額","Y")[5]
+GetField("資本支出金額","Y")[6]
+GetField("資本支出金額","Y")[7]
+GetField("資本支出金額","Y")[8]
+GetField("資本支出金額","Y")[9];//百萬
value3=getField("現金及約當現金", "Q");//單位百萬
value4=value1-value2+value3;
value5=GetField("最新股本");//單位:億
value6= value4/(value5*100);//每股估值
if (value6-close)/close*100>_p1
then ret=1;