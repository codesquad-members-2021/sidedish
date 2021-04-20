import React from "react";
import styled from "styled-components";
import { cssFlexStartCol } from "../../common/CommonStyledCSS";

const StyledDropdownMenu = styled.div`
    ${cssFlexStartCol};
    padding: 16px;
    background-color: ${({theme}) => theme.colors.white};
    box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5), 0px 2px 4px rgba(0, 0, 0, 0.25);
    backdrop-filter: blur(4px);
`;

const DropdownMenu = () => {
  return (
    <StyledDropdownMenu>
        <span>TEST1</span>
        <span>TEST2</span>
    </StyledDropdownMenu>
  );
};

export default DropdownMenu;
