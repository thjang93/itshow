<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="setting.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="/itshow/css/style.css">
		<script src="${project}js/member.js"></script>
	</head>
	<body>
		<div id="wrapper">
			<div id="header">
				<c:import url="/main/header.jsp" />
			</div>
			<div id="body">
				<section>
					<div class="container">
						<div class="row">
							<h1>MY PAGE</h1>
							<div class="block"></div>
							<form name="cuspageform">
								<div class="row">
									<label>ID</label><br>
									<input type="text" class="u-full-width" name="m_id"
										style="width: 200px; border: 1px dashed rgba(164, 164, 164, 1);"
										value="${memberDto.m_id}" readonly>
								</div>
								<div class="row">
									<label>Name</label><br>
									<input type="text" class="u-full-width" name="m_name"
										style="width: 200px; border: 1px dashed rgba(164, 164, 164, 1);"
										value="${memberDto.m_name}" readonly>
								</div>
								<div class="row">
									<label>Address</label><br>
									<input type="text" class="u-full-width" name="m_zipcode"
										style="width: 200px; border: 1px dashed rgba(164, 164, 164, 1);"
										value="${memberDto.m_zipcode}" readonly>
									<br>
									<c:set var="a" value="${fn:split(memberDto.m_address,'/n')}" />
									<input type="text" class="u-full-width" name="m_address" value="${a[0]}"
										style="width: 400px; border: 1px dashed rgba(164, 164, 164, 1);" readonly>
									<br>
									<input type="text" class="u-full-width" name="m_address2" value="${a[1]}"
										style="width: 400px; border: 1px dashed rgba(164, 164, 164, 1);" readonly>
								</div>
								<div class="row">
									<label>Tel</label><br>
									<input type="text" class="u-full-width" name="m_tel1"
										style="width: 200px; border: 1px dashed rgba(164, 164, 164, 1);"
										value="${memberDto.m_tel}" readonly>
								</div>
								<div class="row">
									<label>E-mail</label><br>
									<input type="text" class="u-full-width" name="m_email"
										style="width: 300px; border: 1px dashed rgba(164, 164, 164, 1);"
										value="${memberDto.m_email}" readonly><br>
									<br>
								</div>
								<div align="right">
									<input type="button" value="공연정보" onclick="location='compInfoList.do?m_code=3'">
									<input type="button" value="수정" onclick="location='memberModifyForm.do'">
									<input type="button" value="탈퇴" onclick="location='memberDeleteForm.do'">
								</div>
							</form>
						</div>
					</div>
				</section>
			</div>
			<div id="footer">
				<c:import url="/main/footer.jsp" />
			</div>
		</div>
	</body>
</html>