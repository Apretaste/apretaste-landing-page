<?php

// list of screenshots
//
function getScreenshots () {
	return [
		(Object) ["image"=>"1.png", "title"=>"¡Sé tu mismo!", "text"=>"Habla sin pelos en la lengua con miles de cubanos, y comparte lo que piensas."],
		(Object) ["image"=>"2.png", "title"=>"Date a conocer", "text"=>"Crea un perfil anónimo o público. Ponte un avatar y haz que otros te conozcan."],
		(Object) ["image"=>"3.png", "title"=>"Crece tu red", "text"=>"Envía solicitudes y crece tu círculo de amigos. Comparte en público o privado."],
		(Object) ["image"=>"4.png", "title"=>"Habla en PV", "text"=>"Conversa con tus amigos en privado, y forja amistades que duren toda la vida."],
		(Object) ["image"=>"5.png", "title"=>"Hazte popular", "text"=>"Gana experiencia usando la app, sube de nivel y sé el más popular del ranking."],
		(Object) ["image"=>"6.png", "title"=>"Busca el amor", "text"=>"¿Soltero? Encuentra tu media naranja en Piropazo: nuestro servicio de parejas."],
		(Object) ["image"=>"7.png", "title"=>"Ponte al día", "text"=>"Consulta las noticias de la prensa más leída (independiente y oficial) de Cuba."],
		(Object) ["image"=>"8.png", "title"=>"¡Y mucho más!", "text"=>"Disfruta decenas de servicios entretenidos y útiles para mantenerte informado."]
	];
}

// list of features
//
function getFeatures () {
	return [
		(Object) ["icon"=>"fa-plug", "title"=>"Conectividad", "text"=>"¡Mantente siempre online! Abre la app desde tu correo Nauta, en el parque WiFi o con tus datos móviles, y disfruta igual experiencia de navegación."],
		(Object) ["icon"=>"fa-mask", "title"=>"Seguridad", "text"=>"Tus datos se envían encriptados, y tu perfil contiene la información que tú quieras poner. Usando Apretaste tu identidad se mantiene privada y segura."],
		(Object) ["icon"=>"fa-money-bill", "title"=>"Ahorro", "text"=>"Todas las peticiones son optimizadas y comprimidas para que ahorres datos de lo lindo. ¡Apretaste es la app que más datos te ahorra desde Cuba!"],
		(Object) ["icon"=>"fa-headset", "title"=>"Ayuda", "text"=>"¿Tienes dudas sobre cómo usar la app? Contáctanos por correo, o desde dentro del app, y en menos de 72 horas te ayudaremos en todo lo que necesites."],
		(Object) ["icon"=>"fa-users", "title"=>"Comunidad", "text"=>"¿Buscas una comunidad gigante? ¡Estás en el lugar indicado! Con cientos de miles de usuarios, Apretaste está entre las apps más populares de Cuba."],
		(Object) ["icon"=>"fa-mobile", "title"=>"Servicios", "text"=>"Noticias, Clima, Chistes, Juegos, Recargas, La Bolita, Religión, Deporte... Con decenas de servicios en Apretaste seguro encuentras lo que necesitas."]
	];
}

// list of brands
//
function getDataSources () {
	return [
		(Object) ["img"=>"google.png", "type"=>"other", "alt"=>"Google"],
		(Object) ["img"=>"ddc.png", "type"=>"news", "alt"=>"Diario de Cuba"],
		(Object) ["img"=>"cubanet.png", "type"=>"news", "alt"=>"CubaNet"],
		(Object) ["img"=>"revoltillo.png", "type"=>"other", "alt"=>"Revoltillo"],
		(Object) ["img"=>"marti_noticias.png", "type"=>"news", "alt"=>"Martí Noticias"],
		(Object) ["img"=>"wikipedia.png", "type"=>"other", "alt"=>"Wikipedia"],
		(Object) ["img"=>"weather_channel.png", "type"=>"other", "alt"=>"The Weather Channel"],
		(Object) ["img"=>"johns_hopkins.png", "type"=>"other", "alt"=>"Johns Hopkins Coronavirus Resource Center"],
		(Object) ["img"=>"webmd.png", "type"=>"other", "alt"=>"WebMD"],
		(Object) ["img"=>"granma.png", "type"=>"news", "alt"=>"Granma"],
		(Object) ["img"=>"android4all.png", "type"=>"news", "alt"=>"Android 4 All"],
		(Object) ["img"=>"tecnolike.png", "type"=>"news", "alt"=>"Tecnolike Cuba"],
		(Object) ["img"=>"xataka.png", "type"=>"news", "alt"=>"Xataka"]
	];
}

// list of social links
//
function getSocialLinks () {
	return [
		(Object) ["caption"=>"Facebook", "icon"=>"fa-facebook-f", "link"=>"https://www.facebook.com/apretaste"],
		(Object) ["caption"=>"Twitter", "icon"=>"fa-twitter", "link"=>"https://twitter.com/apretaste"],
		(Object) ["caption"=>"YouTube", "icon"=>"fa-youtube", "link"=>"https://www.youtube.com/apretaste"],
		(Object) ["caption"=>"Instagram", "icon"=>"fa-instagram", "link"=>"https://www.instagram.com/apretaste"],
		(Object) ["caption"=>"LinkedIn", "icon"=>"fa-linkedin-in", "link"=>"https://www.linkedin.com/company/apretaste"],
		(Object) ["caption"=>"GitHub", "icon"=>"fa-github", "link"=>"https://github.com/apretaste"],
	];
}

