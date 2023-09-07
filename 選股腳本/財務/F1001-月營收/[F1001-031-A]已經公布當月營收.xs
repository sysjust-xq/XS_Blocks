{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 已經公布當月營收
// 顯示名稱: 已經公布當月營收
// 執行頻率: 日
// 
// 
//如果K棒月份數值比公佈的數值差一，則篩選
settotalBar(2);
ret = datevalue(date,"M")-datevalue(getFieldDate("月營收", "M"),"M")=1;
outputfield(1,getFieldDate("月營收", "M"),0,"月份");