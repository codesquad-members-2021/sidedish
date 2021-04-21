import styled from "styled-components";

const LabelStyle = styled.div`
  border-radius: 0.3rem;
  padding: 0.25rem 1rem;
  color: #fff;
  font-size: 0.875rem;
  display: inline-block;
  text-align: center;
  color: ${props => props.color};
  background-color: ${props => props.bgColor};
`;
// #86C6FF, #82D32D
export default function Label({ text, color="#fff", bgColor="#333" }) {
  return <LabelStyle color={color} bgColor={bgColor}>{text}</LabelStyle>
}