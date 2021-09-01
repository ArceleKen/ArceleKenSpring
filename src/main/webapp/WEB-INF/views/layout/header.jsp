<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="dist/img/img_loading.gif" alt="img_loading" height="50%" width="30%">
  </div>

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
    </ul>
    
    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">

      <!-- Messages Dropdown Menu -->
      <li class="nav-item dropdown">
      	<sec:authorize access="isAuthenticated()">
	        <a class="nav-link" data-toggle="dropdown" href="#">
	          <i class="fas fa-sign-out-alt text-lg text-primary"></i>
	          <span class="badge badge-danger navbar-badge"></span>
	        </a>
	        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
	        	<form action="<c:url value = "logout"/>" method="post">
					<input type="hidden" name="${_csrf.parameterName}"   value="${_csrf.token}" />
			      <button type="submit" class="dropdown-item">
		            Deconnexion
		           	<span class="float-right text-lg text-danger"><i class="fas fa-sign-out-alt"></i></span>
		          </button>
				</form>
	        </div>
        </sec:authorize>
      </li>
      
    </ul>
  </nav>
  <!-- /.navbar -->