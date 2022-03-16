<%-- 
    Document   : menu
    Created on : 06-03-2022, 21:50:53
    Author     : trieu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style type="text/css">
    .jumbotron{
        text-align: center;
        background-image: url(hehe.jpg);
        color: #ffffff;
        font-style: initial;
        
    }
    h1{
        font-size:90px;
        font-style: oblique;
    }
    
</style>
<!--begin of menu-->
        <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="home">FOODS</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
                    <ul class="navbar-nav m-auto">
                        <c:if test="${sessionScope.acc.isAdmin ==1}"> 
                        <li class="nav-item">
                            <a class="nav-link" href="#">Manager Account</a>
                        </li>
                        </c:if>
                         <c:if test="${sessionScope.acc.isSell ==1}"> 
                        <li class="nav-item">
                            <a class="nav-link" href="manager">Manager Product</a>
                        </li>
                         </c:if>
                        
                        <c:if test="${sessionScope.acc != null}"> 
                        <li class="nav-item">
                                <a class="nav-link" href="#">Hello ${sessionScope.acc.user}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="logout">Logout</a>
                        </li>
                        </c:if>
                        <c:if test="${sessionScope.acc == null}">                            
                        <li class="nav-item">
                            <a class="nav-link" href="Login.jsp">Login</a>
                        </li>
                        </c:if>
                    </ul>

                    <form action="search" method="post" class="form-inline my-2 my-lg-0">
                        <div class="input-group input-group-sm">
                            <input value="${txt}" name="txt" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                            <div class="input-group-append">
                                <button type="submit" class="btn btn-secondary btn-number">
                                    <i class="fa fa-search"></i>
                                </button>
                            </div>
                        </div>
                        <a class="btn btn-success btn-sm ml-3" href="Cart.jsp">
                            <a class="nav-link" href="print">Cart</a>
                            <span class="badge badge-light"></span>
                        </a>
                    </form>
                </div>
            </div>
        </nav>
        <section class="jumbotron">
            <div class="container">
                <h1 class="jumbotron-heading"> Triệu Ẩm Thực</h1>
                <p class="lead text-muted mb-0-heading"> </p>
                <p class="lead text-muted mb-0-heading">  </p>
            </div>
        </section>
        <!--end of menu-->