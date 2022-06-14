<template>
  <div class="">
    <p>{{ message }}</p>
  </div>
</template>

<script>


export default {
  name: 'Spa',
  data() {
    return {
      message: 'this is component',
    }
  },
  created() {
    // this.message = 'vue'
    console.log(this.message);
  },

}

// const app = createApp(appdata)
// app.component('hello', {
//   data(){
//     return {
//       message2: 'helohelo'
//     }
//   }
//   ,
//   template: '<%= link_to "Show this user", user %>'
// })
</script>