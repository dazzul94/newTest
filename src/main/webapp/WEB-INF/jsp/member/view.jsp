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
    .file_input_textbox {float:left; /* height:29px; */width: 180px;}
    .file_input_div {position:relative; width:80px; /* height:36px; */ overflow:hidden;}
    .file_input_img_btn {padding:0 0 0 5px;}
    .file_input_hidden {font-size:29px; position:absolute; right:0px; top:0px; opacity:0; filter: alpha(opacity=0); -ms-filter: alpha(opacity=0); cursor:pointer;}
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
<form action="update" method='post' enctype="multipart/form-data">
<div id= "wrapper"> 
<div class="left"> 
<jsp:include page="../left.jsp"></jsp:include>

</div>
 
 <c:if test="${not empty member}">
  <div class="main"> 
<table id="mainFrame" width="640" border="0px" cellspacing="0" cellpadding="0">
  <tr> 
    <td width="640">&nbsp;</td>
  </tr>
  <tr> 
    <td height="25"><img src="${contextPath}/image/icon.gif" width="9" height="9" align="absmiddle"> 
      <strong>사원 기본 정보 수정</strong></td>
  </tr>
  <tr>
  
    <td><table width="640" border="0" cellspacing="0" cellpadding="0">
        <tr> 
          <td height="15" align="left"><table width="640" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td><table width="640" border="0" cellspacing="1" cellpadding="0">
                    <tr> 
                      <td height="2" background="${contextPath}/image/bar_bg1.gif"></td>
                    </tr>
                    <tr align="center" bgcolor="F8F8F8"> 
                      <td height="26" align="center" bgcolor="#E4EBF1" style="padding-right:10"><table width="600" border="0" cellspacing="0" cellpadding="0">
                          <tr> 
                            <td align="center"><strong>교육정보 | 자격증. 보유기술정보 | 프로젝트 
                              정보 |경력정보 | 근무정보</strong></td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr align="center" bgcolor="F8F8F8"> 
                      <td height="3" align="right" background="${contextPath}/image/bar_bg1.gif"></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td height="6" align="center" valign="top">&nbsp;</td>
        </tr>
        <tr>
          <td height="7" align="center" valign="top"><table width="600" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td bgcolor="#CCCCCC"><table width="600" border="0" cellspacing="1" cellpadding="0">
                    <tr> 
                      <td height="135" align="center" bgcolor="#E4EBF1"><table width="600" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="144" height="119" align="center"><table width="100" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td height="112" bgcolor="#CCCCCC"><table width="100" border="0" cellspacing="1" cellpadding="0">
                                  <tr>
                                    <td height="110" bgcolor="#FFFFFF"><div id="holder"><img src="${contextPath}/download/${member.photo}" width="100%" height="112" alt=""></div></td>
                                  </tr>
                              </table></td>
                            </tr>
                          </table></td>
                          <td width="456"><table width="423" border="0" cellspacing="2" cellpadding="0">
                            <tr>
                              <td height="2" colspan="2"></td>
                              </tr>
                              
                            <tr>
                              <td width="107" height="26" align="right"><strong>한글이름 :&nbsp;</strong></td>
                              <td width="310" height="26">
                                <input type="hidden" name="memberNo" value="${member.memberNo}">
                                <input type="text" name="kName" value="${member.kName}">
                              </td>
                            </tr>
                            <tr>
                              <td height="26" align="right"><strong>영문이름 :&nbsp;</strong></td>
                              <td height="26"><input type="text" name="eName" value="${member.eName}"></td>
                            </tr>
                            <tr>
                              <td height="26" align="right"><strong>한문이름 :</strong>&nbsp;</td>
                              <td height="26"><input type="text" name="jName" value="${member.jName}"></td>
                            </tr>
                            <tr>
                              <td height="26" align="right"><strong>주민등록번호 :</strong>&nbsp;</td>
                              <td height="26"><input name="myNumber1" type="text" size="15" value="${member.myNumber1}">
      -
                            <input name="myNumber2" type="text" size="15" value="${member.myNumber2}"></td>
                            </tr>
                          </table></td>
                        </tr>
                      </table></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td height="7" align="center" valign="top">&nbsp;</td>
        </tr>
        <tr> 
          <td height="13" align="center"><table width="600" border="0" cellspacing="0" cellpadding="0">
              <tr> 
                <td bgcolor="#CCCCCC"><table width="600" border="0" cellspacing="1" cellpadding="0">
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="526" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="102" align="right"><strong>사진파일명 :&nbsp;</strong></td>
                            <td width="268">
                            <div>
                            <input type="text" id="fileName" name="preShortFilename" value="${member.preShortFilename}" class="file_input_textbox" readonly >
                            <div class="file_input_div">
                            <img src="${contextPath}/image/bt_search.gif" class="file_input_img_btn" alt="open" />
                            <input type="file" name="file" class="file_input_hidden" size="40" id="prevv"/>
                            </div>
                            </div>
                            </td>
                            <td width="146"><%-- <font color="#FF0000"><img src="${contextPath}/image/bt_search.gif" width="49" height="18"></font> --%></td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="102" align="right"><strong>생년월일 :&nbsp;</strong></td>
                            <td width="391"><input name="year" type="text" size="10" value="${member.year}">
                              년 
                              <input name="month" type="text" size="7" value="${member.month}">
                              월 
                              <input name="day" type="text" size="7" value="${member.day}">
                              일 ( 
                              <input type="radio" name="calendar" value="양력">
                              양력 
                              <input type="radio" name="calendar" value="음력">
                              음력 )</td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="102" align="right"><strong>성별 :&nbsp; </strong></td>
                            
                            <td width="391"> <input type="radio" name="gender" value="남자">
                              남자 
                              <input type="radio" name="gender" value="여자">
                              여자</td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="102" align="right"><strong>결혼유무 :&nbsp;</strong></td>
                            <td width="391"> <input type="radio" name="wedding" value="기혼">
                              기혼 
                              <input type="radio" name="wedding" value="미혼">
                              미혼</td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>년차 :&nbsp;</strong></td>
                            <td width="392"><input name="career" type="text" size="10" value="${member.career}"> 
                            </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>상태 :&nbsp;</strong></td>
                            <td width="392"> <select id ="moneyType" name="moneyType">
                                <option>월급</option>
                                <option>주급</option>
                              </select> </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>희망직무 :&nbsp;</strong></td>
                            <td width="392"> <select id = "workingType" name="workingType">
                                <option>SI</option>
                                <option>SM</option>
                              </select> </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>근무 :&nbsp;</strong></td>
                            <td width="392"> <select id = "welcome" name="welcome">
                                <option>정규직</option>
                                <option>계약직</option>
                              </select> </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>주소 :&nbsp;</strong></td>
                            <td width="392"><input name="address" type="text" size="10" value="${member.address}"> 
                              <input name="detailAddress" type="text" size="40" value="${member.detailAddress}"> 
                            </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>연락처 :&nbsp;</strong></td>
                            <td width="392"><input name="phoneNumber1" type="text" size="10" value="${member.phoneNumber1}">
                              - 
                              <input name="phoneNumber2" type="text" size="10" value="${member.phoneNumber2}">
                              - 
                              <input name="phoneNumber3" type="text" size="10" value="${member.phoneNumber3}"></td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>이메일 :&nbsp;</strong></td>
                            <td width="392"><input name="email" type="text" size="20" value="${member.email}"> 
                            </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>기술등급 :&nbsp;</strong></td>
                            <td width="392"><input name="stat" type="text" size="20" value="${member.stat}"> 
                            </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>주량 :&nbsp;</strong></td>
                            <td width="392"><input name="alchol" type="text" size="20" value="${member.alchol}"> 
                            </td>
                          </tr>
                        </table></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr> 
          <td height="3" align="center">&nbsp;</td>
        </tr>
        <tr>
          <td height="3" align="center"><table width="107" border="0" cellpadding="1" cellspacing="1">
            <tr>
              <td width="49"><button type="submit" style="background-color: white; border:0px" onclick="okay()"><img src="${contextPath}/image/bt_remove.gif" width="49" height="18" style="cursor:pointer"></button></td>
              <td width="51"><a href='list'><img src="${contextPath}/image/bt_cancel.gif" width="49" height="18"></a></td>
            </tr>
          </table>            </td>
        </tr>
        <tr> 
          <td height="7" align="right">&nbsp;</td>
        </tr>
      </table></td>
  </tr>
   </table>
  </div>
  <c:set var="calendar" value="${member.calendar}"/>
  <c:set var="gender" value="${member.gender}"/>
  <c:set var="wedding" value="${member.wedding}"/>
  <c:set var="moneyType" value="${member.moneyType}"/>
  <c:set var="workingType" value="${member.workingType}"/>
  <c:set var="welcome" value="${member.welcome}"/>
  </c:if>
  </div>
  <input name="originalFilename" type="hidden" value="${member.photo}" size="40">
       </form>
       <jsp:include page="../jslib.jsp"/>
       </div>
       <p id="status">&nbsp;</p>
