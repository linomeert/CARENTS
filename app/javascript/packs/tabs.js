export const changeContentTabs = () => {
  const aboutParents = document.getElementById("about-parents");
  const aboutKids = document.getElementById("about-kids");
  const tabCarents = document.getElementById("tab_carents");
  const tabChildren = document.getElementById("tab_children");

  if(tabCarents){
    tabCarents.addEventListener('click', (event) => {
      console.log(event);
    });
  }

}

