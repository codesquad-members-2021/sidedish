import { theme, AlignTextCenter } from "../Theme";
import styled from "styled-components";
const BadgeWrapper = styled.div`
  display: flex;
`;
const BadgeIcon = styled(AlignTextCenter)`
  width: 97px;
  height: 28px;
  margin-top: 20px;
  margin-right: 20px;
  background-color: ${(props) => {
    return props.val === "이벤트특가"
      ? theme.colors.green
      : theme.colors.skyblue_badge;
  }};
  color: ${theme.colors.white};
  font-weight: Bold;
  font-size: ${theme.fontSize.small};
  border-radius: 10px;
`;

function Badge({ data }) {
  return (
    <BadgeWrapper>
      {data &&
        data.map((el, idx) => (
          <BadgeIcon key={idx} val={el}>
            {el}
          </BadgeIcon>
        ))}
    </BadgeWrapper>
  );
}

export default Badge;
