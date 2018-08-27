        <!-- Footer -->
        <!--<footer class="w3-container w3-theme-d3 w3-padding-16">-->
          <!--<h5>MS</h5>-->
        <!--</footer>-->

        <footer class="w3-container w3-theme-d5" style="background: rgb(57,177,99);background: linear-gradient(90deg, rgba(57,177,99,1) 11%, rgba(13,119,156,1) 48%, rgba(0,212,255,1) 100%);margin-top:10px;">
          <p>All Rights Reserved to Major Stellar®</p>
        </footer>

        <script>
        // Accordion
        function myFunction(id) {
            var x = document.getElementById(id);
            if (x.className.indexOf("w3-show") == -1) {
                x.className += " w3-show";
                x.previousElementSibling.className += " w3-theme-d1";
            } else {
                x.className = x.className.replace("w3-show", "");
                x.previousElementSibling.className =
                x.previousElementSibling.className.replace(" w3-theme-d1", "");
            }
        }

        // Used to toggle the menu on smaller screens when clicking on the menu button
        function openNav() {
            var x = document.getElementById("navDemo");
            if (x.className.indexOf("w3-show") == -1) {
                x.className += " w3-show";
            } else {
                x.className = x.className.replace(" w3-show", "");
            }
        }
        </script>

    </body>
</html>
