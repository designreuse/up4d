<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<tiles:insertDefinition name="landingTemplate">
	<tiles:putAttribute name="body">
		<div class="bem-wrapper">
			<div class="advertisement">
				<div class="adTitle middle title1">Business Evolution Management Framework</div>
				<div class="content1 adContent">Lorem ipsum dolor sit amet, porta sed
					quam mauris pellentesque. Ante bibendum lectus pellentesque. Amet
					mollitia eget pellentesque, dictumst pretium sed scelerisque massa
					pede, nunc hymenaeos sit nunc. Blandit faucibus vitae bibendum
					laboriosam. Non quis iusto vestibulum amet, recusandae placerat in
					enim ut cum leo, lectus risus donec non. Malesuada erat cras nibh
					diam amet feugiat. Nulla fusce arcu ipsum, ridiculus vivamus sit
					justo natoque, orci eget leo. Sollicitudin porttitor justo
					tincidunt praesent accumsan nunc, vestibulum velit tincidunt. Eget
					justo elit a elit, eu posuere tempus sapien, amet ut ducimus
					ultricies, hac et sed aliquet. Non erat semper, varius metus
					malesuada purus est quisque orci, dolor quis in non duis
					consectetuer sed, fermentum ac, metus non in pellentesque. Integer
					eu libero nunc metus. Rhoncus in et sodales pede nunc mauris,
					porttitor vel mus.
				</div>
				<button class="center button button-green" >Go to My Project</button>
			</div>
		</div>
		<div id="bem-image-wrapper">
			<div id="bem-image">
				<div class="bem-wrapper row">
					<div id="development" class="bemImage col-lg-4">
						<div class="title">
							Interaction Development
						</div>
						<div class="content">
							<div class="--idea">
								<img alt="Business Vision" class="--image" src="<c:url value='/resources/assets/images/landing/img-bulb-graphics.png'/>" />
								<p class="--name">Business Vision</p>
							</div>
							
							<div class="special-bem bem-right --step">
								<div class="bem-orange --cycle">1</div>
								<div class="--description">Big Picture</div>
							</div>
							<div class="bem-left --step">
								<div class="bem-orange --cycle">2</div>
								<div class="--description">Facts & Figures</div>
							</div>
							<div class="bem-right --step">
								<div class="bem-orange --cycle">3</div>
								<div class="--description">Strategy</div>
							</div>
							<div class="bem-left --step">
								<div class="bem-orange --cycle">4</div>
								<div class="--description">Implementation</div>
							</div>
							<div class="bem-right --step">
								<div class="bem-orange --cycle">5</div>
								<div class="--description">Verification</div>
							</div>
							<div class="background">
							</div>
						</div>
					</div>
					<div id="evolution" class="bemImage col-lg-4">
						<div class="title">
							Interaction Evolution
						</div>
						<div class="content">
							<div class="--idea">
								<img alt="Business Evolution" class="--image" src="<c:url value='/resources/assets/images/landing/img-pie-chart.png'/>" />
								<p class="--name">Business Evolution</p>
							</div>
							
							<div class="first-bem bem-right --step">
								<div class="bem-blue --cycle">1</div>
								<div class="--description">Big Picture</div>
							</div>
							<div class="bem-left --step">
								<div class="bem-blue --cycle">2</div>
								<div class="--description">Facts & Figures</div>
							</div>
							<div class="bem-right --step">
								<div class="bem-blue --cycle">3</div>
								<div class="--description">Strategy</div>
							</div>
							<div class="bem-left --step">
								<div class="bem-blue --cycle">4</div>
								<div class="--description">Implementation</div>
							</div>
							<div class="bem-right --step">
								<div class="bem-blue --cycle">5</div>
								<div class="--description">Verification</div>
							</div>
							<div class="background">
							</div>
						</div>
					</div>
					<div id="maintenance" class="bemImage col-lg-4">
						<div class="title">
							Interaction Maintenance
						</div>
						<div class="content">
							<div class="--idea">
								<img alt="Interaction Maintenance" class="--image" src="<c:url value='/resources/assets/images/landing/img-maintenance.png'/>" />
								<p class="--name">Maintenance</p>
							</div>
							
							<div class="first-bem bem-right --step">
								<div class="bem-green --cycle">1</div>
								<div class="--description">Big Picture</div>
							</div>
							<div class="bem-left --step">
								<div class="bem-green --cycle">2</div>
								<div class="--description">Facts & Figures</div>
							</div>
							<div class="bem-right --step">
								<div class="bem-green --cycle">3</div>
								<div class="--description">Strategy</div>
							</div>
							<div class="bem-left --step">
								<div class="bem-green --cycle">4</div>
								<div class="--description">Implementation</div>
							</div>
							<div class="bem-right --step">
								<div class="bem-green --cycle">5</div>
								<div class="--description">Verification</div>
							</div>
							<div class="background">
							</div>
						</div>
					</div>
					<div class="landing-bg">
					</div>
					<div class="landing-chart">
					</div>
					<div class="landing-compass">
					</div>
				</div>
			</div>
		</div>
		<div class="bem-wrapper">
			<div class="advertisement">
				<div class="adTitle title2 middle">Lorem ipsum dolor sit amet, consectetuer adipiscing elit</div>
				<div class="adContent content2">Lorem ipsum dolor sit amet, porta sed quam mauris pellentesque. Ante bibendum lectus pellentesque. 
				Amet mollitia eget pellentesque, dictumst pretium sed scelerisque massa pede, nunc hymenaeos sit nunc. Blandit faucibus vitae bibendum laboriosam. 
				Non quis iusto vestibulum amet, recusandae placerat in enim ut cum leo, lectus risus donec non. Malesuada erat cras nibh diam amet feugiat. 
				Nulla fusce arcu ipsum, ridiculus vivamus sit justo natoque, orci eget leo. Sollicitudin porttitor justo tincidunt praesent accumsan nunc, vestibulum velit tincidunt.
				</div>
				<button class="center button button-grey" >Read more</button>
			</div>
			<div class="advertisement override-bot" >
				<div class="adTitle title2 middle">Sed ut perspiciatis unde omnis iste natus error sit voluptat</div>
				<div class="adContent content2">Lorem ipsum dolor sit amet, porta sed quam mauris pellentesque. Ante bibendum lectus pellentesque. 
				Amet mollitia eget pellentesque, dictumst pretium sed scelerisque massa pede, nunc hymenaeos sit nunc. Blandit faucibus vitae bibendum laboriosam. 
				Non quis iusto vestibulum amet, recusandae placerat in enim ut cum leo, lectus risus donec non. Malesuada erat cras nibh diam amet feugiat. 
				Nulla fusce arcu ipsum, ridiculus vivamus sit justo natoque, orci eget leo. Sollicitudin porttitor justo tincidunt praesent accumsan nunc, vestibulum velit tincidunt.
				</div>
				<button class="center button button-grey" >Read more</button>
				<div class="landing-wheel">
				</div>
			</div>
		</div>
		<div id="four-service-wrapper">
			<div class="service-wrapper">
				<div class="fourService">
					<div class="service1">
						<div class="image1"></div>
						<div class="description1">
							Project Services
							<p>
								Lorem ipsum dolor sit amet, porta sed
								quam mauris pellentesque.
							</p>
							<strong>More Info Coming Soon</strong>
						</div>
					</div>
					<div class="service2">
						<div class="image2"></div>
						<div class="description2">
							up4d Software
							<p>
								Lorem ipsum dolor sit amet, porta sed
								quam mauris pellentesque.
							</p>
							<strong>More Info Coming Soon</strong>
						</div>
					</div>
					<div class="service3">
						<div class="image3"></div>
						<div class="description3">
							Business Operation<br/>Management
							<p>
								Lorem ipsum dolor sit amet, porta sed
								quam mauris pellentesque.
							</p>
							<strong>More Info Coming Soon</strong>
						</div>
					</div>
					<div class="service4">
						<div class="image4"></div>
						<div class="description4">
							Sales Process<br/>Design 
							<p>
								Lorem ipsum dolor.
							</p>
							<strong>More Info Coming Soon</strong>
						</div>
					</div>
					<div class="aboutUs">
						About <br/> Us
					</div>
				</div>
				<div class="landing-flag">
				</div>
				<div class="landing-chart2">
				</div>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>
