const ThumbNails = ({ thumbNails }) => {
  let test;
  thumbNails === undefined ? (test = "") : (test = thumbNails);
  return (
    <>
      {/* {test.map((image, index) => (
        <img key={index} src={image}></img>
      ))} */}
    </>
  );
};

export default ThumbNails;
