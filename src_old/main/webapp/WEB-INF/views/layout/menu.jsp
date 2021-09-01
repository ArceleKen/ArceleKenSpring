<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="<c:url value = "/"/>" class="brand-link">
      <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Access Control</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="dist/img/avatar.png" class="img-circle elevation-2" alt="User Image">
        </div>
        <sec:authorize access="isAuthenticated()">
        <div class="info">
          <a href="#" class="d-block"><sec:authentication property="principal.username" /></a>
        </div>
        </sec:authorize>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          
          <li class="nav-item">
            <a href="<c:url value = "/"/>" class="nav-link">
              <i class="nav-icon fas fa-igloo"></i>
              <p>
                Accueil
              </p>
            </a>
          </li>
          <sec:authorize access="hasAnyAuthority('superadmin','listing_user','listing_roles','listing_permissions','search_activities_users')">
          <li class="nav-item "> <!-- menu-open -->
            <a href="#" class="nav-link"><!-- active -->
              <i class="nav-icon fas fa-users-cog"></i>
              <p>
                Gestion des accès
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <sec:authorize access="hasAnyAuthority('superadmin','listing_user')">
              <li class="nav-item">
                <a href="<c:url value = "/users"/>" class="nav-link "><!-- active -->
                  <i class="fas fa-users"></i>
                  <p>Utilisateurs</p>
                </a>
              </li>
              </sec:authorize>
              <sec:authorize access="hasAnyAuthority('superadmin','listing_roles')">
              <li class="nav-item">
                <a href="<c:url value = "/roles"/>" class="nav-link">
                  <i class="nav-icon fas fa-cogs"></i>
                  <p>Roles</p>
                </a>
              </li>
              </sec:authorize>
              <sec:authorize access="hasAnyAuthority('superadmin','listing_permissions')">
              <li class="nav-item">
                <a href="<c:url value = "/permissions"/>" class="nav-link">
                  <i class="fas fa-shield-alt nav-icon"></i>
                  <p>Autorisations</p>
                </a>
              </li>
              </sec:authorize>
              <sec:authorize access="hasAnyAuthority('superadmin','search_activities_users')">
              <li class="nav-item">
                <a href="<c:url value = "/activities"/>" class="nav-link">
                  <i class="fas fa-file-alt nav-icon"></i>
                  <p>Activités</p>
                </a>
              </li>
              </sec:authorize>
            </ul>
          </li>
          </sec:authorize>
          <sec:authorize access="hasAnyAuthority('superadmin','send_mail')">
          <li class="nav-item "> 
            <a href="<c:url value = "/send-mail"/>" class="nav-link">
              <i class="nav-icon fas fa-envelope-open-text"></i>
              <p>
                Envoyer mail
              </p>
            </a>
          </li>
          </sec:authorize>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
 
