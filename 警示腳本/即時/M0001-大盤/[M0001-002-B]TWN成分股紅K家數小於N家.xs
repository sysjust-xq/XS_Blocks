{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: TWN成分股紅K家數小於N家
// 顯示名稱: 台灣50成分股紅K家數 < [20]家
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 台灣50成分股紅K家數家數的上限值
// _p1數值: 5,10,15,20
// 
input:_p1(20);
settotalBar(2);
If -1 * (getsymbolfield("TSE50.SJ","TW50紅K家數","D") -_p1) > 0 then ret = 1;