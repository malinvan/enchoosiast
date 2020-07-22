function openNav() {
  document.getElementById("mySidenav") .style.width="250px";
  document.querySelector(".hide-box").style.display = "block";
}

function closeNav() {
  document.getElementById("mySidenav") .style.width = "0";
  document.getElementById("main") .style.marginLeft= "0";
  document.querySelector(".hide-box").style.display = "none";
}

function initNavbar() {

  if (document.getElementById("mySidenav")){
    document.querySelector(".hide-box").style.display = "none";
    document.getElementById("nav-close").addEventListener("click", closeNav);
    document.getElementById("nav-open").addEventListener("click", openNav);
  }
}

export {initNavbar};
