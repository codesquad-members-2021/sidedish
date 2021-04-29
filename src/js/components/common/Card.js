import { useState } from "react";
import styled, { ThemeProvider } from "styled-components";
import Price from "./CardPrice";
import Badge from "./Badge";

const Card = ({ data, size, setModalOn, setModalData }) => {
	const { detail_hash, image, title, description, n_price, s_price, badge, delivery_type } = data;
	const [isHover, setHover] = useState(false);
	const [src, setSrc] = useState(image);
	const clickImage = (e) => {
		fetch(`https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/detail/${detail_hash}`)
			.then((response) => response.json())
			.then((json) => {
				if (!json.hash) return console.log("error!! : card click - ", json);
				json.data.name = title;
				json.data.badge = badge;
				const modalHeight = 680;
				json.data.y = Math.round(e.pageY - e.clientY + (window.innerHeight - modalHeight) / 2);
				setModalData(() => json.data);
				setModalOn(true);
			})
			.catch((response) => console.log("error!! :", response));
	};
	return size === "SMALL" ? (
		<ThemeProvider theme={theme}>
			<CardWrapper>
				<CardImage src={src} size={size} isHover={isHover} onError={() => setSrc("https://codesquad.kr/img/company/codesquad2.png")} />
				<CardName size={size}>{title}</CardName>
				<Price n_price={n_price} s_price={s_price} size={size}/>
			</CardWrapper>
		</ThemeProvider>
	) : (
		<ThemeProvider theme={theme}>
			<CardWrapper>
				<div onMouseEnter={() => setHover(true)} onMouseLeave={() => setHover(false)} onClick={clickImage}>
					<CardImage src={src} size={size} isHover={isHover} onError={() => setSrc("https://codesquad.kr/img/company/codesquad2.png")} />
					<CardHover size={size}>{isHover && delivery_type.map((e) => <li key={e}>{e}</li>)}</CardHover>
				</div>
				<CardInfo size={size}>
					<CardName>{title}</CardName>
					<CardBody>{description}</CardBody>
				</CardInfo>
				<Price n_price={n_price} s_price={s_price} size={size} />
				{badge && <Badge badge={badge} />}
			</CardWrapper>
		</ThemeProvider>
	);
};

const theme = {
	sizes: {
		LARGE: "384px",
		MEDIUM: "308px",
		SMALL: "160px",
	},
	hoverTop: {
		LARGE: "140px",
		MEDIUM: "102px",
	},
	hoverLeft: {
		LARGE: "144px",
		MEDIUM: "106px",
	},
};

const CardWrapper = styled.li`
	position: relative;
	font-family: Noto Sans KR;
	font-style: normal;
	font-weight: normal;
`;

const CardImage = styled.img`
	position: relative;
	width: ${({ theme: { sizes }, size }) => sizes[size]};
	height: ${({ theme: { sizes }, size }) => sizes[size]};
	border-radius: 5px;
	filter: ${(props) => (props.isHover ? "brightness(40%)" : "brightness(100%)")};
	margin-bottom: 16px;
`;
const CardInfo = styled.div`
	width: ${({ theme: { sizes }, size }) => sizes[size]};
	display: flex;
	flex-direction: column;
	align-items: flex-start;
	padding: 0px;
	position: static;
	margin-bottom: 8px;
`;
const CardName = styled.div`
	position: static;
	width: ${({ theme: { sizes }, size }) => sizes[size]};
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
const CardHover = styled.ul`
	position: absolute;
	top: ${({ theme: { hoverTop }, size }) => hoverTop[size]};
	left: ${({ theme: { hoverLeft }, size }) => hoverLeft[size]};
	height: 103px;
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

export default Card;
