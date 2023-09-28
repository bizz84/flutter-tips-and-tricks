# First steps to tackle when starting a new mobile app

Someone asked me what should be the first steps to tackle when starting a new mobile app.

Assuming a non-trivial app, here are some things that have worked well for me:

- Figure out the main UX flows (draw them with pen and paper or create low-fidelity screens in Figma)

- Translate each flow into one or more features (e.g. authentication, product listings, etc.)

- For each feature, work out what data you need to show, where to store it, what queries you need, which security rules should be in place, and which code lives where (client vs. backend). This step should inform your choice of backend.

Note: you'll need to write all this stuff down somewhere.

But where?

My preference is to create a GitHub project board where each feature is an epic.

Inside each epic, I create issues (tasks), explaining in sufficient detail what needs to be done (this also helps you figure out dependencies between tasks).

Once this is all done and you're happy that the requirements are covered, you can sort the epics in priority order.

Then, you can start building a prototype, tackling the hardest parts first. The goal here is to identify unknowns and get a better idea of how long the project will take.

Finally, you can iterate on the prototype, tackling one issue at a time.

Notes about how to use the project board (this works great for small teams):

- create columns such as backlog, blocked, todo, in progress, done
- for each issue (task), do the work and create *one* PR, review it (even if working as a solo dev), and merge it
- refrain from doing too much work and tackling unrelated issues in the same PR

As you make progress, you'll need to add more issues and tweak things, and that's okay.

This process has worked incredibly well for me on various occasions:
- solo projects
- client projects where I was a team lead
- my own outsourced projects where I hired developers to do the work for me

A huge bonus of this approach is that the entire project history, issues, PRs, and discussions will be on GitHub, and you can reference them at any time.

---

### Found this useful? Show some love and share the [original tweet](https://twitter.com/biz84/status/1706730796243939717) 🙏

---

| Previous | Next |
| -------- | ---- |
| [Fetching vs Mutating data with Riverpod](../0121-riverpod-fetch-vs-mutate-data/index.md) | [Top reasons for using a realtime backend](../0123-user-realtime-backend/index.md) |
