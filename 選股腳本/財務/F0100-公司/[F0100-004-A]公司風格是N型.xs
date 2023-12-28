{@type:filter}
// 腳本類型: 選股腳本
// 腳本名稱: 公司風格是N型
// 顯示名稱: 公司風格是[成長型]
// 執行頻率: 日
// 
// 利用財務數值做評價模型，將公司分為成長型,混合型,價值型，每季重新評估。
// _p1參數: 
// _p1數值: 1=[成長型],2=[混合型],3=[價值型]
// 
SetTotalBar(2); 
input:_p1(1); 
Switch (_p1)
Begin
  Case 1: 
     if GetField("公司風格") = "成長型" then ret=1; 
  Case 2: 
      if GetField("公司風格") = "混合型" then ret=1;
  Case 3: 
      if GetField("公司風格") = "價值型" then ret=1;          
  Default:
      if GetField("公司風格") = "成長型" then ret=1;
End;

OutputField1(GetField("公司風格"),"公司風格");