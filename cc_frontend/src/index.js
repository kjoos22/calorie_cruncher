import React from 'react';
import ReactDOM from 'react-dom';
import {createStore, applyMiddleware, compose} from 'redux'
import thunk from 'redux-thunk'
import {Provider} from 'react-redux'


import App from './App';
//import reportWebVitals from './reportWebVitals';


const enhancement = window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__ || compose

let reducer = ''

let store = createStore(reducer, applyMiddleware(thunk))


ReactDOM.render(
  <React.StrictMode>
    <Provider>
      <App />
    </Provider>,
  </React.StrictMode>,
  document.getElementById('root')
);


