import Masonry from "masonry-layout"

const masonry = () => {
  var elem = document.querySelector('.grid');
  if (elem) {
    var msnry = new Masonry( elem, {
    // options
      itemSelector: '.grid-item',
      columnWidth: 200
    });
  };
  console.log(msnry)
}

export { masonry };
