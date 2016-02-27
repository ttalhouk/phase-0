#Reflections on Module 3.4 Chrome DevTools

*How can you use Chrome's DevTools inspector to help you format or position elements?*

Chrome's DevTools inspector helps you see the invisible border between the elements so you can figure out what is acting on the
element you are trying to position.  It also allows you to dynamically change the CSS to try and move objects around to find where they fit best
without messing up the code and having to constantly switch back and forth.

*What are the differences between absolute, fixed, static, and relative positioning? Which did you find easiest to use? Which was most difficult?*

`relitive` positioning moves the element from it's starting position.  This doesn't move the location of the surounding elements however which act like it is in its normal position.
`absolute` positioning positions the element relative to its container regardless of what is currently there.  The container for the element no longer effects other elements.
`fixed` positioning places the element in relation to the screen and moves as the user moves through the page.  Similar to absolute but does not scroll away.
`static` positioning is the default where one element sits on top of the next.

Relitive, absolute are the most complicated as they no longer effect the surrouding elements as seen on screen so you have to use the dev tools to try
and work the other elements around their new position.  Fixed is similar but you expect it to be there so you don't really need to plan around it too much.  Would typically be used for a header or footer.

*What are the differences between margin, border, and padding?*

`padding` is inside the border and is built up from the element itself.
`border` wraps around the padding and is added on top of it.
`margin` is measure out from the border.


*What was your impression of this challenge overall? (love, hate, and why?)*

From my experience, positioning is probably the most difficult thing to do in CSS.  It doesn't quite do what you expect sometimes and can
have cascading effects on the rest of the page.  This challenge helps figure some of this out but more specific challenges would be helpful.