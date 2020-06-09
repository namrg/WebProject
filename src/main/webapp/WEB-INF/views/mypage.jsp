<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>
    
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <style>
    .centered {
      width: 1000px;
      position: absolute;
      left: 50%;
      margin-left: -200px;
    }
    
    .p-0 {
    margin-top: 150px;
    
}
.mt-5{
   background: #ffffff;
    position: fixed;
    top: 0;
    right: 0;
    left: 0;
    z-index: 1030;
    margin: 0 !important;

}

.pt-3, .py-3 {
    padding-top: 0 !important;
    margin-top: 0 !important;
}
.mt-3, .my-3 {
    margin-top: 9.5rem !important;
}
    
  </style>
  <link href="nav.css" rel="stylesheet" type="text/css">
</head>

<body>

	 <%
      String userID = null;
      if (session.getAttribute("userID") != null) {
         userID = (String) session.getAttribute("userID");
      }
   %>
  <jsp:include page="header.jsp"></jsp:include>
  
  <header class="Nav">
    <nav id="NavBar"></nav>
  </header>
  
  <%
//1. JDBC 드라이버 로딩
  Class.forName("org.mariadb.jdbc.Driver");

  Connection conn = null; // DBMS와 Java연결객체
  Statement stmt = null; // SQL구문을 실행
  ResultSet rs = null; // SQL구문의 실행결과를 저장

  String id, pw, name, email, gender;
  int phone;
  
  try
  {
        String jdbcDriver = "jdbc:mariadb://127.0.0.1:3306/webproject?useSSL=false";
        String dbUser = "root";
        String dbPass = "test";

        String query = "select * from user where id = \"" + userID + "\"";
			System.out.println(query);
        // 2. 데이터베이스 커넥션 생성
        conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

        // 3. Statement 생성
        stmt = conn.createStatement();

        // 4. 쿼리 실행
        rs = stmt.executeQuery(query);

        // 5. 쿼리 실행 결과 출력
        while(rs.next())
        {
        	id = rs.getString(1);
        	pw = rs.getString(2);
        	name = rs.getString(3);
        	email = rs.getString(4);
        	phone = rs.getInt(5);
        	gender = rs.getString(6);
        	  
  %>
  <div class="py-1">
  </div>
  <div class="mt-3" >
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="row">
            <div class="col-md-12">
              <div class="row">
                <div class="col-md-3" style="">
                  <ul class="list-group list-group-flush">
                    <a href="#" class="list-group-item list-group-item-action" id="accordion1" data-toggle="collapse" data-target="#collapse1" aria-controls="collapse1" aria-expanded="false">
                      <div class="row">
                        <div class="col-md-12 pb-3"><img class="img-fluid d-block rounded-circle" src="https://static.pingendo.com/img-placeholder-3.svg" alt="profile">
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-12 justify-content-center">
                          <h3 class="justify-content-center d-flex mt-2 mb-0 pb-2"><b><%= rs.getString(3) %></b></h3>
                          <div class="row">
                            <div class="col-md-12 d-inline-flex justify-content-center">
                              <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                <label class="btn btn-primary active">
                                  <input type="radio" name="options" id="option1" autocomplete="off" checked=""> 일반 </label>
                                <label class="btn btn-primary">
                                  <input type="radio" name="options" id="option2" autocomplete="off"> 전문가 </label>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </a>
                    <a href="#" class="list-group-item list-group-item-action">개인정보</a>
                    <a href="#" class="list-group-item list-group-item-action">문의내역</a>
                  </ul>
                </div>
                <div class="col-md-8" style="">
                  <div class="row">
                    <div class="col-md-12">
                      <h5 class="">MY Page</h5>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="jumbotron rounded pb-3 pt-3 mt-3" style="padding-top: 20px;">
                        <form method="post">
                          <div class="table-responsive">
                            <table class="table">
                              <tbody>
                                <tr>
                                  <td class="table-primary">아이디</td>
                                  <td><%= rs.getString(1) %></td>
                                </tr>
                                <tr></tr>
                                <tr>
                                  <td class="table-primary"><b>이름</b></td>
                                  <td><%= rs.getString(3) %></td>
                                </tr>
                                <tr>
                                  <td class="table-primary"><b>성별</b></td>
                                  <td><%= rs.getString(6) %></td>
                                </tr>
                                <tr>
                                  <td class="table-primary"><b>이메일</b></td>
                                  <td><%= rs.getString(4) %></td>
                                </tr>
                                <tr>
                                  <td class="table-primary"><b>전화번호</b></td>
                                  <td><%= rs.getInt(5) %></td>
                                </tr>
                              </tbody>
                            </table>
                          </div>
                          <div class="row">
                            <div class="col-md-12 d-inline-flex justify-content-center"><a class="btn btn-primary" href="mypageEdit.do">수정하기</a></div>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12"></div>
                  </div>
                  <div class="row">
                    <div class="col-md-12"></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <%
        }
  }catch(SQLException ex){
        out.println(ex.getMessage());
        ex.printStackTrace();
  }finally{
        // 6. 사용한 Statement 종료
        if(rs != null) try { rs.close(); } catch(SQLException ex) {}
        if(stmt != null) try { stmt.close(); } catch(SQLException ex) {}

        // 7. 커넥션 종료
        if(conn != null) try { conn.close(); } catch(SQLException ex) {}
  }
  
  %>
 <jsp:include page="footer.jsp"></jsp:include>
 </body>

</html>