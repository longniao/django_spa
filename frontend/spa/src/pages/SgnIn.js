import React from "react";

function SignIn() {
  return (

      <form class="needs-validation" novalidate="">

      <h1 class="h5 mb-3 fw-normal">Please sign in</h1>

          <div class="row">
            <div class="col-sm-12">
              <div class="form-floating">
                <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com"/>
                <label for="floatingInput">Email address</label>
              </div>  
              </div>

            <div class="col-sm-12">
              <div class="form-floating">
                <input type="password" class="form-control" id="floatingPassword" placeholder="Password" />
                <label for="floatingPassword">Password</label>
              </div>

            </div>

            <div class="col-sm-12 pt-3">
              <button class="w-100 btn btn-outline-secondary" type="submit">Sign in</button>
            </div>

          </div>
        </form>

  );
}

export default SignIn;