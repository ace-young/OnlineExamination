<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
	
	教师——查询学生成绩
	
-->


<html lang="zh-cn">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<meta name="renderer" content="webkit">
		<title>学生考试记录</title>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/pintuer.css">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/css/admin.css">
		<script src="<%=request.getContextPath() %>/js/jquery.js"></script>
		<script src="<%=request.getContextPath() %>/js/pintuer.js"></script>
	</head>

	<body>
		<form method="post" action="" id="listform">
			<div class="panel admin-panel">
				<div class="panel-head"><strong class="icon-reorder"> 学生考试记录</strong></div>
					<div class="padding border-bottom">
						<ul class="search" style="padding-left:10px;">
							<li>
								<input type="text" placeholder="请输入学生学号" name="keywords" class="input" style="width:250px; line-height:17px;  display:inline-block" />
								<a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()"> 搜索</a>
							</li>
						</ul>
					</div>
					<table class="table table-hover text-center">
						<tr>
							<th width="100" style="text-align:left; padding-left:20px; width：10%；">学号</th>
							<th>姓名</th>
							<th width="10%">考试科目</th>
							<th>开始时间</th>
							<th>提交时间</th>
							<th>考试耗时（分钟）</th>
							<th>考试分数</th>
							<th width="310">操作</th>
						</tr>
						<volist name="list" id="vo">
							<tr>
								<td style="text-align:left; padding-left:20px; width：10%；">201424133257</td>
								<td>ace</td>
								<td width="10%">学生手册</td>
								<td>2017/3/7 15:00</td>
								<td>2017/3/7 16:00</td>
								<td>60</td>
								<td>80</td>
								<td>
									<div class="button-group">
										<a class="button border-main" href="add.html"><span class="icon-edit"></span> 修改</a>
										<a class="button border-red" href="javascript:void(0)" onclick="return del(1,1,1)"><span class="icon-trash-o"></span> 删除</a>
									</div>
								</td>
							</tr>

							<tr>
								<td colspan="8">
									<div class="pagelist">
										<a href="">上一页</a> 
										<span class="current">1</span>
										<a href="">2</a>
										<a href="">3</a>
										<a href="">下一页</a>
										<a href="">尾页</a>
									</div>
								</td>
							</tr>
					</table>
			</div>
		</form>
		<script type="text/javascript">
			//搜索
			function changesearch() {

			}

			//单个删除
			function del(id, mid, iscid) {
				if(confirm("您确定要删除吗?")) {

				}
			}

			//全选
			$("#checkall").click(function() {
				$("input[name='id[]']").each(function() {
					if(this.checked) {
						this.checked = false;
					} else {
						this.checked = true;
					}
				});
			})

			//批量删除
			function DelSelect() {
				var Checkbox = false;
				$("input[name='id[]']").each(function() {
					if(this.checked == true) {
						Checkbox = true;
					}
				});
				if(Checkbox) {
					var t = confirm("您确认要删除选中的内容吗？");
					if(t == false) return false;
					$("#listform").submit();
				} else {
					alert("请选择您要删除的内容!");
					return false;
				}
			}

			//批量排序
			function sorts() {
				var Checkbox = false;
				$("input[name='id[]']").each(function() {
					if(this.checked == true) {
						Checkbox = true;
					}
				});
				if(Checkbox) {

					$("#listform").submit();
				} else {
					alert("请选择要操作的内容!");
					return false;
				}
			}

			//批量首页显示
			function changeishome(o) {
				var Checkbox = false;
				$("input[name='id[]']").each(function() {
					if(this.checked == true) {
						Checkbox = true;
					}
				});
				if(Checkbox) {

					$("#listform").submit();
				} else {
					alert("请选择要操作的内容!");

					return false;
				}
			}

			//批量推荐
			function changeisvouch(o) {
				var Checkbox = false;
				$("input[name='id[]']").each(function() {
					if(this.checked == true) {
						Checkbox = true;
					}
				});
				if(Checkbox) {

					$("#listform").submit();
				} else {
					alert("请选择要操作的内容!");

					return false;
				}
			}

			//批量置顶
			function changeistop(o) {
				var Checkbox = false;
				$("input[name='id[]']").each(function() {
					if(this.checked == true) {
						Checkbox = true;
					}
				});
				if(Checkbox) {

					$("#listform").submit();
				} else {
					alert("请选择要操作的内容!");

					return false;
				}
			}

			//批量移动
			function changecate(o) {
				var Checkbox = false;
				$("input[name='id[]']").each(function() {
					if(this.checked == true) {
						Checkbox = true;
					}
				});
				if(Checkbox) {

					$("#listform").submit();
				} else {
					alert("请选择要操作的内容!");

					return false;
				}
			}

			//批量复制
			function changecopy(o) {
				var Checkbox = false;
				$("input[name='id[]']").each(function() {
					if(this.checked == true) {
						Checkbox = true;
					}
				});
				if(Checkbox) {
					var i = 0;
					$("input[name='id[]']").each(function() {
						if(this.checked == true) {
							i++;
						}
					});
					if(i > 1) {
						alert("只能选择一条信息!");
						$(o).find("option:first").prop("selected", "selected");
					} else {

						$("#listform").submit();
					}
				} else {
					alert("请选择要复制的内容!");
					$(o).find("option:first").prop("selected", "selected");
					return false;
				}
			}
		</script>
	</body>

</html>