import * as S from "../../DetailModalStyles";
import * as CS from "../../../Styles/commonStyles";

const DeliveryContents = ({ contents, deliveryDescription }) => {
  let content;
  typeof contents === "number"
    ? (content = `${contents.toLocaleString()}원`)
    : (content = contents);
  return (
    <S.DeliveryContentsWrapper>
      <CS.ColorFont.GRAY2_S_NORMAL>{content}</CS.ColorFont.GRAY2_S_NORMAL>
      <S.DeliveryDescriptionWrapper>
        <CS.ColorFont.GRAY2_S_BOLD>
          {deliveryDescription}
        </CS.ColorFont.GRAY2_S_BOLD>
      </S.DeliveryDescriptionWrapper>
    </S.DeliveryContentsWrapper>
  );
};

export default DeliveryContents;
