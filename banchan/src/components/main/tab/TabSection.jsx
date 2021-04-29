import { useState } from "react";
import styled from "styled-components";
import useFetch from "../../../hooks/useFetch";
import Card from "../../componentUtils/card/Card";
import { CenterContainer } from "../../componentUtils/styles/common";
import {
  Button,
  SectionTitle,
  CardList,
} from "../../componentUtils/styles/common";

const tempUrl =
  "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/best";

const TabSection = (props) => {
  const [activeTab, setActiveTab] = useState(0);

  const { products, loading, error } = useFetch({ url: tempUrl });

  const handleTab = (id) => {
    setActiveTab(id);
  };

  if (error) return <div>error</div>;

  return loading ? (
    <div>로딩중..</div>
  ) : (
    <CenterContainer>
      <TabContainer>
        <SectionTitle>후기가 증명하는 베스트 반찬</SectionTitle>
        <TabList>
          {products &&
            products.body.map((item, i) => (
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
            {products &&
              products.body[activeTab].items.map((item) => (
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
  font-weight: ${(props) => props.activated && "bold"};
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
