import styled from "styled-components";

const CardWrapper = styled.div`
	color: red;
`;

const CardImage = styled.img``;
const CardInfo = styled.div``;
const CardName = styled.div``;
const CardBody = styled.div``;
const CardPrice = styled.div``;
const CardPrice1 = styled.div``;
const CardPrice2 = styled.div``;

const Card = ({ image, title, description, n_price, s_price }) => {
	return (
		<CardWrapper>
			<CardImage></CardImage>
			<CardInfo>
				<CardName>{title}</CardName>
				<CardBody>{description}</CardBody>
			</CardInfo>
			<CardPrice>
				<CardPrice1>{n_price}</CardPrice1>
				<CardPrice2>{s_price}</CardPrice2>
			</CardPrice>
			<div>배지</div>
		</CardWrapper>
	);
};

export default Card;
