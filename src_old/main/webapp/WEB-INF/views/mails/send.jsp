<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE HTML>
<html>
  <head>
  	<jsp:include page="../layout/head.jsp" />
    <title>Liste utilisateurs</title>
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
            <h1 class="m-0">Liste utilisateurs</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Gestion accès</a></li>
              <li class="breadcrumb-item active">Utilisateurs</li> 
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
	
	<jsp:include page="../layout/alert.jsp" /> 
	
    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-12">
          <div class="card card-outline card-info">
            <div class="card-header">
              <h1 class="card-title">
                Envoyer un mail
              </h1>
            </div>
            <!-- /.card-header -->
            <form action="<c:url value = "/send-mail"/>" method="post" enctype="multipart/form-data">
            <div class="card-body">
            <div class="container col-md-7">
              <input type="hidden" name="${_csrf.parameterName}"   value="${_csrf.token}" />
              <div class="form-group ">
                <label for="objet">Objet</label>
                <input type="text" class="form-control" id="objet" name="objet" placeholder="Objet du mail" required/>
              </div>
              <div class="form-group">
                <label for="destinataire">A</label>
                <input type="email" class="form-control" id="destinataire" name="destinataire" placeholder="Adresse e-mail destinataire" required/>
              </div>
              <!-- <div class="form-group"> -->
                <!-- <label for="emailscc">Cc</label> -->
                <input type="hidden" class="form-control" id="emailscc" name="emailscc" placeholder="Adresses email en copie"/>
              <!-- </div> -->
              <div class="form-group">
              	<label for="content">Message</label>
                <textarea id="content" class="form-control" style="height: 200px;" name="content" required="required">
                </textarea>
              </div>
              <div class="form-group">
                <label for="pj">Pièce jointe</label>
                <input type="file" class="form-control" id="pj" name="pj" placeholder="pièce jointe" />
              </div>
              </div>
            </div>
            <div class="card-footer">
            	<div class="container col-md-7">
            		<button type="submit" class="btn btn-primary">Envoyer</button>
            	</div>
            </div>
            </form>
          </div>
        </div>
        <!-- /.col-->
      </div>
    </section>
    
    
    
  </div>
  <!-- /.content-wrapper -->
  
<jsp:include page="../layout/footer.jsp" />  
  
</div>
<!-- ./wrapper -->
    
  <jsp:include page="../layout/foot.jsp" />
  
  </body>
</html>