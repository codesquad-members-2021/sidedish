import React from 'react';
import * as style from "./Header.style"
import { BiSearch } from 'react-icons/bi';
import "./Header.css"
import styled from "styled-components";

// class Question extends React.Component {
//   render() {
//     return <h3> Lets go for a ? </h3>
//   }
// }
// import LogStyle from './log.style';


const NavStyle = styled.button`
    background-color:red;
    font-size: 16px;
    line-height: 23px;
    margin: auto 1.5%;

    &:hover {
        font-weight: bold;
        display:block;
        background-color: transparent;
    }
    & a{
        display:block;
    }
`

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
                    <div className="dropdown">
                        <button className="dropdown-button">Dropdown2</button>
                        <div className="dropdown-content">
                            <a href="#">HTML</a>
                            <a href="#">CSS</a>
                            <a href="#">JS</a>
                        </div>
                    </div>
                    <div className="dropdown">
                        <button className="dropdown-button">Dropdown3</button>
                        <div className="dropdown-content">
                            <a href="#">HTML</a>
                            <a href="#">CSS</a>
                            <a href="#">JS</a>
                        </div>
                    </div>
                <NavStyle>든든한 메인요리
                        <div className="dropdown-content">
                            <a href="#">HTML</a>
                            <a href="#">CSS</a>
                            <a href="#">JS</a>
                        </div>
                </NavStyle>
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