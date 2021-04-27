import BestTab from "./bestTab/BestTab.jsx";
import PopUpContainer from "./popUp/PopUpContainer.jsx";
import ShowMoreBtn from "./ShowMoreBtn.jsx";
import SlideContainer from "./slideContainer/SlideContainer.jsx";

export default function Main() {
  return (
    <>
      <BestTab/>
      <SlideContainer/>
      <ShowMoreBtn />
      <PopUpContainer/>
    </>
  );
}