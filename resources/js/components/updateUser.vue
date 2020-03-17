
      <template>
      <div class="mt-5 container">
          <div class="row justify-content-center">

            <div class="col-md-12">
              <form @submit.prevent = "updateUser()" >
                <div class="form-group">
                  <label for="exampleInputEmail1">Name</label>
                  <input v-model="user.name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Name">
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Email</label>
                  <input v-model="user.email" type="email" class="form-control" id="exampleInputPassword1" placeholder="Email">
                </div>

                  <router-link to="/" class="btn btn-danger" tag="button">Reject</router-link>
                <button type="submit" class="btn btn-success">Update</button>
              </form>
            </div>


          </div>
      </div>
      </template>

    <script type="text/javascript">

        export default {
              data(){
                return {
                user: {
                  id : '',
                  name : '',
                  email : ''
                }
                }
              },
              created(){
                  this.user = this.$route.params.user
              },
          methods : {
              updateUser(){
                    this.$store.dispatch('updateUser',this.user);
                    this.$router.push('/')
              }
          }

        }

    </script>
