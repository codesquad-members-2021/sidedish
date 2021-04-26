import BestItemsTabTitle from "../BestItemsTab/BestItemsTabTitle";

const BestItemsTab = ({ titleList, setBestItemsData }) => {
  return (
    <>
      <BestItemsTabTitle
        {...{ titleList, setBestItemsData }}
      ></BestItemsTabTitle>
    </>
  );
};

export default BestItemsTab;
