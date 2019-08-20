const changeContentTabs = () => {
  const aboutParents = document.getElementById("about-parents");
  const aboutKids = document.getElementById("about-kids");
  const tabCarents = document.getElementById("tab_carents");
  const tabChildren = document.getElementById("tab_children");

    tabCarents.addEventListener('click', (event) => {
      console.log(event);
    });

}

export { changeContentTabs };
