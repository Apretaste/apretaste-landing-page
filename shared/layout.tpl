<<html>
    <head>
        (( head ))
    </head>
    <body>

    <div style="position:absolute; top:0px; width: 100%; height: 100px; text-align: center;">
        <img src="https://www.apretaste.org/images/apretaste_logo_300x108.png">
    </div>
    (( body ))
    <div style="position:absolute; bottom:0px; width: 100%; height: 100px;text-align: center;">

        <!-- DOWNLOAD -->
        <section id="download" class="spotlight style3 android invert orient-right content-align-left image-position-center">
            <div class="content">
                <p>Descarga la app de Apretaste desde el Play Store o desde el Apple Store, o bien conéctate por la web y sé parte directa de la comunidad. Es todo un placer tenerte con nosotros.</p>

                <ul class="actions">
                    <li><a onclick="sendAnalyticsEvent('download_btn', 'android')" href="https://play.google.com/store/apps/details?id=com.apretaste.apretaste" target="_blank" class="button primary icon brands fa-android">Android</a></li>
                    <li><a onclick="sendAnalyticsEvent('download_btn', 'ios')" href="https://apps.apple.com/app/id1488232603" target="_blank" class="button primary icon brands fa-apple">iPhone</a></li>
                    <li><a onclick="sendAnalyticsEvent('download_btn', 'web')" href="https://app.apretaste.org/" target="_blank" class="button primary icon solid fa-globe">Versión Web</a></li>
                </ul>
            </div>
            <div class="image">
                <img src="/images/phone/apretin_pointing.jpg" alt="Apretín" />
            </div>
        </section>
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