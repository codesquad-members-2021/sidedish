import styled from 'styled-components';
import { RiArrowDropUpLine, RiArrowDropDownLine } from 'react-icons/ri';

const LongLine = () => {
  return <LongLineBox />;
};

const Arrow = () => {
  return (
    <ArrowBox>
      <ArrowButton>
        <RiArrowDropUpLine />
      </ArrowButton>
      <LongLine />
      <ArrowButton>
        <RiArrowDropDownLine />
      </ArrowButton>
    </ArrowBox>
  );
};

const Number = () => {
  return (
    <NumberBox>
      <NumberInput />
      <Arrow />
    </NumberBox>
  );
};

const DetailOrder = () => {
  return (
    <div>
      <TextBox>
        <LabelBox>수량</LabelBox>
        <Number>52원</Number>
      </TextBox>
    </div>
  );
};

export default DetailOrder;

const TextBox = styled.div`
  display: flex;
  justify-content: space-between;
  align-items: center;
`;

const LabelBox = styled.div`
  margin: 8px 0;
  font-size: 16px;
  line-height: 23px;
  color: #828282;
`;

const NumberBox = styled.div`
  display: flex;
  width: 85px;
  height: 41px;
`;

const NumberInput = styled.input`
  width: 57px;
  height: 41px;
  border: 1px solid #e0e0e0;
  border-right: none;
  outline: none;
  text-align: center;
`;

const ArrowBox = styled.div`
  display: flex;
  flex-direction: column;
  border: 1px solid #e0e0e0;
`;

const ArrowButton = styled.div`
  display: flex;
  justify-content: center;
  align-items: center;
  width: 28px;
  height: 21px;

  color: #333;
`;

const LongLineBox = styled.div`
  width: 28px;
  height: 1px;
  background: #e0e0e0;
`;
