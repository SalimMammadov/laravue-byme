<template>
<tr>
  <td>{{user.id}}</td>
  <td>{{user.name}}</td>
  <td>{{user.email}}</td>

    <td>
        <router-link :to="{name:'updateuser',params:{user : user}}" tag="button" class="btn btn-warning">Edit</router-link>
      <button @click="deleteuser(user.id)" type="button" class="btn btn-danger" name="button">Delete</button>
    </td>

</tr>
</template>

<script type="text/javascript">

  export default {

    props : ['user'],
    methods : {

      deleteuser(id){
         var x =confirm("Silinsin mi ?")
         if(x)
        this.$store.dispatch('deleteUser',id)

      }

    }

  }

</script>
