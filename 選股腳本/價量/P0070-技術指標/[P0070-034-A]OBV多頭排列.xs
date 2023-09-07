{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: OBV多頭排列
// 顯示名稱: OBV多頭排列
// 執行頻率: 日
// 
// 
variable: obvolume(0);
settotalBar(12);
if CurrentBar = 1 then
	obvolume = 0
else
  begin	
	if close > close[1] then
		obvolume = obvolume[1] + volume
	else
	  begin
		if close < close[1] then
			obvolume = obvolume[1] - volume
		else
			obvolume = obvolume[1];
	  end;		
  end;
//上面先算出OBV  下面開始寫觸發條件
if 
trueall(volume>average(volume,5),3)
//成交量連三日大於5日均量
and
trueall(obvolume>average(obvolume,5),3)
//obv連三日大於5日obv
and average(obvolume,5)>average(obvolume,10)
//5日obv大於10日ovb
then ret=1;