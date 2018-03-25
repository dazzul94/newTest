<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<link href="${contextPath}/css/style.css" rel="stylesheet" type="text/css">
</head>
<body topmargin="0" leftmargin="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td>&nbsp;</td>
  </tr>
  <tr> 
    <td height="25"><img src="${contextPath}/image/icon.gif" width="9" height="9" align="absmiddle"> 
      <strong>사원조회</strong></td>
  </tr>
  <tr> 
    <td><table width="640" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="30" align="right"><select name="select" class="INPUT">
              <option selected>::::: 전체 :::::</option>
            </select> <input name="textfield" type="text" class="INPUT"> <a href="#"><img src="${contextPath}/image/search.gif" width="49" height="18" border="0" align="absmiddle"></a></td>
        </tr>
        <tr> 
          <td><table width="640" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td height="3" background="${contextPath}/image/bar_bg1.gif"></td>
              </tr>
              <tr align="center" bgcolor="F8F8F8"> 
                <td height="26" align="right" bgcolor="F8F8F8" style="padding-right:10"><img src="${contextPath}/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <a href="#">수정</a> <img src="${contextPath}/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <a href="#">인사기록카드</a> <img src="${contextPath}/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <a href="#">경력정보</a> <img src="${contextPath}/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <a href="#">근무정보</a> </td>
              </tr>
              <tr align="center" bgcolor="F8F8F8"> 
                <td height="1" align="right" bgcolor="B1B1B1"></td>
              </tr>
              <tr> 
                <td>
                <!-------------------------  리스트 ------------------------------>
                <table width="640" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <th width="35" height="20" align="center"></th>
                        <th width="85" align="center">이름</th>
                        <th width="153" align="center">주민번호</th>
                        <th width="91" align="center">성별</th>
                        <th width="91" align="center">기술등급</th>
                        <th width="91" align="center">희망직무</th>
                        <th width="94" align="center">입사유형</th>
                    </tr>
                <c:forEach items="${list}" var="member">
                    <tr> 
                      <td width="35" height="20" align="center"><input type="checkbox" name="checkbox" value="checkbox"></td>
                      <td width="85" align="center">${member.kName}</td>
                      <td width="153" align="center">${member.myNumber1}-${member.myNumber2}</td>
                      <td width="91" align="center">${member.gender}</td>
                      <td width="91" align="center">${member.stat}</td>
                      <td width="91" align="center">${member.workingType}</td>
                      <td width="94" align="center">${member.welcome}</td>
                    </tr>
                    <tr> 
                      <td colspan="7" background="${contextPath}/image/line_bg.gif"></td>
                    </tr>
                    </c:forEach>
                      <td height="35" colspan="7" align="center" style="padding-bottom:3"><a href="#"><img src="${contextPath}/image/prev.gif" width="22" height="15" border="0" align="absmiddle"></a>&nbsp;<a href="#"><img src="${contextPath}/image/pre.gif" width="42" height="15" border="0" align="absmiddle"></a>&nbsp; 
                        1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 &nbsp;<a href="#"><img src="${contextPath}/image/next.gif" width="42" height="15" border="0" align="absmiddle"></a>&nbsp;<a href="#"><img src="${contextPath}/image/next_.gif" width="22" height="15" border="0" align="absmiddle"></a></td>
                    </tr>
                  </table>
                <!-------------------------  리스트 ------------------------------>
                  </td>
              </tr>
              <tr align="center" bgcolor="F8F8F8"> 
                <td height="1" align="right" bgcolor="B1B1B1"></td>
              </tr>
              <tr align="center" bgcolor="F8F8F8"> 
                <td height="26" align="right" bgcolor="F8F8F8" style="padding-right:10"><img src="${contextPath}/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <a href="#">수정</a> <img src="${contextPath}/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <a href="#">인사기록카드</a> <img src="${contextPath}/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <a href="#">경력정보</a> <img src="${contextPath}/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <a href="#">근무정보</a> </td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td height="3" background="image/bar_bg1.gif"></td>
        </tr>
      </table></td>
  </tr>
</table>
</body>
</html>
