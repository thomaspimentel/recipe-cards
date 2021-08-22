import React from 'react';

interface LightSwitchProps {
  lightsOn: Boolean;
  toggleLights: React.Dispatch<Boolean>;
}

const LightSwitch: React.FC<LightSwitchProps> = ({lightsOn, toggleLights}: LightSwitchProps) => {
  return (
    <div className="light-switch cover-plate" onClick={(e: React.MouseEvent<HTMLInputElement>) => toggleLights(!lightsOn)}>
      <div className="switch">
        <div className="top"></div>
        <div className="bottom"></div>
      </div>
    </div>
  );
}

export default LightSwitch;
