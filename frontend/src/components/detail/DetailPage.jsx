import styled from 'styled-components';
import { theme, Button } from '../style/Theme';
import ItemPrice from '../atomic/ItemPrice';
import Badge from '../atomic/Badge';
import Loading from '../state/Loading';
import Modal from '../Modal';
import React, { useState, useRef } from 'react';
import Error from '../state/Error';
import useFetch from '../useFetch';
import Recommend from './Recommend';

function DetailPage({
	loadingState,
	detailData,
	modalMode,
	setModalState,
	item,
	badges,
	hash,
}) {
	const {
		topImage,
		stock,
		nPrice,
		sPrice,
		thumbImages,
		productDescription,
		point,
		deliveryInfo,
		deliveryFee,
	} = detailData;
	const [topImgUrl, setTopImg] = useState(topImage);
	const [order, setOrderCount] = useState(1);
	const [dbstock, setDBstock] = useState(stock);
	const orderPrice = sPrice ? sPrice : nPrice;
	const handleOrderClick = () => {
		const orderFetch = () => {
			fetch(process.env.REACT_APP_API_URL + 'order', {
				method: 'PATCH',
				headers: { 'Content-Type': 'application/json' },
				body: JSON.stringify({ hash, order }),
			})
				.then((res) => res.json())
				.then((res) => setDBstock(res.stock));
		};
		orderFetch();
		setModalState(!modalMode);
	};

	return (
		<Modal {...{ modalMode, setModalState }}>
			{loadingState ? (
				<Loading width="960px" height="568px" />
			) : detailData === 400 ? (
				<Error></Error>
			) : (
				<>
					<RepresentativeBlock className="MODAL">
						<ImageBlock>
							<IMG image={topImgUrl} size="L" />
							<DetailBlock>
								{thumbImages.map((el, idx) => (
									<IMG key={idx} image={el} onClick={() => setTopImg(el)}></IMG>
								))}
							</DetailBlock>
						</ImageBlock>
						<ItemDetailInfo>
							<ItemTitle>{item}</ItemTitle>
							<ItemDesc>{productDescription}</ItemDesc>
							<FlexBox>
								<Badge data={badges}></Badge>
								<ItemPrice
									type={'basic'}
									sPrice={sPrice}
									nPrice={nPrice}
								></ItemPrice>
							</FlexBox>
							<img src="./longUnderLine.png" alt="underline"></img>
							<PointDeliveryInfoBlock>
								<ItemDesc>적립</ItemDesc>
								<DetailText>{point}</DetailText>
								<ItemDesc>배송정보</ItemDesc>
								<DetailText>{deliveryInfo}</DetailText>
								<ItemDesc>배송비</ItemDesc>
								<DetailText>{deliveryFee}</DetailText>
							</PointDeliveryInfoBlock>
							<img src="./longUnderLine.png" alt="underline"></img>
							<FlexBlock>
								<ItemDesc>수량</ItemDesc>
								<NumInput
									type="number"
									value={order}
									placeholder="1"
									min="1"
									max={dbstock}
									onChange={(e) => setOrderCount(+e.target.value)}
								></NumInput>
							</FlexBlock>
							<img src="./longUnderLine.png" alt="underline"></img>
							<FlexBlock>
								<DetailText>총 주문금액</DetailText>
								<ItemPrice
									type={'basic'}
									nPrice={`${orderPrice * order}`}
								></ItemPrice>
							</FlexBlock>

							<OrderBtn onClick={handleOrderClick} disabled={!Boolean(stock)}>
								{stock ? '주문하기' : '상품 준비중'}
							</OrderBtn>
						</ItemDetailInfo>
					</RepresentativeBlock>
					<Recommend />
				</>
			)}
		</Modal>
	);
}

export default React.memo(DetailPage);
const RepresentativeBlock = styled.div`
	display: flex;
	margin: 48px;
`;
const FlexBlock = styled.div`
	display: flex;
	justify-content: space-between;
	align-items: flex-end;
`;
const ImageBlock = styled.div`
	margin-right: 32px;
`;
const IMG = styled.div`
	width: ${(props) => {
		return props.size === 'L' ? '392px' : '72px';
	}};
	height: ${(props) => {
		return props.size === 'L' ? '392px' : '72px';
	}};
	background-image: url(${(props) => props.image});
	background-size: cover;
	margin-bottom: 8px;
`;
const DetailBlock = styled.div`
	width: 392px;
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr 1fr;
	grid-gap: 8px;
`;
const ItemDetailInfo = styled.div``;
const FlexBox = styled.div`
	display: flex;
	align-items: flex-end;
`;
const PointDeliveryInfoBlock = styled.div`
	display: grid;
	grid-template-columns: 60px 364px;
	grid-gap: 16px;
`;
const ItemTitle = styled.span`
	font-size: ${theme.fontSize.large};
	font-weight: Bold;
	margin-bottom: 16px;
	&:hover {
		text-decoration: underline;
	}
`;
const DetailText = styled.div`
	color: ${theme.colors.deep_grey_text};
`;
const ItemDesc = styled.div`
	font-size: ${theme.fontSize.medium};
	color: ${theme.colors.grey_text};
	margin-bottom: 16px;
`;
const OrderBtn = styled(Button)`
	color: ${theme.colors.white};
	font-size: ${theme.fontSize.large};
	background-color: ${(props) =>
		props.disabled ? theme.colors.grey_text : theme.colors.green};
	width: 440px;
	height: 58px;
	margin-top: 20px;
	box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5),
		0px 2px 4px rgba(0, 0, 0, 0.25);
	backdrop-filter: blur(4px);
	border-radius: 5px;
	cursor: ${(props) => (props.disabled ? 'default' : 'pointer')};
`;
const NumInput = styled.input`
	padding: 5px 0 5px 5px;
	height: 14px;
`;
