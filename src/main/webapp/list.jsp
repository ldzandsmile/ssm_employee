<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"
	isELIgnored="false"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'list.jsp' starting page</title>

<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- jquery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
</head>

<body>
	<div class="row">
		<div class="col-md-12">
			<h1>ssm_employee</h1>
		</div>
	</div>

	<div class="row">
		<div class="col-md-4 col-md-offset-8">
			<button class="btn btn-primary" data-toggle="modal" data-target="#addModal" id="addbtn">
				<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 添加
			</button>
			<button class="btn btn-danger" id="deletebtn">
				<span class="glyphicon glyphicon-trash"></span> 删除
			</button>

			<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">添加员工</h4>
						</div>
						<div class="modal-body">
							<form class="form-horizontal" action="insertEmployee" method="post" id="addForm">
								<div class="form-group">
									<label class="col-sm-2 control-label">姓名</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" placeholder="请输入员工姓名" id="name" name="employeeName">
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail" class="col-sm-2 control-label">邮箱</label>
									<div class="col-sm-10">
										<input type="email" class="form-control" placeholder="请输入邮箱" id="email" name="employeeEmail">
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail" class="col-sm-2 control-label">部门</label>
									<div class="col-sm-6" id="addSelect">
										<select class="form-control" name="department" id="departmentId"></select>
									</div>
								</div>
								<div class="form-group">
									<div class="col-sm-offset-2 col-sm-10">
										<div class="checkbox">
											<label> 
												<input type="checkbox"> Remember me
											</label>
										</div>
									</div>
								</div>
							</form>
						</div>
						<div class="modal-footer" id="addModalFooter">
							<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
							<button type="button" class="btn btn-primary">保存</button>
						</div>
					</div>
				</div>
			</div>
			
			<div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">修改员工</h4>
						</div>
						<div class="modal-body">
							<form class="form-horizontal" action="insertEmployee" method="post" id="addForm">
								<div class="form-group">
									<label class="col-sm-2 control-label">姓名</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="edit_employee_name" name="employeeName" readonly="readonly">
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail" class="col-sm-2 control-label">邮箱</label>
									<div class="col-sm-10">
										<input type="email" class="form-control" placeholder="请输入邮箱" id="edit_employee_email" name="employeeEmail">
									</div>
								</div>
								<div class="form-group">
									<label for="inputEmail" class="col-sm-2 control-label">部门</label>
									<div class="col-sm-6" id="editSelect">
										<select class="form-control" name="department" id="edit_employee_departmentId"></select>
									</div>
								</div>
							</form>
						</div>
						<div class="modal-footer" id="editModalFooter">
							<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
							<button type="button" class="btn btn-primary">保存</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-12">
			<table class="table table-striped table-bordered table-hover"
				id="employee_table">
				<thead>
					<tr>
						<th><input type="checkbox" name="checkAll"></th>
						<th>编号</th>
						<th>姓名</th>
						<th>邮箱</th>
						<th>所属部门</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody></tbody>
			</table>
		</div>
	</div>

	<div class="row">
		<div class="col-md-6" id="words"></div>
		<div class="col-md-6" id="paging"></div>
	</div>

	<script type="text/javascript">
		$(function() {
			//显示表格内容
			var result = getJSONS("selectAll?page=1","get",{},{});
			showPage(result);
			
			//全部选中取消
			checkAll();
			
			//下拉列表 部门信息
			addDepartmentName();
			
			//添加按钮事件
			addclick();
			
			//修改按钮事件
			editclick();
			
			//单个删除按钮事件
			deleteclick();
			
			//全部删除按钮事件
			deleteAll();
		})
		
		//全部选中 取消
		function checkAll(){
			$("input[name='checkAll']").click(function(){
				if($(this).is(":checked") == true){
					$("input[name='check']").prop('checked', 'true');
				}else if($(this).is(":checked") == false){
					$("input[name='check']").prop('checked', '');
				}
			})
		
			$("body").on('click',"input[name='check']", function(){
				var i = 0;
				$("input[name='check']").each(function(){
					if($(this).is(':checked')){
						i++;					
					}
				})

				if(i == 10){
					$("input[name='checkAll']").prop('checked', 'true');
				} else {
					$("input[name='checkAll']").prop('checked', '');
				}
			})
		}
		
		//全部删除
		function deleteAll(){
			$("#deletebtn").click(function(){
				var i = 0;
				var data = "";
				$("input[name='check']").each(function(){
					if($(this).is(':checked')){
						data += $(this).parent().next().text() + ",";
						i++;					
					}
				})
				
				getJSONS("deleteEmployeeById?_method=delete","post",{},{
					employeeId : data
				});
				
				//刷新
				var result = getJSONS("selectAll?page=" + $("li[class='active'] a").text(),"get",{},{});
				showPage(result); 
			})
		}
		
		//删除按钮事件
		function deleteclick(){
			$("body").on('click',".btn_delete", function(){
				getJSONS("deleteEmployeeById?employeeId=" + $(this).attr("employeeId") + "&_method=delete","post",{},{});
				//刷新
				var result = getJSONS("selectAll?page=" + $("li[class='active'] a").text(),"get",{},{});
				showPage(result); 
			})
			
		}
		
		//修改按钮事件
		function editclick(){
			$(".btn_edit").click(function(){
				//清除验证消息
				$("#edit_employee_email+span").empty();
			
				var result = getJSONS("selectEmployeeById?employeeId=" + $(this).attr("employeeId"),"get",{},{});
				//显示当前员工数据
				$("#edit_employee_name").before($("<input type='hidden' id='edit_employee_id' name='employeeId' value=' " + result.extend.employee.employeeId + " '>"));
				$("#edit_employee_name").val(result.extend.employee.employeeName);
				$("#edit_employee_email").val(result.extend.employee.employeeEmail);
				$("#edit_employee_departmentId option").each(function(){
					if($(this).val().indexOf(result.extend.employee.employeeDepartmentid) != -1){
						$(this).attr("selected", "true");
					}
				})
				
			})
		
			$("#editModalFooter>button[class='btn btn-primary']").click(function(){
				//邮箱前端验证
				var regEmail = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
				if(regEmail.test($("#edit_employee_email").val()) == false){
					$("#edit_employee_email").after($("<span></span>").addClass("help-block").append("邮箱格式不正确"));
					return false;
				};
				
				//将添加的数据发送到后台
				getJSONS("updateEmployeeById?_method=put","post",{},{
					employeeId : $("#edit_employee_id").val(),
					employeeName : $("#edit_employee_name").val(),
					employeeEmail : $("#edit_employee_email").val(),
					department : $("#edit_employee_departmentId").val(),
				});
				
				//隐藏模态框
				$("#editModal").modal('hide');

				//刷新数据
				var result = getJSONS("selectAll?page=" + $("li[class='active'] a").text(),"get",{},{});
				showPage(result); 
			})
		}
		
		//添加按钮事件
		function addclick(){
			//添加 模态框事件
			$("#addbtn").click(function(){
				//清除以输入的信息，如果点击记住则不清除
				if($("input[type='checkbox']").is(":checked") == false){
					$("input").val("");
				}
			})
			
			//点击保存事件
			$("#addModalFooter>button[class='btn btn-primary']").click(function(){
				$("#name+span,#email+span").empty();
				//用户名前端验证
				var regName = /^(([a-zA-Z0-9_-]{6,16})|([\u2E80-\u9FFF]{3,6}))$/;
				if(regName.test($("#name").val()) == false){
					$("#name").after($("<span></span>").addClass("help-block").append("用户名支持6-16位英文数字或3-6位中文"));
					return false;
				};
				
				//用户名后端验证
				if(getJSONS("selectEmployeeByName?employeeName=" + $("#name").val(),"get",{},{}) == true){
					$("#name").after($("<span></span>").addClass("help-block").append("用户已存在"));
					return false;
				}
				
				//邮箱前端验证
				var regEmail = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
				if(regEmail.test($("#email").val()) == false){
					$("#email").after($("<span></span>").addClass("help-block").append("邮箱格式不正确"));
					return false;
				};
				
				//将添加的数据发送到后台
				getJSONS("insertEmployee","post",{},{
					employeeName : $("#name").val(),
					employeeEmail : $("#email").val(),
					department : $("#departmentId").val(),
				});
				
				//隐藏模态框
				$("#addModal").modal('hide');
				
				//刷新数据
				var result = getJSONS("selectAll?page=9999","get",{},{});
				showPage(result);
			});
		}
		
		//添加页面元素
		function showPage(result){
			build_table(result.extend.employeeList.list);
			build_page(result.extend.employeeList);
			addClick();
		}
		
		//发送ajax请求
		function getJSONS(url, type, headers, data) {
			var message = "fail";
			$.ajax({
				type : type,
				url : url,
				dataType : 'json',
				data : data,
				headers : headers,
				async : false,
				success : function(data) {
					message = data;
				},
				error : function(xhr, text) {
				}
			});
			return message;
		}

		//添加表格数据
		function build_table(message) {
			$("#employee_table>tbody").empty();
			var tbody = $("#employee_table>tbody");
			$.each(message, function(index, employee) {
				var editbtn = $("<button></button>").addClass("btn btn-primary btn-sm btn_edit").attr("data-toggle", "modal").attr("data-target", "#editModal").attr("employeeId", employee.employeeId).append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("修改");
				var deletebtn = $("<button></button>").addClass("btn btn-danger btn-sm btn_delete").attr("data-toggle", "modal").attr("data-target", "#deleteModal").attr("employeeId", employee.employeeId).append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("删除");
				var tr = $("<tr></tr>");
				tr.append($("<td></td>").append($("<input type='checkbox' name='check'>")))
					.append($("<td></td>").append(employee.employeeId))
					.append($("<td></td>").append(employee.employeeName))
					.append($("<td></td>").append(employee.employeeEmail))
					.append($("<td></td>").append(employee.department.departmentName))
					.append($("<td></td>").append(editbtn).append(deletebtn));
				tbody.append(tr);
			})
		}
	
		//添加分页信息
		function build_page(message) {
			//清除之前的内容
			$("#words").empty();
			$("#paging").empty();
			
			//文字信息
			var words = $("<p>当前第" + message.pageNum + "页      显示" + message.size + "条数据      共有" + message.total + "页</p>");
			$("#words").append(words);
	
			//翻页组件
			var ul = $("<ul></ul>").addClass("pagination");
			ul.append($("<li></li>").append($("<a></a>").append("首页").attr("href", "selectAll?page=1").addClass(message.pageNum == 1 ? "disabled" : "")))
				.append($("<li></li>").append($("<a></a>").attr("href", "selectAll?page=" + ((message.pageNum - 1) > 0 ? message.pageNum - 1 : 1)).addClass(message.pageNum == 1 ? "disabled" : "").append($("<span></span>").append("&laquo;").attr("aria-hidden", "true"))));
			for(var i = 0; i<message.navigatePages; i++){
				var li = $("<li></li>");
				li.append($("<a></a>").append(message.navigatepageNums[i]).attr("href", "selectAll?page=" + message.navigatepageNums[i])).addClass(message.navigatepageNums[i] == message.pageNum?"active":"");
				ul.append(li);
			}
			
			ul.append($("<li></li>").append($("<a></a>").attr("href", "selectAll?page=" + ((message.pageNum + 1) < message.pages ? message.pageNum + 1 : message.pages)).addClass(message.pageNum == 1 ? "disabled" : "").append($("<span></span>").append("&raquo;").attr("aria-hidden", "true"))))
				.append($("<li></li>").append($("<a></a>").append("尾页").attr("href", "selectAll?page=" + message.pages).addClass(message.pageNum == message.pages ? "disabled" : "")));
			
			$("#paging").append($("<nav></nav>").attr("aria-label", "Page navigation").append(ul));
		}
		
		//添加分页点击事件
		function addClick(){
			$("body").on('click','a', function(){
				var result = getJSONS(this.href,"get",{},{});
				showPage(result);
				
				editclick();
				
				return false;
			})
		} 
		
		//添加部门信息
		function addDepartmentName(){
			var result = getJSONS("selectAllDepartment","get",{},{});
			$.each(getJSONS("selectAllDepartment","get",{},{}).extend.departmentList, function(indek, value){
				$("#addSelect>select,#editSelect>select").append($("<option></option>").append(value.departmentId + "号部门：" +value.departmentName));
			})
		}
	</script>
</body>
</html>
