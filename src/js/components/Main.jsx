import { useState } from "react";
import styled from "styled-components";
import Header from "./Header/Header";
import BestList from "./BestList/BestList";
import Modal from "./Modal/Modal";

const Wrapper = styled.div`
	filter: ${(props) => (props.isModalOn ? "brightness(40%)" : "brightness(100%)")};
	background-color: #fff;
	margin-left: 40px;
`;

const Main = () => {
	const [modalData, setModalData] = useState();
	const [isModalOn, setModalOn] = useState(false);
	return (
		<>
			<Wrapper isModalOn={isModalOn}>
				<Header />
				<BestList setModalData={setModalData} setModalOn={setModalOn} />
			</Wrapper>
			<Modal data={modalData} isModalOn={isModalOn} setModalOn={setModalOn} />
		</>
	);
};

export default Main;
