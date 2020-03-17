<template id="">

      <div class="col-md-8 ">
      <form @submit.prevent="searchUser()">

        <div class="input-group">
          <input  placeholder="Enter any username"  type="text" class="form-control " v-model.trim="username" >
          <button type="submit" class="ml-2 btn btn-primary">Search</button>
          <button @click="initUsers()" v-if="searched"  class="ml-2 btn btn-danger">Back</button>

        </div>
      </form>

    </div>

</template>
<script type="text/javascript">

    export default {

        data(){
          return {
            username : '',
            searched : false
          }
        },
        methods : {

          initUsers(){
            this.username = '';
            this.searched = false;
            this.$store.dispatch('initUser')
          },

          searchUser()
          {
            if(this.username != ''){
            this.searched = true;
              this.$store.dispatch('searchUser',this.username)
            }
          }
        }

    }

</script>
