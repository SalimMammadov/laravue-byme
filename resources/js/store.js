import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'

Vue.use(Vuex);
const store = new Vuex.Store({

  state : {

    users : [],
    errors : [],
  },
  mutations : {
      initUser(state, users){
          state.users = users
      },

      addUser(state,users){
            state.users.push(users);
      },
      deleteUser(state,userid){

        let index = state.users.findIndex(i => {return i.id == userid});
        state.users.splice(index,1)

      },
      updateUser(state,user){

            let index = state.users.findIndex(i => {return i.id == user.id})
              if(index > -1){
              state.users[index] = user
            }

      },

      searchUser(state,users){
            state.users = users
      },

  },
  actions : {

    initUser({commit}){
      axios.get("/user")
      .then(response => {commit('initUser',response.data)});
    },

    ///////

    addUser({commit},users){
      this.state.errors = []
      axios.post("user",users)
      .then((response) => {commit('addUser',response.data)}).catch(error =>{
        if(error.response.status == 422)
         {
         this.state.errors.push(error.response.data.errors)
        }
       })

    },
    deleteUser({commit},id){
      axios.delete('/user/' +id ,id).then(response => {commit('deleteUser',id)})
    },
    updateUser({commit},user){

        axios.put('/user/' +user.id ,user).then(response => {commit('updateUser',user)})

    },

    searchUser({commit},user){
      axios.post('/user/search',{name : user}).then(response => {commit('searchUser',response.data)})
    },

  },

  getters : {
    users(state){
      return state.users
    },
    errors(state){
      return state.errors
    }
  },

});

export default store
