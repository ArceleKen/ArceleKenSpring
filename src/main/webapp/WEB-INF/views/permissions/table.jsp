<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<div id="example2_wrapper" class="dataTables_wrapper dt-bootstrap4">
                <table id="example2" class="table table-bordered table-hover dataTable dtr-inline" role="grid" aria-describedby="example2_info">
                  <thead>
	                  <tr >
				          <th>Date</th>
				          <th>nom</th>
				          <th>description</th>
	                  </tr>
                  </thead>
                  <tbody>      
        			<c:forEach  items="${listpermissions}" var ="perm">	 
	                  <tr>
	                    <td>${perm.dateCreation}</td>
	                    <td>${perm.name}</td>
	                    <td>${perm.description}</td>
	                  </tr>
        			</c:forEach>
                  </tbody>
                </table>
</div>
