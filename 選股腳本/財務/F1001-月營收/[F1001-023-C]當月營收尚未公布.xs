{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 當月營收尚未公布
// 顯示名稱: 當月營收尚未公布
// 執行頻率: 月
// 
// 
settotalBar(3);
if datevalue(date,"M")-datevalue(getFieldDate("月營收", "M"),"M")=2 then ret=1;