<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  
  <title>메일 보내기</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

	<style>
		body{
			margin-top:50px;
		}
	</style>

</head>
<body>
<br/><br/><br/>
	<h4 align="center">메일 보내기</h4>
    <form action="mailSending.do" method="post">
      <div>
        <input type="text" name="tomail" size="120" style="width: 100%" value="${ask.ask_email }" class="form-control" readonly>
      </div>
      <div align="center">
        <!-- 제목 -->
        <input type="text" name="title" size="120"
        style="width: 100%" placeholder="제목을 입력해주세요"
        class="form-control">
      </div>
        <p>
          <div align="center">
          <!-- 내용 -->
            <textarea name="content" cols="120" rows="12"
            style="width: 100%; resize: none" placeholder="내용을 입력해주세요"
            class="form-control"></textarea>
          </div>
        <p>
      <div align="center">
        <input type="submit" value="메일 보내기" class="btn btn-warning">
      </div>
    </form>
</body>
</html>