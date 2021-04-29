import styled from 'styled-components';
import { useState } from 'react';
import { theme, AlignTextCenter } from './style/Theme';
import DetailPage from './detail/DetailPage';
import useFetch from './useFetch';

function ItemCardSmall({ data, size, height }) {
	const { alt, badges, title, nPrice, sPrice, detailHash, image } = data;
	const detailUrl = process.env.REACT_APP_API_URL + 'detail/';
	const [detailFetchUrl, setDetailFetchUrl] = useState(null);
	const [modalMode, setModalState] = useState(false);

	const handleClick = (hash) => {
		setModalState(!modalMode); //작업중
		setDetailFetchUrl(detailUrl + hash);
	};

	const [detailData, loadingState] = useFetch(detailFetchUrl, 'get');

	return (
		<>
			{modalMode && !loadingState && (
				<DetailPage
					{...{ loadingState, modalMode, setModalState, badges }}
					detailData={detailData.data}
					item={alt}
				></DetailPage>
			)}
			<Card
				className="Card"
				size={size}
				height={height}
				onClick={() => handleClick(detailHash, badges)}
			>
				<IMG size={size} image={image} alt={alt}>
					<DeliveryBlock>
						<div>새벽배송</div>
						<img style={imgPosition} src="./line.png" alt="line"></img>
						<div>전국택배</div>
					</DeliveryBlock>
				</IMG>
				<ItemInfo>
					<ItemTitle>{title}</ItemTitle>
					<ItemPrice>{sPrice ? sPrice : nPrice}원</ItemPrice>
				</ItemInfo>
			</Card>
		</>
	);
}

export default ItemCardSmall;

const DeliveryBlock = styled.div`
	position: relative;
	color: ${theme.colors.white};
	font-size: ${theme.fontSize.larger};
	font-weight: ${theme.fontWeight.bold};
	opacity: 0;
`;
const imgPosition = {
	position: 'relative',
	top: '-7px',
	left: '2px',
};
const ItemInfo = styled.div`
	display: flex;
	flex-direction: column;
	justify-content: space-between;
`;
const Card = styled.div`
	width: ${(props) => {
		return props.size === 'L' ? '384px' : props.size;
	}}px;
	height: ${(props) => props.height}px;
	overflow: hidden;
`;
const ItemTitle = styled.div`
	font-size: ${theme.fontSize.small}px;
	&:hover {
		text-decoration: underline;
	}
`;
const ItemPrice = styled.div`
	font-size: ${theme.fontSize.small};
	font-weight: Bold;
`;
const IMG = styled(AlignTextCenter)`
	width: ${(props) => {
		return props.size === 'L' ? '384px' : props.size;
	}}px;
	height: ${(props) => {
		return props.size === 'L' ? '384px' : props.size;
	}}px;
	background-image: url(${(props) => props.image});
	background-size: cover;
	&:hover {
		background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
			url(${(props) => props.image});
		div {
			opacity: 1;
		}
	}
`;
