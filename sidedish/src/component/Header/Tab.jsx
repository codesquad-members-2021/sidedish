import React, { useState } from 'react';
import styled from 'styled-components';

const Tab = ({ item: { title, subMenu } }) => {
  const [isHover, setIsHover] = useState(false);

  const handleMouseEnter = () => {
    setIsHover(true);
  };

  const handleMouseLeave = () => {
    setIsHover(false);
  };

  const subMenuList = subMenu.map((item, i) => (
    <div className="subMenuItem" key={i}>
      {item}
    </div>
  ));
  return (
    <TabStyle onMouseEnter={handleMouseEnter} onMouseLeave={handleMouseLeave}>
      <div className="title">{title}</div>
      <div
        onMouseEnter={handleMouseEnter}
        onMouseLeave={handleMouseLeave}
        className={isHover ? 'subMenu' : 'subMenu hidden'}
      >
        {subMenuList}
      </div>
    </TabStyle>
  );
};

export default Tab;

const TabStyle = styled.li`
  position: relative;

  .title {
    margin: 1rem 0;
  }
  .subMenu {
    width: 7rem;
    padding: 1rem;
    position: absolute;
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5), 0px 2px 4px rgba(0, 0, 0, 0.25);
  }

  .subMenuItem {
    margin-bottom: 0.5rem;
  }
  .subMenuItem:last-child {
    margin-bottom: 0;
  }

  .subMenuItem:hover {
    text-decoration: underline;
  }

  .hidden {
    display: none;
  }
`;
