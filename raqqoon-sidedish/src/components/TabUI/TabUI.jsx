import { EVENT, LAUNCHING } from 'const';
import Tag from './Tag';

const TabUI = () => {
  return (
    <>
      <Tag type={EVENT} />
      <Tag type={LAUNCHING} />
      <Tag />
    </>
  );
};

export default TabUI;
