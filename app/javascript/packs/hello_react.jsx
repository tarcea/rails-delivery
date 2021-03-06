// Run this example by adding <%= javascript_pack_tag 'hello_react' %> to the head of your layout file,
// like app/views/layouts/application.html.erb. All it does is render <div>Hello React</div> at the bottom
// of the page.

import React from 'react';
import ReactDOM from 'react-dom';
import PropTypes from 'prop-types';
import { CURRENT_YEAR } from './config';

const Hello = props => (
  <small><div className="text-center">&copy; Copyright {CURRENT_YEAR} {props.name} </div></small>
)

Hello.defaultProps = {
  name: 'Sisi'
}

Hello.propTypes = {
  name: PropTypes.string
}

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Hello name="Gheorghe Tarcea" />,
    document.body.appendChild(document.createElement('div')),
  )
})
