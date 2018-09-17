<div id="qa">
	<div class="container">
	  <div class="row"></div>
	  <div class="row justify-content-between">

	    <div id="ass" class="col-lg-4 col-md-5 d-flex justify-content-center justify-content-md-end order-0 order-md-8">
	    	<ul class="nav">
			  <li class="nav-item dropdown">
			    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Accessibility<span class="caret"></span></a>

			        <div class="dropdown-menu">
				      <a class="dropdown-item" href="accessibility-statement">Accessibility Statement</a> 
				      <a class="dropdown-item" href="/">High Contrast</a>
				      <a class="dropdown-item" href="#content">Skip to Content</a>
				      <a class="dropdown-item" href="#f">Skip to Footer</a>
				    </div>
			  </li>

			  <li class="nav-item">
				<#if !is_signed_in>
					<a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-inout" rel="nofollow">${sign_in_text}</a>
					
				<#else>
					<a href="${sign_out_url}" id="sign-inout" rel="nofollow">${sign_out_text}</a>
				</#if>
			  </li>
			</ul>
	    </div>

	    <div id="psts" class="col-lg-5 col-md-6 d-flex justify-content-center justify-content-lg-start order-0 order-sm-1">
	       	Philippine Standard Time - <span id="pst-time"></span>
	    </div>
	  </div>
	</div>
</div>