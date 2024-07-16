{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 近N日台灣50成分股動能多頭家數趨勢向下
// 顯示名稱: 近[3]日台灣50成分股MTM多空家數趨勢向下
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 日的期數
// _p1數值: 3,5,7,10,15,20
// 
input:_p1(3);
settotalBar(_p1*2);
ret = DownTrend(getsymbolfield("TSE50.SJ","TW50MTM多空家數","D"), _p1);