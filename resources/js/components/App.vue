<template>
    <div class="container">
    <router-link to="/add" tag="button" class="mt-3 btn btn-success"> Add new user</router-link>
        <div class="row justify-content-center">
            <div class="mt-2 col-md-8">

              <transition :duration="200" name="selim" mode="out-in">
                <router-view></router-view>
              </transition>

              </div>
        </div>
    </div>
</template>
<style media="screen">

  .selim-enter , .selim-leave-active{
        opacity: 0;
        transform : translate(40px);
  }

  .selim-enter-active , .selim-leave-active{
        transition : all .2s


}

  /* PE PEA PL PLA */

</style>
<script>
    export default {

        created(){
              this.$store.dispatch('initUser')
        }

    }
</script>
