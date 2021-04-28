import React from 'react';
import IconButton from '../../../componentUtils/button/IconButton';
import styled from 'styled-components';
import { CenterContainer, ProductBuyInfoTitle } from '../../styles/common';

const ProductCount = ({ count, increaseCount, decreaseCount }) => {
  return (
    <Count>
      <ProductBuyInfoTitle>수량</ProductBuyInfoTitle>
      <ProductBuyCountDiv>
        <CountBox>{count}</CountBox>
        <div>
          <IncDecBtns>
            <IconButton type="UP" fn={increaseCount} />
          </IncDecBtns>
          <IncDecBtns>
            <IconButton type="DOWN" fn={decreaseCount} />
          </IncDecBtns>
        </div>
      </ProductBuyCountDiv>
    </Count>
  );
};

export default ProductCount;

const Count = styled(CenterContainer)`
  justify-content: space-between;
  border-bottom: 1px solid #e0e0e0;
  padding: 25px 0;
  color: ${(props) => props.theme.colors.gray};
`;

const ProductBuyCountDiv = styled(CenterContainer)``;

const IncDecBtns = styled.div`
  display: flex;
  flex-direction: column;
  border: 2px solid #e0e0e0;
  width: fit-content;
  padding: 0 10px;
`;

const CountBox = styled.div`
  width: fit-content;
  border: 2px solid #e0e0e0;
  padding: 15px 25px;
  font-size: ${(props) => props.theme.fontSizes.M};
`;
