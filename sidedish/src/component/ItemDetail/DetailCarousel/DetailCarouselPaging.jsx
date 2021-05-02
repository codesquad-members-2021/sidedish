import React from 'react';
import styled from 'styled-components';

const DetailCarouselPaging = ({current, total}) => {
    return(
        <StyledPaging className="detail_paging">
            <div>{current}</div>
            <div>/</div>
            <div>{total}</div>
        </StyledPaging>
    );
}

export default DetailCarouselPaging;


const StyledPaging = styled.div`
    display: flex;
`
