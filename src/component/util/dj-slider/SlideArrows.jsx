import styled from "styled-components";
import { FaChevronLeft, FaChevronRight } from "react-icons/fa";
import { usePageContext } from './DJSlider';

const SlideArrowsStyle = styled.div`
    position: absolute;
    width: calc(100% + 7rem);
    top: calc(50% - 4rem);
    left: -3.5rem;
    z-index: -1;
    display: flex;
    justify-content: space-between;
    & > * {
        padding: 1rem;
        line-height: 1rem;
        font-size: 1.25rem;
        cursor: pointer;
    }
`;
const SlideLeftArrow = styled.div`
    opacity: ${(props) => props.active ? 1 : 0.5};
    user-select: ${(props) => props.active ? 'initial' : 'none'};
    pointer-events: ${(props) => props.active ? 'initial' : 'none'};
`;
const SlideRightArrow = styled.div`
    opacity: ${(props) => props.active ? 1 : 0.5};
    user-select: ${(props) => props.active ? 'initial' : 'none'};
    pointer-events: ${(props) => props.active ? 'initial' : 'none'};
`;

export default function SlideArrows({ setPage, loop, maxPage }) {
    const page = usePageContext();
    const onMovePage = count => {
        const sum = page + count;
        if(sum > -1 && sum < maxPage + 1) {
            setPage(sum);
        }
    }
    return (
        <SlideArrowsStyle>
            <SlideLeftArrow onClick={() => onMovePage(-1)} active={loop || page > 1}><FaChevronLeft/></SlideLeftArrow>
            <SlideRightArrow onClick={() => onMovePage(1)} active={loop || page < maxPage}><FaChevronRight/></SlideRightArrow>
        </SlideArrowsStyle>
    )
}