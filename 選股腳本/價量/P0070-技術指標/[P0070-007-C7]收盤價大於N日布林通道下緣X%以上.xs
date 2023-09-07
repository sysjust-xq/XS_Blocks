{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 收盤價大於N日布林通道下緣X%以上
// 顯示名稱: 收盤價大於[20]日布林通道下緣[1]%以上
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 20,30,50,60
// _p2參數: 
// _p2數值: 0,0.5,1,3,5
// 
Input:_p1(20),_p2(1); 
settotalBar(_p1);                                                                                                                                                 
Var:PBR(0);                    
Var:BolUp(0),BolDown(0),BolMid(0),BBW(0);  
BolDown=bollingerband(GetField("收盤價"), _p1, -1 );        
If GetField("收盤價","D")> BolDown *(1+(0.01*_p2)) then ret = 1;