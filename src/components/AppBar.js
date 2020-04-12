import React from "react"
import { Grid, Cell, ALIGNMENT, BEHAVIOR } from 'baseui/layout-grid';
import AppBarMobile from "./AppBar/AppBarMobile";
import AppBarTablet from "./AppBar/AppBarTablet";
import {withRouter} from "react-router-dom"
function AppBar() {

    return (
        <div>
            <Grid >
                <Cell span={[12, 0, 0]} >
                    <AppBarMobile/>
                </Cell>
                <Cell span={[0, 12, 0]}>
                    <AppBarTablet/>
                </Cell>
                <Cell span={[0, 0, 12]}>
                    <AppBarTablet/>
                </Cell>
            </Grid>
        </div>
    );

}

export default withRouter(AppBar)