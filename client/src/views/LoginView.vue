<template>
  <main class="login flex flex-col">
        <div class="login-box flex flex-col">
            <img src="@/assets/img/log-in-page/spiderum-logo.png" alt="">
            <lable>Tên đăng nhập</lable><input type="text" v-model="users.username">
            <br>
            <lable>Mật khẩu</lable><input type="password" v-model="users.password">
            <br>
            <button class="btn-login m-b-15" v-on:click="signUp">Đăng Ký</button>
            <!-- <p>{{users.username}}</p>
            <p>{{users.password}}</p> -->
            <div class="flex sp-between">
                <p>Đăng Ký</p>
                <p>Quên mật khẩu</p>
            </div>
        </div>
        <button v-on:click="signIn">Hien tat ca users</button>
        <div v-for="user in users" :key="user">
            Ten dang nhap: {{user.username}} Mat khau: {{user.password}}
        </div>
    </main>
</template>

<script>
export default {
    data() {
        return {
            users: {
                username: '',
                password: ''
            }
        }
    },
    methods: {
        signUp: function () {
            this.$http.post('https://khoatd-2f63c-default-rtdb.asia-southeast1.firebasedatabase.app/testusers.json', this.users).then(function(data){
                console.log(data)
            })
        },
        signIn: function () {
            this.$http.get('https://khoatd-2f63c-default-rtdb.asia-southeast1.firebasedatabase.app/testusers.json').then(function(data) {
                this.users = data.body
            })
        }
    }
}
</script>

<style>
@import url(@/assets/css/style.css);
</style>