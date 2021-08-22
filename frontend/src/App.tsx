import React from 'react';
import './App.sass';
import LightSwitch from './components/light_switch';

function App() {
  const [lightsOn, toggleLights] = React.useState<Boolean>(true);

  return (
    <div className={`main lights${lightsOn ? " on" : " off"}`}>
      <header>
        <h1>
          Recipe selector
        </h1>
        <LightSwitch lightsOn={lightsOn} toggleLights={toggleLights} />
      </header>
    </div>
  );
}

export default App;
