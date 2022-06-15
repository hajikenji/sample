<template>
  <div class="">
    <Form :messageSuccessfulOperation="messageSuccessfulOperation" :message="message"
      v-on:sendingData="createTask"  />
  </div>
</template>

<script>

import Form from './form/Form.vue'

export default {
  name: 'Top',
  components: {
    Form
  }
  ,
  data() {
    return {
      message: 'this is new',
      task: {
        title: '',
        content: ''
      },
      messageSuccessfulOperation: ''
    }
  },
  created() {
  },
  methods: {
    createTask(data){
      console.log('submit押された');
      axios
        .post('/tasks', data)
        .then(response =>{
          console.log(response)
        })

      // this.messageSuccessfulOperation = '送信完了!'

      this.$router.push({path: '/tasks', query: {info: '作成完了!'}});
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