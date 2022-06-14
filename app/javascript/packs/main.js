// import {createApp} from 'vue/dist/vue.esm-bundler';
// import App from './app.vue'

// createApp(App).mount('#app')

// import spa from './spa.vue'
// createApp(spa).mount("#app")

import { createApp } from 'vue'
import { router } from './router'
import Spa from './app.vue'
const app = createApp(Spa)
app.use(router)
app.mount("#app")