import React from 'react';
import { BiSearch } from 'react-icons/bi';

import "./Header.css"
import DropdownNav from "./Dropdown"
import * as style from "./Header.style"
import { HeaderStatic } from "../../rsc/static/components.js"

function Header() {
    return (
        <style.HeaderStyle>
            <style.HeaderLeftStyle>
                <style.LogoStyle>{HeaderStatic.HeaderLogoTitle}</style.LogoStyle>
                <DropdownNav props={HeaderStatic.HeaderNav}></DropdownNav>
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