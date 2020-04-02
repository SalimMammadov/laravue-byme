<template id="">

      <div class="col-md-8 ">
      <form @submit.prevent="searchUser()">

          <input @keyup="searchUser()" :class="{borderred : $v.username.$error}"  placeholder="Enter any username"  type="text" class="form-control " v-model.trim="$v.username.$model" >
          <!-- <button type="submit" class="ml-2 btn btn-primary">Search</button> -->
          <!-- <button @click="initUsers()" v-if="searched"  class="ml-2 btn btn-danger">Back</button> -->


        <div v-if="$v.username.$anyError">
        <p v-if="!$v.username.required" class="error mt-2">Input must be full</p>
      </div>
      </form>

        <div class="mt-3 alert alert-info" v-if="searched && $store.getters.users.length > 0">
            <strong> Success ! User find from key of " {{username}} " </strong>
        </div>

    </div>

</template>

<style media="screen">
  .error{
    color:red
  }
  .borderred{
    border:1px solid red;
  }
</style>

<script type="text/javascript">

import { required ,minLength, email } from 'vuelidate/lib/validators'

    export default {

        data(){
          return {
            username : '',
            searched : false
          }
        },

        validations : {
            username : {required}
        },

        methods : {

          initUsers(){
            this.username = '';
            this.searched = false;
            this.$store.dispatch('initUser')
          },

          searchUser()
          {
            this.searched = false;
            this.$v.username.$touch();
            if(!this.$v.username.$invalid){
            this.searched = true;
              this.$store.dispatch('searchUser',this.username);
            }
          }
        }

    }

</script>
