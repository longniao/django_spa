import React from "react";

function SignIn() {
  return (

      <form className="needs-validation" noValidate="">

        <h1 className="h5 mb-3 fw-normal">Please sign in</h1>

          <div className="row">
            <div className="col-sm-12">
              <div className="form-floating">
                <input type="email" className="form-control" id="floatingInput" placeholder="name@example.com"/>
                <label htmlFor="floatingInput">Email address</label>
              </div>  
              </div>

            <div className="col-sm-12">
              <div className="form-floating">
                <input type="password" className="form-control" id="floatingPassword" placeholder="Password" />
                <label htmlFor="floatingPassword">Password</label>
              </div>

            </div>

            <div className="col-sm-12 pt-3">
              <button className="w-100 btn btn-outline-secondary" type="submit">Sign in</button>
            </div>

          </div>
        </form>

  );
}

export default SignIn;