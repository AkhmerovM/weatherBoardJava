package ru.first.dryCleaning.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class PriceController {
    @GetMapping("/price/outerwear")
    public String outerwear() {
        return "price/textile/outerwear";
    }
    @GetMapping("/price/jeans")
    public String jeans() {
        return "price/textile/jeans";
    }
    @GetMapping("/price/toys")
    public String toys() {
        return "price/textile/toys";
    }
    @GetMapping("/price/coat")
    public String coat() {
        return "price/textile/coat";
    }
    @GetMapping("/price/spec")
    public String spec() {
        return "price/spec/spec";
    }
    @GetMapping("/price/fur")
    public String fur() {
        return "price/fur/fur";
    }
    @GetMapping("/price/fur-coat")
    public String furCoat() {
        return "price/fur/fur-coat";
    }
    @GetMapping("/price/car")
    public String car() {
        return "price/car/car";
    }
    @GetMapping("/price/blanket")
    public String blanket() {
        return "price/blanket/blanket";
    }
    @GetMapping("/price/plaid")
    public String plaid() {
        return "price/blanket/plaid";
    }
    @GetMapping("/price/linen")
    public String linen() {
        return "price/linen/linen";
    }
}
