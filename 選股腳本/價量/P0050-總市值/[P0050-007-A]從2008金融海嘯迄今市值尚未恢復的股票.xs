{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 從2008金融海嘯迄今市值尚未恢復的股票
// 顯示名稱: 從2008金融海嘯迄今市值尚未恢復的股票
// 執行頻率: 日
// 
// 
setfirstBarDate(20081120);
if date = 20081120 then value1 = GetField("總市值(億)","D");
ret = GetField("總市值(億)","D") < value1;