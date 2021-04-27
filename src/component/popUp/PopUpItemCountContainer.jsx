import styled from 'styled-components';
import { FaAngleUp, FaAngleDown, FaRProject } from 'react-icons/fa';
import { useState } from 'react';


const PopUpItemCountContainerStyle = styled.div`
display: flex;
align-items: center;
justify-content: space-between;
padding: 1.5rem 0;
border-bottom: 1px solid #e0e0e0;
& > *:last-child {
    display: grid;
    grid-template-columns: 5rem 2rem;
    line-height: 0;
}
`;

const PopUpItemCountTitle = styled.div`
color: #828282;
width: 5rem;
`;

const PopUpItemCount = styled.input.attrs({
type: 'text'
})`
font-size: 1rem;
padding: 0rem 1rem;
border: 1px solid #E0E0E0;
text-align: center;
`;

const PopUpItemCountBtns = styled.div`
border: 1px solid #E0E0E0;
border-left: 0px;
`;

const PopUpItemCountBtn = styled.button`
width: 100%;
&:first-child {
    border-bottom: 1px solid #E0E0E0;
}
`;

export default function PopUpItemCountContainer ({ stock }) {
    const [ count, setCount ] = useState(1);

    return (
        <PopUpItemCountContainerStyle>
            <PopUpItemCountTitle>수량</PopUpItemCountTitle>
            <div>
                <PopUpItemCount value={count}></PopUpItemCount>
                <PopUpItemCountBtns>
                    <PopUpItemCountBtn><FaAngleUp/></PopUpItemCountBtn>
                    <PopUpItemCountBtn><FaAngleDown/></PopUpItemCountBtn>
                </PopUpItemCountBtns>
            </div>
        </PopUpItemCountContainerStyle>
    )
}



