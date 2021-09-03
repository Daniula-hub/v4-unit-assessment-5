import React from 'react';
import routes from './routes';
import Nav from "./components/Nav/Nav";
import './App.css';

function App() {
  return (
    <div>
    <div className='App'></div>
    {routes}
    {Nav}
    </div>
  )
};

export default App;
