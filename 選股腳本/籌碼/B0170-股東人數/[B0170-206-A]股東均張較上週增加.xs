{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 股東均張較上週增加
// 顯示名稱: 股東均張較上週增加
// 執行頻率: 週
// 
// 
SETTotalBar(2);
If (GetField("大戶持股張數", "W", param := 100) + GetField("散戶持股張數","W",param := 100)) / GetField("總持股人數","W") > 
(GetField("大戶持股張數", "W", param := 100)[1] + GetField("散戶持股張數","W",param := 100)[1]) / GetField("總持股人數","W")[1] and 
(GetField("大戶持股張數", "W", param := 100)[1] + GetField("散戶持股張數","W",param := 100)[1]) / GetField("總持股人數","W")[1] > 0 and 
(GetField("大戶持股張數", "W", param := 100) + GetField("散戶持股張數","W",param := 100)) / GetField("總持股人數","W")-
(GetField("大戶持股張數", "W", param := 100)[1] + GetField("散戶持股張數","W",param := 100)[1]) / GetField("總持股人數","W")[1] > 0
then ret= 1;

outputField1((GetField("大戶持股張數", "W", param := 100) + GetField("散戶持股張數","W",param := 100)) / GetField("總持股人數","W"),"人均張");
outputField2((GetField("大戶持股張數", "W", param := 100)[1] + GetField("散戶持股張數","W",param := 100)[1]) / GetField("總持股人數","W")[1] ,"上週人均張");
OUtputField3(NumToStr(((GetField("大戶持股張數", "W", param := 100) + GetField("散戶持股張數","W",param := 100)) / GetField("總持股人數","W"))-((GetField("大戶持股張數", "W", param := 100)[1] + GetField("散戶持股張數","W",param := 100)[1]) / GetField("總持股人數","W")[1]),2));