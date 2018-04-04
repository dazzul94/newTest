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
<p id="status"></p>
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
              <option selected value="kName">이름</option>
              <option value="gender">성별</option>
              <option value="stat">기술등급</option>
            </select> <input name="words" type="text" class="INPUT"> <button type="submit" style="background-color: white; border:0px"><img src="${contextPath}/image/search.gif" width="49" height="18" border="0" align="absmiddle" style="cursor:pointer"></button>
            </td>
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
                  <span style="cursor:pointer" onMouseover="this.style.color='red';" onMouseout="this.style.color='black';"  onclick="really()">삭제</span> <img src="${contextPath}/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
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
                        <th style="text-align: center" width="153" align="center">주민등록번호</th>
                        <th style="text-align: center" width="91" align="center">성별</th>
                        <th style="text-align: center" width="91" align="center">기술등급</th>
                        <th style="text-align: center" width="91" align="center">상태</th>
                        <th style="text-align: center" width="94" align="center">근무</th>
                    </tr>
                <c:forEach items="${list}" var="member" varStatus="status">
                    <tr> 
                      <td width="35" height="20" align="center"><input type="checkbox" id="check" value="${member.memberNo}" class="checkSelect"></td>
                      <td width="85" align="center"><a href="${member.memberNo}"><span class="d-inline-block text-truncate" 
            style="max-width: 300px;">${member.kName}</span></a></td>
                      <td width="153" align="center">${member.myNumber1}-${member.myNumber2}</td>
                      <td width="91" align="center">${member.gender}</td>
                      <td width="91" align="center">${member.stat}</td>
                      <td width="91" align="center">${member.moneyType}</td>
                      <td width="94" align="center">${member.welcome}</td>
                    </tr>
                    <tr> 
                      <td colspan="7" background="${contextPath}/image/line_bg.gif"></td>
                    </tr>
                    </c:forEach> 
                      <td height="35" colspan="7" align="center" style="padding-bottom:3">
                        <c:set var="prevPageDisabled" value="${(pageNo > 1) ? '':'disabled'}"/>
                        <c:set var="prevPageTabIndex" value="${(pageNo > 1) ? 0 : -1}"/>
                        <c:set var="nextPageDisabled" value="${(pageNo < lastPageNo) ? '':'disabled'}"/>
                        <c:set var="nextPageTabIndex" value="${(pageNo < lastPageNo) ? 0 : -1}"/>
						  <ul class="pagination justify-content-center">
                      <li class="page-item"><a href="list?pn=1&select=${select}&words=${words}"><img src="${contextPath}/image/prev.gif" width="22" height="15" border="0" align="absmiddle"></a>&nbsp;</li>
						    <li class="page-item ${prevPageDisabled}"><a id="prevBtn"
						        href="list?pn=${pageNo - 1}&select=${select}&words=${words}"
						        tabindex="${prevPageTabIndex}"><img src="${contextPath}/image/pre.gif" width="42" height="15" border="0" align="absmiddle"></a>&nbsp;</li>
						        
						    <li><a href="#">${pageNo}</a>&nbsp;</li>
						    
						    <li class="page-item ${nextPageDisabled}"><a id="nextBtn"
						        href="list?pn=${pageNo + 1}&select=${select}&words=${words}"
						        tabindex="${nextPageTabIndex}"><img src="${contextPath}/image/next.gif" width="42" height="15" border="0" align="absmiddle"></a>&nbsp;</li>
                      <li class="page-item"><a href="list?pn=${lastPageNo}&select=${select}&words=${words}"><img src="${contextPath}/image/next_.gif" width="22" height="15" border="0" align="absmiddle"></a>&nbsp;</li>
						  </ul>
                        </td>
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
                  <span style="cursor:pointer" onMouseover="this.style.color='red';" onMouseout="this.style.color='black';" onclick="really()">삭제</span><img src="${contextPath}/image/all_icon.gif" width="11" height="11" align="absmiddle"> 
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
var prevPageDisabled = '<c:out value="${prevPageDisabled}"/>';
var nextPageDisabled = '<c:out value="${nextPageDisabled}"/>';
if (prevPageDisabled == "disabled") {
$('#prevBtn').bind('click', false);
} else {
	$('#prevBtn').unbind('click', false);
}
if (nextPageDisabled == "disabled") {
$('#nextBtn').bind('click', false);
} else {
	$('#nextBtn').unbind('click', false);
}
function really(){
	if (confirm("정말 삭제하시겠습니까??") == true){    //확인
	    remove();
	}else{   //취소
	    return;
	}
}
function modify(){
	if($("input:checkbox:checked").length != 1) {
	    //0개라면 , 여러개라면 if 문으로 
	    if ($("input:checkbox:checked").length > 1) {
        alert("수정할 대상을 하나만 체크해주세요")
	    } else {
	    alert("수정할 대상을 체크해주세요")
	    }
        return;
    }	
var checkNo = $("input:checkbox:checked").val(); 
window.location = checkNo;
}
function remove(){
	if($("input:checkbox:checked").length < 1) {
	    alert("삭제할 대상을 하나 이상 체크해주세요")
	    return;
	}
/* var checkNo = $("input:checkbox:checked").val(); 
window.location = "delete?no=" + checkNo; */
	var send_array = Array();
	var send_cnt = 0;
	var chkbox = $(".checkSelect");

	for(i=0;i<chkbox.length;i++) {
	    if (chkbox[i].checked == true){
	        send_array[send_cnt] = chkbox[i].value;
	        send_cnt++;
	    }
	}
	window.location = "deleteAll?no=" + send_array;
	/* $("#array").val(send_array); */
}


</script>
</body>
</html>
 
