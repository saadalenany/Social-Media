<#include "header.ftl">

<div class="w3-light-grey" style="margin-top:50px;margin-bottom:10px;">

    <!-- Page Container -->
    <div class="w3-content w3-margin-top" style="max-width:1400px;">

      <!-- The Grid -->
      <div class="w3-row-padding">

        <!-- Left Column -->
        <div class="w3-third">

          <div class="w3-white w3-text-grey w3-card-4">
            <div class="w3-display-container" style="width:50%;margin-left: 25%;margin-right: 25%;position:relative;margin-top:10px;">
              <img src="https://i1.wp.com/www.winhelponline.com/blog/wp-content/uploads/2017/12/user.png" style="height:160px;width:160px;margin-top:5px;" alt="Avatar">
              <div class="w3-display-bottomleft w3-container w3-text-black">
                <h2>${user.getName()}</h2>
              </div>
              <a href="/update" class="w3 fa fa-edit" style="float:right;"></a>
            </div>
            <div class="w3-container">
              <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i>${user.getTitle()}</p>
              <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>${user.getLocation()}</p>
              <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>${user.getEmail()}</p>
              <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i>${user.getPhone()}</p>
              <hr>

              <p class="w3-large"><b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>Skills</b></p>
              <p>Adobe Photoshop</p>
              <div class="w3-light-grey w3-round-xlarge w3-small">
                <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:90%">90%</div>
              </div>
              <p>Photography</p>
              <div class="w3-light-grey w3-round-xlarge w3-small">
                <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:80%">
                  <div class="w3-center w3-text-white">80%</div>
                </div>
              </div>
              <p>Illustrator</p>
              <div class="w3-light-grey w3-round-xlarge w3-small">
                <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:75%">75%</div>
              </div>
              <p>Media</p>
              <div class="w3-light-grey w3-round-xlarge w3-small">
                <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:50%">50%</div>
              </div>
              <br>

              <p class="w3-large w3-text-theme"><b><i class="fa fa-globe fa-fw w3-margin-right w3-text-teal"></i>Languages</b></p>
              <p>English</p>
              <div class="w3-light-grey w3-round-xlarge">
                <div class="w3-round-xlarge w3-teal" style="height:24px;width:100%"></div>
              </div>
              <p>Spanish</p>
              <div class="w3-light-grey w3-round-xlarge">
                <div class="w3-round-xlarge w3-teal" style="height:24px;width:55%"></div>
              </div>
              <p>German</p>
              <div class="w3-light-grey w3-round-xlarge">
                <div class="w3-round-xlarge w3-teal" style="height:24px;width:25%"></div>
              </div>
              <br>
            </div>
          </div><br>

        <!-- End Left Column -->
        </div>

        <!-- Right Column -->
        <div class="w3-twothird" style="margin-top:10px;">

          <div class="w3-container w3-card w3-white w3-margin-bottom">
            <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Work Experience</h2>
            <div class="w3-container">
              <h5 class="w3-opacity"><b>Front End Developer / w3schools.com</b></h5>
              <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Jan 2015 - <span class="w3-tag w3-teal w3-round">Current</span></h6>
              <p>Lorem ipsum dolor sit amet. Praesentium magnam consectetur vel in deserunt aspernatur est reprehenderit sunt hic. Nulla tempora soluta ea et odio, unde doloremque repellendus iure, iste.</p>
              <hr>
            </div>
            <div class="w3-container">
              <h5 class="w3-opacity"><b>Web Developer / something.com</b></h5>
              <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Mar 2012 - Dec 2014</h6>
              <p>Consectetur adipisicing elit. Praesentium magnam consectetur vel in deserunt aspernatur est reprehenderit sunt hic. Nulla tempora soluta ea et odio, unde doloremque repellendus iure, iste.</p>
              <hr>
            </div>
            <div class="w3-container">
              <h5 class="w3-opacity"><b>Graphic Designer / designsomething.com</b></h5>
              <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Jun 2010 - Mar 2012</h6>
              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. </p><br>
            </div>
          </div>

          <div class="w3-container w3-card w3-white">
            <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Education</h2>
            <div class="w3-container">
              <h5 class="w3-opacity"><b>W3Schools.com</b></h5>
              <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>Forever</h6>
              <p>Web Development! All I need to know in one place</p>
              <hr>
            </div>
            <div class="w3-container">
              <h5 class="w3-opacity"><b>London Business School</b></h5>
              <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>2013 - 2015</h6>
              <p>Master Degree</p>
              <hr>
            </div>
            <div class="w3-container">
              <h5 class="w3-opacity"><b>School of Coding</b></h5>
              <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i>2010 - 2013</h6>
              <p>Bachelor Degree</p><br>
            </div>
          </div>

        <!-- End Right Column -->
        </div>

      <!-- End Grid -->
      </div>

      <!-- End Page Container -->
    </div>

</div>

<#include "footer.ftl">
