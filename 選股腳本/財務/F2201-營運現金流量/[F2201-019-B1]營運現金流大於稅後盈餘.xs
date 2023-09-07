{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 營運現金流大於稅後盈餘
// 顯示名稱: 營運現金流 > 稅後盈餘
// 執行頻率: 季
// 
// 
settotalbar(2);
if GetField("來自營運之現金流量") > GetField("本期稅後淨利")
then ret=1;