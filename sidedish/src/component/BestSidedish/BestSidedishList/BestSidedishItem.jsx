import React from 'react';

const BestSidedishItem = ({
  item: { detail_hash, image, alt, delivery_type, title, description, n_price, s_price, badge },
}) => {
  return (
    <>
      <div className="image"></div>
      <div className="title">{title}</div>
      <div className="description">{description}</div>
      <div className="price">
        <span className="normalPrice">{n_price}</span>
        <span className="salePrice">{s_price}</span>
      </div>
      {badge.length &&
        badge.map((item, i) => (
          <div key={i} className="badge">
            {item}
          </div>
        ))}
    </>
  );
};

export default BestSidedishItem;
