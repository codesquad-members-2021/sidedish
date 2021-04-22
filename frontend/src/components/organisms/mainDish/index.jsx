import React, { useState, useEffect, useRef } from "react";
import { CardStyle, WrapCard, WrapMain } from "./index.style";
import MediumCard from "../../molecules/MediumCard";
import Icon from "../../atoms/Icon";
import UseFetch from "../../../util/useFetch";

const MainDish = () => {
  const [data, setData] = useState([]);

  UseFetch(setData, "mainDish");

  const Cards = () => {
    debugger;
    return data.map((card, i) => (
      <MediumCard
        key={i}
        _image={card.image}
        _title={card.title}
        _description={card.description}
        _nPrice={card.n_price}
        _sPrice={card.s_price}
        _badge={card.badge}
      ></MediumCard>
    ));
  };

  return (
    <>
      <WrapMain>
        <Icon _width="32px" _height="32px" _color="#BDBDBD" _type="LeftIcon" />
        <WrapCard>
          <CardStyle>
            <Cards />
          </CardStyle>
        </WrapCard>
        <Icon
          _width="32px"
          _height="32px"
          _color="#BDBDBD"
          _type="RighthIcon"
        />
      </WrapMain>
    </>
  );
};

export default MainDish;
