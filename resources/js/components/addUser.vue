
      <template>
      <div class="mt-5 container">
          <div class="row justify-content-center">

            <div class="col-md-12" >
              <form @submit.prevent = "createUser()" >
                <div class="form-group">
                  <label class="form__label" for="exampleInputEmail1">Name</label>
                  <input v-model.trim="$v.user.name.$model" type="text" class="form__input form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Name">

                    <div v-if="$v.user.name.$anyError">
                  <div class="error" v-if="!$v.user.name.required">Field is required</div>
                  <div class="error" v-if="!$v.user.name.minLength">Name must have at least {{$v.user.name.$params.minLength.min}} letters.</div>
                </div>

                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Email</label>
                  <input v-model.trim="$v.user.email.$model" type="email" class="form-control" id="exampleInputPassword1" placeholder="Email">

                  <div v-if="$v.user.email.$anyError">
                  <div class="error" v-if="!$v.user.email.required">Field is required</div>
                  <div class="error" v-if="!$v.user.email.email">Must be @</div>
                  <div class="error" v-if="!$v.user.email.minLength">Email must have at least {{$v.user.email.$params.minLength.min}} letters.</div>

                </div>

                </div>

                  <router-link to="/" class="btn btn-danger" tag="button">Reject</router-link>
                <button type="submit" class="btn btn-success">Create</button>
                <p v-if="submitStatus" class="mt-2 error"> Please check your inputs </p>
              </form>
            </div>


          </div>
      </div>
      </template>

      <style media="screen">
        .error{
          font-weight: bold;
          color:red;
        }

      </style>

    <script type="text/javascript">

      import { required ,minLength, email } from 'vuelidate/lib/validators'

        export default {
              data(){
                return {

                  submitStatus : false,
                user: {
                  name : '',
                  email : ''
                }
                }
              },
              validations: {
                user: {
                    name: {
                      required,
                      minLength: minLength(4)
                    },
                    email: {
                      email,
                      required,
                      minLength: minLength(7)
                      }
                    }
                    },
          methods : {
            createUser()
            {
                if (this.$v.$invalid) {
                 this.$v.user.name.$touch();
                  this.$v.user.email.$touch()
                  this.submitStatus = true
                  }
                  else{
                        this.submitStatus = false
                          this.$store.dispatch('addUser',this.user)
                          this.$router.push('/')
              }
            }
          }
        }
    </script>
