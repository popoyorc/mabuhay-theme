<#include init />

<div class="container quick-access">
	<div class="row">
		<div class="col-md-4 col-sm-12 col-xs-12 text-center">
			<p><span id="pst-time">Wednesday, September 05, 10:01 AM</span></p>
		</div>

		<div class="col-md-4 col-sm-12 col-xs-12">
			
		</div>

		<div class="col-md-4 col-sm-12 col-xs-12 text-center">
			<ul id="accessibility" class="list-inline">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true">
					Accessibility <span class="caret"></span>
						<ul class="dropdown-menu">
							<li>
								<a href="accessibility-statement">Accessibility Statement</a> 
							</li>
							<li>
								<a href="/">High Contrast</a>
							</li>
							<li>
								<a href="/">Skip to Content</a>
							</li>
							<li>
								<a href="/">Skip to Footer</a>
							</li>
						</ul>
					</a>
				</li>
				<li class="siu">
				<#if !is_signed_in>
					<a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a>
					
				<#else>
					<a href="${sign_out_url}" id="sign-out" rel="nofollow">${sign_out_text}</a>
				</#if>
				</li>

			</ul>
		</div>
		<div class="clearfix"></div>
	</div>
</div>