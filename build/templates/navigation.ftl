<div id="n">
	<div class="container">
		<nav class="${nav_css_class}" id="nav">
			<ul aria-label="<@liferay.language key="site-pages" />" role="menubar">

				<li class="rrs">
					<a href="${site_default_url}">GOV.PH</a>
				</li>


				<#list nav_items as nav_item>
					<#assign
						nav_item_attr_has_popup = ""
						nav_item_attr_selected = ""
						nav_item_css_class = ""
						nav_item_layout = nav_item.getLayout()
					/>

					<#if nav_item.isSelected()>
						<#assign
							nav_item_attr_has_popup = "aria-haspopup='true'"
							nav_item_attr_selected = "aria-selected='true'"
							nav_item_css_class = "selected"
						/>
					</#if>

					<li ${nav_item_attr_selected} class="${nav_item_css_class}" id="layout_${nav_item.getLayoutId()}" role="presentation">
						<a  aria-labelledby="layout_${nav_item.getLayoutId()}"
							${nav_item_attr_has_popup}
							href="${nav_item.getURL()}" 
							${nav_item.getTarget()}
							role="menuitem">
							<span>
								<@liferay_theme["layout-icon"] layout=nav_item_layout /> ${nav_item.getName()}
							</span>
							<#if nav_item.hasChildren()>
								<span class="caret"></span>
							</#if>
						</a>

						<#if nav_item.hasChildren()>
							<ul class="child-menu" role="menu">
								<#list nav_item.getChildren() as nav_child>
									<#assign
										nav_child_attr_selected = ""
										nav_child_css_class = ""
									/>

									<#if nav_item.isSelected()>
										<#assign
											nav_child_attr_selected = "aria-selected='true'"
											nav_child_css_class = "selected"
										/>
									</#if>

									<li ${nav_child_attr_selected} class="${nav_child_css_class}" id="layout_${nav_child.getLayoutId()}" role="presentation">
										<a aria-labelledby="layout_${nav_child.getLayoutId()}" href="${nav_child.getURL()}" ${nav_child.getTarget()} role="menuitem">${nav_child.getName()}</a>
									</li>
								</#list>
							</ul>
						</#if>
					</li>
				</#list>
			</ul>
		</nav>
	</div>
</div>