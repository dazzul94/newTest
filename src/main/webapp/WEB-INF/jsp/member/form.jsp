<%@ page language="java" 
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true"%>
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
<form action="add" method='post' enctype="multipart/form-data">
<div id= "wrapper"> 
<div class="left"> 
<jsp:include page="../left.jsp"></jsp:include>

</div>
 
  <div class="main"> 
 
<table id="mainFrame" width="640" border="0px" cellspacing="0" cellpadding="0">
  <tr> 
    <td width="640">&nbsp;</td>
  </tr>
  <tr> 
    <td height="25"><img src="${contextPath}/image/icon.gif" width="9" height="9" align="absmiddle"> 
      <strong>사원 기본 정보 등록</strong></td>
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
                                    <td height="110" bgcolor="#FFFFFF"><div id="holder"></div></td>
                                  </tr>
                              </table></td>
                            </tr>
                          </table></td>
                          <td width="456"><table width="423" border="0" cellspacing="2" cellpadding="0">
                            <tr>
                              <td height="2" colspan="2"></td>
                              </tr>
                              
                            <tr>
                              <td width="107" height="26" align="right"><strong>한글이름 :</strong>&nbsp;</td>
                              <td width="310" height="26">
                                <input type="text" name="kName">
                              </td>
                            </tr>
                            <tr>
                              <td height="26" align="right"><strong>영문이름 :&nbsp;</strong></td>
                              <td height="26"><input type="text" name="eName"></td>
                            </tr>
                            <tr>
                              <td height="26" align="right"><strong>한문이름 :</strong>&nbsp;</td>
                              <td height="26"><input type="text" name="jName"></td>
                            </tr>
                            <tr>
                              <td height="26" align="right"><strong>주민등록번호 :</strong>&nbsp;</td>
                              <td height="26"><input name="myNumber1" type="text" size="15">
      -
        <input name="myNumber2" type="text" size="15"></td>
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
                            <input type="text" id="fileName" name="preShortFilename" class="file_input_textbox" readonly >
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
                            <td width="391"><input name="year" type="text" size="10">
                              년 
                              <input name="month" type="text" size="7">
                              월 
                              <input name="day" type="text" size="7">
                              일 ( 
                              <input type="radio" name="calendar" value="양력" checked="checked">
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
                            <td width="391"> <input type="radio" name="gender" value="남자" checked="checked">
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
                            <td width="391"> <input type="radio" name="wedding" value="기혼" checked="checked">
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
                            <td width="392"><input name="career" type="text" size="10"> 
                            </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>상태 :&nbsp;</strong></td>
                            <td width="392"> <select name="moneyType">
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
                            <td width="392"> <select name="workingType">
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
                            <td width="392"> <select name="welcome">
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
                            <td width="392"><input name="address" type="text" size="10"> 
                              <input name="detailAddress" type="text" size="40"> 
                            </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>연락처 :&nbsp;</strong></td>
                            <td width="392"><input name="phoneNumber1" type="text" size="10">
                              - 
                              <input name="phoneNumber2" type="text" size="10">
                              - 
                              <input name="phoneNumber3" type="text" size="10"></td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>이메일 :&nbsp;</strong></td>
                            <td width="392"><input name="email" type="text" size="20"> 
                            </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>기술등급 :&nbsp;</strong></td>
                            <td width="392"><input name="stat" type="text" size="20"> 
                            </td>
                          </tr>
                        </table></td>
                    </tr>
                    <tr> 
                      <td bgcolor="#E4EBF1"><table width="500" border="0" cellspacing="1" cellpadding="1">
                          <tr> 
                            <td width="101" align="right"><strong>주량 :&nbsp;</strong></td>
                            <td width="392"><input name="alchol" type="text" size="20"> 
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
              <td width="49">
                <button>등록</button>
         
              <%-- <img src="${contextPath}/image/bt_remove.gif" width="49" height="18"> --%>
              </td>
              <%-- <td width="51"><img src="${contextPath}/image/bt_cancel.gif" width="49" height="18"></td> --%>
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
  </div>
       </form>
<script>
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

</script>
<jsp:include page="../jslib.jsp"/>
</div>
</body>
</html>

    