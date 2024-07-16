{@type:sensor}
// 腳本類型: 警示腳本
// 腳本名稱: 台灣50成分股MTM多空家數大於N家
// 顯示名稱: 台灣50成分股MTM多空家數 > [20]家
// 執行頻率: 日(逐筆洗價)
// 
// _p1參數: 台灣50成分股MTM多空家數的下限值
// _p1數值: 10,15,20,25
// 
input:_p1(20);
settotalBar(2);
If 1 * (getsymbolfield("TSE50.SJ","TW50MTM多空家數","D") -_p1) > 0 then ret = 1;