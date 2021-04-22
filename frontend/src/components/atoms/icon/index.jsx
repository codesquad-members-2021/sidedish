import React from 'react';
import styled from 'styled-components';
import { ReactComponent as searchSVG } from '../../../images/search.svg';
import { ReactComponent as closeSVG } from '../../../images/close.svg';
import { ReactComponent as downSVG } from '../../../images/down.svg';
import { ReactComponent as upSVG } from '../../../images/up.svg';
import { ReactComponent as leftSVG } from '../../../images/left.svg';
import { ReactComponent as rightSVG } from '../../../images/right.svg';

const Icon = props => {
  const defaultSetting = `width: ${props._width};
height: ${props._width};
stroke: ${props._color};
`;

  const DownIcon = styled(downSVG)`
    ${defaultSetting}
  `;

  const UpIcon = styled(upSVG)`
    ${defaultSetting}
  `;

  const CloseIcon = styled(closeSVG)`
    ${defaultSetting}
  `;

  const SearchIcon = styled(searchSVG)`
    ${defaultSetting}
  `;

  const RighthIcon = styled(rightSVG)`
    ${defaultSetting}
  `;

  const LeftIcon = styled(leftSVG)`
    ${defaultSetting}
  `;

  switch (props._type) {
    case 'DownIcon':
      return <DownIcon />;
    case 'UpIcon':
      return <UpIcon />;
    case 'CloseIcon':
      return <CloseIcon />;
    case 'SearchIcon':
      return <SearchIcon />;
    case 'RighthIcon':
      return <RighthIcon />;
    case 'LeftIcon':
      return <LeftIcon />;
    default:
      break;
  }
};

export default Icon;
