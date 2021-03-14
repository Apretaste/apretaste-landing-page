<section id="download" style="display:none;" class="spotlight style3 android orient-right content-align-left image-position-center">
	<div class="content">
		<h2>Descarga Apretaste</h2>
		<p>Escoge cómo quieres descargar la última versión de Apretaste desde nuestras fuentes oficiales.</p>

		<ul class="actions">
			<li><a onclick="sendAnalyticsEvent('download_btn', 'android')" href="<?= $android ?>" class="button primary icon brands fa-android">Android</a></li>
			<li><a onclick="sendAnalyticsEvent('download_btn', 'ios')" href="<?= $ios ?>" class="button primary icon brands fa-apple">iPhone</a></li>
			<li><a onclick="sendAnalyticsEvent('download_btn', 'apk')" href="<?= $apk ?>" class="button">APK directa</a></li>
		</ul>
	</div>
	<div class="image">
		<img src="/images/phone/apretin_pointing.jpg" alt="Apretín" />
	</div>
</section>

<script type="text/javascript">
	window.onload = function() {
		// redirect to the Play Store
		if(/Android/i.test(navigator.userAgent) ) {
			sendAnalyticsEvent('download_btn', 'android');
			window.location = '<?= $android ?>';
			throw new Error("Stop!");
		}

		// redirect to the Apple Store
		if(/iPhone|iPad|iPod/i.test(navigator.userAgent) ) {
			sendAnalyticsEvent('download_btn', 'ios');
			window.location = '<?= $ios ?>';
			throw new Error("Stop!");
		}

		// if device unknown, ask the user
		var download = document.getElementById('download');
		download.style.display = 'flex';
	};
</script>
