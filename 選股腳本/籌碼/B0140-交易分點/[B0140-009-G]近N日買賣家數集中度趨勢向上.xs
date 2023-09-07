{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近N日買賣家數集中度趨勢向上
// 顯示名稱: 近[10]日買賣家數集中度趨勢向上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 5,10,20,60
// 
input: _p1(10);
SetTotalBar(_p1+2);
value1 = (getfield("分公司淨賣超金額家數", "D")-getfield("分公司淨買超金額家數", "D"))/getfield("分公司交易家數", "D")*100;
ret = UpTrend(value1, _p1) and  getfield("分公司淨賣超金額家數", "D")-getfield("分公司淨買超金額家數", "D") >0 ; 
OutputField(1, value1);