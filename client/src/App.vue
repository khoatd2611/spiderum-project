<template>
  <div>
    <app-header></app-header>
    <router-view></router-view>
    <app-footer></app-footer>
  </div>
</template>

<script>
// import HeaderViewVue from "./components/HeaderView.vue";
import FooterViewVue from "./components/FooterView.vue";

export default {
  components: {
    // 'app-header': HeaderViewVue,
    'app-footer': FooterViewVue
  }
}

</script>

<style>
@import url(@/assets/css/style.css);
</style>
