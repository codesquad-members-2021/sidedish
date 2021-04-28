import { useEffect, useState } from "react";
import styled from "styled-components";

const ThumbNail = (props) => {
	const [topImage, setTopImage] = useState(props.top_image);
	const clickThumbNail = ({ target }) => setTopImage(() => target.currentSrc);
	useEffect(() => setTopImage(props.top_image), [props]);
	return (
		<ThumbNailWrapper>
			<TopImage src={topImage} />
			<ThumbImages>
				{[...props.thumb_images, "", "", "", "", ""].slice(0, 5).map((e, i) => (
					<ThumbImage key={props.top_image + i}>{!e || <img src={e} alt={i} onClick={clickThumbNail} />}</ThumbImage>
				))}
			</ThumbImages>
		</ThumbNailWrapper>
	);
};

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

export default ThumbNail;
