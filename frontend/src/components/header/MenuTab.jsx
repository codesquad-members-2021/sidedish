import styled from 'styled-components'
const ManuTabNav = styled.ul`
  display: none;
  flex-direction: column;
  align-items: flex-start;
  margin-top: 16px;
  padding: 16px;
  width: 112px;
  border-radius: 5px;
  background: #ffffff;
  box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5),
    0px 2px 4px rgba(0, 0, 0, 0.25);
  backdrop-filter: blur(4px);
  position: absolute;
  left: -12px;
  cursor: pointer;
`

const ManuList = styled.li`
  font-size: 16px;
  line-height: 28px;
  text-decoration-line: underline;
`

function MenuTab ({ val }) {
  const ManuLists = val.map(v => <ManuList>{v}</ManuList>)
  return <ManuTabNav>{ManuLists}</ManuTabNav>
}

export default MenuTab
