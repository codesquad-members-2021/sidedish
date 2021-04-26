import styled from "styled-components";

const NavigationsStyle = styled.div`
  display: grid;
  grid-template-columns: repeat(3, 10rem);
  grid-gap: 1rem;
  font-size: 1rem;
  font-weight: 400;
  text-align: center;
  a {
    cursor: pointer;
  }
  a:hover {
    font-weight: 600;
  }
`;

const NavigationStyle = styled.div`
  position: relative;
  a:hover + ul {
    opacity: 1;
    transition-delay: 0s;
  }
  ul {
    list-style: none;
    padding: 0;
    opacity: 0;
    width: 100%;
    text-align: center;
    position: absolute;
    transition: opacity 0.15s linear;
    transition-delay: 0.2s;
    box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
    background-color: #fff;
    z-index: 1;
    &:hover {
      opacity: 1;
      transition-delay: 0s;
    }
    li {
      padding: 0.5rem 1rem;
      cursor: pointer;
      color: #555;
      &:hover {
        text-decoration: underline;
        color: #333;
      }
    }
  }
`;

export default function Navigations() {
  return (
    <NavigationsStyle>
      <NavigationStyle>
        <a>든든한 메인요리</a>
        <ul>
          <li>육류 요리</li>
          <li>해산물 요리</li>
        </ul>
      </NavigationStyle>
      <NavigationStyle>
        <a>뜨끈한 국물요리</a>
        <ul>
          <li>국/탕/찌개</li>
        </ul>
      </NavigationStyle>
      <NavigationStyle>
        <a>정갈한 밑반찬</a>
        <ul>
          <li>나물/무침</li>
          <li>조림/볶음</li>
          <li>절임/장아찌</li>
        </ul>
      </NavigationStyle>
    </NavigationsStyle>
  );
}
