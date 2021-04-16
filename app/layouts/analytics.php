<?php if(IS_PRODUCTION) { ?>
	<!-- Facebook Pixel Code -->
	<script nonce="WVogQPRe">
		!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
		n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
		n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
		t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
		document,'script','https://connect.facebook.net/en_US/fbevents.js');

		fbq('init', '371172900887647');
		fbq('set','agent','tmgoogletagmanager', '371172900887647');
		fbq('track', "PageView");
	</script>
	<noscript><img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=371172900887647&ev=PageView&noscript=1"/></noscript>

	<!-- google analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-49715278-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());
		gtag('config', 'UA-49715278-1');
	</script>

	<!-- zendesk widget -->
	<script id="ze-snippet" src="https://static.zdassets.com/ekr/snippet.js?key=e21187ac-4d56-4c8a-85f3-89d824515b57"></script>
<?php } ?>

<!-- google analytics events -->
<script>
	function sendAnalyticsEvent (category, action) {
		<?php if(IS_PRODUCTION) { ?>
			gtag('event', action, {'event_category': category});
		<?php } else { ?>
			console.log('category: ' + category + ', action: ' + action);
		<?php } ?>
	}
</script>
