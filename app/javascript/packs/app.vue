<template>
  <div id="app">
    <router-link to="/users">top</router-link>
    <br>
    <router-link to="/tasks">tasks</router-link>
    <br>
    <router-link to="/new">new</router-link>
    <!-- <br>
    <router-link to="/update">update</router-link> -->
    <!-- <p>{{ message }}</p>
    <Spa/> -->
    <router-view></router-view>
  </div>
</template>

<script>
// export default {
//   data: function () {
//     return {
//       message: "Hello Vue!"
//     }
//   }
// }

// import { createApp } from 'vue'
// import Spa from './components/spa.vue'
axios.defaults.headers.common = {
    'X-Requested-With': 'XMLHttpRequest',
    'X-CSRF-TOKEN' : document.querySelector('meta[name="csrf-token"]').getAttribute('content')
    
};

export default {
  // components: {
  //   Spa
  // }
  data(){
    return {
    }
  }
}

// const app1 = {
//   components: {
//     Spa
//   }
//   ,
//   data(){
//     return {
//       message: "aaa"
//     }
//   }
// }
// createApp(app1).mount("#app");
</script>

<style scoped>
p {
  font-size: 1em;
  text-align: center;
}
</style>
