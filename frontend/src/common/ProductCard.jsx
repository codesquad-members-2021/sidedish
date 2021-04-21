import styled from 'styled-components'
import Tag from './Tag'

const StyledCard = styled.div`
    width: ${({size}) => size === 'large' ? '384px' : '308px'};
    img {
        width: ${({size}) => size === 'large' ? '384px' : '308px'};
        height: ${({size}) => size === 'large' ? '384px' : '308px'};
    }
    .card__title {
        margin-top: 16px; 
        font-size: 16px;
        line-height: 23px;
        color: #333;
    }
    .card__description {
        margin-top: 8px;
        font-size: 14px;
        line-height: 20px;
        color: #828282;
    }
    .card__price {
        margin-top: ${({size}) => size === 'large' ? '16px' : '8px'};
        margin-bottom: 16px;
        display: flex;
        & > span:last-child {
            font-size: 14px;
            line-height: 20px;
            color: #bdbdbd;
            text-decoration: line-through;
            margin-top: 6px;
        }
        & > span:first-child {
            margin: 0 8px 0 0;
            font-size: 20px;
            font-weight: bold;
            line-height: 28px;
            color: #010101;
            text-decoration: none;
        }
    }
`

const ProductCard = ({size, item}) => {
    const handleErrorImg = ({target}) => {
        // 임시로 일단 넣어놓음!!!
        target.src = "https://lh3.googleusercontent.com/proxy/CwzkOI8yxysQSV_hUBti1oFzBMWC0L--WlWMuQTmGVD6vXxcreDtzf_KSRK9S3AZULzJeqXtuIY8q9C7CgqCCYbNP5DDJWTJW1RSEQsUrXQ3HEFqCw7rmDejN3AyktOa_29tPxodPpD6Z4a2ZugJEgLCqgvemqMubdg9T2gebw1baKmqRD-_sMW2a7Xdqd4tUPcvF1-YS7IH8HiHW6O8zgMZn8KwLF6W-HlX8pxe1gtc1cdZ23txv0EdZGJLsZLnN7XKhNKTdWMWgDf8dqVaRNCVoBz7_CeX53VvERa2JonqyITxC8Mipoybiw"
    }
    return (
            <StyledCard size={size}>
                <img src={item.image} alt={item.alt} onError={handleErrorImg}/>
                <div className="card__title">{item.title}</div>
                <div className="card__description">{item.description}</div>
                <div className="card__price">
                    <span>{item.s_price}</span>
                    {item.n_price && <span className="card__sale_price">{item.n_price}원</span>}    
                </div>
                {item.badge && item.badge.map(type => <Tag key={item.detail_hash} type={type} />)}
            </StyledCard> 
    ) 
}

export default ProductCard