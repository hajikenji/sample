import { createRouter, createWebHistory } from 'vue-router';
import Top from './components/Top';
import Spa from './components/spa';
import New from './components/New';

export const router = createRouter ({
  history: createWebHistory(),
  routes: [
    {
      path: '/users',
      name: 'top',
      component: Top
    }
    ,
    {
      path: '/tasks',
      name: 'tasks',
      component: Spa
    }
    ,
    {
      path: '/new',
      name: 'new',
      component: New
    }
  ]
});