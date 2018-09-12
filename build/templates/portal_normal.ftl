<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="container-fluid" id="wrapper">
	<header id="banner" role="banner">
		<div id="heading">

			<#include "${full_templates_path}/quick_access.ftl" />


		</div>

		<div id="header" class="container-fluid">
			<div class="gdp">
				<div class="gdpb row text-center">
					<a href="${site_default_url}">
						<img src="${company_logo}" alt="${community_name} logo" />
						<#if show_site_name>
							<h1>${community_name}</h1>
						</#if>
					</a>
				</div>

				<div class="gdps row text-center">
					<div class="col-md-4 col-md-offset-4">
						<@liferay.search />
					</div>
				</div>

			</div>
		</div>
	</header>


	<#include "${full_templates_path}/nav.ftl" />

	<div class="container" id="content">
      	<!--div class="custom-breadcrumb">
        	<@liferay.breadcrumbs />
      	</div-->
			<#if selectable>
				<@liferay_util["include"] page=content_include />
			<#else>
				${portletDisplay.recycle()}

				${portletDisplay.setTitle(the_title)}

				<@liferay_theme["wrap-portlet"] page="portlet.ftl">
					<@liferay_util["include"] page=content_include />
				</@>
			</#if>
	</div>

	<#include "${full_templates_path}/footer.ftl" />

</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<!-- inject:js -->
<!-- endinject -->

</body>

</html>