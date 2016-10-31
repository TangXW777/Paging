<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- 引入文件 -->
	<link href="css/pagination.css" rel="stylesheet" type="text/css" />
	<script src="js/jquery-2.2.3.js" type="text/javascript"></script> 
	<script src="js/jquery.pagination.js" type="text/javascript"></script>	
  	<script type="text/javascript">
  	var pageSize = 5;  // 每页显示数量
  	var pageCount ;

  	$(function () {
  		  	pageCount = $('input[name=count]').val();  //分页总数量

      // $("#pagination").pagination(pageCount); //简单初始化方法
        $("#pagination").pagination(pageCount,    //分布总数量，必须参数
            {
　　　　　　　　   callback : PageCallback,  //PageCallback() 为翻页调用次函数。
                prev_text : "« 上一页",
                next_text : "下一页 »",
                items_per_page : pageSize,   // 每页显示数
                num_edge_entries : 2,       //两侧首尾分页条目数
                num_display_entries : 5,    //连续分页主体部分分页条目数
                link_to : "showarticle.jsp#"  // (必填)这里的#是在pagination.js中link_to定义的，表示分页链接
　　　 		}
		);

		function PageCallback(page_index,jq){
	     	$.ajax({   
     			async : false,
                type : "POST",  
                dataType : "html",  // 返回的是html标签
                url : '/Paging/servlet/FindArticleServlet',      //提交到一般处理程序请求数据   
                data : {
                	 'pageIndex' : page_index,  // 传当前的索引
                	 'pageSize' : pageSize
                },
                success : function(response,status,xhr) {
	       			$('#table').html(response);   // 重绘
	       			pageCount = 5;
	       			id : "_id_";
                }  
	        }); 
		}

 	});


  </script>
  </head>
  
  <body>
  <h2>图书展示</h2>
  <!-- 此处创建一个table -->
  <input type="hidden" name="count" value="${sessionScope.articlecount }"/>
  <div id="table">
  
  
  </div>  

  <!-- 显示分页条 -->
  <div id="pagination" class="pagination"></div>  	
  
  </body>
</html>
