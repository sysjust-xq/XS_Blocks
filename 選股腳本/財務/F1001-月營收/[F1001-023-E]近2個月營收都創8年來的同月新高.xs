{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 近2個月營收都創8年來的同月新高
// 顯示名稱: 近2個月營收都創8年來的同月新高
// 執行頻率: 月
// 
// 
//頻率設月線
settotalbar(100);
//抓最近50根
value1=GetField("月營收","M");//單位:億

if value1=maxlist(value1,value1[12],value1[24],value1[36]
,value1[48],value1[60],value1[72],value1[84],value1[96])
and value1[1]=maxlist(value1[1],value1[13],value1[25],value1[37]
,value1[49],value1[61],value1[73],value1[85],value1[97])
then ret=1;