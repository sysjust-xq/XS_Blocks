{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: N日的布林通道寬度小於等於X%
// 顯示名稱: [20]日布林通道寬度 <= [10]%
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 20,30,50,60
// _p2參數: 
// _p2數值: 1,1.5,2,3,5,10
// 
Input:_p1(20),_p2(10);  
settotalBar(_p1);                                                                                                                                                 
Var:PBR(0);                    
Var:BolUp(0),BolDown(0),BolMid(0),BBW(0);  
BolDown=bollingerband(GetField("收盤價"), _p1, -1 );        
BolMid=(bollingerband(GetField("收盤價"), _p1, 1) + BolDown)/2;                                   
BBW=100*(bollingerband(GetField("收盤價"), _p1, 1)-BolDown)/BolMid;                                                
If BBW<=_p2 then ret = 1;