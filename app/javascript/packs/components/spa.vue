<template>
  <div class="">
    <p>{{ message }}</p>
    
<table>
  <thead>
    <tr>
      <th>id</th>
      <th>title</th>
      <th>content</th>
    </tr>
  </thead>
  <tbody>
    <tr v-for="(task, index) in task_all_api" v-bind:key="index">
      <td>{{ task.id }}</td>
      <td>{{ task.title }}</td>
      <td>{{ task.content }}</td>
      <td ><input type="button" value="delete" v-on:click="deleteAction(task.id)"></td>
      <router-link v-bind:to="updateUrl + task.id">update</router-link>
      <router-view></router-view>
    </tr>
  </tbody>
</table>
    
  </div>
</template>

<script>

export default {
  name: 'Spa',
  data() {
    return {
      message: 'this is child component',
      task_all_api: [],

      // update用
      updateUrl: '/update/'
    }
  },
  created() {
    // this.message = 'vue'
    console.log(this.$route.query.info);
    this.message = this.$route.query.info;
  },
  mounted(){
    axios
      .get('/api/task')
      .then(response => {this.task_all_api = response.data});
  },
  methods: {
    deleteAction(id){
      axios
        .delete(`/tasks/${id}`);
      axios
        .get('/api/task')
        .then(response => {this.task_all_api = response.data});

      this.message = '削除完了!';
    }
  }

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