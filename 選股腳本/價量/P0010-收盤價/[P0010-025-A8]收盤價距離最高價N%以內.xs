{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價距離最高價N%以內
// 顯示名稱: 收盤價距離最高價[2]%以內
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 0.5,1,1.5,2
// 
settotalBar(2); 
input:_p1(2);
If C*(1+(_p1*0.01))>=H then ret = 1;
outputField1(h);