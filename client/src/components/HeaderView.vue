<template>
  <header class="header p-t-15">
        <div class="navbar flex flex-align-center sp-between content-fix">
            <div>
                <ul class="left-navbar flex flex-align-center">
                    <li><a class="p-15" href=""><img class="main-logo" src="@/assets/img/wideLogo.png" alt=""></a></li>
                    <li><a class="p-15" href=""><img class="nav-logo" src="@/assets/img/navbar/icons8-facebook-circled.gif" alt=""></a></li>
                    <li><a class="p-15" href=""><img class="nav-logo" src="@/assets/img/navbar/icons8-youtube-logo.gif" alt=""></a></li>
                    <li><a class="p-15" href=""><img class="nav-logo" src="@/assets/img/navbar/icons8-spotify.gif" alt=""></a></li>
                </ul>
            </div>
            <div>
                <ul class="right-navbar flex flex-align-center">
                    <li><a href=""><img src="@/assets/img/navbar/icons8-search.svg" alt=""></a></li>
                    <li><a href=""><img src="@/assets/img/navbar/icons8-notification-32.png" alt=""></a></li>
                    <li><router-link to="/addpost"><a class="btn-gray" href="">Viết bài</a></router-link></li>
                    <li><router-link to="/login"><a class="btn-gray">Đăng Nhập</a></router-link></li>
                </ul>
            </div>
        </div>
        <div>
            <ul class="flex p-tb-15 navbar-categories content-fix">
                <li><router-link to="/discuss"><a class="p-r-35 categories-item" href="">Quan điểm - Tranh luận</a></router-link></li>
                <li><a class="p-r-35 categories-item" href="">Truyền cảm hứng</a></li>
                <li><a class="p-r-35 categories-item" href="">Khoa học công nghệ</a></li>
                <li><a class="p-r-35 categories-item" href="">Thể thao</a></li>
                <li><a class="p-r-35 categories-item" href="">Game</a></li>
                <li><router-link to="/showblog"><a class="p-r-35 categories-item" href="">Tất cả bài viết</a></router-link></li>
            </ul>
        </div>
    </header>
</template>

<script>
export default {

}
</script>

<style>

</style>