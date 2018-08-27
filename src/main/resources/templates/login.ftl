<html>
    <head>
        <style>
            body{
                margin:0;
                color:#6a6f8c;
                background: rgb(57,177,99);
                background: linear-gradient(90deg, rgba(57,177,99,1) 11%, rgba(13,119,156,1) 48%, rgba(0,212,255,1) 100%);
            }
            *,:after,:before{box-sizing:border-box}
            .clearfix:after,.clearfix:before{content:'';display:table}
            .clearfix:after{clear:both;display:block}
            a{color:inherit;text-decoration:none}

            input:focus,
            select:focus,
            textarea:focus,
            button:focus {
                outline: none;
            }
            .login-wrap{
                width:100%;
                height:100%;
                margin:auto;
                position:relative;
                box-shadow:0 12px 15px 0 rgba(0,0,0,.24),0 17px 50px 0 rgba(0,0,0,.19);
            }
            .login-html{
                width:30%;
                height:100%;
                margin-left: 35%;
                margin-right: 35%;
                position:absolute;
                padding:90px 70px 50px 70px;
                background:rgba(40,57,101,.9);
            }
            .login-html .sign-in-htm,
            .login-html .sign-up-htm{
                top:0;
                left:0;
                right:0;
                bottom:0;
                position:absolute;
                transform:rotateY(180deg);
                backface-visibility:hidden;
                transition:all .4s linear;
            }
            .login-html .sign-in,
            .login-html .sign-up,
            .login-form .group .check{
                cursor: hand;
                display:none;
            }
            .login-html .tab,
            .login-form .group .label,
            .login-form .group .button{
                text-transform:uppercase;
            }
            .login-html .tab{
                cursor: hand;
                font-size:22px;
                margin-right:15px;
                padding-bottom:5px;
                margin:0 15px 10px 0;
                display:inline-block;
                border-bottom:2px solid transparent;
            }
            .login-html .sign-in:checked + .tab,
            .login-html .sign-up:checked + .tab{
                color:#fff;
                border-color:#1161ee;
            }
            .login-form{
                margin-top:10px;
                min-height:345px;
                position:relative;
                perspective:1000px;
                transform-style:preserve-3d;
            }
            .login-form .group{
                margin-bottom:15px;
            }
            .login-form .group .label,
            .login-form .group .input,
            .login-form .group .button{
                width:100%;
                color:#fff;
                display:block;
            }
            .login-form .group .input,
            .login-form .group .button{
                border:none;
                padding:15px 20px;
                border-radius:25px;
                background:rgba(255,255,255,.1);
            }
            .login-form .group input[data-type="password"]{
                text-security:circle;
                -webkit-text-security:circle;
            }
            .login-form .group .label{
                color:#aaa;
                font-size:12px;
            }
            .login-form .group .button{
                cursor: hand;
                background:#1161ee;
            }
            .login-form .group label .icon{
                width:15px;
                height:15px;
                border-radius:2px;
                position:relative;
                display:inline-block;
                background:rgba(255,255,255,.1);
            }
            .login-form .group label .icon:before,
            .login-form .group label .icon:after{
                content:'';
                width:10px;
                height:2px;
                background:#fff;
                position:absolute;
                transition:all .2s ease-in-out 0s;
            }
            .login-form .group label .icon:before{
                left:3px;
                width:5px;
                bottom:6px;
                transform:scale(0) rotate(0);
            }
            .login-form .group label .icon:after{
                top:6px;
                right:0;
                transform:scale(0) rotate(0);
            }
            .login-form .group .check:checked + label{
                color:#fff;
            }
            .login-form .group .check:checked + label .icon{
                background:#1161ee;
            }
            .login-form .group .check:checked + label .icon:before{
                transform:scale(1) rotate(45deg);
            }
            .login-form .group .check:checked + label .icon:after{
                transform:scale(1) rotate(-45deg);
            }
            .login-html .sign-in:checked + .tab + .sign-up + .tab + .login-form .sign-in-htm{
                transform:rotate(0);
            }
            .login-html .sign-up:checked + .tab + .login-form .sign-up-htm{
                transform:rotate(0);
            }

            .hr{
                height:2px;
                margin:60px 0 50px 0;
                background:rgba(255,255,255,.2);
            }
            .foot-lnk{
                cursor: hand;
                text-align:center;
            }
        </style>
    </head>
    <body>
        <div class="login-wrap" id="particles-js">
            <div class="login-html">
                <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
                <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
                <div class="login-form">
                    <div class="sign-in-htm">
                        <form action="/checkLogin" method="post">
                            <div class="group">
                                <label for="user" class="label">E-Mail</label>
                                <input id="user" name="email" type="email" class="input" required>
                            </div>
                            <div class="group">
                                <label for="pass" class="label">Password</label>
                                <input id="pass" name="pass" type="password" class="input" data-type="password" required>
                            </div>
                            <div class="group">
                                <input id="check" name="checked" type="checkbox" class="check" checked>
                                <label for="check"><span class="icon"></span> Keep me Signed in</label>
                            </div>
                            <div class="group">
                                <input type="submit" class="button" value="Sign In">
                            </div>
                            <div class="hr"></div>
                            <div class="foot-lnk">
                                <a href="#forgot">Forgot Password?</a>
                            </div>
                        </form>
                    </div>
                    <div class="sign-up-htm">
                        <form action="/checkSignUp" method="post">
                            <div class="group">
                                <label for="user" class="label">Username</label>
                                <input id="user" name="name" type="text" class="input" required>
                            </div>
                            <div class="group">
                                <label for="pass" class="label">Password</label>
                                <input id="pass" name="pass" type="password" class="input" data-type="password" required>
                            </div>
                            <div class="group">
                                <label for="title" class="label">Title</label>
                                <input id="title" name="title" type="text" class="input" required>
                            </div>
                            <div class="group">
                                <label for="email" class="label">Email Address</label>
                                <input id="email" name="email" type="text" class="input" required>
                            </div>
                            <div class="group">
                                <input type="submit" class="button" value="Sign Up">
                            </div>
                            <div class="hr"></div>
                            <div class="foot-lnk">
                                <label for="tab-1">Already Member?</a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script src="js/particles.js"></script>
        <script src="js/app.js"></script>
    </body>
</html>