// list of user reviews
//
function getUserReviews () {
	return [
		(Object) ["text" => "Quiero felicitar al equipo técnico de la app, han realizado un excelente trabajo. Llevo unos cuantos años usándola, veo una gran mejora en conectividad ya que conecta muy rápido incluso con una conexión mala, y principalmente en el consumo. En estos momentos el consumo es muy bajo y ahora más del 50% que antes, teniendo en cuenta que tengo las imágenes puestas y soy fiel seguidor del servicio pizarra.", "username" => "@luis319", "avatar" => "hombre", "avatarColor" => "#99F9FF"],
		(Object) ["text" => "Muy buena app, unas de las mejores opciones que tenemos nosotros los cubanos para conectar sin necesidad de tener  internet y estar informados de las noticias tanto de aquí como del mundo. Se puede hacer amigos chatear, tiene unas cuantas opciones que con una bolsa de correo de 50 Mb puedes estar bien informado. Por ende quiero felicitar a todo el colectivo de trabajo por tan excelente app. Sigan así espero nuevas mejoras. Gracias", "username" => "@mariah", "avatar" => "deportiva", "avatarColor" => "#9ADB05"],
		(Object) ["text" => "Hola, primero que todo quisiera agradecer al equipo de A!, por el excelente trabajo que han realizado. Ha mejorado bastante  su  uso es más fácil pienso q han tenido en cuenta que esta app es usada por  personas de diferentes edades, sobre todo en pizarra y Piropazo soy fiel seguidora de este servicio. Creo que gracias a los nuevos cambios todos podemos disfrutar con más frecuencia con un costo mínimo usando fácilmente está app. Muy importante tiene un servicio de Wikipedia siendo el mismo muy útil para los estudiantes. Realmente para mí tiene las 5 estrellas. ", "username" => "@tahimi", "avatar" => "libre", "avatarColor" => "#99F9FF"],
		(Object) ["text" => "Quisiera expresar mi agradecimiento a todos los realizadores de esta app. Tiene una infinidad de servicios que son muy útil para el cubano. Con ellos tenemos mucha información sin necesidad de internet, se puede hablar libremente sin que nadie te discrimine y con beneficios. Se hacen rifas, recargas yo misma he ganado algunas de ellas y lo más importante nos mantiene informado con noticias tanto de la índole nacional como internacional, incluso con noticias de Tecnología que en ese aspecto estamos la mayoría de los cubanos perdidos. Reiteró mis felicitaciones y que sigan adelante con futuras actualizaciones superiores.", "username" => "@lianny27", "avatar" => "fabulosa", "avatarColor" => "#FF415B"],
	];
}

