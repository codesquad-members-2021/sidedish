import styled from "styled-components";

const LabelStyle = styled.div`
  border-radius: 0.3rem;
  padding: 0.25rem 1rem;
  color: #fff;
  font-size: 0.875rem;
  background-color: #82D32D;
  display: inline-block;
  text-align: center;
`;

export default function Label({ text }) {
  return <LabelStyle>{text}</LabelStyle>
}