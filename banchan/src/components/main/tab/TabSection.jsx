import { useState, useEffect } from 'react';
import styled from 'styled-components';
import Card from '../../componentUtils/card/Card';
import { CenterContainer } from '../../componentUtils/styles/common';
import {
  Button,
  SectionTitle,
  CardList,
} from '../../componentUtils/styles/common';

const tempUrl =
  'https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/best';

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
    <CenterContainer>
      <TabContainer>
        <SectionTitle>후기가 증명하는 베스트 반찬</SectionTitle>
        <TabList>
          {bestSidedishes.length &&
            bestSidedishes.map((item, i) => (
              <TabButton
                onClick={() => handleTab(i)}
                activated={i === activeTab}
              >
                {item.name}
              </TabButton>
            ))}
        </TabList>
        <TabContent>
          <CardList>
            {bestSidedishes.length &&
              bestSidedishes[activeTab].items.map((item) => (
                <Card
                  type="베스트"
                  product={item}
                  cardSize={(props) => props.theme.cardSizes.L}
                  margin={12}
                  onModal={props.onModal}
                />
              ))}
          </CardList>
        </TabContent>
      </TabContainer>
    </CenterContainer>
  );
};

const TabContainer = styled.div``;

const TabButton = styled(Button)`
  background: ${(props) =>
    props.activated
      ? props.theme.colors.whiteBlue
      : props.theme.colors.lightGrayBG};
  color: ${(props) =>
    props.activated ? props.theme.colors.darkGray : props.theme.colors.gray};
  font-weight: ${(props) => props.activated && 'bold'};
  width: 201px;
  height: 58px;
  margin-right: 8px;
  text-align: center;
  border-bottom-left-radius: 0;
  border-bottom-right-radius: 0;
  cursor: pointer;
`;

const TabList = styled.ul``;

const TabContent = styled.div`
  background-color: ${(props) => props.theme.colors.whiteBlue};
  padding: 40px 0;
  width: 1280px;
`;

export default TabSection;
