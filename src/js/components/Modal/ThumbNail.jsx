import { useEffect, useState } from "react";
import styled from "styled-components";

const ThumbNailWrapper = styled.div`
	position: relative;
	width: 392px;
	height: 472px;
	left: 48px;
	top: 48px;
`;

const TopImage = styled.img`
	width: 392px;
	height: 392px;
	margin-bottom: 8px;
`;

const ThumbImages = styled.ul`
	display: flex;
	flex-direction: row;
	justify-content: space-between;
`;
const ThumbImage = styled.li`
	width: 72px;
	height: 72px;
	img {
		width: 100%;
		height: 100%;
	}
	background: #f5f5f7;
	border-radius: 5px;
`;
//length가 5가될때까지
const ThumbNail = (props) => {
	const { top_image, thumb_images } = props.data;
	const [topImage, setTopImage] = useState();
	const [thumbImages, setThumbImages] = useState([]);
	const clickHandler = ({target}) => setTopImage(()=>target.currentSrc)
	useEffect(() => {
		setTopImage(() => top_image);
		setThumbImages(() => {
			const foo = [...thumb_images];
			while (foo.length < 5) foo.push("");
			return foo.map((e, i) => <ThumbImage key={top_image + i}>{e ? <img src={e} alt={i} onClick={clickHandler} /> : ""}</ThumbImage>);
		});
	}, [top_image]);
	return (
		<ThumbNailWrapper>
			<TopImage src={topImage} />
			<ThumbImages>{thumbImages}</ThumbImages>
		</ThumbNailWrapper>
	);
};

export default ThumbNail;
