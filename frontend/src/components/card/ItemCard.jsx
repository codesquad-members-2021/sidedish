import styled from 'styled-components';
import { useState } from 'react';
import { theme } from '../style/Theme';
import ItemTitle from '../atomic/ItemTitle';
import ItemPrice from '../atomic/ItemPrice';
import Badge from '../atomic/Badge';
import DetailPage from '../detail/DetailPage';
import useFetch from '../useFetch';
import Card from '../atomic/Card';
import Img from '../atomic/Img';
function ItemCard({ itemData, size, padding }) {
	const {
		detailHash,
		alt,
		badges,
		description,
		image,
		sPrice,
		nPrice,
	} = itemData;
	const detailUrl = process.env.REACT_APP_API_URL + 'detail/';
	const [detailFetchUrl, setDetailFetchUrl] = useState(null);
	const [modalMode, setModalState] = useState(false);

	const handleClick = (hash) => {
		setModalState(!modalMode);
		setDetailFetchUrl(detailUrl + hash);
	};

	const [{ data }, loadingState] = useFetch(detailFetchUrl, 'get');

	return (
		<>
			{modalMode && !loadingState && (
				<DetailPage
					{...{ loadingState, modalMode, setModalState, badges }}
					detailData={data}
					hash={detailHash}
					item={alt}
				></DetailPage>
			)}
			<Card size={size} padding={padding}>
				<ClickArea onClick={() => handleClick(detailHash, badges)}>
					<Img size={size} image={image} alt={alt}>
						<DeliveryBlock>
							<div>새벽배송</div>
							<img style={imgPosition} src="./line.png" alt="line"></img>
							<div>전국택배</div>
						</DeliveryBlock>
					</Img>

					<ItemTitle type={'basic'}>{alt}</ItemTitle>
					<ItemDesc>{description}</ItemDesc>
				</ClickArea>
				<ItemPrice type={'basic'} sPrice={sPrice} nPrice={nPrice}></ItemPrice>

				<Badge data={badges}></Badge>
			</Card>
		</>
	);
}

export default ItemCard;

const ItemDesc = styled.div`
	font-size: ${theme.fontSize.small}px;
	color: ${theme.colors.grey_text};
	margin-bottom: 16px;
	&:hover {
		text-decoration: underline;
	}
`;

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
const ClickArea = styled.div`
	cursor: pointer;
`;
