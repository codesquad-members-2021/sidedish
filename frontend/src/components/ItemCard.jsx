import styled from 'styled-components';
import { useState } from 'react';
import { theme, AlignTextCenter } from './style/Theme';
import ItemPrice from './atomic/ItemPrice';
import Badge from './atomic/Badge';
import DetailPage from './detail/DetailPage';
import useFetch from './useFetch';

const Card = styled.div`
	margin-top: 40px;
	width: ${(props) => {
		return props.size === 'L' ? '384px' : '308px';
	}};
`;
const ItemTitle = styled.div`
	font-size: ${theme.fontSize.medium};
	font-weight: Bold;
	margin-bottom: 16px;
	&:hover {
		text-decoration: underline;
	}
`;
const ItemDesc = styled.div`
	font-size: ${theme.fontSize.small};
	color: ${theme.colors.grey_text};
	margin-bottom: 16px;
	&:hover {
		text-decoration: underline;
	}
`;
const IMG = styled(AlignTextCenter)`
	width: ${(props) => {
		return props.size === 'L' ? '384px' : '308px';
	}};
	height: ${(props) => {
		return props.size === 'L' ? '384px' : '308px';
	}};
	margin-bottom: 32px;
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

function ItemCard({ data, size }) {
	const DetailUrl = process.env.REACT_APP_API_URL + 'detail/';
	const [detailFetchUrl, setDetailFetchUrl] = useState(null);
	const [modalMode, setModalState] = useState(false);

	const handleClick = (hash) => {
		setModalState(!modalMode); //작업중
		setDetailFetchUrl(DetailUrl + hash);
	};

	const [detailData, loadingState] = useFetch(detailFetchUrl, 'get');

	return (
		<>
			{modalMode && !loadingState && (
				<DetailPage
					{...{ loadingState, modalMode, setModalState }}
					detailData={detailData.data}
					item={data.alt}
					badges={data.badges}
				></DetailPage>
			)}
			<Card size={size}>
				<ClickArea onClick={() => handleClick(data.detailHash, data.badges)}>
					<IMG size={size} image={data.image} alt={data.alt}>
						<DeliveryBlock>
							<div>새벽배송</div>
							<img style={imgPosition} src="./line.png" alt="line"></img>
							<div>전국택배</div>
						</DeliveryBlock>
					</IMG>

					<ItemTitle>{data.alt}</ItemTitle>
					<ItemDesc>{data.description}</ItemDesc>
				</ClickArea>
				<ItemPrice sPrice={data.sPrice} nPrice={data.nPrice}></ItemPrice>

				<Badge data={data.badges}></Badge>
			</Card>
		</>
	);
}

export default ItemCard;
