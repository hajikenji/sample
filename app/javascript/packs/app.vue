<template>
  <div id="app">
    <p>{{ message }}</p>
    <Spa/>
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

import { createApp } from 'vue'
import Spa from './components/spa.vue'

export default {
  components: {
    Spa
  }
  ,
  data(){
    return {
      message: '親コンポーネント'
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
