import CartButton from './CartButton';
import LoginButton from './LoginButton';
import Logo from './Logo';
import Search from './Search';
import Tab from './Tab';

const Header = () => {
  const tabList = ['든든한 메인요리', '뜨끈한 국물요리', '정갈한 밑반찬'];
  return (
    <>
      <Logo />
      <Tab tabList={tabList} />
      <div>
        <Search />
        <LoginButton />
        <CartButton />
      </div>
    </>
  );
};

export default Header;
