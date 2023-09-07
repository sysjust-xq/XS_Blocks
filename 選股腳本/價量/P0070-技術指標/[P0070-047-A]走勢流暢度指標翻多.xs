{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 走勢流暢度指標翻多
// 顯示名稱: 走勢流暢度指標翻多
// 執行頻率: 日
// 
// 
settotalBar(10);
variable:sqr(0),mp(0),tm(0),emvt(0),aemv(0);
if high<>low
then sqr=volume/(high-low);
mp=(high-low)/2;
tm=mp-mp[1];
if tm<>0
then emvt=sqr/tm
else emvt=emvt[1];
aemv=average(emvt,10);
if aemv crosses over 0
then ret=1;