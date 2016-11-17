# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Membership.destroy_all
Cohort.destroy_all
Roadmap.destroy_all
Link.destroy_all

user1 = User.create(email: "Man in Black", password: "password", image_url: "http://images.hellogiggles.com/uploads/2016/10/16152406/Screen-Shot-2016-10-16-at-10.23.38-PM-700x525.png")
user2 = User.create(email: "Dolores", password: "password", image_url: "https://www.neondystopia.com/wp-content/uploads/2016/10/who-is-arnold-and-what-is-he-making-the-hosts-of-westworld-do-dolores-remembers-the-ch-1160716.jpeg")
user3 = User.create(email: "Teddy", password: "password", image_url: "http://images.hellogiggles.com/uploads/2016/10/06060707/teddy2-700x525.jpg")
user4 = User.create(email: "Maeve", password: "password", image_url: "http://www.flickeringmyth.com/wp-content/uploads/2016/10/Westworld-12-600x901.jpg")
user5 = User.create(email: "Bernard", password: "password", image_url: "https://nypdecider.files.wordpress.com/2016/09/westworld-wright.jpg?quality=90&strip=all&w=600")

wdi = Cohort.create(cohort_type: "WDI", name: "13")
uxdi = Cohort.create(cohort_type: "UXDI", name: "4")

wdi_users = User.all

wdi_users.each do |user|
  Membership.create(user_id: wdi_users.sample.id, cohort_id: wdi.id)
  Membership.create(user_id: wdi_users.sample.id, cohort_id: wdi.id)
  Membership.create(user_id: wdi_users.sample.id, cohort_id: wdi.id)
end

uxdi_users = User.all

uxdi_users.each do |user|
  Membership.create(user_id: uxdi_users.sample.id, cohort_id: uxdi.id)
  Membership.create(user_id: uxdi_users.sample.id, cohort_id: uxdi.id)
  Membership.create(user_id: uxdi_users.sample.id, cohort_id: uxdi.id)
end


