import React from "react";
import styled from "styled-components";
import Span from "../../atoms/span";
const Tab = ({ children, ...props }) => {
  // const [bestDish, setBestDish] = useState([]);

  const WrapDiv = styled.div`
    display: flex;
  `;

  // useEffect(() => {
  //   loadData(setBestDish, url.bestDish);
  // }, []);

  return (
    <WrapDiv>
      <Span _title>{props.name}</Span>
    </WrapDiv>
  );
};

export default Tab;
