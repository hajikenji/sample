<template>
  <div class="">
    <Form :messageSuccessfulOperation="messageSuccessfulOperation" :message="message"
      v-on:sendingData="createTask"  />
  </div>
</template>

<script>

import Form from './form/Form.vue'
import { ref } from 'vue'
import { useRoute, useRouter } from 'vue-router';
// import { router } from '../router';

export default {
  name: 'Top',
  components: {
    Form
  }
  ,

  setup() {
    const message = ref('this is new');
    // let messageSuccessfulOperation = '';

    const router = useRouter();

    const createTask = (data) =>{
      console.log('submit押された');
        axios
          .post('/tasks', data)
          .then(response =>{
            console.log(response)
          })

      // this.messageSuccessfulOperation = '送信完了!'

        router.push({path: '/tasks', query: {info: '作成完了!'}});
      }
    
    // return {message, messageSuccessfulOperation}
    return {message, createTask};
  }
  ,

    // methods: {
    //  createTask(data){
    //     console.log('submit押された');
    //     axios
    //       .post('/tasks', data)
    //       .then(response =>{
    //         console.log(response)
    //       })

    //   // this.messageSuccessfulOperation = '送信完了!'

    //     this.$router.push({path: '/tasks', query: {info: '作成完了!'}});
    //   }
    // }
    // ,
    computed: {
      seeingProperty(){
        console.log(this.taskTitle);
        console.log(this.taskContent);
      }
    }
  

  // data() {
  //   return {
  //     message: 'this is new',
  //     task: {
  //       title: '',
  //       content: ''
  //     },
  //     messageSuccessfulOperation: ''
  //   }
  // },
  // created() {
  // },
  // methods: {
  //   createTask(data){
  //     console.log('submit押された');
  //     axios
  //       .post('/tasks', data)
  //       .then(response =>{
  //         console.log(response)
  //       })

  //     // this.messageSuccessfulOperation = '送信完了!'

  //     this.$router.push({path: '/tasks', query: {info: '作成完了!'}});
  //   }
  // },
  // computed: {
  //   seeingProperty(){
  //     console.log(this.taskTitle);
  //     console.log(this.taskContent);
  //     return
  //   }
  // }

}

</script>