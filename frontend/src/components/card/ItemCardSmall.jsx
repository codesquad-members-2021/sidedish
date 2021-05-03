import styled from 'styled-components';
import { useState } from 'react';
import { theme } from '../style/Theme';
import DetailPage from '../detail/DetailPage';
import useFetch from '../useFetch';
import ItemTitle from '../atomic/ItemTitle';
import ItemPrice from '../atomic/ItemPrice';
import Card from '../atomic/Card';
import Img from '../atomic/Img';

function ItemCardSmall({ data, size, height, padding }) {
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
				padding={padding}
				size={size}
				onClick={() => handleClick(detailHash, badges)}
			>
				<Img {...{ size, height, image, alt }}>
					<DeliveryBlock>
						<div>새벽배송</div>
						<img style={imgPosition} src="./line.png" alt="line"></img>
						<div>전국택배</div>
					</DeliveryBlock>
				</Img>
				<ItemInfo>
					<ItemTitle type={'small'}>{title}</ItemTitle>
					<ItemPrice type={'small'} nPrice={nPrice} sPrice={sPrice}>
						{sPrice ? sPrice : nPrice}원
					</ItemPrice>
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
	margin-top: 8px;
	height: 95px;
`;
