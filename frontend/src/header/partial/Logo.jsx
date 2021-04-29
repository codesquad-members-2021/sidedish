import styled from "styled-components";

const Logo = ({ children }) => {
  return <StyledLogo>{children}</StyledLogo>;
};

export default Logo;

// --- Styled Components ---
const StyledLogo = styled.div`
  color: ${({ theme }) => theme.colors.gray1};
  font-family: ${({ theme }) => theme.fontFamily};
  font-weight: ${({ theme }) => theme.fontWeight.bold2};
  font-size: ${({ theme }) => theme.fontSize.XXXL};
  letter-spacing: -0.04em;
  text-transform: uppercase;
`;