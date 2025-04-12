import React, { useState } from 'react';
import * as style from './HelloWorld.module.css';

interface HelloWorldProps {
  name: string;
}

const HelloWorld: React.FC<HelloWorldProps> = ({ name: initialName }) => {
  const [name, setName] = useState(initialName);

  return (
    <div>
      <h3>Hello, {name}!</h3>
      <hr />
      <form>
        <label className={style.bright} htmlFor="name">
          Say hello to:
          <input
            id="name"
            type="text"
            value={name}
            onChange={(e: React.ChangeEvent<HTMLInputElement>) => setName(e.target.value)}
          />
        </label>
      </form>
    </div>
  );
};

export default HelloWorld; 