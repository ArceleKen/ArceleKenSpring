<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE HTML>
<html>
  <head>
  	<jsp:include page="../layout/head.jsp" />
    <title>Editer Role</title>
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
            <h1 class="m-0">Editer Role</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Gestion accès</a></li>
              <li class="breadcrumb-item active">Editer Role</li> 
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
          <div class="col-md-12">
            <div class="card card-default">
              <div class="card-header">
                <h3 class="card-title">Editer Role</h3>
              </div>
              <div class="card-body p-0">
                <div class="bs-stepper linear">
                  <div class="bs-stepper-content">
                  	<form action="<c:url value = "/edit-role${role.id}"/>" method="post">
                  	<input type="hidden" name="${_csrf.parameterName}"   value="${_csrf.token}" />
                    <!-- your steps content here -->
                    <div class="row">
	                    <div class="col-md-3"></div>
	                    <div class="col-md-6">
	                      <div class="form-group">
	                        <label for="name">Nom</label>
	                        <input type="text" class="form-control" id="name" name="name" placeholder="Nom" value="${role.name}" required/>
	                      </div>
	                      <div class="form-group">
	                        <label for="description">Descritpion</label>
	                        <textarea type="textarea" class="form-control" id="description" name="description" value="${role.description}" required>
	                        	${role.description}
	                        </textarea>
	                      </div>
	                    </div>
	                </div>
	                <div class="row">
	                    <div class="col-md-3"></div>
	                    <div class="col-md-6">
	                    	<table id="example2" class="table table-bordered table-hover dataTable dtr-inline">
			                  <thead>
				                  <tr >
				                  	<th >
				                  		Cocher
				                  	</th>
				                  	<th >
				                  		Autorisations
				                  	</th>
				                  	<th></th>
				                  </tr>
			                  </thead>
			                  <tbody>      
			        			<c:forEach  items="${permissions}" var ="perm">	 
				                  <tr>
				                    <td>
					                    <input type="checkbox"  name="permissionsId" id="perm${perm.id}" value="${perm.id}" ${role.hasPermission(perm) ? "checked" : ""} class="icheck-primary d-inline"/>
				                    </td>
				                    <td>
				                        <label for="perm${perm.id}">${perm.name}</label>
					    			</td>
				                    <td>
				                        ${perm.description}
					    			</td>
				                  </tr>
			        			</c:forEach>
			                  </tbody>
			                </table>
	                    </div>
	                </div>
	                <div class="row mb-5 mt-2">
	                    <div class="col-md-5"></div>
	                    <div class="col-md-6">
	                      <button type="submit" class="btn btn-primary">Modifier</button>
	                    </div>
                    </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
            <!-- /.card -->
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