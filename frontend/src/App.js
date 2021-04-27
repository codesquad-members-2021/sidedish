import './styles/style.scss';
import React, { useState, useEffect } from 'react';
import Home from './components/pages/Home';
import Details from './components/pages/Details';
function App() {
  return (
    <div className="App">
      <Home />
      <Details />
    </div>
  );
}

export default App;
