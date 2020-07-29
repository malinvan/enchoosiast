import Masonry from "masonry-layout"
import imagesLoaded from "imagesloaded"

const masonry = () => {
  var grid = document.querySelector('.grid');
  if (grid) {
    var msnry;
    imagesLoaded(grid, (inst) => {
      // init Isotope after all images have loaded
      setTimeout(() => {
        msnry = new Masonry( grid, {
          itemSelector: '.grid-item',
          columnWidth: 195,
          percentPosition: true,
          gutter: 30,
        });
      }, 400);
    });
  };
}
export { masonry };
