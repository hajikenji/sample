<template>
  <div class="">
    <p>{{ message }}</p>
    <!-- <p>{{ seeingProperty }}</p> -->
    <form v-on:submit="createTask">
      <input type="text" v-model="taskTitle">
      <br>
      <input type="text-area" v-model="taskContent">
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
      taskTitle: '',
      taskContent: ''
    }
  },
  created() {
    console.log(this.message);
  },
  methods: {
    createTask(){
      
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