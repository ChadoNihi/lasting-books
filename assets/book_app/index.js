import Inferno from 'inferno';
import {Provider} from 'inferno-redux';

import routes from './routes';

Inferno.render(
    <Provider store={store}>
        {routes}
    </Provider>,
    document.getElementById('root')
);
