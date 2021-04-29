import React from 'react';
import styled from 'styled-components';


const RecommendItem = ({value}) => {


    return(
    <ItemStyle>
        <div className="img"></div>
        <div className="title">{value}</div>
        <div className="price">5,000원</div>
        </ItemStyle>);
}

export default RecommendItem;

const ItemStyle = styled.div`
    width: 160px;

    .img {
        height: 160px;
        background-color: #7bcfcf;
    }

    .title {

    }

    .price {
        font-size: 0.9rem;
    }
   
`