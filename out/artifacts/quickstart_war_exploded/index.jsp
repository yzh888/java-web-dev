<%@ page import="java.util.List" %>
<%@ page import="com.web.Book" %><%--

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>首页</title>
    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
        }
        body{
            color: #333;
        }
        header{
            height: 60px;
            background-color:rgb(118, 55, 182) ;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding-left: 10px;
            padding-right: 10px;
        }
        @font-face {
            font-family: 'iconfont';  /* project id 1432767 */
            src: url('//at.alicdn.com/t/font_1432767_p3z2ynjghme.eot');
            src: url('//at.alicdn.com/t/font_1432767_p3z2ynjghme.eot?#iefix') format('embedded-opentype'),
            url('//at.alicdn.com/t/font_1432767_p3z2ynjghme.woff2') format('woff2'),
            url('//at.alicdn.com/t/font_1432767_p3z2ynjghme.woff') format('woff'),
            url('//at.alicdn.com/t/font_1432767_p3z2ynjghme.ttf') format('truetype'),
            url('//at.alicdn.com/t/font_1432767_p3z2ynjghme.svg#iconfont') format('svg');
        }

        .iconfont{
            font-family:"iconfont" !important;
            font-size:16px;font-style:normal;
            -webkit-font-smoothing: antialiased;
            -webkit-text-stroke-width: 0.2px;
            -moz-osx-font-smoothing: grayscale;}


        .nav{
            flex: 0 0 50%;
            list-style: none;
            display: flex;
        }
        .nav li{
            margin-left: 10px;
            margin-right: 10px;
            width: 50px;
        }
        .user-info{
            padding-left: 20px;
        }
        /* 超链接样式 */
        .nav li a{
            text-decoration: none;
            color: #eee;
        }
        .nav li a:hover{
            color: #fff;
        }
        .search-wrap{
            height: 60px;
            background-color: #ddd;
            display: flex;
            align-items: center;
            padding-left: 10%;
            margin-bottom: 10px;
        }
        .input-box{
            width: 350px;
            height: 35px;
            border:1px solid #eee;
            border-radius: 5px;
            margin-left: 10px;
        }
        .container{
            width: 80%;
            margin: 0 auto;
            /* height: 600px; */
            flex-wrap: wrap;
            background-color: #fff;
            display: flex;
            padding: 5px 5px 5px 5px;
        }
        .left{
            flex: 0 0 66%;
            height: 98%;
            background-color: #fff;
            padding: 10px 10px 10px 10px;
        }
        .right{
            flex: 0 0 30%;
            margin-left: 15px;
            height: 100%;
            background-color: #FFFFFF;
        }
        .row{
            display: flex;
            /* 自动换行 */
            flex-wrap: wrap;
            padding: 5px 5px 5px 5px;
        }
        .column{
            flex: 0 0 18%;
            height: 190px;
            background-color: #fff;
            border: 0px solid #333;
            border-radius: 10px;
            margin: 5px 5px 5px 5px;
        }

        footer{
            height: 100px;
            background-color: #AAAAAA;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .column img{
            flex: 0 0 100%;
            height: 130px;
            background-color: #fff;
            margin: 15px 5px 5px 30px;

        }
        .column img{
            flex: 0 0 100%;
            height: 130px;
            background-color: #fff;
            margin: 15px 5px 5px 30px;

        }
        .column p{
            text-align: center;
        }
    </style>
    <!-- 顶部导航 -->
</head>
<body>
<header>
    <div>
        <!-- 导航 -->
        <ul class="nav">
            <li>
                <a href="#">首页</a>
            </li>
            <li>
                <a href="#">分类</a>
            </li>
            <li>
                <a href="#">书库</a>
            </li>
            <li>
                <a href="#">书架</a>
            </li>
            <li>
                <a href="#">最爱</a>
            </li>
        </ul>
    </div>
    <div class="user-info">
        <h3>崩坏3rd</h3>
    </div>

</header>
<!-- 搜索区 -->
<div class="search-wrap">
    <h2>读书时间</h2>
    <input type="text" placeholder="输入要搜索的内容" class="input-box">
    <i class="iconfont">&#xe600;</i>
</div>
<div class="container">
    <div class="left">
        <h2>好书精选</h2>
        <hr>
        <div class="row">

            <%
                List<Book> bookList = (List<Book>) request.getAttribute("bookList");
                pageContext.setAttribute("size",bookList.size());
            %>
            一共${size}本书
            <div class="container">
                <%
                    for(Book book:bookList){
                        pageContext.setAttribute("book",book);

                %>
                <div class="box">
                    <img src="images/${book.cover}" alt="">
                    <p>${book.name}</p>
                    <p>${book.author}</p>
                </div>
                <%
                    }
                %>
            </div>
        </div>
    </div>
    <div class="right">
        <div>
            <h3>文学优秀作品联展</h3>
            <p>「科学制造」大发明家</p>
            <hr>
            <p>「玄幻小说」超级玄幻</p><hr>
            <p>「民间传说」封神传说</p><hr>
        </div>
        <br>
        <div>
            <h3>粉丝榜</h3>
            <p>1.一号土豪</p><hr>
            <p>2.二号土豪</p><hr>
            <p>3.小土豪</p><hr>

        </div><br>
        <div>
            <h3>其他作品</h3><br>

            <div><img src="images/${book.cover}" alt=""></div>
        </div>
    </div>

</div>
<!-- 脚注区 -->
<footer>
    <p>南京工业职业技术学院</p>
</footer>
</body>
</html>