import "./styles/style.scss";
import url from "./util/url";
import loadData from "./util/loadData";
import React, { useState, useEffect } from "react";
import Image from "./components/atoms/image";
import Header from "./components/organisms/Header";
import BestDish from "./components/organisms/BestDish";
function App() {
  // const [bestDish, setBestDish] = useState([]);

  // useEffect(() => {
  //   loadData(setBestDish, url.bestDish);
  // }, []);

  return (
    <div className="App">
      <Header />
      {/* <BestDish />x */}

      {/* {bestDish.map(({ category_id, name, items }) => {
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
      })} */}
    </div>
  );
}

export default App;
