<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<div id="example2_wrapper" class="dataTables_wrapper dt-bootstrap4">
                <table id="example2" class="table table-bordered table-hover dataTable dtr-inline" role="grid" aria-describedby="example2_info">
                  <thead>
	                  <tr >
	                  	<th>
	                  		date
	                  	</th>
	                  	<th >
	                  		Utilisateur (login)
	                  	</th>
	                  	<th >
	                  		Ressource
	                  	</th>
	                  	<th>
	                  		Description
	                  	</th>
	                  	<th>
	                  		Autre info
	                  	</th>
	                  </tr>
                  </thead>
                  <tbody>      
        			<c:forEach  items="${logs}" var ="log">	 
	                  <tr>
	                    <td>${log.createdAt}</td>
	                    <td>${log.user.username}</td>
	                    <td>${log.resource}</td>
	                    <td>${log.description}</td>
	                    <td>${log.otherInfo}</td>
	                  </tr>
        			</c:forEach>
                  </tbody>
                </table>
          </div>
