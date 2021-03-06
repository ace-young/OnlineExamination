<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
	
	添加教师用户
	
-->
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<meta name="renderer" content="webkit">
		<title>添加教师</title>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/pintuer.css">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/admin.css">
	</head>
	<body>
	<div class="panel admin-panel">
			<div class="panel-head"><strong class="icon-reorder"> 添加教师用户</strong></div>

			<br>

			<form method="post" class="form-x" action="#" >
				<div class="form-group">
					<div class="label">
						<label>教室编号：</label>
					</div>
					<div class="field">
						<input type="text" name="tid" class="input" placeholder="如：1012020"></input>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>姓名：</label>
					</div>
					<div class="field">
						<input type="text" name="tname" class="input" placeholder="如：张三"></input>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>性别：</label>
					</div>
					<div class="field">
						男&nbsp;&nbsp;<input type="radio"  name="sex" checked="checked" value="1" />
						女&nbsp;&nbsp;<input type="radio" name="sex" value="1" />
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label>身份证号：</label>
					</div>
					<div class="field">
						<input type="text" name="cardNumber" class="input" placeholder="18位身份证号码"></input>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>登陆密码：</label>
					</div>
					<div class="field">
						<input type="text" name="password" class="input" placeholder="初始密码为教师编号"></input>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>职称：</label>
					</div>
					<div class="field">
						<input type="text" name="title" class="input" placeholder="如：教授、副教授、教师等"></input>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>联系电话：</label>
					</div>
					<div class="field">
						<input type="text" name="phone" class="input" placeholder="长号：11号码"></input>
						<div class="tips"></div>
					</div>
				</div>

				<div class="form-group">
					<div class="label">
						<label></label>
					</div>
					<div class="field">
						<button class="button bg-main icon-check-square-o" type="submit"> 提交</button>
					</div>
				</div>
			</form>
		</div>
	</body>
</html>