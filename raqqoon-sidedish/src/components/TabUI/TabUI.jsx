import Card from 'components/card/Card';
import { SIZE_LARGE, SIZE_MEDIUM } from 'const';

const TabUI = () => {
  return (
    <>
      <Card cardSize={SIZE_LARGE}></Card>
      <Card cardSize={SIZE_MEDIUM}></Card>
    </>
  );
};

export default TabUI;
