// import logo from "./logo.svg";
import "./App.css";
import { BrowserRouter as Router, Switch, Route } from "react-router-dom";

import Mainpage from "./Mainpage";
import Upload from "./Uploadpage";
import NavBar from "./NavBar";

function App() {
  return (
    <Router>
      <NavBar />
      <div>
        <Switch>
          <Route path="/" exact component={Mainpage} />
          <Route path="/upload" component={Upload} />
        </Switch>
      </div>
    </Router>
  );
}

export default App;
