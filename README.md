# Variables Test

## Getting Started 🚀

This project runs in a development stage. Since it's only used to test a new way to handle width and color constants/values, it's not connected to any api and it doesn't really require more flavors.

To run the app, either use the launch configuration in VSCode/Android Studio or use the following command:

```sh
$ flutter run --flavor development --target lib/main_development.dart

```

_\*This project works on iOS, Android, Web, and Windows._

---

## Project definition ✨

This project is used as an mvp for the process of translation between Figma variables and Flutter constants for any project. Since most of them stay practically the same, the end result hopes for the developer to simply change the core color constants for the brand or the grid system if they need to. 

These changes aspire to make the experience developing visual interfaces much easier, as the developer will not have to guess the shade, tone or size of certain widgets, texts, etc. Developers will only need to reference the corresponding ColorValue or WidthValue called after the variable in the Figma design.

