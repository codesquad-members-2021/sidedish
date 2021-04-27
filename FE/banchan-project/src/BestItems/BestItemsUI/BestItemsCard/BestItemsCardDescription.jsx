import * as S from "../../BestItemsStyles";
import * as CS from "../../../Styles/commonStyles";
const BestItemsCardDescription = ({ description }) => {
  return (
    <>
      <CS.ColorFont.GRAY3_XS_NORMAL>{description}</CS.ColorFont.GRAY3_XS_NORMAL>
    </>
  );
};

export default BestItemsCardDescription;