// list of media
//
function getMediaMentions () {
	return [
		(Object) ["img"=>"yahoo.png", "link"=>"https://es.sports.yahoo.com/noticias/aplicaci%C3%B3n-cuba-alternativa-datos-mundiales-000408241.html"],
		(Object) ["img"=>"latribuna.png", "link"=>"https://www.latribuna.hn/2020/04/14/aplicacion-lleva-a-cuba-como-alternativa-datos-mundiales-sobre-el-covid-19/"],
		(Object) ["img"=>"lavanguardia.png", "link"=>"https://www.lavanguardia.com/vida/20200414/48486961785/aplicacion-lleva-a-cuba-como-alternativa-datos-mundiales-sobre-el-covid-19.html"],
		(Object) ["img"=>"miamiherald.png", "link"=>"http://www.miamiherald.com/news/business/technology/article65196697.html"],
		(Object) ["img"=>"kaspersky.png", "link"=>"https://www.tomorrowunlocked.com/guardians/defenders-of-digital/"],
		(Object) ["img"=>"telemundo.png", "link"=>"http://www.telemundo51.com/noticias/cuba/Concurso-Hey-Cuba-Hackaton_TLMD---Miami-368985671.html"],
		(Object) ["img"=>"sunsentinel.png", "link"=>"http://www.sun-sentinel.com/business/small-business/fl-cuba-internet-company-20151130-story.html"],
		(Object) ["img"=>"elmundo.png", "link"=>"http://www.elmundo.es/economia/2016/02/15/56c192b0268e3ef5758b45bd.html"],
		(Object) ["img"=>"60minutes.png", "link"=>"http://www.jump-in.com.au/show/60minutes/stories/2014/september/a-cuban-revolution/"],
		(Object) ["img"=>"diariolasamericas.png", "link"=>"http://www.diariolasamericas.com/4842_locales/3628715_organizan-encuentro-programadores-miami-internet-cuba.html"],
		(Object) ["img"=>"motherboard.png", "link"=>"http://motherboard.vice.com/read/this-workaround-lets-26-million-cubans-surf-the-web"],
		(Object) ["img"=>"oreilly.png", "link"=>"http://event.on24.com/wcc/r/1237558/E17397506918D1078847DF56BBA25D2E"],
		(Object) ["img"=>"newtimesmiami.png", "link"=>"http://www.miaminewtimes.com/news/miami-company-helps-cubans-access-the-internet-through-their-email-8351534"],
		(Object) ["img"=>"martinoticias.png", "link"=>"http://www.martinoticias.com/content/apretaste-servicio-clasificados-por-email/31982.html"],
		(Object) ["img"=>"southflobizjournal.png", "link"=>"http://www.bizjournals.com/southflorida/news/2016/03/10/miami-hackathon-aims-to-improve-cuba-s-web-access.html"],
		(Object) ["img"=>"nuevoherald.png", "link"=>"http://www.elnuevoherald.com/noticias/mundo/america-latina/cuba-es/article64126537.html"],
		(Object) ["img"=>"diariodecuba.png", "link"=>"http://www.diariodecuba.com/cuba/1449255436_18591.html"],
		(Object) ["img"=>"cubanet.png", "link"=>"https://www.cubanet.org/tecnologia-2/cuba-apretaste-lanza-version-6-mas-rapida-novedosa-y-economica/"],
		(Object) ["img"=>"14ymedio.png", "link"=>"http://www.14ymedio.com/blogs/generacion_y/Apretaste_7_1537716214.html"],
		(Object) ["img"=>"cibercuba.png", "link"=>"https://www.cibercuba.com/noticias/14ymedio/2016-02-15-una-hackathon-en-miami-para-facilitar-acceso-internet-cubanos"],
		(Object) ["img"=>"hackathonforcuba.png", "link"=>"http://raicesblog.blogspot.com/2014/02/roots-of-hope-hosts-first-ever.html"],
		(Object) ["img"=>"adncuba.png", "link"=>"https://adncuba.com/noticias-de-cuba/tecnologia/apretaste-lanza-version-6-mas-rapida-novedosa-y-economica-para-los"],
		(Object) ["img"=>"hispanicize.png", "link"=>"http://hispz14.sched.org/event/d586fcd1fadff0e5b84fc2995eccfd20#.VCh10vnxqTU"],
		(Object) ["img"=>"periodicocubano.png", "link"=>"https://www.periodicocubano.com/apretaste-lanza-la-version-5-0-buscado-ahorrar-mas-saldo-a-los-cubanos/"],
	];
}

// list of team members
//
function getTeamMembers () {
	return [
		(Object) ["img"=>"salvi.jpg", "name"=>"Salvi Pascual", "position"=>"Executive Director", "email"=>"salvi@apretaste.org", "linkedin"=>"https://www.linkedin.com/in/salvipascual/"],
		(Object) ["img"=>"kuma.jpg", "name"=>"Kuma Hacker", "position"=>"Back-End Developer", "email"=>"kuma@apretaste.org", "linkedin"=>"https://www.linkedin.com/in/kumahacker/"],
		(Object) ["img"=>"ricardo.jpg", "name"=>"Ricardo Jimenez", "position"=>"Android Developer", "email"=>"ricardo@apretaste.org", "linkedin"=>"https://www.linkedin.com/in/ricardo-jimenez-31a59512b"],
		(Object) ["img"=>"edgar.jpg", "name"=>"Edgar Hernández", "position"=>"Representante de Soporte", "email"=>"edgar@apretaste.org", "linkedin"=>"https://www.linkedin.com/in/ed188/"],
		(Object) ["img"=>"orisbel.jpg", "name"=>"Orisbel Ríos", "position"=>"Experto en Comunicaciones", "email"=>"orisbel@apretaste.org", "linkedin"=>"https://www.linkedin.com/in/orisbel-rios-gonz%C3%A1lez-085a85151/"],
		(Object) ["img"=>"andrea.jpg", "name"=>"Andrea Loewenthal", "position"=>"Diseñadora", "email"=>"andrea@apretaste.org", "linkedin"=>"https://www.linkedin.com/in/andrea-l-b697b1184/"],
		(Object) ["img"=>"apretin.png", "name"=>"Apretín", "position"=>"Robot Mascota", "email"=>"apretin@apretaste.org", "linkedin"=>""],
	];
}

// list of news screenshots
//
function getNewsScreenshots () {
	return [
		(Object) ["image"=>"1.jpg", "title"=>"Escoge tus periódicos"],
		(Object) ["image"=>"2.jpg", "title"=>"Revisa los titulares"],
		(Object) ["image"=>"3.jpg", "title"=>"Lee las noticias"],
		(Object) ["image"=>"5.jpg", "title"=>"Créate un perfil anónimo"],
		(Object) ["image"=>"4.jpg", "title"=>"Comenta y debate"],
		(Object) ["image"=>"6.jpg", "title"=>"Haz amigos y socializa"]
	];
}

// get the download URLs
//
function getDownloadLink ($os) {
	if($os == 'android') return 'https://play.google.com/store/apps/details?id=com.apretaste.apretaste';
	if($os == 'ios') return 'https://apps.apple.com/app/id1488232603';
}
