import BestItemsTabTitle from "../BestItemsTab/BestItemsTabTitle";

const BestItemsTab = ({ titleList }) => {
  return (
    <>
      <BestItemsTabTitle {...{ titleList }}></BestItemsTabTitle>
    </>
  );
};

export default BestItemsTab;
