import React from 'react';
import styled from 'styled-components';

const DishHover = ({ delivery_type, size }) => {
  const deliveryMsg = delivery_type.reduce((acc, msg, idx) => {
    acc.push(
      <div key={idx} className="deliveryMsg">
        {msg}
      </div>
    );
    if (idx !== delivery_type.length - 1) {
      acc.push(<div key={`${msg}divider`} className="divider"></div>);
    }
    return acc;
  }, []);

  return (
    <StyledDishHover className="delivery" size={size}>
      {deliveryMsg}
    </StyledDishHover>
  );
};

export default DishHover;

const StyledDishHover = styled.div`
  position: absolute;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  width: ${({ size }) => (size === 'L' ? '384px' : '308px')};
  height: ${({ size }) => (size === 'L' ? '384px' : '308px')};
  background-color: rgba(0, 0, 0, 0.6);
  border-radius: 5px;
  color: ${({ theme: { colors } }) => colors.white};
  .deliveryMsg {
    font-size: 1.4rem;
    font-weight: 700;
  }
  .divider {
    width: 89px;
    height: 1px;
    margin: 16px 0;
    background-color: ${({ theme: { colors } }) => colors.white};
  }
`;
