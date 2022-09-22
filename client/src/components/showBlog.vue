<template>
  <div class="content-fix m-t-15">
    <h1>
        Tất cả bài viết
    </h1>
    <div class="m-t-15 bg-gray " v-for="blog in blogs" :key="blog">
        <router-link v-bind:to="'/showBlog/singleBlog/'+blog.id"><h2>{{blog.title}}</h2></router-link>
        <article>{{blog.content | shortArticle}}</article>
        <h3>Author: {{blog.author}}</h3>
        <p>The loai: {{blog.categories}}</p>
    </div>
    <button v-on:click="showData">ConsoleLog data</button>
  </div>
</template>

<script>
export default {

    data(){
        return {
            blogs:[
                
            ],
        }
    },
    methods: {
        showData: function () {
            console.log(this.blogs);
            // console.log(blog)
        }
    },
    created () {
        // alert("created");
        this.$http.get('https://khoatd-2f63c-default-rtdb.asia-southeast1.firebasedatabase.app/testdb.json').then(function(data){
            // this.blogs = data.body;
            // console.log(data);
            return data.json();
        }).then(function(data){
            var blogArray = [];
            // console.log(data);
            for (let key in data){
                console.log(data[key]);
                data[key].id = key;
                blogArray.push(data[key])
            }
            // console.log(blogArray)
            this.blogs = blogArray
        })
    },
    // beforeMount() {
    //     console.log(this.blogs)
    // },
    // mounted() {
    //     console.log(this.blogs)
    // },
    filters: {
        'shortArticle' : function (value) {
            return value.slice(0,350)+'...'
        }
    }
}
</script>

<style scoped>
.bg-gray {
    background: rgb(224, 224, 224);
}
</style>>

