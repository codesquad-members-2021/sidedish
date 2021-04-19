import { EVENT, LAUNCHING } from 'const';
import Info from './Info';
import Price from './Price';
import Tag from './Tag';

const TabUI = () => {
  return (
    <>
      {/* data 들어갈 자리 null */}
      <Info name={null} body={null} />
      <Price normal={null} discount={`11,900원`} />
      <Tag type={EVENT} />
      <Tag type={LAUNCHING} />
      <Tag />
    </>
  );
};

export default TabUI;
