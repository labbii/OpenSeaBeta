import React from "react";
import Header from "./Header";
import Footer from "./Footer";
import "bootstrap/dist/css/bootstrap.min.css";
import Item from "./Item";
import Minter from "./Minter";

function App() {

  // const NFT_ID = "rrkah-fqaaa-aaaaa-aaaaq-cai";

  return (
    <div className="App">
      <Header />
      {/*<Minter />*/}
      {/*<Item id={NFT_ID}/>*/}
     
      <Footer />
    </div>
  );
}

export default App;
