<!doctype html>
<html lang="en">
  <head>
    <script src="https://kit.fontawesome.com/d51517f7d4.js" crossorigin="anonymous"></script>
    <style>
#button{
  background: #ca9393;
  border:none;
}

.divider:after,
.divider:before {
content: "";
flex: 1;
height: 1px;
background: #eee;
}
.h-custom {
height: calc(100% - 73px);
}
@media (max-width: 450px) {
.h-custom {
height: 100%;
}
}
    </style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  </head>
  <body>
    <section class="vh-100">
        <div class="container-fluid h-custom">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-md-9 col-lg-6 col-xl-5">
              <img src="ban.jpg"
                class="img-fluid" alt="Sample image">
            </div>
            <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
              <form method="post" action="auth.jsp">
                <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
                  <p class="lead fw-normal mb-0 me-3">Sign in with</p>
                  <button type="button" class="btn btn-primary btn-floating mx-1">
                    <i class="fa-brands fa-facebook"></i>
                  </button>
      
                  <button type="button" class="btn btn-primary btn-floating mx-1">
                    <i class="fa-brands fa-twitter"></i>
                  </button>
      
                  <button type="button" class="btn btn-primary btn-floating mx-1">
                    <i class="fa-brands fa-google"></i>
                  </button>
                </div>
      
                <div class="divider d-flex align-items-center my-4">
                  <p class="text-center fw-bold mx-3 mb-0">Or</p>
                </div>
      
                <!-- Email input -->
                <div class="form-outline mb-4">
                  <input type="text" id="form3Example3" name="gmail" class="form-control form-control-lg"
                    placeholder="Enter a valid email address" />
                  <label class="form-label" for="form3Example3">Email address</label>
                </div>
      
                <!-- Password input -->
                <div class="form-outline mb-3">
                  <input type="password" id="form3Example4" name="pass" class="form-control form-control-lg"
                    placeholder="Enter password" />
                  <label class="form-label" for="form3Example4">Password</label>
                </div>
      
                <div class="d-flex justify-content-between align-items-center">
                  <!-- Checkbox -->
                  <div class="form-check mb-0">
                    <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3" />
                    <label class="form-check-label" for="form2Example3">
                      Remember me
                    </label>
                  </div>
                  <a href="#!" class="text-body">Forgot password?</a>
                </div>
      
                <div class="text-center text-lg-start mt-4 pt-2">
                  <input type="submit" class="btn btn-primary btn-lg" id="button"
                    style="padding-left: 2.5rem; padding-right: 2.5rem;"></input>
                  <p class="small fw-bold mt-2 pt-1 mb-0">Don't have an account? <a href="register.jsp"
                      class="link-danger">Register</a></p>
                      <p class="small fw-bold mt-2 pt-1 mb-0">Want to deactivate? <a href="dact.html"
                      class="link-danger">Deactivate Account</a></p>
                      <p class="small fw-bold mt-2 pt-1 mb-0">Change Password?<a href="Account.html"
                      class="link-danger">Change</a></p>
                </div>
              </form>
            </div>
          </div>
        </div>
            <jsp:include page="header.html"/>
      </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  </body>
</html>