import { FaAngleLeft, FaAngleRight } from 'react-icons/fa';
import styled from 'styled-components';

const Arrow = ({ size, direction }) => {
  const LARGE = '2.5rem';
  const SMALL = '1rem';
  return {
    RIGHT: (
      <RightArrow>
        <FaAngleRight size={size === 'L' ? LARGE : SMALL} />
      </RightArrow>
    ),
    LEFT: (
      <LeftArrow>
        <FaAngleLeft size={size === 'L' ? LARGE : SMALL} />
      </LeftArrow>
    ),
  }[direction];
};

export default Arrow;

const ArrowWrap = styled.div`
  color: #bdbdbd;
  &:hover {
    color: #333333;
  }
  top: 50%;
  position: absolute;
  z-index: 2;
`;

const RightArrow = styled(ArrowWrap)`
  right: -4rem;
`;

const LeftArrow = styled(ArrowWrap)`
  left: -4rem;
`;
