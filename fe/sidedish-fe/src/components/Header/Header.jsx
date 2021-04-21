import React from 'react';
import * as style from "./Header.style"
import { BiSearch } from 'react-icons/bi';

// class Question extends React.Component {
//   render() {
//     return <h3> Lets go for a ? </h3>
//   }
// }
// import LogStyle from './log.style';


function Header() {
    // const [dropdownVisible, setDropdownVisible] = useState(false);
    // const toggleDropdown = () => {
    //     setDropdownVisible(!dropdownVisible);
    //   };

    return (
        <style.HeaderStyle>
            {/* <div className="dropdown">
                <button className="dropbtn" onClick={toggleDropdown}>
                Dropdown
                </button>
                <DropdownContent show={dropdownVisible} />
            </div>     */}
            <style.HeaderLeftStyle>
                <style.LogoStyle>BANCHAN</style.LogoStyle>
                <style.NavStyle>든든한 메인요리
                    <style.DropdownStyle>
                        {/* <style.DropdownComponentStyle>
                        육류요리
                        </style.DropdownComponentStyle>
                        <style.DropdownComponentStyle>
                        해산물 요리
                        </style.DropdownComponentStyle> */}
                    </style.DropdownStyle>
                </style.NavStyle>
                <style.NavStyle>뜨끈한 국물요리</style.NavStyle>
                <style.NavStyle>정갈한 밑반찬</style.NavStyle>
            </style.HeaderLeftStyle>
            <style.HeaderRightStyle>
                <style.SearchBarFormStyle>
                    <style.SearchBarStyle>
                    </style.SearchBarStyle>
                    <style.SearchButtonStyle>
                        <BiSearch size="25px" fill="#BDBDBD"   />
                    </style.SearchButtonStyle>
                </style.SearchBarFormStyle>
                <style.LoginStyle>로그인</style.LoginStyle>
                <style.BasketStyle>장바구니</style.BasketStyle>
            </style.HeaderRightStyle>
        </style.HeaderStyle>
    )
}

export { Header }