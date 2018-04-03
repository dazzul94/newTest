<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">  
<html> 
<head>
<link rel='stylesheet' href='../../node_modules/bootstrap/dist/css/bootstrap.min.css'>
<style type="text/css">
/* .left {
    position: absolute;
    top: 100px;
    left: 80px;
}

.main {
float:left;
padding: 50px;

   /* margin: 10auto;
   text-align: right;
   padding: 0px;
 */ 
 
 #wrapper{
 border:0px;
 width:1054px;
 padding:22px;
 position:absolute;
 top:10px;
 left:50%;
 margin-left:-533px;
 overflow:hidden;
 }
 .main{
 border:0px;
 width:800px;
 float:left;
 padding:10px;
 }
 .left{
 border:0px;
 width:200px;
 float:left;
 padding:10px;
 margin-left:10px;
 }

</style>
<link href="${contextPath}/css/style.css" rel="stylesheet" type="text/css">
</head>
<body topmargin="0" leftmargin="0">
<div class='container'>
<jsp:include page="../header.jsp"/>
<div id= "wrapper"> 
<div class="left"> <jsp:include page="../left.jsp"></jsp:include>
</div>
  <div class="main">
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
        <form class="form-inline" action="list">
          <td height="30" align="right"><select name="select" class="INPUT">
              <option selected value="all">::::: 전체 :::::</option>
              <option value="kName">이름</option>
              <option value="myNumber">주민번호</option>
            </select> <input name="words" type="text" class="INPUT"> <button type="submit" style="background-color: white; border:0px"><img src="${contextPath}/image/search.gif" width="49" height="18" border="0" align="absmiddle"></button></td>
       </form>
        </tr>
        <tr> 
          <td><table width="640" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td height="3" background="${contextPath}/image/bar_bg1.gif"></td>
              </tr>
              <tr align="center" bgcolor="F8F8F8"> 
                <td height="26" align="right" bgcolor="F8F8F8" style="padding-right:10"><img src="${contextPath}/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <a href="javascript:modify()">수정</a> <img src="${contextPath}/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <span style="cursor:pointer" onclick="really()">삭제</span> <img src="${contextPath}/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
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
                        <th style="text-align: center"  width="85" align="center">이름</th>
                        <th style="text-align: center" width="153" align="center">주민번호</th>
                        <th style="text-align: center" width="91" align="center">성별</th>
                        <th style="text-align: center" width="91" align="center">기술등급</th>
                        <th style="text-align: center" width="91" align="center">희망직무</th>
                        <th style="text-align: center" width="94" align="center">입사유형</th>
                    </tr>
                <c:forEach items="${list}" var="member" varStatus="status">
                    <tr> 
                      <td width="35" height="20" align="center"><input type="checkbox" id="check" value="${member.memberNo}"></td>
                      <td width="85" align="center"><a href="${member.memberNo}"><span class="d-inline-block text-truncate" 
            style="max-width: 300px;">${member.kName}</span></a></td>
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
                      <td height="35" colspan="7" align="center" style="padding-bottom:3"><a href="list?pn=1"><img src="${contextPath}/image/prev.gif" width="22" height="15" border="0" align="absmiddle"></a>&nbsp;<a href="list?pn=${pageNo - 1}"><img src="${contextPath}/image/pre.gif" width="42" height="15" border="0" align="absmiddle"></a>&nbsp; 
                        <a href="list?pn=1">1</a> | <a href="list?pn=2">2</a> | <a href="list?pn=3">3</a> | <a href="list?pn=4">4</a> | <a href="list?pn=5">5</a> | <a href="list?pn=6">6</a> | <a href="list?pn=7">7</a> | <a href="list?pn=8">8</a> | <a href="list?pn=9">9</a> | <a href="list?pn=10">10</a> &nbsp;<a href="list?pn=${pageNo + 1}"><img src="${contextPath}/image/next.gif" width="42" height="15" border="0" align="absmiddle"></a>&nbsp;<a href="list?pn=${lastPageNo}"><img src="${contextPath}/image/next_.gif" width="22" height="15" border="0" align="absmiddle"></a></td>
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
                  <a href="javascript:modify()">수정</a> <img src="${contextPath}/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <span style="cursor:pointer" onclick="really()">삭제</span><img src="${contextPath}/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <a href="#">인사기록카드</a> <img src="${contextPath}/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <a href="#">경력정보</a> <img src="${contextPath}/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
                  <a href="#">근무정보</a> </td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td height="3" background="${contextPath}/image/bar_bg1.gif"></td>
        </tr>
      </table>
    </div>
  </div>
  <jsp:include page="../jslib.jsp"/>
</div>
<script type="text/javascript">
$(function() { 
	$('input[type="checkbox"]').bind('click',function() { 
		$('input[type="checkbox"]').not(this).prop("checked", false); 
		});
	});
function really(){
	if (confirm("정말 삭제하시겠습니까??") == true){    //확인
	    remove();
	}else{   //취소
	    return;
	}
}
function modify(){
var checkNo = $("input:checkbox:checked").val(); 
window.location = checkNo;
}
function remove(){
var checkNo = $("input:checkbox:checked").val(); 
window.location = "delete?no=" + checkNo;
}
</script>
</body>
</html>
 
