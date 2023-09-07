{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 最近N日內有實施庫藏股的股票
// 顯示名稱: 最近[10日]內有實施庫藏股的股票
// 執行頻率: 日
// 
// _p1參數: 
// _p1數值: 10=[10日],15=[15日],1=[1月],2=[2月],6=[6月],-1=[1年],-2=[2年],-3=[3年]
// 
settotalBar(3);
input:_p1(10);
Switch (_p1)
Begin
  Case -5 to  -1  :
        If GetField("庫藏股結束日期") <> 0 and  GetField("庫藏股開始日期") <> 0 and 
        DateAdd(GetField("庫藏股結束日期"), "Y", _p1*-1) > date and 
        DateAdd(GetField("庫藏股開始日期"), "Y", _p1*-1) > date then ret = 1;
        
  Case 1 to 6 :
     If GetField("庫藏股結束日期") <> 0 and  GetField("庫藏股開始日期") <> 0 and 
        DateAdd(GetField("庫藏股結束日期"), "M", _p1) > date and 
        DateAdd(GetField("庫藏股開始日期"), "M", _p1) > date then ret = 1;
        
        Case 10 to 30 :
     If GetField("庫藏股結束日期") <> 0 and  GetField("庫藏股開始日期") <> 0 and 
        DateAdd(GetField("庫藏股結束日期"), "D", _p1) > date and 
        DateAdd(GetField("庫藏股開始日期"), "D", _p1) > date then ret = 1;
        
  Default:
     Return;
End;