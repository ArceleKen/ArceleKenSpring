<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE HTML>
<html>
  <head>
  	<jsp:include page="../layout/head.jsp" />
    <title>Activités</title>
  </head>
  <body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
	
	<jsp:include page="../layout/header.jsp" />
	
	<jsp:include page="../layout/menu.jsp" />  

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Activités dans le système</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Gestion accès</a></li>
              <li class="breadcrumb-item active">Activités</li> 
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
	
	<jsp:include page="../layout/alert.jsp" /> 
	
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card card-default">
              <div class="card-header">
              	<div class="col-md-10">
                	<h2 class="card-title">RECHERCHE</h2>
              	</div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
	              <!-- /.card-header -->
	              <!-- form start -->
	              <form method="post" action="<c:url value = "activities"/>">
                  	<input type="hidden" name="${_csrf.parameterName}"   value="${_csrf.token}" />
	              	<div class="row">
	                  <div class="form-group col-md-4">
	                    <label for="datefrom">Début </label>
	                    <input type="text" class="form-control datetimepicker" name="datefrom" value="${dataSearch.datefrom}" id="datefrom" placeholder="AAAA-MM-JJ H:m:s" required="required">
	                  </div>
	                  <div class="form-group col-md-4">
	                    <label for="dateto">Fin</label>
	                    <input type="text" class="form-control datetimepicker" name="dateto" value="${dataSearch.dateto}" id="dateto" placeholder="AAAA-MM-JJ H:m:s" required="required">
	                  </div>
	                  <div class="form-group col-md-4">
	                    <label for="user_id">Utilisateur</label>
	                    <select class="form-control select2" name="user_id" id="user_id" style="width: 100%;" data-select2-id="1" tabindex="-1" aria-hidden="true">
		                    <option ></option>
		                    <c:forEach  items="${users}" var ="user">
	                    		<option value="${user.id}" ${(dataSearch.user_id == user.id) ? "selected" : ""}>${user.username}</option>
        					</c:forEach>
		                  </select>
	                  </div>
	                  <div class="form-group col-md-4">
	                  </div>
	                  <div class="form-group col-md-4">
                  		<button type="submit" class="btn btn-success">Rechercher</button>
	                  </div>
	                </div>	
	              </form>
	              <br/><br/>
	              <c:if test = "${logs.size() > 0}">
	          		<jsp:include page="table.jsp" /> 
	          	  </c:if>
		      </div>
		        <!-- /.row -->
      </div>
      </div>
      </div>
      </div>
      <!-- /.container-fluid -->
    </section>
    
    
    
  </div>
  <!-- /.content-wrapper -->
  
<jsp:include page="../layout/footer.jsp" />  
  
</div>
<!-- ./wrapper -->
    
  <jsp:include page="../layout/foot.jsp" />
  
  </body>
</html>