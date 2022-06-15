<template>
  <div class="">
    <p>{{ message }}</p>
    <p>{{ messageSuccessfulOperation }}</p>
    <!-- <p>{{ seeingProperty }}</p> -->
    <!-- $emitの処理を書く -->
    <!-- <form v-on:submit.prevent="createTask"> -->
    <form v-on:submit.prevent="sendData">
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
  name: 'Form',
  props: {
    message: String,
    messageSuccessfulOperation: String,
  },
  data() {
    return {
      task: {
        title: '',
        content: ''
      },
    }
  },
  created() {
  },
  methods: {
    // createTask(){
    //   console.log('submit押された');
    //   axios
    //     .post('/tasks', this.task)
    //     .then(response =>{
    //       console.log(response)
    //     })

    //   this.messageSuccessfulOperation = '送信完了!'
    // }
    sendData(){
      this.$emit('sendingData', this.task)
    }
  }

}

</script>