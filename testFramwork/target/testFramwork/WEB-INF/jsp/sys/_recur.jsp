<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <c:forEach items="${module }" var="item">
    	<li>
    		<c:if test="${item.moduleParentCode == null}">
	    		<a href="#" class="dropdown-toggle">
					<i class="icon-list"></i>
						<span class="menu-text"> ${item.moduleName } </span>
					<b class="arrow icon-angle-down"></b>
				</a>
			</c:if>
			<ul class="submenu">
				<c:forEach items="${module }" var="sitem">
		    		<c:if test="${item.moduleCode eq sitem.moduleParentCode }">
			    			<li>
								<a href="${sitem.moduleUrl }">
									<i class="icon-double-angle-right"></i>
									${sitem.moduleName }
								</a>
							</li>
			    		</c:if>
		    		
		    	</c:forEach>
    		</ul>
    	</li>
	</c:forEach>
