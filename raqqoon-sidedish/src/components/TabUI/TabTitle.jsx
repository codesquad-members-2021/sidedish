import styled from 'styled-components';

const TabTitle = () => {
  return <TabTitleBoxDiv>{`후기가 증명하는 베스트 반찬`}</TabTitleBoxDiv>;
};

export default TabTitle;

const TabTitleBoxDiv = styled.div`
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: 700;
  font-size: 24px;
  line-height: 35px;
  color: #333333;
`;
