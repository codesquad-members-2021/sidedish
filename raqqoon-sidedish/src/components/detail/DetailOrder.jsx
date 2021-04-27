import styled from 'styled-components';
import { RiArrowDropUpLine, RiArrowDropDownLine } from 'react-icons/ri';

const LongLine = () => {
  return <LongLineBox />;
};

const Arrow = ({ plusCount, minusCount }) => {
  return (
    <ArrowBox>
      <ArrowButton onClick={plusCount}>
        <RiArrowDropUpLine />
      </ArrowButton>
      <LongLine />
      <ArrowButton onClick={minusCount}>
        <RiArrowDropDownLine />
      </ArrowButton>
    </ArrowBox>
  );
};

const Number = ({ orderCount, plusCount, minusCount }) => {
  return (
    <NumberBox>
      <NumberInput value={orderCount} />
      <Arrow {...{ plusCount, minusCount }} />
    </NumberBox>
  );
};

const DetailOrder = ({ orderCount, plusCount, minusCount }) => {
  return (
    <TextBox>
      <LabelBox>수량</LabelBox>
      <Number {...{ orderCount, plusCount, minusCount }} />
    </TextBox>
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
  cursor: pointer;
`;

const ArrowButton = styled.div`
  display: flex;
  justify-content: center;
  align-items: center;
  width: 28px;
  height: 21px;
  color: #333;
  &:hover {
    background: #fffcdb;
    transition: 0.4s;
  }
  &:active {
    background: #fff7b2;
    transition: 0.4s;
  }
`;

const LongLineBox = styled.div`
  width: 28px;
  height: 1px;
  background: #e0e0e0;
`;
