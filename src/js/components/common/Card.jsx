import { useState } from "react";
import styled from "styled-components";

const CardWrapper = styled.div`
	position: relative;
`;

//스타일 컴포넌트의 네이밍은 피그마를 참고했습니다
const CardImage = styled.img`
	position: relative;
	${(props) => {
		switch (props.size) {
			case "LARGE":
				return `
                width: 384px;
                height: 384px;
            `;
			case "MEDIUM":
				return `
                width: 308px;
                height: 308px;
            `;
			case "SMALL":
				return `
                width: 160px;
                height: 160px;
            `;
			default:
				return;
		}
	}}
	border-radius: 5px;
	filter: ${(props) => (props.isHover ? "brightness(40%)" : "brightness(100%)")};
	margin-bottom: 16px;
`;
const CardInfo = styled.div`
	display: flex;
	flex-direction: column;
	align-items: flex-start;
	padding: 0px;
	position: static;

	margin-bottom: 8px;
`;
const CardName = styled.div`
	position: static;
	font-family: Noto Sans KR;
	font-style: normal;
	font-weight: normal;
	font-size: 16px;
	line-height: 23px;
	color: #333333;

	margin-bottom: 8px;
`;
const CardBody = styled.div`
	position: static;
	font-family: Noto Sans KR;
	font-style: normal;
	font-weight: normal;
	font-size: 14px;
	line-height: 20px;
	color: #828282;
`;
const CardPrice = styled.div`
	display: flex;
	flex-direction: row;
	align-items: flex-end;
	padding: 0px;
	position: static;
	width: 148px;
	height: 29px;
	left: 0px;
	top: 467px;

	margin-bottom: 16px;
`;
const CardPrice1 = styled.div`
	position: static;
	font-family: Noto Sans KR;
	font-style: normal;
	font-weight: bold;
	font-size: 20px;
	line-height: 29px;
	color: #010101;
	flex: none;
	order: 0;
	flex-grow: 0;
	margin-right: 8px;
`;
const CardPrice2 = styled.div`
	position: static;
	font-family: Noto Sans KR;
	font-style: normal;
	font-weight: normal;
	font-size: 14px;
	line-height: 20px;
	text-decoration-line: line-through;
	color: #bdbdbd;
`;
const CardTag = styled.ul`
	display: flex;
	flex-direction: row;
	align-items: flex-start;
	padding: 0px;

	position: static;
`;

//따로 import해와서 붙이자
const Tag = styled.li`
	display: flex;
	flex-direction: row;
	align-items: center;
	justify-content: center;

	position: static;
	width: 97px;
	height: 28px;
	background: #82d32d;
	border-radius: 5px;
`;
const TagText = styled.div`
	position: static;

	font-family: Noto Sans KR;
	font-style: normal;
	font-weight: bold;
	font-size: 14px;
	line-height: 20px;

	color: #ffffff;

	margin: 0px 10px;
`;
const CardHover = styled.ul`
	position: absolute;
	padding-inline-start: 0px;
	${(props) => {
		switch (props.size) {
			case "LARGE":
				return `
                height: 103px;
                top: 140px;
                left: 144px;
            `;
			case "MEDIUM":
				return `
                height:103px;
                top:102px;
                left:106px;
            `;
			case "SMALL":
				return ``;
			default:
				return;
		}
	}}
	display: flex;
	align-items: flex-start;
	justify-content: space-between;
	flex-direction: column;
	color: white;
	list-style: none;

	font-family: Noto Sans KR;
	font-style: normal;
	font-weight: bold;
	font-size: 24px;
	line-height: 35px;
`;

const Card = ({ image, title, description, n_price, s_price, badge, size, delivery_type }) => {
	const [isHover, setHover] = useState(false);
	return (
		<CardWrapper>
			<div onMouseEnter={() => setHover(true)} onMouseLeave={() => setHover(false)}>
				<CardImage src={image} size={size} isHover={isHover}></CardImage>
				<CardHover size={size}>{isHover ? delivery_type.map((e) => <li key={e}>{e}</li>) : ""}</CardHover>
			</div>
			<CardInfo>
				<CardName>{title}</CardName>
				<CardBody>{description}</CardBody>
			</CardInfo>
			<CardPrice>
				<CardPrice1>{n_price ? n_price + "원" : s_price}</CardPrice1>
				<CardPrice2>{n_price ? s_price : ""}</CardPrice2>
			</CardPrice>
			<CardTag>
				{badge?.map((e) => (
					<Tag key={e}>
						<TagText>{e}</TagText>
					</Tag>
				))}
			</CardTag>
		</CardWrapper>
	);
};

export default Card;
