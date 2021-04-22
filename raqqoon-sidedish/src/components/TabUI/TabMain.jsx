import styled from 'styled-components';
import { COLOR_LIGHTYELLOW, SIZE_LARGE } from 'const';
import useFetch from 'customHooks/useFetch';
import Card from 'components/card/Card';

const TabMain = ({ tabItemList }) => {
  const imgData = useFetch(
    `https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/main`,
    []
  );

  const randomIndex = (list) =>
    Math.floor(Math.random() * (list.length - 0) + 0);

  if (!tabItemList.items) return <div>No data...</div>;
  if (!imgData) return <div>No data...</div>;

  // const imgList = [
  //   imgData[randomIndex(imgData)].image,
  //   imgData[randomIndex(imgData)].image,
  //   imgData[randomIndex(imgData)].image,
  // ];
  return (
    <TabMainBoxDiv>
      {tabItemList.items.map((item, idx) => {
        return (
          <Card
            type={SIZE_LARGE}
            item={item}
            key={item.detail_hash}
            imgUrl={item.image}
          />
        );
      })}
    </TabMainBoxDiv>
  );
};

export default TabMain;

const TabMainBoxDiv = styled.div`
  display: flex;
  justify-content: space-evenly;
  background: ${COLOR_LIGHTYELLOW};
  padding: 40px 0;
  box-shadow: 0px 1px 30px rgba(224, 224, 224, 0.3);
  border-radius: 0px 5px 5px 5px;
`;
