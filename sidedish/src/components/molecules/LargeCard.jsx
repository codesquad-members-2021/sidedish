import React from 'react';
import styled from 'styled-components';
import Span from './atoms/span';
const LargeCard = ({ children, ...props }) => (
  <StyledSpan {...props}>{children}</StyledSpan>
);

export default Span;
