import Button from './index';
import React from 'react';

const ButtonTypes = props => {
  switch (props) {
    case 'default':
      return (
        <>
          <Button default>주문하기</Button>
        </>
      );
    case 'deactive':
      return (
        <>
          <Button deactive>일시품절</Button>
        </>
      );
    default:
  }
};

export default ButtonTypes;
