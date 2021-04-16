<section id="download" class="spotlight style3 android orient-right content-align-left image-position-center">
	<div class="content">
		<h2>Descarga Apretaste</h2>
		<p>Escoge cómo quieres descargar la última versión de Apretaste desde nuestras fuentes oficiales.</p>

		<ul class="actions">
			<li><a onclick="sendAnalyticsEvent('download_btn', 'android')" href="<?= getDownloadLink('android') ?>" target="_blank" class="button primary icon brands fa-android">Android</a></li>
			<li><a onclick="sendAnalyticsEvent('download_btn', 'ios')" href="<?= getDownloadLink('ios') ?>" target="_blank" class="button primary icon brands fa-apple">iPhone</a></li>
			<li><a onclick="sendAnalyticsEvent('download_btn', 'apk')" href="<?= getDownloadLink('apk') ?>" target="_blank" class="button secondary icon solid fa-download">APK (14MB)</a></li>
		</ul>
	</div>
	<div class="image">
		<img src="/images/phone/apretin_pointing.jpg" alt="Apretín" />
	</div>
</section>
