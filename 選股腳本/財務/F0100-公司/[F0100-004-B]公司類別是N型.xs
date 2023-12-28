{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 公司類別是N型
// 顯示名稱: 公司類別是[小型股]
// 執行頻率: 日
// 
// 利用市值做區隔，將公司分為小型股,中型股,大型股，每月重新評估。
// _p1參數: 
// _p1數值: 1=[小型股],2=[中型股],3=[大型股]
// 
SetTotalBar(2); 
input:_p1(1); 
Switch (_p1)
Begin
  Case 1: 
     if GetField("公司類別") = "小型股" then ret=1; 
  Case 2: 
      if GetField("公司類別") = "中型股" then ret=1;
  Case 3: 
      if GetField("公司類別") = "大型股" then ret=1;          
  Default:
      if GetField("公司類別") = "小型股" then ret=1;
End;

OutputField1(GetField("公司類別"),"公司類別");