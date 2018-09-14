<div id="qa">
	<div class="container">
	  <div class="row"></div>
	  <div class="row justify-content-lg-between justify-content-md-between justify-content-sm-center">

	    <div id="ass" class="col-lg-4 col-md-5 d-flex justify-content-center justify-content-lg-end justify-content-md-end justify-content-sm-center  order-xl-8 order-lg-8 order-md-8 order-sm-0">
	    	<ul class="nav">
			  <li class="nav-item dropdown">
			    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Accessibility<span class="caret"></span></a>

			        <div class="dropdown-menu">
				      <a class="dropdown-item" href="accessibility-statement">Accessibility Statement</a> 
				      <a class="dropdown-item" href="/">High Contrast</a>`
				      <a class="dropdown-item" href="/">Skip to Content</a>
				      <a class="dropdown-item" href="/">Skip to Footer</a>
				    </div>
			  </li>

			  <li class="nav-item">
				<#if !is_signed_in>
					<a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a>
					
				<#else>
					<a href="${sign_out_url}" id="sign-out" rel="nofollow">${sign_out_text}</a>
				</#if>
			  </li>
			</ul>
	    </div>

	    <div id="psts" class="col-lg-5 col-md-6 d-flex justify-content-center justify-content-lg-start justify-content-md-start justify-content-sm-center  order-0 order-md-0 order-sm-1">
	       	<span id="pst-time">Philippine Standard Time - Thursday, September 13, 2018, 10:52:11</span>
	    </div>
	  </div>
	</div>
</div>