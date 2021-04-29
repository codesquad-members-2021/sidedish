import styled from 'styled-components';
import { COLOR_LIGHTYELLOW, DEFAULT, SIZE_LARGE } from 'const';
import useFetch from 'customHooks/useFetch';
import Card from 'components/card/Card';

const TabMain = ({ tabItemList, setModalState, modalData, setModalData }) => {
  const imgData = useFetch(
    `https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/main`,
    []
  );

  if (!tabItemList.items) return <div>No data...</div>;
  if (!imgData) return <div>No data...</div>;

  return (
    <TabMainBoxDiv>
      {tabItemList.items.map((item) => {
        return (
          <Card
            item={item}
            cardSize={SIZE_LARGE}
            detail_hash={item.detail_hash}
            key={item.detail_hash}
            imgUrl={item.image}
            setModalState={setModalState}
            modalData={modalData}
            setModalData={setModalData}
            cardType={DEFAULT}
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