roadmap1 = Roadmap.create(
week: 1,
title: 'Introduction to Outcomes',
content: 'Who is the Outcomes Team and this community of DC techies?  How are you going to land a job in a competitive market utilizing the talents you are about to embark on? What types of jobs exist that could be your next professional chapter? How can you best get involved in the most sought after community in DC? Join us as we introduce the DC Outcomes Team and how we are going to help you navigate the job search starting week 1!',
goal: 'Setting clear expectations around Outcomes, it’s mission, vision, and goals. You will understand how to qualify for Outcomes support, the 5 themes associated with success, and what is required to be a job seeker',
theme: 'Participating in the Community; Becoming a Thought Leader; Understanding the Landscape',
materials: 'Outcomes Intro Presentation -- Check out Companies Who Have Hired GA DC Grads',
workDue: 'Outcomes Pre-Work',
homework: 'Identify 3 Networking Opportunities to attend throughout your program  & input into your Personal Outcomes Tracker -- Identify 3 New Organizations that pique  your interest & Input into your Personal Outcomes Tracker  in Company Target List Weekly Blogpost' ,
smallGroup: 'none',
resources: "Best Practices -- Entrepreneurial Resources"
),
roadmap2 = Roadmap.create(
week: 2,
title: 'Cheers to Those Who Survived: the Ones with a Job!',
content: 'We get it, this program is a lot, and can be intimidating. But don’t worry...you’re not alone!  Need proof that you will survive and get through this? Talk to those who have survived a GA Immersive and actually have  a job in this field! These expert alums will share their Tips and Tricks! Come prepared with 3 burning questions you would love to know the answer to!',
goal: 'ou will have first hand knowledge of ways to best be successful with GA and Network like a Pro!',
theme: 'Participating in the Community; Understanding the Landscape',
materials: 'none',
workDue: '3 Networking Opportunities that you will attend & Input into your Personal Outcomes Tracker 3 Organizations that pique  your interest & Input into your Personal Outcomes Tracker in Company Target List Weekly Blogpost',
homework: 'What’s My Brand Worksheet (Once completed, save your edit link to see your responses ongoing) <br> Free Personality Test <br> Identify 3 New Organizations that pique  your interest & Input into your Personal Outcomes Tracker  in Company Target List <br> Weekly Blogpost ' ,
smallGroup: 'Introductions: Your Goals & Identifying Your Why',
resources: "Best Practices -- Entrepreneurial Resources"
),
roadmap3 = Roadmap.create(
week: 3,
title: 'Finding Your Voice & Defining Your Brand',
content: 'Your brand is your value proposition. It is important to understand who you are as a professional in your chosen field. It is what makes you uniquely qualified over candidates who are just merely qualified based solely on hard skills. This is what makes you different than any other candidates and allows you to stand out from the crowd. These differentiators, when coupled with your hard skills, translate into employable skills that define you as a professional. <br> But how do you promote your brand and talents? Don’t worry, we’ve got you covered!  We will show you how to explain yourself and your talents in a compelling and interesting way so that your brand doesn’t get lost in translation!',
goal: 'Defining Your Voice and Discovering Your Brand is critical in the job search success story! Improve your elevator pitches and presentations by learning how to utilize storytelling techniques in business settings.',
theme: 'Developing Your Brand',
materials: 'Bring notebook, pen/pencil <br> <a href="https://drive.google.com/open?id=0B0cuNYi34jyuV1NmRjgzSDJ4d3M">Storytelling Tips, Tricks & Story Map</a>',
workDue: '3 Networking Opportunities that you will attend & Input into your Personal Outcomes Tracker 3 Organizations that pique  your interest & Input into your Personal Outcomes Tracker in Company Target List Weekly Blogpost',
homework: 'What’s My Brand Worksheet (Once completed, save your edit link to see your responses ongoing) <br> Free Personality Test <br> Identify 3 New Organizations that pique  your interest & Input into your Personal Outcomes Tracker  in Company Target List <br> Weekly Blogpost ' ,
smallGroup: 'No small groups this week',
resources: "Professional Brand"
),
roadmap4 = Roadmap.create(
week: 4,
title: 'The Winning Resume Package',
content: 'Are you ready to create a resume that gets noticed? Need to consolidate those ten pages of fluff to two pages of Impact?  Tired of sending your resume into the big deep swarm of no return?  Learn how to craft a resume that gets callbacks and have the resume Package that wins!  We will tackle LinkedIn and Social Media too! ',
goal: 'This workshop will help you build your first version of a winning resume that gets noticed and bundle your job search toolkit to land your next job!',
theme: 'Designing Your Job Search; Developing Your Brand; Understanding the Landscape',
materials: 'Backpacks to Briefcases Presentation ',
workDue: 'Building Your Resume Worksheet (Once completed, save your edit link to see your responses ongoing)
3 New Organizations that pique  your interest & Input into your Personal Outcomes Tracker in Company Target List
Weekly Blogpost ',
homework: 'DRAFT Brand Statement
Update Linkedin Profile
Identify 3 New Organizations that pique  your interest & Input into your Personal Outcomes Tracker in Company Target List
Weekly Blogpost ' ,
smallGroup: 'NO SMALL GROUPS THIS WEEK',
resources: "Resume; Cover Letters & Emails; Social Media; Writing"
)

users = User.all

users.each do |user|
homeworkX = Homework.create(
  brand_strengths: "",
  brand_values: "",
  brand_interests: "",
  brand_personality: "",
  brand_achievement: "",
  brand_mentor: ""
  )

  user.homework_id = homeworkX.id
  user.save
end

link1 = Link.create(title: "DC Tech Meetups", link_type: "resource", address: "https://hackpad.com/How-to-Hack-the-DC-Tech-Ecosystem-EYfL7X7gepL", roadmap_id: 2)
link2 = Link.create(title: "Brand Statement", link_type: "homework", address: "", roadmap_id: 3)
