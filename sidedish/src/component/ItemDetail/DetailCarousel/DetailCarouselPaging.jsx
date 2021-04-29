import React from 'react';
import styled from 'styled-components';

const DetailCarouselPaging = ({current, total}) => {
    return(
        <>
            <div>{current}</div>
            <div>/</div>
            <div>{total}</div>
        </>
    );
}

export default DetailCarouselPaging;


