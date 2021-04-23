import * as S from "../../DetailModalStyles";

const DeliveryContents = ({ contents }) => {
  return (
    <S.DeliveryContents fontSize={16} lineHeight={23}>
      {contents}
    </S.DeliveryContents>
  );
};

export default DeliveryContents;
