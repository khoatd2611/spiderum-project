<template>
  <body class="content-fix m-t-15">
    <form class="flex flex-col flex-gaps-30" action="">
        <h2>Tạo bài viết của bạn</h2>
        <input type="text" placeholder="Tiêu đề bài viết" v-model="blogs.title">
        <textarea name="" id="" cols="" rows="30" placeholder="Nội dung bài viết" v-model="blogs.content"></textarea>
        <div class="flex sp-between">
            <div>
                <label for="userName">Tên tác giả: </label>   
                <input type="text" name="" id="userName" v-model="blogs.author">
            </div>
            <div class="flex flex-col">
                <label for="">Chọn chuyên mục: </label>
                <div><label for="">Quan điểm - Tranh luận</label><input type="checkbox" value="Quan điểm - Tranh luận" v-model="blogs.categories"></div>
                <div><label for="">Truyền cảm hứng</label><input type="checkbox" value="Truyền cảm hứng" v-model="blogs.categories"></div>
                <div><label for="">Khoa học công nghệ</label><input type="checkbox" value="Khoa học công nghệ" v-model="blogs.categories"></div>
                <div><label for="">Thể thao</label><input type="checkbox" value="Thể thao" v-model="blogs.categories"></div>
                <div><label for="">Game</label><input type="checkbox" value="Game" v-model="blogs.categories"></div>
                <!-- <select name="" id="">
                    <option value="">Quan điểm - Tranh luận</option>
                    <option value="">Truyền cảm hứng</option>
                    <option value="">Khoa học công nghệ</option>
                    <option value="">Thể thao</option>
                    <option value="">Game</option>
                </select> -->
            </div>
        </div>
        <button class="btn-gray" v-on:click.prevent="post">Gửi bài viết</button>
    </form>
</body>
</template>

<script>
export default {
    data() {
        return {
            blogs: {
                title:'',
                content: '',
                categories: [],
                author: ''
            }
        }
    },
    methods: {
        post: function () {
            this.$http.post('https://khoatd-2f63c-default-rtdb.asia-southeast1.firebasedatabase.app/testdb.json', this.blogs).then(function(data){
                console.log(data)
            })
        }
    }
}
</script>

<style>

</style>