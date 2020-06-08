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
	<div class="mt-5">
		<div class="container">
			<div class="row">
				<div class="col-md-2">
					<i class="fa fa-5x fa-camera-retro"></i>
				</div>
				<div class="col-md-8">
					<a href="home.do" style="text-decoration: none;">
						<h1 class="display-3" style="">
							<b>LOGO</b>
						</h1>
					</a>
				</div>
				<div>
					<ul class="nav" style="">
						<%
							if (userID == null) {
						%>
						<div class="box1">
							<div class="col-md-2">
								<div class="btn-group ml-4 mt-4" style="">
									<button class="btn dropdown-toggle btn-primary"
										data-toggle="dropdown">접속하기</button>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="login.do">Login</a> <a
											class="dropdown-item" href="join.do">Sign in</a>
									</div>
								</div>
							</div>
						</div>
						<%
							} else {
						%>
						<div class="box2">
							<div class="col-md-2">
								<div class="btn-group ml-4 mt-4" style="">
									<button class="btn dropdown-toggle btn-primary"
										data-toggle="dropdown">마이페이지</button>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="mypage.do">내정보</a> <a
											class="dropdown-item" href="logoutAction.do">Logout</a>
									</div>
								</div>
							</div>
						</div>
						<%
							}
						%>
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-md-9 border-bottom" style="">
					<div class="col-offset-1 col-md-12">
						<ul class="nav mt-2" style="">
							<li class="nav-item dropdown text-capitalize" style=""><a
								class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
								role="button" aria-haspopup="true" aria-expanded="false">디자인</a>
								<div class="dropdown-menu" x-placement="bottom-start"
									style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 40px, 0px);">
									<a class="dropdown-item" href="maincontant.html">포토샵<br></a><a
										class="dropdown-item" href="#">일러스트레이터</a><a
										class="dropdown-item" href="#">제품디자인</a><a
										class="dropdown-item" href="#">건축</a><a class="dropdown-item"
										href="#">UX/UI디자인</a><a class="dropdown-item" href="#">편집디자인</a><a
										class="dropdown-item" href="#">캘리그라피</a><a
										class="dropdown-item" href="#">기타<br></a>
								</div></li>
							<li class="nav-item dropdown text-capitalize" style=""><a
								class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
								role="button" aria-haspopup="true" aria-expanded="false">IT-프로그래밍</a>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="#">웹개발</a><a
										class="dropdown-item" href="#">앱개발</a><a class="dropdown-item"
										href="#">보안</a><a class="dropdown-item" href="#">데이터베이스</a><a
										class="dropdown-item" href="#">알고리즘</a><a
										class="dropdown-item" href="#">게임</a><a class="dropdown-item"
										href="#">기타 </a>
								</div></li>
							<li class="nav-item dropdown text-capitalize" style=""><a
								class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
								role="button" aria-haspopup="true" aria-expanded="false">콘텐츠&nbsp;제작</a>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="#">영상촬영-편집</a><a
										class="dropdown-item" href="#">사진촬영</a><a
										class="dropdown-item" href="#">애니메이션</a><a
										class="dropdown-item" href="#">유튜브제작</a><a
										class="dropdown-item" href="#">음악</a><a class="dropdown-item"
										href="#">더빙-녹음</a><a class="dropdown-item" href="#">기타</a>
								</div></li>
							<li class="nav-item dropdown text-capitalize" style=""><a
								class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
								role="button" aria-haspopup="true" aria-expanded="false">번역,통역</a>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="#">번역<br></a><a
										class="dropdown-item" href="#">통역</a><a class="dropdown-item"
										href="#">영상번역</a><a class="dropdown-item" href="#">기타<br></a>
								</div></li>
							<li class="nav-item dropdown text-capitalize" style=""><a
								class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
								role="button" aria-haspopup="true" aria-expanded="false">문서</a>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="#">MS-office</a><a
										class="dropdown-item" href="#">논문</a><a class="dropdown-item"
										href="#">자소서</a><a class="dropdown-item" href="#">타이핑</a><a
										class="dropdown-item" href="#">글작성</a><a class="dropdown-item"
										href="#">기타</a>
								</div></li>
							<li class="nav-item dropdown text-capitalize" style=""><a
								class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
								role="button" aria-haspopup="true" aria-expanded="false">레슨.실무교육</a>
								<div class="dropdown-menu" x-placement="bottom-start"
									style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 40px, 0px);">
									<a class="dropdown-item" href="#">프로그래밍</a><a
										class="dropdown-item" href="#">그래픽디자인</a><a
										class="dropdown-item" href="#">데이터분석</a><a
										class="dropdown-item" href="#">유튜브-영상&amp;사진</a><a
										class="dropdown-item" href="#">외국어</a><a class="dropdown-item"
										href="#">프레젠테이션</a><a class="dropdown-item" href="#">취미-라이프<br></a><a
										class="dropdown-item" href="#">기타<br></a>
								</div></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 border-bottom" style="">
					<form class="form-inline">
						<div class="input-group">
							<input type="text" class="form-control mt-2"
								id="inlineFormInputGroup" placeholder="Search">
							<div class="input-group-append">
								<button class="btn btn-primary mt-2" type="button">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
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
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-9">
          <p class="lead">Sign up to our newsletter for the latest news</p>
          <form class="form-inline">
            <div class="form-group"> <input type="email" class="form-control" placeholder="Your e-mail here"> </div> <button type="submit" class="btn btn-primary ml-3">Subscribe</button>
          </form>
        </div>
        <div class="col-4 col-md-1 align-self-center"> <a href="#">
            <i class="fa fa-fw fa-facebook text-muted fa-2x"></i>
          </a> </div>
        <div class="col-4 col-md-1 align-self-center"> <a href="#">
            <i class="fa fa-fw fa-twitter text-muted fa-2x"></i>
          </a> </div>
        <div class="col-4 col-md-1 align-self-center"> <a href="#">
            <i class="fa fa-fw fa-instagram text-muted fa-2x"></i>
          </a> </div>
      </div>
      <div class="row">
        <div class="col-md-12 mt-3 text-center">
          <p>© Copyright 2018 Pingendo - All rights reserved.</p>
        </div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  <pingendo onclick="window.open('https://pingendo.com/', '_blank')" style="cursor:pointer;position: fixed;bottom: 20px;right:20px;padding:4px;background-color: #00b0eb;border-radius: 8px; width:220px;display:flex;flex-direction:row;align-items:center;justify-content:center;font-size:14px;color:white">Made with Pingendo Free&nbsp;&nbsp;<img src="https://pingendo.com/site-assets/Pingendo_logo_big.png" class="d-block" alt="Pingendo logo" height="16"></pingendo>
</body>

</html>