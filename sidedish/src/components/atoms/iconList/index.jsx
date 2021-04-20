import React from 'react';
import styled from 'styled-components';
import { ReactComponent as searchSVG } from '../../../images/search.svg';

const SearchIcon = styled(searchSVG)`
  width: 24px;
  height: 24px;

  path {
    fill: ${props => props.color};
  }
`;

const AddCardButton = ({ id, handleAddButtonClick }) => {
  return <SearchIcon />;
};

export default AddCardButton;
