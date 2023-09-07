{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 單季盈餘成長率大於營收成長率
// 顯示名稱: 單季盈餘成長率大於營收成長率
// 執行頻率: 季
// 
// 
value1 = RateOfChange(GetField("本期稅後淨利"), 4);
value2 = RateOfChange(GetField("營業收入淨額"), 4);
if value1 > 0 and value1 > value2 then ret=1;
OutputField(1, value1);
OutputField(2, value2);