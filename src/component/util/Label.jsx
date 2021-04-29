import styled from "styled-components";

const LabelStyle = styled.div`
  border-radius: 0.3rem;
  padding: 0.25rem 1rem;
  color: #fff;
  font-weight: 600;
  font-size: 0.875rem;
  display: inline-block;
  text-align: center;
  background-color: ${props => props.bgColor};
  margin-right: 0.5rem;
`;
// #86C6FF, #82D32D
const COLOR = {
  "이벤트특가" : "#82D32D",
  "런칭특가" : "#86C6FF",
  "베스트" : "#D980FA",
}

export default function Label({ text }) {
  return <LabelStyle bgColor={COLOR[text]}>{text}</LabelStyle>
}