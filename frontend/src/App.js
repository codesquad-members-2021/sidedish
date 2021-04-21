import "./styles/style.scss";
import url from "./util/url";
import loadData from "./util/loadData";
import React, { useState, useEffect } from "react";
import Image from "./components/atoms/image";

function App() {
  const [bestDish, setBestDish] = useState([]);
  // useEffect(() => {
  //   loadData(
  //     setBestDish,
  //     "https://h3rb9c0ugl.execute-api.ap-northeast-2.amazonaws.com/develop/baminchan/best"
  //   );
  // }, []);

  // console.log("데이더", bestDish);
  useEffect(() => {
    loadData(setBestDish, url.bestDish);
  }, []);

  // const Dishes = bestDish.map((dish) => (
  //   <div key={dish.category_id} id={dish.category_id}>
  //     <div>{dish.name}</div>
  //   </div>
  // ));

  return (
    <div className="App">
      {bestDish.map(({ category_id, name, items }) => {
        return (
          <div key={category_id}>
            {name}
            {items.map(({ detail_hash, image, alt, title }) => {
              return (
                <div key={detail_hash}>
                  <Image src={image}></Image>
                  <div>{title}</div>
                </div>
              );
            })}
          </div>
        );
      })}
    </div>
  );
}

export default App;
