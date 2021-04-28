import React from 'react';
import InfoImages from '../molecules/InfoImages';
import InfoGeneral from '../molecules/InfoGeneral';
import InfoPrice from '../molecules/InfoPrice';
import InfoProduct from '../molecules/InfoProduct';
import InfoQuantity from '../molecules/InfoQuantity';

const Details = () => {
  return (
    <>
      <div>
        <InfoImages></InfoImages>
      </div>
      <div>
        <InfoGeneral></InfoGeneral>
        <InfoPrice></InfoPrice>
        <InfoProduct></InfoProduct>
        <InfoQuantity></InfoQuantity>
      </div>
    </>
  );
};

export default Details;
