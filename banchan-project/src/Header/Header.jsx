import Logo from "./Logo";
import Navigator from "./Navigator/Navigator";
import SearchBar from "./SearchBar/SearchBar";
import Login from "./Login";
import ShoppingCart from "./ShoppingCart";

const Header = () => {
  return (
    <div>
      <Logo></Logo>
      <Navigator></Navigator>
      <SearchBar></SearchBar>
      <Login></Login>
      <ShoppingCart></ShoppingCart>
    </div>
  );
};

export default Header;
