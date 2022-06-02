window.addEventListener("turbolinks:load", () => {
  const hamburgerIcon = document.querySelector("#hamburger");
  const menuList = document.querySelector("#list")!;
  hamburgerIcon.addEventListener("click", () => {
    if (menuList.classList.contains("hidden")) {
      menuList.classList.remove("hidden");
      return;
    }
    menuList.classList.add("hidden");
  });
});
