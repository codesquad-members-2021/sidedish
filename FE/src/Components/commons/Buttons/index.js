import React from 'react'
import ViewAllButton from 'Components/commons/Buttons/ViewAllButton.js';

const Button = ({type, onClick}) => {
  
  const selectButton = () => {
    switch (type) {
      case "viewAll":
        return <ViewAllButton onClick={onClick} />;
      default:
        return <></>;
    }
  }

  return ( selectButton() )
}

export default Button
