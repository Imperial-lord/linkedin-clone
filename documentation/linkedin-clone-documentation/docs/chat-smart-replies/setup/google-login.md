---
sidebar_position: 4
---

# Google Login

To allow social authentication with Google, we make use of the following plugin - [`google_sign_in`](https://pub.dev/packages/google_sign_in) published by the Flutter team.

Follow the steps under the Platform Integration headline to ensure that everything is perfect. In particular ensure to add the `CFBundleURLTypes` attributes below into the `my_project/ios/Runner/Info.plist` file

```plist title="ios/Runner/Info.plist"
<key>CFBundleURLTypes</key>
<array>
	<dict>
		<key>CFBundleTypeRole</key>
		<string>Editor</string>
		<key>CFBundleURLSchemes</key>
		<array>
			<!-- TODO: Replace this value: -->
			<!-- Copied from GoogleService-Info.plist key REVERSED_CLIENT_ID -->
			<string>com.googleusercontent.apps.some-random-string</string>
		</array>
	</dict>
</array>
```

## Additional requirement

Note that according to https://developer.apple.com/sign-in-with-apple/get-started, starting June 30, 2020, apps that use login services must also offer a "Sign in with Apple" option when submitting to the Apple App Store.

:::tip Note

Since we are not going to publish this application, and implementing the Apple authentication, needs you to have an apple developer account, we won't have to bother about this requirement

:::
