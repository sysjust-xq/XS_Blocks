{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: MFI跌破X
// 顯示名稱: MFI跌破[10]
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 10,30,50,60,80
// 
input:_p1(10);
settotalBar(_p1*2);
Input: Length(6);
variable: tp(0), tv(0), utv(0), dtv(0), pmf(0), nmf(0), mfivalue(0);

SetInputName(1, "天數");

tp = TypicalPrice;
tv = tp * Volume;

if tp > tp[1] then
  begin
        utv = tv;
        dtv = 0;
  end
else
  begin
        utv = 0;
        dtv = tv;
  end;

pmf = Average(utv, MinList(CurrentBar, length));
nmf = Average(dtv, MinList(CurrentBar, length));


if CurrentBar < Length or (pmf + nmf) = 0 then
        mfivalue = 50
else 
        mfivalue = 100 * pmf /(pmf + nmf);

If mfivalue cross below _p1 then ret = 1;