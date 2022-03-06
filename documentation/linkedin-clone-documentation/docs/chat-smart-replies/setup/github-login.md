---
sidebar_position: 5
---

# GitHub Login

To allow social authentication with Google, we make use of the following plugin - [`github_sign_in`](https://pub.dev/packages/github_sign_in). Ensure that you have setup an OAuth App from your GitHub Developer Settings and that the "GitHub" sign-in provider is enabled on the Firebase Console with the Client ID and Secret are set, with the callback URL set in the GitHub app.

## Setup your OAuth App

You can follow the steps for this in the [GitHub docs](https://docs.github.com/en/developers/apps/building-oauth-apps). Go to your developer settings and create a new OAuth app. Add details as requested, add the callback URL and finally make a note of the `Client ID` and `Client Secret`.

![GitHub](/img/tutorial/chat-smart-replies/github.png)

## Add details to Login Store

For our application we are making use of `Providers` for state-management. So go ahead to Login Store and inside the `signInWithGithub` action add your ID, secret and callback URL.

```dart title="lib/stores/login_store.dart"
@action
  Future<void> signInWithGithub(BuildContext context) async {
    final githubSignIn = GitHubSignIn(
        clientId: 'clientid',
        clientSecret: 'clientsecret',
        redirectUrl: 'callbackurl');
```
