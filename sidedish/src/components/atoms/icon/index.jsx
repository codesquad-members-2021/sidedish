import React from 'react';
import styled from 'styled-components';
import { ReactComponent as searchSVG } from '../../../images/search.svg';
import { ReactComponent as closeSVG } from '../../../images/close.svg';
import { ReactComponent as downSVG } from '../../../images/down.svg';
import { ReactComponent as upSVG } from '../../../images/up.svg';
import { ReactComponent as leftSVG } from '../../../images/left.svg';
import { ReactComponent as rightSVG } from '../../../images/right.svg';

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
