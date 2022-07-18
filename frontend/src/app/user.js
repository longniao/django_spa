class userStore{

  logined = localStorage.logined || false;
  token = localStorage.token || "";
  email = localStorage.email || "";

  login(token, email){
    localStorage.setItem("logined", true);
    localStorage.setItem("token", token);
    localStorage.setItem("email", email);
  }

  logout() {
    localStorage.setItem("logined", false);
    localStorage.removeItem("token");
    localStorage.removeItem("email");
  }

};

const userstore = new userStore();

export default userstore;