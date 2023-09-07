{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 近N日TWN成分股紅K家數趨勢向上
// 顯示名稱: 近[10]日台灣50成分股紅K家數趨勢向上
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 日的期數
// _p1數值: 3,5,7,10,15,20
// 
input:_p1(10);
settotalBar(_p1*2);
ret = UpTrend(getsymbolfield("TSE50.SJ","TW50紅K家數","D"), _p1);