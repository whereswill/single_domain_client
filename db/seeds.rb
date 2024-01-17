# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Snippet.create(client_snippet: "<!-- Google Tag Manager -->
    <script>
      // Prevent dataLayer from being overwritten
      !function(n){var t=window.dataLayer||[];Object.defineProperty(window,\"dataLayer\",{get:function(){
      return t},set:function(n){n instanceof Array&&n!==t&&n.forEach(function(n){t.push(n)})}})}();
      // Load GTM & JSRX
      var jsrxEndpoint = 'https://jsrx.g5marketingcloud.com/tracking_scripts/g5-c-5m7dapjbn-wowza-single.js?op_referrer=' + window.location.href;
      window.dataLayer=window.dataLayer||[];
      window.dataLayer.push({'G5_CLIENT_ID': 'g5-c-5m7dapjbn-wowza-single', 'jsrxEndpoint': jsrxEndpoint});
      (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
      new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
      j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
      'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
      })(window,document,'script','dataLayer','GTM-5NXSPP');
    </script>
    <!-- End Google Tag Manager -->");

Location.create(name: "Spokane Holdings",
    slug: "g5-cl-1k61wgqoqd-spokane-holdings",
    phone: "5414101234",
    iframe_source: "https://www.youtube.com/embed/zhUI7MWE_Fc?si=0Npvt0lDzUKCo0yd",
    urn: "g5-cl-1k61wgqoqd-spokane-holdings");