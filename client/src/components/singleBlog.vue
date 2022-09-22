<template>
  <div class="content-fix m-t-15">
    <div class="m-t-15" v-for="blog in blogs" :key="blog">
        <h2 class="m-t-15">{{blog.title}}</h2>
        <article class="m-t-15">{{blog.content}}</article>
    </div>
  </div>
 
</template>

<script>
export default {
    data(){
        return {
            blogs:{},
            id: this.$route.params.id
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
        this.$http.get('https://khoatd-2f63c-default-rtdb.asia-southeast1.firebasedatabase.app/testdb/' + this.id +'.json').then(function(data){
            // this.blogs = data.body;
            // console.log(data);
            this.blogs = data;
            console.log(this.blogs)
        })
        // .then(function(data){
        //     var blogArray = [];
        //     // console.log(data);
        //     for (let key in data){
        //         console.log(data[key]);
        //         data[key].id = key;
        //         blogArray.push(data[key])
        //     }
        //     // console.log(blogArray)
        //     this.blogs = blogArray
        // })
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
    h2 {
        font-size: 36px;
    }
</style>