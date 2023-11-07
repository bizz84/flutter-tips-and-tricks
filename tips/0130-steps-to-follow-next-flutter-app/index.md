# 8 Steps to Follow When Building Your Next Flutter App. ✅

Starting a new Flutter app project can be a daunting task, especially when it's on you to make the technical calls.

Here are some key steps that helped me thrive as an indie dev, product owner, and tech lead.👇

### Step 1: Figure out the main UX flows

Start by visualizing the user's journeys - the good old pen and paper or Figma can come in handy.

Spotting a good UX upfront cuts down on the code down the line. 👍

### Step 2: Identify what features you need

This is when you translate all the main UX flows into one or more features.

For example, if you have an eCommerce app, you may end up with "Product Listings", "Shopping Cart", "Checkout Flows", and so on.

At this stage, I like to write down documentation explaining how each feature is supposed to work.

### Step 3: Figure out what data you need to store

For each feature, ask yourself:

- what data do you need to show
- what queries do you need
- how the data should be secured

I find it very helpful to draw some kind of diagram representing the various entities along with their relationships.

### Step 4: Choose a backend

When evaluating a backend, ask yourself:

- Does it offer a good developer experience?
- Does it support all your target platforms?
- Does it have all the features you need?
- Does it offer 3rd party integrations?
- How much will it cost at scale?

Knowing the data requirements upfront should make it easier to answer these questions.

### Step 5: Make a decision about App Architecture, State Management, Routing

Unless you’re building a very trivial app, it pays off to think about these things from the start.

This will save you from a tangled mess of code and dependencies as the app grows. 😱

### Step 6: Create high-fidelity designs

Turn those early UX mockups into polished designs with Figma.

Note: if you don’t have a designer in your team, you may skip this step altogether (at least initially).

In fact, you can get a decent-looking app with the default Material Design widgets. 🤡

### Step 7: Create a GitHub Board and break top-level features into tasks

GitHub Projects is a great tool, and I use it to organize things as follows:

- Epics: which correspond to the top-level features identified above
- Tasks: individual stories that can be implemented as a single PR
- Sub-tasks: a checklist of items that need to be completed for each task

### Step 8: Execution

This is where we write the actual code for each of the tasks created above, following a clear branching strategy.

If you work in a team, use code reviews to eliminate oversights. In fact, I often review my own code to ensure I haven't forgotten anything (I often do 😅).

### Closing Notes

This isn’t a one-size-fits-all guide - some steps can be juggled or skipped altogether. So find the balance that works best for you and your team. 🙂

Interested in a detailed article about this topic? Then hit that like button and let me know!

Happy coding! 🎉


---

### Found this useful? Show some love and share the [original tweet](https://twitter.com/biz84/status/1721912498863870440) 🙏

---

| Previous | Next |
| -------- | ---- |
| [Error Handling during App Startup](../0129-vscode-debug-toolbar-command-center/index.md) |  |
