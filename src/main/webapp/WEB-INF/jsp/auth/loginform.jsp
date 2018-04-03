<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd"> 
<html>
<head>
<link href="${contextPath}/css/style.css" rel="stylesheet" type="text/css">
</head>

<body topmargin="0" leftmargin="0">
<form action="login" method='post'>
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="100%" height="218" border="0" cellpadding="0" cellspacing="0">
        <tr><img style="height: 200px" src="${contextPath}/image/white.PNG""></tr>
        <tr>
          <td align="center" background="${contextPath}/image/bg.gif"><table width="595" height="218" border="0" cellpadding="0" cellspacing="0">
              <tr> 
                <td width="25" height="25"><img src="${contextPath}/image/top_left.gif" width="25" height="25"></td>
                <td width="545" background="${contextPath}/image/top.gif">&nbsp;</td>
                <td width="25"><img src="${contextPath}/image/top_right.gif" width="25" height="25"></td>
              </tr>
              <tr> 
                <td background="${contextPath}/image/left.gif">&nbsp;</td>
                <td valign="top" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr> 
                      <td colspan="2"><img src="${contextPath}/image/title.gif" width="232" height="37"></td>
                    </tr>
                    <tr> 
                      <td width="19%">&nbsp;</td>
                      <td width="81%" style="padding-top:10"><table width="392" height="90" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td align="center" background="${contextPath}/image/login_bg.gif"> 
                              <table width="340" border="0" cellspacing="0" cellpadding="0">
                                <tr> 
                                  <td width="75" height="20" align="right"><img src="${contextPath}/image/id.gif" width="54" height="10">&nbsp;</td>
                                  <td width="174"><input name="id" type="text" class="INPUT" size="25"></td>
                                  <td width="91" rowspan="2" align="right"><button style="background: #EFEFEF; border: 0px;" type="submit"><img src="${contextPath}/image/login_button.gif" width="90" height="40" border="0" style="cursor:pointer"></button></td>
                                </tr>
                                <tr> 
                                  <td align="right"><img src="${contextPath}/image/pass.gif" width="54" height="10">&nbsp;</td>
                                  <td><input name="password" type="password" class="INPUT" size="25"></td>
                                </tr>
                              </table></td>
                          </tr>
                        </table></td>
                    </tr>
                  </table></td>
                <td background="${contextPath}/image/right.gif">&nbsp;</td>
              </tr>
              <tr> 
                <td width="25" height="25"><img src="${contextPath}/image/bottom_left.gif" width="25" height="25"></td>
                <td width="545" background="${contextPath}/image/bottom.gif">&nbsp;</td>
                <td width="25" height="25"><img src="${contextPath}/image/bottom_right.gif" width="25" height="25"></td>
              </tr>
            </table></td>
        </tr>
      </table></td>
  </tr>
</table>
</form>
</body>
</html>
