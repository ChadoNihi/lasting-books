import Inferno from 'inferno';
import { Router, Route, IndexRoute } from 'inferno-router';
import createBrowserHistory from 'history/createBrowserHistory';

import App from './App';
import ItemListScreen from './itemListScreen/ItemListScreen';

export default (
  <Router history={ createBrowserHistory() }>
    <Route component={ App }>
      <IndexRoute component={ ItemListScreen }/>
    </Route>
  </Router>
);
