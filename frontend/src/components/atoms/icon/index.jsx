import React from 'react';
import styled from 'styled-components';
import { ReactComponent as searchSVG } from '../../../images/search.svg';
import { ReactComponent as closeSVG } from '../../../images/close.svg';
import { ReactComponent as downSVG } from '../../../images/down.svg';
import { ReactComponent as upSVG } from '../../../images/up.svg';
import { ReactComponent as leftSVG } from '../../../images/left.svg';
import { ReactComponent as rightSVG } from '../../../images/right.svg';

const Icon = props => {
  const IconWrapper = styled.div`
    cursor: pointer;
  `;

  const IconSvg = () => {
    const defaultSetting = `
  width: ${props._width};
  height: ${props._width};
  stroke: ${props._color};
  position:${props._position};
  right:${props._right};
  top:${props._top};
  margin:${props._margin};
  `;

    switch (props._type) {
      case 'DownIcon':
        const DownIcon = styled(downSVG)`
          ${defaultSetting}
        `;
        return <DownIcon />;
      case 'UpIcon':
        const UpIcon = styled(upSVG)`
          ${defaultSetting}
        `;
        return <UpIcon />;
      case 'CloseIcon':
        const CloseIcon = styled(closeSVG)`
          ${defaultSetting}
        `;
        return <CloseIcon />;
      case 'SearchIcon':
        const SearchIcon = styled(searchSVG)`
          ${defaultSetting}
        `;
        return <SearchIcon />;
      case 'RightIcon':
        const RighthIcon = styled(rightSVG)`
          ${defaultSetting}
        `;
        return <RighthIcon />;
      case 'LeftIcon':
        const LeftIcon = styled(leftSVG)`
          ${defaultSetting}
        `;
        return <LeftIcon />;
      default:
        break;
    }
  };

  return (
    <IconWrapper
      onClick={() => {
        if (props.moveSlide && (props._type === 'LeftIcon' || 'RightIcon')) {
          props.moveSlide(props._type);
        }
        if (props.onClose && props._type === 'CloseIcon') {
          props.onClose();
        }
      }}
    >
      <IconSvg />
    </IconWrapper>
  );
};

export default Icon;
