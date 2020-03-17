<template>

      <div class="">
        <search/>
        <div v-if="$store.getters.users.length <= 0 " class="mt-3 alert alert-primary">
        <strong>    There is no user...</strong>
        </div>

        <table v-else class="mt-3 table table-hover table-striped table-dark shadow-lg">
            <thead>
              <th>id</th>
              <th>Name</th>
              <th>Email</th>
              <th>Action</th>
            </thead>
            <tbody>
                <user v-for="user in users" :key="user.id" :user="user" />
            </tbody>
        </table>
      </div>


</template>

<script>
    export default {

      computed : {
        users(){
          return this.$store.getters.users
        }
      },


    }
</script>
