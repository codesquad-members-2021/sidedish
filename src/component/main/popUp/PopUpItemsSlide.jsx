import styled from "styled-components";
import { DicoJsonCarousel } from "../../util/dj-slider/DicoJsonCarousel";
import { useMainItemsContext } from "../../Context";
import ItemCard from "../../util/ItemCard";

const PopUpItemsSlideStyle = styled.div`
    padding: 1rem 3rem;
    background-color: #f2f2f2;
    & > h2 {
        font-size: 1.25rem;
    }
    .carousel-arrows {
        width: 100%;
        display: block;
        text-align: right;
        top: -3rem;
        left: 1rem;
        & > * {
            display: inline-block;
            font-size: 1rem;
        }
    }
    .carousel-count {
        position: absolute;
        right: 1.375rem;
        top: -2.1875rem;
        font-size: 0.875rem;
    }
`;

export default function PopUpItemsSlide () {
    const options = {
        perPanel: 5,
        count: true,
    };
    const getSalePrice = (price, discountRate) => {
        return price - price * (discountRate / 100);
    };
    const items = useMainItemsContext();
    const childs = items[Math.floor(Math.random() * items.length)].childs;
    return (
        <PopUpItemsSlideStyle>
            <h2>함께하면 더욱 맛있는 상품</h2>
            <DicoJsonCarousel options={options}>
                {
                    childs.map((item, idx) => 
                      <ItemCard
                        src={item.main_image}
                        title={item.title}
                        description={item.description}
                        salePrice={getSalePrice(item.price, item.discount)}
                        normalPrice={item.price}
                        labels={item.label}
                        key={idx}
                        id={item._id}
                        mini={true}
                      />
                    )
                }
            </DicoJsonCarousel>
        </PopUpItemsSlideStyle>
    )
}

/*
SlideArrows 스타일
SlideArrows {
    width: 100%;
    left: 0;
    display: block;
    text-align: right;
    top: -3rem;
    z-index: 1;
}
SlideArrow {
    display: inline-block;
    font-size: 0.8rem;
}
*/