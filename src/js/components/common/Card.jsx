import { useState } from "react";
import styled, { ThemeProvider } from "styled-components";
import Badge from "./Badge";

const theme = {
	sizes: {
		LARGE: "384px",
		MEDIUM: "308px",
	},
	hoverTop: {
		LARGE : "140px",
		MEDIUM : "102px",
	},
	hoverLeft: {
		LARGE : "144px",
		MEDIUM : "106px",
	}
};

const CardWrapper = styled.li`
	position: relative;
	font-family: Noto Sans KR;
	font-style: normal;
	font-weight: normal;
`;

//스타일 컴포넌트의 네이밍은 피그마를 참고했습니다
const CardImage = styled.img`
	position: relative;
	width:${({ theme: { sizes }, size }) => sizes[size]};
	height:${({ theme: { sizes }, size }) => sizes[size]};
	border-radius: 5px;
	filter: ${(props) => (props.isHover ? "brightness(40%)" : "brightness(100%)")};
	margin-bottom: 16px;
`;
const CardInfo = styled.div`
	width:${({ theme: { sizes }, size }) => sizes[size]};
	display: flex;
	flex-direction: column;
	align-items: flex-start;
	padding: 0px;
	position: static;
	margin-bottom: 8px;
`;
const CardName = styled.div`
	position: static;
	font-size: 16px;
	line-height: 23px;
	color: #333;
	margin-bottom: 8px;
`;
const CardBody = styled.div`
	position: static;
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
	height: 29px;
	left: 0px;
	top: 467px;
	margin-bottom: 16px;
`;
const CardPrice1 = styled.div`
	font-weight: bold;
	font-size: 20px;
	line-height: 29px;
	color: #010101;
	margin-right: 8px;
`;
const CardPrice2 = styled.div`
	font-size: 14px;
	line-height: 20px;
	text-decoration-line: line-through;
	color: #bdbdbd;
`;
const CardHover = styled.ul`
	position: absolute;
	top:${({ theme: { hoverTop }, size }) => hoverTop[size]};
	left:${({ theme: { hoverLeft }, size }) => hoverLeft[size]};
	height:103px;
	display: flex;
	align-items: flex-start;
	justify-content: space-between;
	flex-direction: column;
	color: white;
	list-style: none;
	font-weight: bold;
	font-size: 24px;
	line-height: 35px;
`;

const Card = (props) => {
	const { detail_hash, image, title, description, n_price, s_price, badge, size, delivery_type } = props;
	const { setModalData, setModalOn } = props;
	const [isHover, setHover] = useState(false);
	const [src, setSrc] = useState(image);
	const clickHandler = () => {
		fetch(`https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/detail/${detail_hash}`)
			.then((res) => res.json())
			.then((json) => {
				if (!json.hash) return;
				json.data.name = title;
				json.data.badge = badge;
				setModalData(() => json);
				setModalOn(true);
			});
	};
	return (
		<ThemeProvider theme={theme}>
			<CardWrapper>
				<div onMouseEnter={() => setHover(true)} onMouseLeave={() => setHover(false)} onClick={clickHandler}>
					<CardImage src={src} size={size} isHover={isHover} onError={() => setSrc("https://codesquad.kr/img/company/codesquad2.png")}></CardImage>
					<CardHover size={size}>{isHover ? delivery_type.map((e) => <li key={e}>{e}</li>) : ""}</CardHover>
				</div>
				<CardInfo size={size}>
					<CardName>{title}</CardName>
					<CardBody>{description}</CardBody>
				</CardInfo>
				<CardPrice>
					<CardPrice1>{n_price ? n_price + "원" : s_price}</CardPrice1>
					<CardPrice2>{n_price ? s_price : ""}</CardPrice2>
				</CardPrice>
				{badge ? <Badge badge={badge} /> : ""}
			</CardWrapper>
		</ThemeProvider>
	);
};

export default Card;
