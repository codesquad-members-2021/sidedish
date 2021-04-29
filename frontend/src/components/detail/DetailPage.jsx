import styled from 'styled-components';
import { theme, Button } from '../style/Theme';
import ItemPrice from '../atomic/ItemPrice';
import Badge from '../atomic/Badge';
import Loading from '../state/Loading';
import Modal from '../Modal';
import { useState, useRef } from 'react';
import React from 'react';
import Error from '../state/Error';
import Carousel from '../category/Carousel';
import { VscChevronLeft, VscChevronRight } from 'react-icons/vsc';

const RepresentativeBlock = styled.div`
	display: flex;
	margin: 48px;
`;

const ImageBlock = styled.div`
	margin-right: 32px;
`;
const MainIMG = styled.div`
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
const DetailIMG = styled.div`
	width: 72px;
	height: 72px;
	background-image: url(${(props) => props.image});
	background-size: cover;
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
const ItemTitleDetails = styled.span`
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
const ItemDescDetails = styled.div`
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
	box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5),
		0px 2px 4px rgba(0, 0, 0, 0.25);
	backdrop-filter: blur(4px);
	border-radius: 5px;
	cursor: ${(props) => (props.disabled ? 'default' : 'pointer')};
`;

const ItemDetailCards = styled.div``;
const DetailCard = styled.div`
	width: 900px;
	height: 100%;
	background-image: url(${(props) => props.card});
`;
const FooterSection = styled.div`
	width: 100%;
	background-color: ${theme.colors.green};
`;

function DetailPage({
	loadingState,
	detailData,
	modalMode,
	setModalState,
	item,
	badges,
}) {
	const [topImg, setTopImg] = useState(detailData.topImage);
	const [orderCount, setOrderCount] = useState(1);
	const orderPrice = detailData.sPrice ? detailData.sPrice : detailData.nPrice;
	// const orderCount = useMemo(() => setOrderCount(orderCount로직), [orderCount ])
	const button = useRef();
	const handleLeft = () => {
		button.current.slideToLeft();
	};
	const handleRight = () => {
		button.current.slideToRight();
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
							<MainIMG image={topImg} size="L" />
							<DetailBlock>
								{detailData.thumbImages.map((el, idx) => (
									<DetailIMG
										key={idx}
										image={el}
										onClick={() => setTopImg(el)}
									></DetailIMG>
								))}
							</DetailBlock>
						</ImageBlock>
						<ItemDetailInfo>
							<ItemTitleDetails>{item}</ItemTitleDetails>
							<ItemDescDetails>{detailData.productDescription}</ItemDescDetails>
							<FlexBox>
								<Badge data={badges}></Badge>
								<ItemPrice
									sPrice={detailData.sPrice}
									nPrice={detailData.nPrice}
								></ItemPrice>
							</FlexBox>
							<img src="./longUnderLine.png" alt="underline"></img>
							<PointDeliveryInfoBlock>
								<ItemDescDetails>적립</ItemDescDetails>
								<DetailText>{detailData.point}</DetailText>
								<ItemDescDetails>배송정보</ItemDescDetails>
								<DetailText>{detailData.deliveryInfo}</DetailText>
								<ItemDescDetails>배송비</ItemDescDetails>
								<DetailText>{detailData.deliveryFee}</DetailText>
							</PointDeliveryInfoBlock>
							<img src="./longUnderLine.png" alt="underline"></img>

							<ItemDescDetails>수량</ItemDescDetails>
							<input
								type="number"
								value={orderCount}
								placeholder="1"
								min="1"
								max={detailData.stock}
								onChange={(e) => setOrderCount(e.target.value)}
							></input>
							<img src="./longUnderLine.png" alt="underline"></img>
							<DetailText>총 주문금액</DetailText>
							<ItemPrice nPrice={orderPrice * orderCount}></ItemPrice>
							<OrderBtn
								onClick={() => setModalState(!modalMode)}
								disabled={!Boolean(detailData.stock)}
							>
								{detailData.stock ? '주문하기' : '상품 준비중'}
							</OrderBtn>
						</ItemDetailInfo>
					</RepresentativeBlock>
					<ItemDetailCards>
						{detailData.detailSection.map((card, idx) => (
							<DetailCard card={card} key={idx}></DetailCard>
						))}
					</ItemDetailCards>
					<FooterSection>
						<ButtonLeft onClick={handleLeft}>
							<VscChevronLeft />
						</ButtonLeft>

						<Carousel
							width={960}
							count={5}
							duration={'.5s'}
							ref={button}
							effect={'ease-in-out'}
						>
							<div>1</div>
							<div>2</div>
							<div>3</div>
							<div>4</div>
							<div>5</div>
						</Carousel>

						<ButtonRight onClick={handleRight}>
							<VscChevronRight />
						</ButtonRight>
					</FooterSection>
				</>
			)}
		</Modal>
	);
}

export default React.memo(DetailPage);

// : categoryData === 400 ? (
// 	<Error></Error>
// )
const ButtonLeft = styled(Button)``;
const ButtonRight = styled(Button)``;
