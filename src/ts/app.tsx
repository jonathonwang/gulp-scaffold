// ------------------------------------------------------------
// Weird Thing I dont wanna do but is necessary with TypeScript
// assigns the imported jQuery object as jQuery & $ on window.
import * as jQuery from 'jquery';
Object.assign(Window.prototype, {
  jQuery,
  $: jQuery
});
import 'bootstrap';
// End Weird Stuff
// ------------------------------------------------------------

// ------------------------------------------------------------
// React Dependency Imports
import * as React from 'react';
import * as ReactDOM from 'react-dom';

// React Stuff
export class Main extends React.Component<void, any> {
  constructor() {
    super();
    // State
    this.state = {
      message: 'Hello World'
    };
  }
  render() {
    return (
      <h1>{this.state.message}</h1>
    );
  }
}
ReactDOM.render(
  <Main></Main>,
  document.getElementById('main')
);
