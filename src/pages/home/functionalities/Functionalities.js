import React, { useState } from 'react'
import { Client as Styletron } from 'styletron-engine-atomic';
import { Provider as StyletronProvider } from 'styletron-react';
import { LightTheme, DarkTheme, BaseProvider, styled } from 'baseui';
import { StatefulInput } from 'baseui/input';
import { Button } from "baseui/button";
import { Grid, Cell, BEHAVIOR, ALIGNMENT } from "baseui/layout-grid"
import { H1, H2, H3, H4, H5, H6 } from 'baseui/typography';
import { withRouter } from "react-router-dom"

function Functionalities() {
    return (
        <div>Functionalities</div>
    )
}

export default withRouter(Functionalities)