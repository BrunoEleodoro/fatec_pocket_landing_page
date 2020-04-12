import React from "react"
import {
    HeaderNavigation,
    ALIGN,
    StyledNavigationItem,
    StyledNavigationList,
} from 'baseui/header-navigation';
import { StyledLink } from "baseui/link";
import { Button } from 'baseui/button';
import { Select } from "baseui/select";
import { menuItems } from "./MenuItems";
import {
    BrowserRouter as Router,
    Switch,
    Route,
    Link,
    useRouteMatch,
    useParams,
    withRouter
} from "react-router-dom";

function AppBarTablet() {
    const [value, setValue] = React.useState([]);

    return (<HeaderNavigation>
        <StyledNavigationList $align={ALIGN.left}>
            <StyledNavigationItem>Fatec Pocket</StyledNavigationItem>
        </StyledNavigationList>
        <StyledNavigationList $align={ALIGN.center} />
        <StyledNavigationList $align={ALIGN.right}>
            {menuItems.map((item) => {
                return <StyledNavigationItem key={item.id}>
                    <Link to={item.id}>
                        <StyledLink href="#">
                            {item.label}
                        </StyledLink>
                    </Link>

                </StyledNavigationItem>
            })}
        </StyledNavigationList>

    </HeaderNavigation>
    )
}

export default withRouter(AppBarTablet)