webpackHotUpdate("main",{

/***/ "./src/Header/HeaderStyles.jsx":
/*!*************************************!*\
  !*** ./src/Header/HeaderStyles.jsx ***!
  \*************************************/
/*! exports provided: Header, Logo, MenuList, MenuWrapper, Navigator, Category, CategoryList, SearchBar, SearchButton, SearchInput, Login, ShoppingCart */
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
__webpack_require__.r(__webpack_exports__);
/* WEBPACK VAR INJECTION */(function(__react_refresh_utils__, __react_refresh_error_overlay__) {/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "Header", function() { return Header; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "Logo", function() { return Logo; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "MenuList", function() { return MenuList; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "MenuWrapper", function() { return MenuWrapper; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "Navigator", function() { return Navigator; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "Category", function() { return Category; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "CategoryList", function() { return CategoryList; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "SearchBar", function() { return SearchBar; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "SearchButton", function() { return SearchButton; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "SearchInput", function() { return SearchInput; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "Login", function() { return Login; });
/* harmony export (binding) */ __webpack_require__.d(__webpack_exports__, "ShoppingCart", function() { return ShoppingCart; });
/* harmony import */ var styled_components__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! styled-components */ "./node_modules/styled-components/dist/styled-components.browser.esm.js");
/* harmony import */ var _svgr_webpack_svgo_titleProp_ref_Styles_icons_SearchButton_svg__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @svgr/webpack?-svgo,+titleProp,+ref!../Styles/icons/SearchButton.svg */ "./node_modules/@svgr/webpack/lib/index.js?-svgo,+titleProp,+ref!./src/Styles/icons/SearchButton.svg");
__webpack_require__.$Refresh$.runtime = __webpack_require__(/*! ./node_modules/react-refresh/runtime.js */ "./node_modules/react-refresh/runtime.js");
__webpack_require__.$Refresh$.setup(module.i);



const Header = styled_components__WEBPACK_IMPORTED_MODULE_0__["default"].div`
  position: relative;
  padding: 32px 80px;
  height: 132px;
`;
const Logo = styled_components__WEBPACK_IMPORTED_MODULE_0__["default"].div`
  height: 58px;
  width: 190px;

  /* logo */
  position: absolute;
  top: 26.23%;
  font-family: Noto Sans KR;
  font-style: normal;
  font-weight: 900;
  font-size: 40px;
  line-height: 58px;
  /* identical to box height */

  letter-spacing: -0.04em;
  text-transform: uppercase;

  /* Gray 1 */

  color: #333333;
`;
const MenuList = styled_components__WEBPACK_IMPORTED_MODULE_0__["default"].li`
  /* menu 1 */

  font-family: Noto Sans KR;
  font-size: 16px;
  line-height: 23px;
  color: #333333;
`;
const MenuWrapper = styled_components__WEBPACK_IMPORTED_MODULE_0__["default"].div`
  position: absolute;
  width: 112px;
  align-items: flex-start;
  padding: 16px;
  background: #fff;

  box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5),
    0px 2px 4px rgba(0, 0, 0, 0.25);
  backdrop-filter: blur(4px);
  /* Note: backdrop-filter has minimal browser support */
`;
const Navigator = styled_components__WEBPACK_IMPORTED_MODULE_0__["default"].div`
  position: relative;
`;
const CategoryList = styled_components__WEBPACK_IMPORTED_MODULE_0__["default"].li`
  /* menu 3 */

  height: 23px;
  left: 262px;
  top: 0px;
  font-size: 16px;
  line-height: 23px;

  /* Gray 1 */

  color: #333333;

  /* Inside Auto Layout */

  flex: none;
  order: 2;
  flex-grow: 0;
  padding: 0px 24px;
`;
const Category = styled_components__WEBPACK_IMPORTED_MODULE_0__["default"].div`
  /* gnb */

  /* Auto Layout */

  display: flex;
  flex-direction: row;
  align-items: flex-start;
  padding: 0px;

  position: absolute;
  left: 16.64%;

  top: 40.98%;
`;
const SearchBar = styled_components__WEBPACK_IMPORTED_MODULE_0__["default"].div`
  height: 40px;
  width: 248px;
  position: absolute;
  right: 16.25%;
  top: 33.61%;

  /* Gray 6 */

  background: #f5f5f7;
  border-radius: 5px;
`;
const SearchButton = Object(styled_components__WEBPACK_IMPORTED_MODULE_0__["default"])(_svgr_webpack_svgo_titleProp_ref_Styles_icons_SearchButton_svg__WEBPACK_IMPORTED_MODULE_1__["ReactComponent"])`
  position: absolute;
  right: 10px;
  top: 5px;
`;
const SearchInput = styled_components__WEBPACK_IMPORTED_MODULE_0__["default"].input`
  left: 958px;
  top: 41px;
  width: 248px;
  height: 40px;
  border: none;
  border-radius: 5px;
  font-size: 16px;
  background: #f5f5f7;
  /* #121111 6 */
`;
const Login = styled_components__WEBPACK_IMPORTED_MODULE_0__["default"].span`
  position: absolute;
  right: 11.32%;
  font-size: 16px;
  line-height: 23px;

  /* Gray 1 */

  color: #333333;
`;
const ShoppingCart = styled_components__WEBPACK_IMPORTED_MODULE_0__["default"].span`
  /* basket */
  position: absolute;
  right: 5.56%;
  font-size: 16px;
  line-height: 23px;
  /* Gray 1 */

  color: #333333;
`;


const currentExports = __react_refresh_utils__.getModuleExports(module.i);
__react_refresh_utils__.registerExportsForReactRefresh(currentExports, module.i);

if (true) {
  const isHotUpdate = !!module.hot.data;
  const prevExports = isHotUpdate ? module.hot.data.prevExports : null;

  if (__react_refresh_utils__.isReactRefreshBoundary(currentExports)) {
    module.hot.dispose(
      /**
       * A callback to performs a full refresh if React has unrecoverable errors,
       * and also caches the to-be-disposed module.
       * @param {*} data A hot module data object from Webpack HMR.
       * @returns {void}
       */
      function hotDisposeCallback(data) {
        // We have to mutate the data object to get data registered and cached
        data.prevExports = currentExports;
      }
    );
    module.hot.accept(
      /**
       * An error handler to allow self-recovering behaviours.
       * @param {Error} error An error occurred during evaluation of a module.
       * @returns {void}
       */
      function hotErrorHandler(error) {
        if (
          typeof __react_refresh_error_overlay__ !== 'undefined' &&
          __react_refresh_error_overlay__
        ) {
          __react_refresh_error_overlay__.handleRuntimeError(error);
        }

        if (typeof __react_refresh_test__ !== 'undefined' && __react_refresh_test__) {
          if (window.onHotAcceptError) {
            window.onHotAcceptError(error.message);
          }
        }

        __webpack_require__.c[module.i].hot.accept(hotErrorHandler);
      }
    );

    if (isHotUpdate) {
      if (
        __react_refresh_utils__.isReactRefreshBoundary(prevExports) &&
        __react_refresh_utils__.shouldInvalidateReactRefreshBoundary(prevExports, currentExports)
      ) {
        module.hot.invalidate();
      } else {
        __react_refresh_utils__.enqueueUpdate(
          /**
           * A function to dismiss the error overlay after performing React refresh.
           * @returns {void}
           */
          function updateCallback() {
            if (
              typeof __react_refresh_error_overlay__ !== 'undefined' &&
              __react_refresh_error_overlay__
            ) {
              __react_refresh_error_overlay__.clearRuntimeErrors();
            }
          }
        );
      }
    }
  } else {
    if (isHotUpdate && __react_refresh_utils__.isReactRefreshBoundary(prevExports)) {
      module.hot.invalidate();
    }
  }
}
/* WEBPACK VAR INJECTION */}.call(this, __webpack_require__(/*! ./node_modules/@pmmmwh/react-refresh-webpack-plugin/lib/runtime/RefreshUtils.js */ "./node_modules/@pmmmwh/react-refresh-webpack-plugin/lib/runtime/RefreshUtils.js"), __webpack_require__(/*! ./node_modules/react-dev-utils/refreshOverlayInterop.js */ "./node_modules/react-dev-utils/refreshOverlayInterop.js")))

/***/ })

})
//# sourceMappingURL=main.ae6cadcfd11fc4f62b76.hot-update.js.map