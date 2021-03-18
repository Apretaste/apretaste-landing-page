<html>
    <head>
        (( head ))
    </head>
    <body style="padding-top: 60px;background: azure;">

    <div style="position:fixed; top:0px; width: 100%; height: 60px; text-align: center; background: white;z-index: 9999;">
        <img src="https://www.apretaste.org/images/apretaste_logo_300x108.png" height="50">
    </div>
    (( body ))
    <div style="position:fixed; bottom:0px; width: 100%; height: 100px;text-align: center;background: white;z-index: 9999;"">
            <div class="content">
                <p><small>Descarga la app de Apretaste desde el Play Store o desde el Apple Store, o bien conéctate por la web y sé parte directa de la comunidad. Es todo un placer tenerte con nosotros.</small></p>
                    <a onclick="sendAnalyticsEvent('download_btn', 'android')" href="https://play.google.com/store/apps/details?id=com.apretaste.apretaste" target="_blank" class="button primary icon brands fa-android">Android</a>
                    <a onclick="sendAnalyticsEvent('download_btn', 'ios')" href="https://apps.apple.com/app/id1488232603" target="_blank" class="button primary icon brands fa-apple">iPhone</a>
                    <a onclick="sendAnalyticsEvent('download_btn', 'web')" href="https://app.apretaste.org/" target="_blank" class="button primary icon solid fa-globe">Versión Web</a>
                </ul>
            </div>
    </div>
    <!-- google analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-49715278-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());
        gtag('config', 'UA-49715278-1');
    </script>

    <!-- google analytics events -->
    <script>
        function sendAnalyticsEvent (category, action) {
            gtag('event', action, {'event_category': category});
        }
    </script>
    </body>
</html>