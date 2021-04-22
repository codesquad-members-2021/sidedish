import { useState, useEffect } from "react";
import styled from "styled-components";
import theme from "../../utils/styles/theme";
import Card from "../../utils/Card";

const tempUrl = "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/main";

const TabSection = (props) => {
  const [activeTab, setActiveTab] = useState(0);
  const [bestSidedishes, setBestSidedishes] = useState([]);

  useEffect(() => {
    const request = async () => {
      const response = await fetch(tempUrl);
      const json = await response.json();
      setBestSidedishes(json.body);
    };
    request();
  }, []);

  const handleTab = (id) => {
    setActiveTab(id);
  };

  return (
    <>
      <SectionTitle>후기가 증명하는 베스트 반찬</SectionTitle>
      <TabList>
        {bestSidedishes.map((item, i) => (
          <button onClick={() => handleTab(i)}>{item.name}</button>
        ))}
        {/* map Tab */}
      </TabList>
      <TabContent>
        <CardList>
          {/* map Card */}
          {bestSidedishes[activeTab].items.map((item) => (
            <Card product={item} cardSize={theme.cardSizes.L} />
          ))}
        </CardList>
      </TabContent>
    </>
  );
};

const TabList = styled.ul`
  border: 1px solid black;
`;

const TabContent = styled.div`
  border: 1px solid red;
`;

const CardList = styled.ul`
  border: 1px solid blue;
`;

const SectionTitle = styled.div`
  font-size: ${(props) => props.theme.fontSizes.XL};
  font-weight: bold;
  color: ${(props) => props.theme.darkGray}
  margin: 20px 0;
`;

export default TabSection;
