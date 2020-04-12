import React, { useState } from 'react'
import { Client as Styletron } from 'styletron-engine-atomic';
import { Provider as StyletronProvider } from 'styletron-react';
import { LightTheme, DarkTheme, BaseProvider, styled } from 'baseui';
import { StatefulInput } from 'baseui/input';
import { Button } from "baseui/button";
import { Grid, Cell, BEHAVIOR, ALIGNMENT } from "baseui/layout-grid"
import { H1, H2, H3, H4, H5, H6 } from 'baseui/typography';

export default function HomePage() {

    return (
        <div>
            <Grid behavior={BEHAVIOR.fluid}>
                <Cell span={[12, 4, 6]} align={ALIGNMENT.center}>
                    <br />
                    <H1><b>Fatec Pocket</b></H1>
                    <br />
                    <H6>Aplicativo para estudantes da Fatec, baixe agora para ter uma experiência totalmente inovadora.</H6>
                    <br />
                    <Button onClick={() => alert("click")}>Baixar</Button>
                </Cell>
                <Cell span={[12, 1, 2]}></Cell>
                <Cell span={[12, 3, 4]} align={ALIGNMENT.center} >
                    <img src="https://raw.githubusercontent.com/BrunoEleodoro/fatec_pocket_landing_page/master/images/Login.png" width="100%" />
                </Cell>
            </Grid>
        </div>

    );
}