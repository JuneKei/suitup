<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
     <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
     <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Suit Up | Error</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Place favicon.ico in the root directory -->
    <link rel="shortcut icon" type="image/x-icon" href="resources/images/favicon.ico">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    

    <!-- All css files are included here. -->
    <!-- Bootstrap fremwork main css -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <!-- Owl Carousel main css -->
    <link rel="stylesheet" href="resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
    <!-- This core.css file contents all plugings css file. -->
    <link rel="stylesheet" href="resources/css/core.css">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="resources/css/shortcode/shortcodes.css">
    <!-- Theme main style -->
    <link rel="stylesheet" href="resources/style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="resources/css/responsive.css">
    <!-- User style -->
    <link rel="stylesheet" href="resources/css/custom.css">


    <!-- Modernizr JS -->
    <script src="resources/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->  

    <!-- Body main wrapper start -->
    <div class="wrapper fixed__footer">
        <!-- Start Header Style -->
        <header id="header" class="htc-header header--3 bg__white">
            <!-- Start Mainmenu Area -->
            <div id="sticky-header-with-topbar" class="mainmenu__area sticky__header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-2 col-lg-2 col-sm-3 col-xs-3">
                            <div class="logo">
                                <a href="index.jsp">
                                    <img src="resources/images/logo/logo.png" alt="logo">
                                </a>
                            </div>
                        </div>
                        <!-- Start MAinmenu Ares -->
                        <div class="col-md-8 col-lg-8 col-sm-6 col-xs-6">
                            <nav class="mainmenu__nav hidden-xs hidden-sm">
                                <ul class="main__menu">
                                    <li class="drop"><a href="index.jsp">???</a></li>
                                    <li class="drop"><a href="#">????????????</a>
                                        <ul class="dropdown">
                                        <c:set var="cateName" value=""/>
                                        <c:forEach items="${categoryList }" var="list">
                                        <c:if test="${cateName != list.cateName}">
                                            <li><a href="popularity-shop.do?cateNum=${list.cateNum }">${list.cateName }</a></li>
                                            <c:set var="cateName" value="${list.cateName }"/>
                                            </c:if>
                                            </c:forEach>
                                        </ul>
                                    </li>
                                    <li class="drop"><a href="#">????????????</a>
                                        <ul class="dropdown mega_dropdown">
                                            <!-- Start Single Mega MEnu -->
                                            <li><a class="mega__title" href="#">???????????????</a>
                                                <ul class="mega__item" id="tab">
                                                    <li id="tabLi1"><a href="#">?????????</a></li>
                                                    <li id="tabLi2"><a href="#">??????</a></li>
                                                    <li id="tabLi3"><a href="#">??????</a></li>
                                                    <li id="tabLi4"><a href="#">??????</a></li>
                                                    <li id="tabLi5"><a href="#">??????</a></li>
                                                </ul>
                                            </li>
                                            <!-- End Single Mega MEnu -->
                                            <!-- Start Single Mega MEnu -->
                                            <li id="tabUl1" style="display: block;"><a class="mega__title" href="#" >?????????</a>
                                                <ul class="mega__item">
                                                <c:set var='cateNum' value='1'/>
                                        		<c:forEach items='${categoryList }' var='list'>
                                        		<c:if test='${list.cateNum eq cateNum}'>
                                        	    <li><a href='shop.do?cateNum=${list.cateNum }&cateDtnum=${list.cateDtnum}'>${list.cateDtname }</a></li>
                                            </c:if>
                                            </c:forEach>                                               
                                               </ul>
                                            </li>
                                            <li id="tabUl2" style="display: block;"><a class="mega__title" href="#" >??????</a>
                                                <ul class="mega__item">
                                                    <c:set var='cateNum' value='2'/>
                                        		<c:forEach items='${categoryList }' var='list'>
                                        		<c:if test='${list.cateNum eq cateNum}'>
                                        	    <li><a href='shop.do?cateNum=${list.cateNum }&cateDtnum=${list.cateDtnum}'>${list.cateDtname }</a></li>
                                            </c:if>
                                            </c:forEach> 
                                               </ul>
                                            </li>
                                            <li id="tabUl3"><a class="mega__title" href="#" >??????</a>
                                                <ul class="mega__item">
                                                    <c:set var='cateNum' value='3'/>
                                        		<c:forEach items='${categoryList }' var='list'>
                                        		<c:if test='${list.cateNum eq cateNum}'>
                                        	    <li><a href='shop.do?cateNum=${list.cateNum }&cateDtnum=${list.cateDtnum}'>${list.cateDtname }</a></li>
                                            </c:if>
                                            </c:forEach> 
                                               </ul>
                                            </li>
                                            <li id="tabUl4"><a class="mega__title" href="#" >??????</a>
                                                <ul class="mega__item">
                                                    <c:set var='cateNum' value='4'/>
                                        		<c:forEach items='${categoryList }' var='list'>
                                        		<c:if test='${list.cateNum eq cateNum}'>
                                        	    <li><a href='shop.do?cateNum=${list.cateNum }&cateDtnum=${list.cateDtnum}'>${list.cateDtname }</a></li>
                                            </c:if>
                                            </c:forEach> 
                                               </ul>
                                            </li>
                                            <li id="tabUl5"><a class="mega__title" href="#" >??????</a>
                                                <ul class="mega__item">
                                                    <c:set var='cateNum' value='5'/>
                                        		<c:forEach items='${categoryList }' var='list'>
                                        		<c:if test='${list.cateNum eq cateNum}'>
                                        	    <li><a href='shop.do?cateNum=${list.cateNum }&cateDtnum=${list.cateDtnum}'>${list.cateDtname }</a></li>
                                            </c:if>
                                            </c:forEach> 
                                               </ul>
                                            </li>
                                            <!-- End Single Mega MEnu -->
                                            <!-- Start Single Mega MEnu -->
                                            <li>
                                                <ul class="mega__item">
                                                    <li>
                                                        <div class="mega-item-img">
                                                            <a href="#">
                                                                <img src="" alt="">
                                                            </a>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </li>
                                            <!-- End Single Mega MEnu -->
                                        </ul>
                                    </li>
                            
                                    <c:if test="${sessionScope.admin eq 1 || cookie.admin.value != null}">
                                    
                                    <li class="drop"><a href="#">????????? ??????</a>
                                        <ul class="dropdown">
                                            <li><a href="product-insert.do">?????? ??????</a></li>
                                            <li><a href="product-list.do">?????? ??????</a></li>
                                            <li><a href="admin-chart.do">?????? ?????????</a></li>
                                        </ul>
                                    </li>
                                    </c:if>
                                </ul>
                            </nav>
                            <div class="mobile-menu clearfix visible-xs visible-sm">
                                <nav id="mobile_dropdown">
                                    <ul>
                                        <li><a href="index.jsp">???</a></li>
                                        <li><a href="#">????????????</a>
                                            <ul>
                                                   <c:set var="cateName" value=""/>
                                       		 <c:forEach items="${categoryList }" var="list">
                                       		 <c:if test="${cateName != list.cateName}">
                                            <li><a href="popularity-shop.do?cateNum=${list.cateNum }">${list.cateName }</a></li>
                                            <c:set var="cateName" value="${list.cateName }"/>
                                            </c:if>
                                            </c:forEach>
                                            </ul>
                                        </li>
                                     
                                        <li><a href="#">???????????????</a>
                                            <ul>
                                                <c:set var="cateName" value=""/>
                                       			 <c:forEach items="${categoryList }" var="list">
                                        		<c:if test="${cateName != list.cateName}">
                                            <li><a href="shop.do?cateNum=${list.cateNum }">${list.cateName }</a></li>
                                            <c:set var="cateName" value="${list.cateName }"/>
                                            </c:if>
                                            </c:forEach>
                                            </ul>
                                        </li>
                                        
                                    </ul>
                                </nav>
                            </div>                          
                        </div>
                        <!-- End MAinmenu Ares -->
                        <div class="col-md-2 col-sm-4 col-xs-3">  
                            <ul class="menu-extra">
                                <li class="search search__open hidden-xs"><span class="ti-search"></span></li>
								   	<c:choose>   
								<c:when test="${cookie.SuitUpidCookie.value != null }">
								<li><a href="my-page.do"><span class="ti-user"></span></a></li>								
								<li id="logout"><a href="logout.do"><img src="resources/images/icons/logout.png"/></a></li>
								</c:when>
								<c:when test="${sessionScope.SuitUpid  != null}">
                                <li><a href="my-page.do"><span class="ti-user"></span></a></li>								
								<li id="logout"><a href="logout.do"><img src="resources/images/icons/logout.png"/></a></li>
								</c:when>
								<c:otherwise>
                                <li><a href="login-register.do"><span class="ti-user"></span></a></li>			
								</c:otherwise>
								</c:choose>
                            
                            </ul>
                        </div>
                    </div>
                    <div class="mobile-menu-area"></div>
                </div>
            </div>
            <!-- End Mainmenu Area -->
        </header>
        <!-- End Header Style -->
        
        <div class="body__overlay"></div>
        <!-- Start Offset Wrapper -->
        <div class="offset__wrapper">
            <!-- Start Search Popap -->
            <div class="search__area">
                <div class="container" >
                    <div class="row" >
                        <div class="col-md-12" >
                            <div class="search__inner">
                            <!-- ????????? -->
                                <form action="searchPage.do" method="get">
                                    <input placeholder="" type="text" name="proName">
                                    <button type="submit"></button>
                                </form>
                                <div class="search__close__btn">
                                    <span class="search__close__btn_icon"><i class="zmdi zmdi-close"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Search Popap -->
		</div>
        <!-- End Offset Wrapper -->
        <!-- Start Bradcaump area -->
        <div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(resources/images/bg/2.jpg) no-repeat scroll center center / cover ;">
            <div class="ht__bradcaump__wrap">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="bradcaump__inner text-center">
                                <c:if test="${requestScope['javax.servlet.error.status_code'] == 400}">
		<h2 class="bradcaump-title">?????? ??? ???????????????.</h2>   
	</c:if>	
	
	<c:if test="${requestScope['javax.servlet.error.status_code'] == 404}">
		<h2 class="bradcaump-title">???????????? ???????????? ?????? ??? ????????????.</h2>   
	</c:if>
	
	<c:if test="${requestScope['javax.servlet.error.status_code'] == 405}">
		<h2 class="bradcaump-title">????????? ???????????? ???????????? ????????????.</h2>    
	</c:if>
	
	<c:if test="${requestScope['javax.servlet.error.status_code'] == 500}">
		<h2 class="bradcaump-title">????????? ????????? ???????????? ????????? ????????? ??? ????????????.</h2>
	</c:if>
	
	<c:if test="${requestScope['javax.servlet.error.status_code'] == 503}">
		<h2 class="bradcaump-title">???????????? ????????? ??? ????????????.</h2>
	</c:if>
                                <nav class="bradcaump-inner">
                                  <span class="breadcrumb-item active">3?????? ????????? ???????????????</span>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
       <!-- Start Footer Area -->
        <footer class="htc__foooter__area gray-bg">
            <div class="container">
                <div class="row">
                    <div class="footer__container clearfix">
                         <!-- Start Single Footer Widget -->
                        <div class="col-md-3 col-lg-3 col-sm-6">
                            <div class="ft__widget">
                                <div class="ft__logo">
                                    <a href="index.jsp">
                                        <img src="resources/images/logo/logo.png" alt="footer logo">
                                    </a>
                                </div>
                                <div class="footer-address">
                                    <ul>
                                        <li>
                                            <div class="address-icon">
                                                <i class="zmdi zmdi-pin"></i>
                                            </div>
                                            <div class="address-text">
                                                <p>?????? ?????????</p>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="address-icon">
                                                <i class="zmdi zmdi-email"></i>
                                            </div>
                                            <div class="address-text">
                                                <a href="#"> info@example.com</a>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="address-icon">
                                                <i class="zmdi zmdi-phone-in-talk"></i>
                                            </div>
                                            <div class="address-text">
                                                <p>02-2025-8523</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Footer Widget -->
 
                        <!-- Start Single Footer Widget -->
                      <div class="col-md-3 col-lg-3 col-sm-6">
                            <div class="ft__widget">
                                <h2 class="ft__title">????????????</h2>
                                <ul class="footer-categories">
                                    <li><a href="popularity-shop.do?cateNum=1">?????????</a></li>
                                    <li><a href="popularity-shop.do?cateNum=2">??????</a></li>
                                    <li><a href="popularity-shop.do?cateNum=3">??????</a></li>
                                    <li><a href="popularity-shop.do?cateNum=4">??????</a></li>
                                    <li><a href="popularity-shop.do?cateNum=5">??????</a></li>
                                </ul>
                            </div>
                        </div> 
                        <!-- End Single Footer Widget -->
                         <!-- Start Single Footer Widget -->
                      <div class="col-md-3 col-lg-3 col-sm-6">
                            <div class="ft__widget">
                                <h2 class="ft__title">????????????</h2>
                                <ul class="footer-categories">
                                    <li><a href="shop.do?cateNum=1">?????????</a></li>
                                    <li><a href="shop.do?cateNum=2">??????</a></li>
                                    <li><a href="shop.do?cateNum=3">??????</a></li>
                                    <li><a href="shop.do?cateNum=4">??????</a></li>
                                    <li><a href="shop.do?cateNum=5">??????</a></li>
                                </ul>
                            </div>
                        </div> 
                        <!-- End Single Footer Widget -->
                         <!-- Start Single Footer Widget -->
                      <div class="col-md-3 col-lg-3 col-sm-6">
                            <div class="ft__widget">
                                <h2 class="ft__title">???????????????</h2>
                                <ul class="footer-categories">
                                    <li><a href="my-page.do">????????????</a></li>
                                    <li><a href="my-page-cart.do">????????????</a></li>
                                    <li><a href="my-page-wishlist.do">??? ??????</a></li>
                                </ul>
                            </div>
                        </div> 
                        <!-- End Single Footer Widget -->
                    </div>
                </div>
                <!-- Start Copyright Area -->
                <div class="htc__copyright__area">
                    <div class="row">
                        <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
                            <div class="copyright__inner">
                                <div class="copyright">
                                    <p>?? 2021 KOSMO 86 GEN All Right Reserved.</p>
                                </div>
                                <ul class="footer__menu">
                                    <li><a>?????????</a></li>
                                    <li><a>?????????</a></li>
                                    <li><a>?????????</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Copyright Area -->
            </div>
        </footer>
        <!-- End Footer Area -->
    </div>
    <!-- Body main wrapper end -->
    
    <!-- Placed js at the end of the document so the pages load faster -->

    <!-- jquery latest version -->
    <script src="resources/js/vendor/jquery-1.12.0.min.js"></script>
    <!-- Bootstrap framework js -->
    <script src="resources/js/bootstrap.min.js"></script>
    <!-- All js plugins included in this file. -->
    <script src="resources/js/plugins.js"></script>
    <script src="resources/js/slick.min.js"></script>
    <script src="resources/js/owl.carousel.min.js"></script>
    <!-- Waypoints.min.js. -->
    <script src="resources/js/waypoints.min.js"></script>
    <!-- Main js file that contents all jQuery plugins activation. -->
    <script src="resources/js/main.js"></script>
    <script src="resources/js/product-details.js"></script>

</body>

</html>