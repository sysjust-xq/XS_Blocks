{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 大戶持續賣超
// 顯示名稱: 大戶持續賣超
// 執行頻率: 1分(非逐筆洗價)
// 
// 大戶為「特大單+大單」而大戶持續賣超，是當下1分鐘的賣超。
// 
settotalBar(3);
var:_side(-1);//1為買超；-1為賣超。
value1 = GetField("賣出特大單量") + GetField("賣出大單量");
value2 = GetField("買進特大單量") + GetField("買進大單量");
value3 = _side * (value2 - value1);
condition1 = value3 > 0;
ret = condition1;