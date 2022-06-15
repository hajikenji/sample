<template>
  <div class="">
    <Form v-bind:messageSuccessfulOperation="messageSuccessfulOperation" v-bind:message="message"
       v-on:sendingData="receivingData" />
  </div>
</template>

<script>

import Form from './form/Form.vue';
  
  export default {
    name: 'Update',
    components: {
      Form
    }
    ,
    data(){
      return {
        message: 'this is update',
        messageSuccessfulOperation: '',
        task: {
          title: '',
          content: ''
        },
      }
    },

    methods: {
      receivingData(data){
        let sendToApi = {task: data}
        console.log(this.$route.params);
        axios
          .patch(`/tasks/${this.$route.params.id}`, sendToApi);

        // this.messageSuccessfulOperation = '更新完了!';

        this.$router.push({path: '/tasks', query: {info: '更新完了!'}});
      }
    }
  }


</script>