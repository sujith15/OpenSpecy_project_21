import "./App.css";
import { BrowserRouter as Router, Switch, Route } from "react-router-dom";

import Mainpage from "./Mainpage";
import Upload from "./Uploadpage";
import Identify from "./Identifypage";
import NavBar from "./NavBar";

const App = () => {
  return (
    <Router>
      <NavBar />
      <div>
        <Switch>
          <Route path="/" exact component={Mainpage} />
          <Route path="/upload" component={Upload} />
          <Route path="/identify" component={Identify} />
        </Switch>
      </div>
    </Router>
  );
};

export default App;
