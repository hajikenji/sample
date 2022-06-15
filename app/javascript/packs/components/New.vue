<template>
  <div class="">
    <p>{{ message }}</p>
    <p>{{ messageSuccessfulCreation }}</p>
    <!-- <p>{{ seeingProperty }}</p> -->
    <form v-on:submit.prevent="createTask">
      <input type="text" v-model="task.title">
      <br>
      <input type="text-area" v-model="task.content">
      <br>
      <button type="submit">submit</button>
    </form>
  </div>
</template>

<script>

export default {
  name: 'Top',
  data() {
    return {
      message: 'this is new',
      task: {
        title: '',
        content: ''
      },
      messageSuccessfulCreation: ''
    }
  },
  created() {
  },
  methods: {
    createTask(){
      console.log('submit押された');
      axios
        .post('/tasks', this.task)
        .then(response =>{
          console.log(response)
        })

      this.messageSuccessfulCreation = '送信完了!'
    }
  },
  // computed: {
  //   seeingProperty(){
  //     console.log(this.taskTitle);
  //     console.log(this.taskContent);
  //     return
  //   }
  // }

}

</script>