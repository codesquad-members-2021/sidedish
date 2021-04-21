import { useState } from "react";
import BestList from "./bestList/BestList";
import Modal from "./Modal/Modal";

const Main = () => {
	const test = {
		data: {
			top_image: "",
			thumb_images: [""],
			product_description: "",
			point: "",
			delivery_info: "",
			delivery_fee: "",
			prices: ["14000원"],
			detail_section: [],
		},
	};
	const [modalData, setModalData] = useState(test);
	const [isModalOn, setModalOn] = useState(false);
	return (
		<>
			<BestList setModalData={setModalData} setModalOn={setModalOn} />
			<Modal data={modalData.data} isModalOn={isModalOn} setModalOn={setModalOn} />
		</>
	);
};

export default Main;
