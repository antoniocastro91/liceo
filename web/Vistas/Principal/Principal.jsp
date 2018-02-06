<%
    HttpSession sesion = request.getSession(false);
    String usuario = sesion.getAttribute("usuario") == null ? "" : sesion.getAttribute("usuario").toString();
    String url = response.encodeRedirectURL(request.getContextPath() + "/liceo/Vistas/Principal/index.jsp");
    if(usuario == ""){
        response.sendRedirect(url);
        return;
    }    
%>
<jsp:include page="../Principal/header.jsp"/>
   
  <div class="container">
	<!-- carousel -->
		<div class="row">
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                      <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                      <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                      <div class="item active">
                          <img class="img-responsive img-rounded" src="resources/img/backgrounds/Pijamada2.jpg" alt="Responsive image">
                        <div class="carousel-caption">
                          ...
                        </div>
                      </div>
                      <div class="item">
                          <img class="img-responsive img-rounded" src="resources/img/backgrounds/20156146_678377025693448_2672383299474914735_n.jpg" alt="Responsive image">
                        <div class="carousel-caption">
                          ...
                        </div>
                      </div>
                      <div class="item">
                          <img class="img-responsive img-rounded" src="resources/img/backgrounds/20229162_678377129026771_1183398701032633569_n.jpg" alt="Responsive image">
                        <div class="carousel-caption">
                          ...
                        </div>
                      </div>
                      <div class="item">
                          <img class="img-responsive img-rounded" src="resources/img/backgrounds/IMG-20171010-WA0016.jpg" alt="Responsive image">
                        <div class="carousel-caption">
                          ...
                        </div>
                      </div>
                      <div class="item">
                          <img class="img-responsive img-rounded" src="resources/img/backgrounds/IMG-20171010-WA0019.jpg" alt="Responsive image">
                        <div class="carousel-caption">
                          ...
                        </div>
                      </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                      <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                      <span class="sr-only">Next</span>
                    </a>
                  </div>
                     <br/>
                     <div class="row">
                        <div class="col-sm-6 col-md-4">
                              <div class="thumbnail">
                                <img src="resources/img/common/MISION.png" width= "225" height="175" align="center">
                                <div class="caption">
                                    <br/>
                                    <br/>
                                    <b><p align="justify">Ser una institución educativa que tiene como finalidad brindar educación de calidad académica y técnica,
                                      disciplina, arte y ciencia, manteniendo costos accesibles para todos los sectores de la población.</p></b>
                                </div>
                              </div>
                      </div>
                       <div class="col-sm-6 col-md-4">
                              <div class="thumbnail">
                                <img src="resources/img/common/VISION.png" width= "225" height="175" align="center">
                                <div class="caption">
                                   <br/>
                                    <br/>
                                    <b><p align="justify">Ofrecer un servicio de superación integral, 
                                      proporcionando lo mejor en lo espiritual,
                                      académico , ético y moral, 
                                      a través de la efectiva aplicación 
                                      de un excelente proyecto educativo.</p></b>
                                    <br/>
                                 </div>
                              </div>
                      </div>
                      <div class="col-sm-6 col-md-4">
                              <div class="thumbnail">
                                <img src="resources/img/common/valores.JPG" width= "225" height="175" align="center">
                                <div class="caption">
                                    <ul>
                                        <b>
                                        <li>Excelencia Ac&aacute;demica</li>
                                        <li>Disciplina</li>
                                        <li>Formación espiritual</li>
                                        <li>Practica de deportes</li>
                                        <li>Espíritu democrático</li>
                                        <li>Responsabilidad</li>
                                        <li>Solidaridad</li>
                                        <li>Perseverancia</li>
                                        </b>
                                    </ul>

                                 
                                </div>
                              </div>
                      </div>
                    </div>
		</div>
</div>
    
<jsp:include page="../Principal/footer.jsp"/>
