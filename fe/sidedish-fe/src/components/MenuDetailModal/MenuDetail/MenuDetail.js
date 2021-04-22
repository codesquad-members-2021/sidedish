import React, { useState, useEffect } from 'react';
import styled from 'styled-components';
import Preview from './Preview/Preview.js';
import OrderInfo from './OrderInfo/OrderInfo.js';
import RecommendSlider from './RecommendSlider/RecommendSlider.js';

// FIXME: these are images for test
import rvimg from './MOCK_IMGS/redvelvet.png';
import bpimg from './MOCK_IMGS/blackpink.png';

const MOCK_DATA = {
  "hash": "H9881",
  "data": {
    "top_image": "https://cdn.bmf.kr/_data/product/H9881/910a01a81c49cb75414edb759237501f.jpg",
    "thumb_images": [
      "https://cdn.bmf.kr/_data/product/H9881/910a01a81c49cb75414edb759237501f.jpg",
      "https://cdn.bmf.kr/_data/product/H9881/fbf29077698ca16f8050e43476b47f38.jpg",
      "https://cdn.bmf.kr/_data/product/H9881/c96c6949efc3391148e9b280a2c5ed0b.jpg",
      "https://cdn.bmf.kr/_data/product/H9881/71411e15d2d961df496f87f08648b345.jpg",
      "https://cdn.bmf.kr/_data/product/H9881/437196dacf46b52b11d0bccbc4231558.jpg"
    ],
    "product_description": "경상도 명물 요리 세 가지를 한 상에!",
    "point": "312원",
    "delivery_info": "서울 경기 새벽배송 / 전국택배 (제주 및 도서산간 불가) [화 · 수 · 목 · 금 · 토] 수령 가능한 상품입니다.",
    "delivery_fee": "2,500원 (40,000원 이상 구매 시 무료)",
    "prices": ["39,000원", "31,200원"],
    "detail_section": [
      "https://cdn.bmf.kr/_data/product/H9881/7fb1ddf1adeadc5410cecd79441f7b65.jpg",
      "https://cdn.bmf.kr/_data/product/H9881/b776c59544b516a184d1363c2c802789.jpg",
      "https://cdn.bmf.kr/_data/product/H9881/cc2b4a61db410096db0e3c497096d63f.jpg",
      "https://cdn.bmf.kr/_data/product/H9881/77970960c8efe0992f9746c37062e1e4.jpg",
      "https://cdn.bmf.kr/_data/product/H9881/aa56cec7d2fe4dde0b124c17a06ffda6.jpg",
      "https://cdn.bmf.kr/_data/product/H9881/c9fbe313767400ce21ea83bb2b9d8e96.jpg",
      "https://cdn.bmf.kr/_data/product/H9881/320939f0d0fbe8e4846e20111f1aa4ce.jpg",
      "https://cdn.bmf.kr/_data/product/H9881/5778ae933121c5d131889ecbf5e2874c.jpg",
      "https://cdn.bmf.kr/_data/product/H9881/785291ed7fe3f2a8c7e06f443dea7553.jpg",
      "https://cdn.bmf.kr/_data/product/H9881/92ef47f6efdd0286f6af7f712c3c838d.jpg",
      "https://cdn.bmf.kr/_data/product/H9881/c0319354245ee2963ccb97d60943e8ff.jpg",
      "https://cdn.bmf.kr/_data/product/H9881/07b1864a06f3b0b26af9a7148ac70cfb.jpg",
      "https://cdn.bmf.kr/_data/product/H9881/ba2aba220a55924a00c668dd13c4cee1.jpg"
    ]
  },
};

const StyledMenuDetail = styled.div`
  display: flex;
  flex-direction: column;
  width: 700px;
  height: 800px;
  background-color: #FFFFFF;
  pointer-events: auto;
  border-radius: 5px;
  
  .upper-cont {
    flex: 6.5;
    display: flex;
  }

  .bottom-cont {
    flex: 3.5;
  }
`;

function MenuDetail({ hash, title }) {
  const [data, setData] = useState(); // TODO: apply 'useFetch()'?
  
  useEffect(() => {
    // TODO: fetch data using 'hash'
    setData(MOCK_DATA.data);
  }, []);

  return (
    <StyledMenuDetail>
      {data && <>
        <div className="upper-cont">
          <Preview imgs={[rvimg, bpimg]}/>
          <OrderInfo title={title} data={data}/>
        </div>
        <div className="bottom-cont">
          <RecommendSlider data={data.detail_section}/>
        </div>
      </>}
    </StyledMenuDetail>
  );
};

export default MenuDetail;
