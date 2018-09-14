<#if is_first_parent>

	<div class="container">
		<div class="row"></div>

		<div class="hp row justify-content-center">

			<div class="col-lg-7 d-flex justify-content-center">
				<a id="site_link" href="${site_default_url}" class="d-flex align-items-center">
					<img id="site_logo" src="${company_logo}" alt="${community_name} logo" />
					<#if show_site_name>
						<h1 id="site_name">${community_name}</h1>
					</#if>
				</a>
			</div>
			
			<div id="site_search" class="col-lg-6">
				<@liferay.search />
			</div>
		</div>
	</div>
<#else>

	<div class="container">
		<div class="row"></div>

		<div class="row">
			<div class="col-lg-8">
				<div class="row"></div>
				<div class="row">
					<div class="col-lg-1 d-flex justify-content-center">
						<a href="${site_default_url}" class="d-flex align-items-center">
							<img id="site_logo" src="${company_logo}" alt="${community_name} logo" />
						</a>
					</div>
					<div class="col-lg-11 d-none d-md-flex justify-content-center justify-content-lg-start">
						<#if show_site_name>
							<h1  class="d-flex align-items-center" id="site_name">${community_name}</h1>
						</#if>
					</div>
			
				</div>
			</div>
			
			<div id="site_search" class="col-lg-4 align-items-center">
				<@liferay.search />
			</div>
		</div>
	</div>

</#if>