</body>
<script type="text/javascript">
/* function button_event(){
	if (confirm("정말 삭제하시겠습니까??") == true){    //확인
	    document.write("삭제되었습니다");
	}else{   //취소
	    return;
	}
	} */

var calendar = '<c:out value="${calendar}"/>';
var gender = '<c:out value="${gender}"/>';
var wedding = '<c:out value="${wedding}"/>';
var moneyType = '<c:out value="${moneyType}"/>';
var workingType = '<c:out value="${workingType}"/>';
var welcome = '<c:out value="${welcome}"/>';
window.onload = function () {
if (calendar == '양력') {
$("input:radio[name='calendar']:radio[value='양력']").prop("checked",true);
} else {
	$("input:radio[name='calendar']:radio[value='음력']").prop("checked",true);
	}
if (gender == '여자') {
$("input:radio[name='gender']:radio[value='여자']").prop("checked",true);
} else {
	$("input:radio[name='gender']:radio[value='남자']").prop("checked",true);
	}
if (wedding == '기혼') {
$("input:radio[name='wedding']:radio[value='기혼']").prop("checked",true);
} else {
	$("input:radio[name='wedding']:radio[value='미혼']").prop("checked",true);
	}
if (moneyType == '월급') {
    $("#moneyType option:eq(0)").prop("selected", true);
	} else {
    $("#moneyType option:eq(1)").prop("selected", true);
	} 
if (workingType == 'SI') {
    $("#workingType option:eq(0)").prop("selected", true);
	} else {
    $("#workingType option:eq(1)").prop("selected", true);
	}
if (welcome == '정규직') {
    $("#welcome option:eq(0)").prop("selected", true);
	} else {
    $("#welcome option:eq(1)").prop("selected", true);
	}
}

var upload = document.getElementById('prevv'),
holder = document.getElementById('holder'),
state = document.getElementById('status');

if (typeof window.FileReader === 'undefined') {
state.className = 'fail';
} else {
state.className = 'success';
}

upload.onchange = function (e) {
e.preventDefault();
var strArray = this.value.split('\\');
document.getElementById('fileName').value = strArray[strArray.length-1];
var file = upload.files[0],
  reader = new FileReader();
reader.onload = function (event) {
var imge = new Image();
imge.src = event.target.result;
// note: no onload required since we've got the dataurl...I think! :)
  imge.height = 112;
  imge.width = 100;
holder.innerHTML = '';
holder.appendChild(imge);
};
reader.readAsDataURL(file);

return false;
}; 
function okay() {
	window.alert("수정되었습니다");
}
</script>
</html>

    