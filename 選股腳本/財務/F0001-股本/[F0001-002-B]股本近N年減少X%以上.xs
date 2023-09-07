{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股本近N年減少X%以上
// 顯示名稱: 股本近[1]年減少[5]%以上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 1,3,5,10
// _p2參數: 
// _p2數值: 1,5,10,20,50
// 
input:_p1(1);
input:_p2(5);
var:_years(1),_change(0);
setbarFreq("D");
settotalBar(1);
_years = _p1 * 4;
_change = rateOfChange(GetField("財報股本(億)","Q"),_years);
If _change < -1*_p2 then ret = 1;
outputField(1,GetField("財報股本(億)","Q"),"財報股本(億)");
outputField(2,GetField("財報股本(億)","Q")[_years],"歷史財報股本(億)");
outputField(3,_change,"變化");