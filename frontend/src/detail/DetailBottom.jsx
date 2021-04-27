import styled from 'styled-components';

const DetailBottom = () => {
  return (
    <StyledDetailBottom> Bottom </StyledDetailBottom>
  );
};

export default DetailBottom;

// --- Styled Components ---
const StyledDetailBottom = styled.div`
    padding: 48px;
    border-radius: 0 0 5px 5px;
    background-color: ${({theme}) => theme.colors.gray6 || "#F5F5F7" };
`;