import { EVENT, LAUNCHING } from 'const';
import Info from './Info';
import Tag from './Tag';

const TabUI = () => {
  return (
    <>
      {/* data 들어갈 자리 null */}
      <Info name={null} body={null} />
      <Tag type={EVENT} />
      <Tag type={LAUNCHING} />
      <Tag />
    </>
  );
};

export default TabUI;
