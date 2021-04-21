import styled from 'styled-components';

const StyledEventSpecialBadge = styled.div`
  display: flex;
  align-items: center;
  justify-content: center;
  width: ${props => props.width ?? "97px"};
  height: ${props => props.height ?? "28px"};
  font-weight: 800;
  color: #FFFFFF;
  background-color: #82D32D;
  border-radius: 5px;
`;

function EventSpecialBadge({ text = '이벤트특가', ...props}) {
  return (
    <StyledEventSpecialBadge {...props}>{text}</StyledEventSpecialBadge>
  )
}

export { EventSpecialBadge }