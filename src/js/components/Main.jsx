import { useState } from "react";
import styled from "styled-components"
import BestList from "./bestList/BestList";
import Modal from "./Modal/Modal";

const Wrapper = styled.div`
	filter: ${(props) => (props.isModalOn ? "brightness(40%)" : "brightness(100%)")};
	background-color : #fff;
`;

const Main = () => {
	const test = {
		data: {
			top_image: "",
			thumb_images: [""],
			product_description: "",
			point: "",
			delivery_info: "",
			delivery_fee: "",
			prices: ["원"],
			detail_section: [],
		},
	};
	const [modalData, setModalData] = useState(test);
	const [isModalOn, setModalOn] = useState(false);
	return (
		<>
			<Wrapper isModalOn={isModalOn}>
				<BestList setModalData={setModalData} setModalOn={setModalOn} />
			</Wrapper>
			<Modal data={modalData.data} isModalOn={isModalOn} setModalOn={setModalOn} />
		</>
	);
};

export default Main;
