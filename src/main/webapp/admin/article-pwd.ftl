<#--

    Bolo - A stable and beautiful blogging system based in Solo.
    Copyright (c) 2020, https://github.com/adlered

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.

-->
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta name="viewport" content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <link rel="stylesheet" href="https://ftp.stackoverflow.wiki/bolo/start/css/font-awesome.min.css" />
    <link href="https://ftp.stackoverflow.wiki/bolo/start/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://ftp.stackoverflow.wiki/bolo/start/css/now-ui-kit.css?v=1.1.0" rel="stylesheet" />
    <link href="https://ftp.stackoverflow.wiki/bolo/start/css/demo.css" rel="stylesheet" />
    <link rel="icon" type="image/png" href="${faviconURL}"/>
    <link rel="apple-touch-icon" href="${faviconURL}">
    <link rel="shortcut icon" type="image/x-icon" href="${faviconURL}">
    <title>访问密码 - ${blogTitle}</title>
    <style>
        .fixedBg{
            min-height: 1024px;
            background-position: center center;
            background-repeat: no-repeat !important;
            background-attachment: fixed;
            background-size: cover;
            background: rgba(109, 150, 230, 0.8);
            background: -webkit-linear-gradient(90deg, rgba(241, 135, 110, 0.75), rgba(41, 116, 178, 0.75));
            background: -o-linear-gradient(90deg, rgba(241, 135, 110, 0.75), rgba(41, 116, 178, 0.75));
            background: -moz-linear-gradient(90deg, rgba(241, 135, 110, 0.75), rgba(41, 116, 178, 0.75));
            background: linear-gradient(0deg, rgba(241, 135, 110, 0.75), rgba(41, 116, 178, 0.75));
        }
        .content{
            padding-top: 17%;
            color: white;
            text-align: center;
        }
        .passwordContainer{
            padding-left: 20%;
            padding-right: 20%;
            width: 100%;
            height: 100%;
        }
        .confirmButton{
            opacity: 0.9;
        }
        a {
            color: #ffffff;
        }
    </style>
</head>

<body class="fixedBg">
    <nav class="navbar navbar-expand-lg bg-primary fixed-top navbar-transparent" color-on-scroll="400">
        <div class="container">
            <div class="collapse navbar-collapse justify-content-start">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" rel="tooltip" title="返回主页" data-placement="bottom" href="${staticServePath}/">
                            <i class="fa fa-home"></i>
                            <p class="d-lg-none d-xl-none">返回主页</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="content">
        <h2>
            ${articleTitle}
        </h2>
        <br><br><br>
        <div class="passwordContainer">
            <form class="form" method="POST" action="${servePath}/console/article-pwd">
                <label for="pwdTyped">访问密码</label>
                <input type="password" id="pwdTyped" name="pwdTyped" class="form-control"
                       style="color: #ffffff; background-color: transparent; border: 1px solid #E3E3E3;"
                       placeholder="请输入密码" />
                <input type="hidden" name="articleId" value="${articleId}" />
                <div style="text-align: left">
                    <#if msg??>
                        <span class="error">${msg}</span>
                    </#if>
                    <div style="margin-top: 10px">
                        <button id="confirm" class="btn btn-primary btn-round btn-lg btn-block confirmButton" type="submit">${confirmLabel}</button>
                    </div>
                </div>
            </form>
        </div>
        <br><br><br>
    </div>
</body>
<script src="https://ftp.stackoverflow.wiki/bolo/start/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="https://ftp.stackoverflow.wiki/bolo/start/js/core/popper.min.js" type="text/javascript"></script>
<script src="https://ftp.stackoverflow.wiki/bolo/start/js/core/bootstrap.min.js" type="text/javascript"></script>
<script src="https://ftp.stackoverflow.wiki/bolo/start/js/plugins/bootstrap-switch.js"></script>
<script src="https://ftp.stackoverflow.wiki/bolo/start/js/plugins/nouislider.min.js" type="text/javascript"></script>
<script src="https://ftp.stackoverflow.wiki/bolo/start/js/plugins/bootstrap-datepicker.js" type="text/javascript"></script>
<script src="https://ftp.stackoverflow.wiki/bolo/start/js/plugins/jquery.sharrre.js" type="text/javascript"></script>
</html>
