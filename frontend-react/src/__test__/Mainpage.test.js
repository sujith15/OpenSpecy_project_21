import React from "react";
import Mainpage from "../Mainpage";
import Partner from "../Partnerpage";
import RadioButtonsGroup from "../Identifypage";
import { fireEvent, screen, render } from "@testing-library/react";
import "@testing-library/jest-dom/extend-expect";

test("title renders with correct text", () => {
  const { getByTestId } = render(<Mainpage />);
  const headerEl = getByTestId("header1");

  expect(headerEl.textContent).toBe("Welcome");
});

test("title renders with correct text", () => {
  const { getByTestId } = render(<Mainpage />);
  const headerEl = getByTestId("header2");

  expect(headerEl.textContent).toBe("Instructions");
});

test("title renders with correct text", () => {
  const { getByTestId } = render(<Mainpage />);
  const headerEl = getByTestId("header3");

  expect(headerEl.textContent).toBe("Download Open Data");
});

test("title renders with correct text", () => {
  const { getByTestId } = render(<Mainpage />);
  const headerEl = getByTestId("header4");

  expect(headerEl.textContent).toBe("Contribute Spectra");
});

test("should navigate to ... when link is clicked", () => {
  const { getByTestId } = render(<Partner />);

  const link = getByTestId("header5");

  fireEvent.click(link);

  expect(link.href).toBe(
    "https://www.paypal.com/donate/?cmd=_donations&business=wincowger@gmail.com&lc=US&item_name=Donation+to+Open+Specy&no_note=0&cn=&currency_code=USD&bn=PP-DonationsBF:btn_donateCC_LG.gif:NonHosted"
  );
});

test("radio", () => {
  render(<RadioButtonsGroup />);

  const radio = screen.getByLabelText("Raman");
  fireEvent.click(radio);
  expect(radio).toBeChecked();
});
