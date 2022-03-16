---
sidebar_position: 3
---

# Idea

Jitsi meet can be used for free **without any account or setup** needed.

![Jitsi Hero](/img/tutorial/video-meetings/jitsi-hero.png)

This gives us 2 important points to take care of:

- We don't need to worry about setting up an OAuth application or using APIs.
- The only parameter in play is the meeting URL. This comes from the meeting topic/title, with all the spaces or special characters (those not allowed in URLs) removed. We need to come up with a solution to generate unique and hard to guess (to protect privacy) URLs to connect users.

## Meeting Types

There are 2 types of meetings that we will be creating in this section.

![Meeting Types](/img/tutorial/video-meetings/meeting-types.png)

1. **Instant meetings** which can be joined _instantly_. These meetings can be unique between 2 users.
2. **Scheduled meetings** which can be joined _5 mins prior_ to the scheduled time. These need to have information about date-time and duration. Here the meetings (and their URLs) will have to be different.

## Meeting URLs

We can make use of Firebase UIDs, and generated group chat IDs to create meeting URLs. For scheduled meetings, we will keep the time and duration in the URL too. But how to secure meeting URLs?

:::tip
To make sure that the meetings URLs are secured, we will make use of a **Base64** encryption. How to do that in Flutter? Read this answer on [StackOverflow](https://stackoverflow.com/a/56201075/11610122).
:::

A sample meeting URL now looks like this (ignoring the `mli-` part and adding `https://`). Meeting URLs like these will be impossible to just guess and thus are safe. If we need to extract information from these, we can always decode the Base64 string, and get back our information.

```
mli-meet.jit.si/Y2pxc0lwb2ZFZWFlMHk5Tk1uQ2ZKVWhuNGhiMi11NlRKeWZveXlMZEd6WXNtdElDOHFEMDliYkEy
```

But hold on, what is `mli-` doing here?

## Content Stored in DB

Since we are storing meetings, chat text messages, images (next video), etc, we would want to specify the content type. One way could be to use prefixes and then split the Strings, and that's what we are doing here. The content stored in Cloud Firestore will have 2 different kind of prefixes -

- `mli` which stands for **meeting link instant**
- `mls` which stands for **meeting link scheduled**

![Meeting MLI MLS](/img/tutorial/video-meetings/meeting-mli-mls.png)

Look at this function of completed code, which you can find [here](https://github.com/Imperial-lord/linkedin-clone/blob/main/02-video-meetings/completed/linkedin_clone/lib/widgets/chat/common_chat_widgets.dart) on GitHub.

```js title="common_chat_widgets.dart"
Widget showChatItemBasedOnType(
    String type, DocumentSnapshot document, BuildContext context, String name) {
  // Expand this more as per need
  if (type == 'mli') {
    // Meeting Link Instant
    return instantMeetingItemContent(document, context, name);
  } else if (type == 'mls') {
    // Meeting Link Scheduled
    return scheduledMeetingItemContent(document, context, name);
  } else {
    // Chat text item
    return chatItemContent(document);
  }
}
```
