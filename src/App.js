import React, { useState,useEffect } from 'react';
import logo from './logo.svg';
import './App.css';
import Home from "./pages/home/Home"
import { Client as Styletron } from 'styletron-engine-atomic';
import { Provider as StyletronProvider } from 'styletron-react';
import { LightTheme, DarkTheme, BaseProvider, styled } from 'baseui';
import AppBar from './components/AppBar';
import {
    BrowserRouter as Router,
    Switch,
    Route,
    Link
} from "react-router-dom";
import HomePage from './pages/home/Home';
import ContactPage from './pages/contact/Contact';
import AboutPage from './pages/about/About';


const engine = new Styletron();

function App() {
    useEffect(() => {
        document.body.style.backgroundColor='#000'    });
    return (
        <StyletronProvider value={engine}>
            <BaseProvider theme={DarkTheme}>
                
                <Router>
                    {/* <AppBar/> */}
                    <Switch>
                        <Route path="/about">
                            <AboutPage />
                        </Route>
                        <Route path="/contact">
                            <ContactPage />
                        </Route>
                        <Route path="/">
                            <HomePage />
                        </Route>
                    </Switch>
                </Router>
                {/* <Button onClick={() => {
                if (theme == 1) {
                    changeTheme(0)
                } else {
                    changeTheme(1)
                }
            }}>Change</Button> */}
            </BaseProvider>
        </StyletronProvider>
    );
}

export default App;
