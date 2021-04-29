import styled from "styled-components";

const SliderArrowBtnStyle = styled.button`
  font-size: 1.25rem;
  padding: 1rem;
  line-height: 1rem;
  color: #ddd;
  cursor: default;
  &:last-child {
    cursor: pointer;
    color: #555;
    &:hover {
      color: #333;
    }
  }
`;

export default function SliderArrowBtn({children, onClick, }) {
  return (
    <SliderArrowBtnStyle onClick={onClick}>
      {children}
    </SliderArrowBtnStyle>
  )
}