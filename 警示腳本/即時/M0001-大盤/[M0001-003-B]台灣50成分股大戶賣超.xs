{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 台灣50成分股大戶賣超
// 顯示名稱: 台灣50成分股大戶賣超
// 執行頻率: 日(逐筆洗價)
// 
// 
settotalBar(2);
var:_Side(-1);
If _Side * getsymbolfield("TSE50.SJ","TW50大戶買賣力","D") > 0 then ret = 1;