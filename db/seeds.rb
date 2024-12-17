# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create!_by!(name: genre_name)
#   end

EducationalParagraph.destroy_all
EducationalPopup.destroy_all
Choice.destroy_all
StoryPart.destroy_all
Scenario.destroy_all

# db/seeds.rb

# Scenario 1: The Loneliness Epidemic and AI Chatbots
scenario1 = Scenario.create!(title: 'The Loneliness Epidemic and AI Chatbots', description: 'Exploring loneliness and overreliance on AI chatbots for emotional support.')

part1_1 = StoryPart.create!(scenario_id: scenario1.id, part_number: 1, content: "You’ve been feeling increasingly lonely and decide to try out a chatbot app designed for emotional support. It responds kindly to your worries, offering advice and empathy.")
choice1_1 = Choice.create!(story_part_id: part1_1.id, choice_text: "Relieved – it’s comforting to have someone “listen.”", evaluation_text: "You find comfort in the chatbot's empathy.")
choice1_2 = Choice.create!(story_part_id: part1_1.id, choice_text: "Neutral – it’s nice, but it doesn’t feel real.", evaluation_text: "The interaction feels helpful but lacks authenticity.")
choice1_3 = Choice.create!(story_part_id: part1_1.id, choice_text: "Uneasy – relying on AI for emotional connection seems unnatural.", evaluation_text: "You feel uncomfortable about using AI for emotional support.")

part1_2 = StoryPart.create!(scenario_id: scenario1.id, part_number: 2, content: "After several weeks, you find yourself turning to the chatbot for advice instead of calling your best friend. You realize it’s easier but feels less personal.")
choice2_1 = Choice.create!(story_part_id: part1_2.id, choice_text: "Continue using the chatbot—it’s less judgmental.", evaluation_text: "You find the chatbot less intimidating than real conversations.")
choice2_2 = Choice.create!(story_part_id: part1_2.id, choice_text: "Balance chatbot use with reaching out to real friends.", evaluation_text: "You recognize the need to balance AI use with human connections.")
choice2_3 = Choice.create!(story_part_id: part1_2.id, choice_text: "Stop using the chatbot—it’s affecting your real connections.", evaluation_text: "You feel that the chatbot is starting to replace meaningful relationships.")

part1_3 = StoryPart.create!(scenario_id: scenario1.id, part_number: 3, content: "You hear about a friend who is completely dependent on chatbots and struggles to communicate with others in person.")
choice3_1 = Choice.create!(story_part_id: part1_3.id, choice_text: "AI is a useful tool but needs to be balanced with human interaction.", evaluation_text: "You believe in using AI but only alongside human connection.")
choice3_2 = Choice.create!(story_part_id: part1_3.id, choice_text: "People should avoid chatbots for emotional support.", evaluation_text: "You believe emotional support should come from real people.")
choice3_3 = Choice.create!(story_part_id: part1_3.id, choice_text: "Chatbots are fine—everyone connects differently.", evaluation_text: "You think different people have different needs for support.")

popup1 = EducationalPopup.create!(scenario_id: scenario1.id)

EducationalParagraph.create!(
  educational_popup: popup1, 
  title: "Loneliness Across Generations", 
  content: "Loneliness is becoming a significant public health concern, often referred to as an epidemic. While it is commonly associated with older adults, research indicates that younger generations actually report higher levels of loneliness. There are potential links to the advancement in technology, digital lives and media affecting this. Nearly three-quarters of this age group experience loneliness more intensely than others. Chronic loneliness not only affects emotional well-being but also contributes to physical and mental health challenges, underscoring its profound impact on society.")
EducationalParagraph.create!(
  educational_popup: popup1, 
  title: "The Role of AI Chatbots in Mental Health", 
  content: "AI chatbots are increasingly being used to provide emotional support, offering convenience and accessibility for users seeking immediate help. Studies suggest that while chatbots can effectively reduce feelings of worry, their impact on stress reduction is limited. Human interactions remain superior in providing genuine empathy and understanding, which are essential for long-term emotional relief."
)

EducationalParagraph.create!(
  educational_popup: popup1, 
  title: "Strengths of Chatbots", 
  content: "Chatbots are available 24/7, making them ideal for immediate or crisis situations. Unlike traditional therapy, chatbots can offer free or low-cost support. Some users find it easier to open up to chatbots due to the lack of judgment."
)

EducationalParagraph.create!(
  educational_popup: popup1, 
  title: "Challenges with Chatbots", 
  content: "Despite their advantages, chatbots face several limitations. Responses from chatbots often feel scripted, which can leave users feeling misunderstood or unsupported. Users may inherently perceive chatbots as less capable of providing emotional support due to their artificial nature. In sensitive situations like mental health, chatbots may inadvertently provide inaccurate advice, potentially worsening users' issues."
)

EducationalParagraph.create!(
  educational_popup: popup1, 
  title: "Comparing Human Support to AI Chatbots", 
  content: "Human support is perceived as more effective and emotionally fulfilling than chatbot interactions. This is because human conversations offer empathy, genuine understanding, and the ability to adapt naturally to emotional cues. Chatbots, while helpful for certain tasks, often struggle to replicate this depth of connection, which diminishes their perceived reliability as sources of emotional support."
)

EducationalParagraph.create!(
  educational_popup: popup1, 
  title: "Enhancing Chatbot Effectiveness", 
  content: "To improve their role in mental health care, chatbots should focus on incorporating reciprocal self-disclosure to foster trust and reduce worry. Balancing empathetic language with accurate, context-sensitive advice and minimizing scripted responses will help create a more authentic user experience."
)

# Scenario 2: Co-Shaping Digital and Non-Digital Lives
scenario2 = Scenario.create!(title: 'Co-Shaping Digital and Non-Digital Lives', description: 'Exploring how digital platforms influence self-image and real-life decisions.')

part2_1 = StoryPart.create!(scenario_id: scenario2.id, part_number: 1, content: "You’re scrolling through Instagram and see heavily edited photos of influencers. You feel self-conscious about your appearance.")
choice2_1_1 = Choice.create!(story_part_id: part2_1.id, choice_text: "Admire the influencers and think about enhancing your looks.", evaluation_text: "You start thinking about changing your appearance.")
choice2_1_2 = Choice.create!(story_part_id: part2_1.id, choice_text: "Remind yourself these images aren’t reality.", evaluation_text: "You remember that what you see is often not the full picture.")
choice2_1_3 = Choice.create!(story_part_id: part2_1.id, choice_text: "Feel anxious and avoid posting your own photos.", evaluation_text: "You feel pressure and choose to avoid sharing yourself.")

part2_2 = StoryPart.create!(scenario_id: scenario2.id, part_number: 2, content: "You decide to edit your next post heavily, using filters and touch-ups. Your friends praise it, but you feel disconnected from your real self.")
choice2_2_1 = Choice.create!(story_part_id: part2_2.id, choice_text: "Continue editing—it’s part of the platform culture.", evaluation_text: "You get caught in the culture of constant perfection.")
choice2_2_2 = Choice.create!(story_part_id: part2_2.id, choice_text: "Post more authentic photos to maintain balance.", evaluation_text: "You want to stay true to yourself, even in a digital world.")
choice2_2_3 = Choice.create!(story_part_id: part2_2.id, choice_text: "Avoid posting altogether—it feels too stressful.", evaluation_text: "You feel overwhelmed and choose to stop posting.")

part2_3 = StoryPart.create!(scenario_id: scenario2.id, part_number: 3, content: "You meet a friend who reveals they underwent cosmetic surgery inspired by filters.")
choice2_3_1 = Choice.create!(story_part_id: part2_3.id, choice_text: "Normalize the influence of digital platforms on real-life choices.", evaluation_text: "You think it’s just part of the influence of social media.")
choice2_3_2 = Choice.create!(story_part_id: part2_3.id, choice_text: "Reflect on the potential harm of unrealistic beauty standards.", evaluation_text: "You worry about the harm these standards cause.")
choice2_3_3 = Choice.create!(story_part_id: part2_3.id, choice_text: "Focus on the freedom of choice rather than the reason behind it.", evaluation_text: "You focus on your friend's personal choice, not the influence of platforms.")

popup2 = EducationalPopup.create!(scenario_id: scenario2.id)

EducationalParagraph.create!(
  educational_popup: popup2, 
  title: "Digital and Non-digital Lives", 
  content: "In the modern era, digital technologies have become deeply entwined with our understanding of reality and our sense of self. These technologies act as both tools and environments, transforming how we perceive and interact with the world. Rather than existing as separate realms, the digital and non-digital increasingly co-shape each other, influencing our psychological lives, social relationships, and experiences of reality. This dynamic interplay can be understood through two broad perspectives: the virtual as a diminishment of the real and the virtual as an enhancement of the real."
)

EducationalParagraph.create!(
  educational_popup: popup2, 
  title: "The Virtual as a Diminishment of the Real", 
  content: "A common stance on the virtual is that it diminishes the richness of real-world experiences. Critics argue that the digital mirrors reality without genuine engagement, offering shallow simulations that fail to capture the depth of human connection. Moreso, as virtual environments replace physical objects and interactions, they risk impoverishing emotional connections and imagination. By prioritizing convenience and control, people may neglect the challenges and authenticity of real life, fostering disconnection and superficiality."
)

EducationalParagraph.create!(
  educational_popup: popup2, 
  title: "The Virtual as an Enhancement of the Real", 
  content: "Conversely, others see the virtual as a powerful tool that enhances reality. Digital platforms allow for creative storytelling, richer connections, and broader self-expression. Social media and other technologies collapse barriers of time and space, enabling users to share memories and emotions in ways that elevate the limitations of the physical world. This perspective celebrates how the digital can expand human experiences, fostering intimacy and creativity. However, it cautions against over-reliance, as addiction to hyperreal, curated digital environments may erode one’s ability to navigate real-life challenges and complexities."
)

EducationalParagraph.create!(
  educational_popup: popup2, 
  title: "A Balanced Perspective", 
  content: "Both stances highlight the tension between the allure of the virtual and the grounding nature of the real. The digital is neither a wholly liberating force nor an unequivocal threat, it is both a remedy and poison. Understanding the co-shaping relationship between digital and non-digital life requires moving beyond binary oppositions to embrace a continuum of influence. By doing so, we can appreciate the profound ways digital technologies both challenge and enrich our experiences of the world."
)

# Scenario 3: Digital Life Offering Protection
scenario_3 = Scenario.create!(
  title: "Digital Life Offering Protection",
  description: "This scenario explores the balance between digital convenience and the need for authentic, in-person social connections in teaching and communication."
)

# Scenario 3 - Part 1
part_1_3 = StoryPart.create!(
  scenario: scenario_3,
  part_number: 1,
  content: "As a new teacher, you receive an email with a complex question. You appreciate the time to craft a thoughtful response."
)

Choice.create!([
  { story_part: part_1_3, choice_text: "Grateful—it’s less pressure than answering in person.", evaluation_text: "You feel thankful for the time and space to craft a thoughtful response." },
  { story_part: part_1_3, choice_text: "Mixed—you miss the spontaneity of real interaction.", evaluation_text: "You realize that although email is efficient, it's less personal than face-to-face conversation." },
  { story_part: part_1_3, choice_text: "Prefer in-person questions—it feels more natural.", evaluation_text: "You value the directness and warmth of in-person interactions." }
])

# Scenario 3 - Part 2
part_2_3 = StoryPart.create!(
  scenario: scenario_3,
  part_number: 2,
  content: "During a video lecture, a student asks an unexpected question. You feel flustered but know you can follow up via email."
)

Choice.create!([
  { story_part: part_2_3, choice_text: "Reply immediately, even if unsure.", evaluation_text: "You feel compelled to provide an answer quickly, even if not fully researched." },
  { story_part: part_2_3, choice_text: "Take time to research before responding.", evaluation_text: "You prioritize accuracy and feel more comfortable when you have all the information." },
  { story_part: part_2_3, choice_text: "Acknowledge the question but suggest discussing it later.", evaluation_text: "You prefer to give a thoughtful response and suggest taking it offline." }
])

# Scenario 3 - Part 3
part_3_3 = StoryPart.create!(
  scenario: scenario_3,
  part_number: 3,
  content: "You realize online teaching is efficient but lacks the energy of face-to-face interaction."
)

Choice.create!([
  { story_part: part_3_3, choice_text: "Fully embrace the digital format.", evaluation_text: "You appreciate the efficiency and convenience of online teaching." },
  { story_part: part_3_3, choice_text: "Seek a balance between online and in-person teaching.", evaluation_text: "You recognize the value of both formats and strive to find a healthy balance." },
  { story_part: part_3_3, choice_text: "Prefer in-person interactions despite challenges.", evaluation_text: "You miss the personal connection and prefer the energy of in-person teaching." }
])

# Educational Pop-up for Scenario 3
popup3 = EducationalPopup.create!(
  scenario: scenario_3)

EducationalParagraph.create!(
  educational_popup: popup3, 
  title: "The Benefits of Digital Protection", 
  content: "Technology provides a shield of convenience and security in our increasingly interconnected world. It enables rapid communication through emails, texts, and virtual meetings, transforming how we engage both personally and professionally. In many cases, it enhances accessibility, allowing for global collaboration, swift information exchange, and streamlined workflows. Digital communication also offers a layer of protection by creating boundaries in sensitive conversations. For example, it allows individuals to process emotions before responding, reducing the risk of conflict or miscommunication. This aspect can be especially valuable in professional contexts, where thoughtful communication is critical for maintaining relationships and achieving success."
)

EducationalParagraph.create!(
  educational_popup: popup3, 
  title: "The Challenges of Overreliance on Digital Communication", 
  content: "However, the heavy reliance on digital platforms can erode essential interpersonal skills. Nuances such as body language, tone of voice, and spontaneous interaction are often lost, diminishing the depth and quality of human connections. Moreover, the screen creates a barrier that may desensitize individuals to the emotional subtleties of others, making it harder to empathize and engage meaningfully. Social media intensifies this paradox, fostering feelings of isolation despite increased connectivity. The curated nature of online profiles can exacerbate self-esteem issues and promote a sense of inadequacy."
)

EducationalParagraph.create!(
  educational_popup: popup3, 
  title: "Striking a Balance", 
  content: "To harness the advantages of digital communication while mitigating its drawbacks, it is essential to balance virtual and in-person interactions. Incorporating face-to-face communication nurtures empathy, emotional intelligence, and meaningful relationships, counteracting the potential mental health impacts of excessive screen time. This balanced approach ensures that technology acts as a tool for connection and protection rather than a barrier to authentic human engagement."
)

# Scenario 4: Automated Tech and Gender Bias
scenario_4 = Scenario.create!(
  title: "Automated Tech and Gender Bias",
  description: "This scenario examines the potential for gender bias in AI technologies and the societal implications of these biases."
)

# Scenario 4 - Part 1
part_1_4 = StoryPart.create!(
  scenario: scenario_4,
  part_number: 1,
  content: "You’re using a voice assistant with a default female voice to manage your tasks."
)

Choice.create!([
  { story_part: part_1_4, choice_text: "It’s efficient and soothing.", evaluation_text: "You appreciate the calming and helpful nature of the assistant." },
  { story_part: part_1_4, choice_text: "It reinforces gender stereotypes.", evaluation_text: "You recognize that assigning a female voice to AI can perpetuate traditional gender roles." },
  { story_part: part_1_4, choice_text: "You don’t think about it much.", evaluation_text: "You use the assistant without considering the gender implications." }
])

# Scenario 4 - Part 2
part_2_4 = StoryPart.create!(
  scenario: scenario_4,
  part_number: 2,
  content: "Your sibling interacts rudely with the assistant, demanding tasks without 'please' or 'thank you.'"
)

Choice.create!([
  { story_part: part_2_4, choice_text: "Ignore it—it’s just an AI.", evaluation_text: "You feel that it’s not important to treat AI with respect." },
  { story_part: part_2_4, choice_text: "Suggest they treat it more respectfully.", evaluation_text: "You remind them to be polite, even with AI systems." },
  { story_part: part_2_4, choice_text: "Wonder if this impacts their behavior with people.", evaluation_text: "You consider how AI interactions might shape real-life behavior." }
])

# Scenario 4 - Part 3
part_3_4 = StoryPart.create!(
  scenario: scenario_4,
  part_number: 3,
  content: "You read an article about AI perpetuating societal biases and question the default settings of these tools."
)

Choice.create!([
  { story_part: part_3_4, choice_text: "Designers should address these biases.", evaluation_text: "You believe that AI creators should be more mindful of these biases in their designs." },
  { story_part: part_3_4, choice_text: "It’s an overreaction—AI doesn’t influence behavior.", evaluation_text: "You think that concerns about AI perpetuating biases are overstated." },
  { story_part: part_3_4, choice_text: "Consumers should demand more ethical AI designs.", evaluation_text: "You believe that consumers have a role in pushing for ethical AI designs." }
])

# Educational Pop-up for Scenario 4
popup4 = EducationalPopup.create!(
  scenario: scenario_4,
)

EducationalParagraph.create!(
  educational_popup: popup4, 
  title: "Gender Biases in Artificial Intelligence Systems", 
  content: "Artificial intelligence systems can exhibit gender biases based on the data they are trained on, leading to stereotypes in their interactions and outputs. The key social causes of gender bias in AI algorithms are attributed equally to issues in the algorithmic design process, such as the lack of diversity in development teams, and biases in the training datasets. The lack of diversity in development teams leads to unbalanced and unfair outcomes, while biases in the training datasets result in the introduction of bias at many points in the algorithmic design process. These causes contribute to the perpetuation of gender bias in AI algorithms."
)

EducationalParagraph.create!(
  educational_popup: popup4, 
  title: "How AI Bots and Voice Assistants Reinforce Gender Bias", 
  content: "AI bots and voice assistants, such as Siri, Alexa, Cortana, and Google Assistant, have traditionally featured female-sounding voices, promoting unfair gender stereotypes and raising concerns over bias, automation, and human safety. The report 'How AI bots and voice assistants reinforce gender bias', from The Brookings Institution's Artificial Intelligence and Emerging Technology Initiative, reviews the history of voice assistants, gender bias, the diversity of the tech workforce, and recent developments regarding gender portrayals in voice assistants. Its goal is to provide recommendations to mitigate harmful gender portrayals. The increasing prevalence of voice assistants, with an estimated 8 billion devices globally in 2023, highlights the need for clearer social and ethical standards regarding their design. Adding human-like characteristics to technology reflects the biases of the teams that build it. As voice assistants become more integrated into everyday life, addressing gender bias in their design becomes crucial."
)

EducationalParagraph.create!(
  educational_popup: popup4, 
  title: "Gender Bias and Its Impact on Society and Industry", 
  content: "Gender biases in AI can exacerbate existing social and economic disparities. Historically, gender stereotypes have led to significant inequalities, such as women being expected to exhibit traditionally 'feminine' traits like helpfulness and altruism, while men are associated with leadership and authority. These stereotypes contribute to challenges such as the 'tightrope effect,' where women must balance being assertive and accommodating, leading to a disproportionate burden of extra work, particularly administrative tasks."
)

EducationalParagraph.create!(
  educational_popup: popup4, 
  title: "Gender Representation in AI and Voice Assistants", 
  content: "Research has demonstrated that individuals interact with male-sounding and female-sounding computer voices differently based on gender stereotypes. Despite some voice assistants avoiding explicit gender identification, their female-sounding default voices often reinforce the notion of women being submissive and compliant. Studies suggest that gendered voices can shape users' attitudes and behaviors, perpetuating harmful stereotypes. The prominence of female-sounding voices has faced criticism, such as these systems can function as socialization tools, reinforcing outdated gender roles. In pop culture, portrayals like Siri as a 'quasi-girlfriend' in The Big Bang Theory further highlight these stereotypes."
)

EducationalParagraph.create!(
  educational_popup: popup4, 
  title: "Addressing Gender-Based Harassment in AI Systems", 
  content: "AI developers are increasingly tackling gender-based harassment in bots and voice assistants. For example, companies have updated their systems to respond more assertively to inappropriate or sexual comments. In 2017, Leah Fessler of Quartz found that voice assistants like Siri and Alexa often responded evasively or subserviently to harassment. By 2020, responses had improved, with bots explicitly rejecting such comments or reminding users of their technological nature. Despite progress, harassment remains a significant concern. Research found that at least 5% of digital assistant inquiries are sexually explicit, underscoring the need for bots to model appropriate responses. These interactions shape users' offline perceptions of acceptable behavior, highlighting the societal impact of AI's design."
)

EducationalParagraph.create!(
  educational_popup: popup4, 
  title: "Challenges in Speech Recognition and Accuracy", 
  content: "Speech recognition technology, widely used in voice assistants, faces challenges in accuracy and bias. A significant gap exists in recognizing diverse voices. These biases stem from linguistic and cultural patterns that influence AI's interpretation of speech. Addressing such disparities is crucial for creating fair and equitable AI systems."
)

EducationalParagraph.create!(
  educational_popup: popup4, 
  title: "Recommendations for Mitigating Gender Bias in AI", 
  content: "To reduce gender biases in AI, industry-wide standards should be developed with input from diverse stakeholders, including academia and civil society. These standards should address key issues, such as building diverse developer teams, defining gender-based harassment, and reducing algorithmic bias. Companies must also implement methods to hold themselves accountable for biases and errors in their systems. Diversity in the development process is essential for reducing biases and promoting inclusive AI. By fostering diverse teams and setting measurable goals, the tech industry can mitigate harmful stereotypes and create technologies that reflect positive societal norms and values."
)

# Scenario 5: Politics and Echo Chambers in Tech
scenario_5 = Scenario.create!(
  title: "Politics and Echo Chambers in Tech",
  description: "This scenario explores the impact of social media algorithms on political discourse and the reinforcement of echo chambers."
)

# Scenario 5 - Part 1
part_1_5 = StoryPart.create!(
  scenario: scenario_5,
  part_number: 1,
  content: "You join a discussion on a social media platform about a controversial topic. Everyone seems to agree with each other."
)

Choice.create!([
  { story_part: part_1_5, choice_text: "Reassured—your views are validated.", evaluation_text: "You feel comforted knowing that others share your perspective." },
  { story_part: part_1_5, choice_text: "Uncomfortable—it feels like an echo chamber.", evaluation_text: "You notice the lack of diverse opinions and feel uneasy." },
  { story_part: part_1_5, choice_text: "Neutral—you’re just observing.", evaluation_text: "You don't engage but feel like it's just part of the discussion." }
])

# Scenario 5 - Part 2
part_2_5 = StoryPart.create!(
  scenario: scenario_5,
  part_number: 2,
  content: "You encounter someone with opposing views and consider engaging."
)

Choice.create!([
  { story_part: part_2_5, choice_text: "Ignore them—it’s not worth the conflict.", evaluation_text: "You choose to avoid the potential argument and ignore the opposing view." },
  { story_part: part_2_5, choice_text: "Respond respectfully, aiming for a balanced discussion.", evaluation_text: "You engage thoughtfully, attempting to broaden the conversation." },
  { story_part: part_2_5, choice_text: "Block them—it’s too stressful.", evaluation_text: "You choose to block the person, feeling that the conversation won’t be productive." }
])

# Scenario 5 - Part 3
part_3_5 = StoryPart.create!(
  scenario: scenario_5,
  part_number: 3,
  content: "You notice the platform’s algorithm promotes similar content, reinforcing your beliefs."
)

Choice.create!([
  { story_part: part_3_5, choice_text: "It’s helpful to see aligned views.", evaluation_text: "You feel comforted by the reinforcement of your own beliefs." },
  { story_part: part_3_5, choice_text: "It limits exposure to diverse perspectives.", evaluation_text: "You recognize that the algorithm is narrowing your view of the world." },
  { story_part: part_3_5, choice_text: "Algorithms shouldn’t influence discourse this way.", evaluation_text: "You believe that the influence of algorithms in political discourse is problematic." }
])

# Educational Pop-up for Scenario 5
popup5 = EducationalPopup.create!(
  scenario: scenario_5,)

  EducationalParagraph.create!(
    educational_popup: popup5, 
    title: "The Rise of Echo Chambers", 
    content: "Echo chambers in the media can reshape what we see on our phones. Fueled by social media algorithms and user behaviors, they limit exposure to diverse viewpoints, perpetuating one-sided views. The implications of such echo chambers are profound, impacting the way individuals consume information, form opinions, and engage in societal conversations."
  )
  
  EducationalParagraph.create!(
    educational_popup: popup5, 
    title: "Understanding Echo Chambers and Filter Bubbles", 
    content: "Echo chambers occur when individuals encounter information that reinforces their existing beliefs while excluding opposing views. Many platforms like Facebook, X and Reddit use algorithms to curate content based on user preferences, contributing to the phenomena."
  )
  
  EducationalParagraph.create!(
    educational_popup: popup5, 
    title: "The Role of Social Media Algorithms", 
    content: "Social media algorithms are central to creating echo chambers by prioritizing content that aligns with user preferences. This system, driven by confirmation bias, results in self-reinforcing feeds. Platforms like Instagram, YouTube, and Facebook often amplify this effect, fostering environments where unverified or biased information spreads easily. While these tailored experiences enhance user engagement, they contribute to polarization and societal division."
  )
  
  EducationalParagraph.create!(
    educational_popup: popup5, 
    title: "Potential Solutions: Breaking Free from Echo Chambers", 
    content: "Addressing the impact of echo chambers requires proactive strategies from both individuals and platforms. Users can diversify their information sources by seeking content that challenges their perspectives and reading critically to verify facts. Platforms can enhance algorithmic transparency and promote diverse content. Encouraging exposure to multiple viewpoints is essential for fostering a well-informed public and mitigating the adverse effects of echo chambers."
  )
  
  EducationalParagraph.create!(
    educational_popup: popup5, 
    title: "The Need for Balance in Media Consumption", 
    content: "Echo chambers can significantly influence political discourse and information consumption. While they provide comfort and affirmation, they hinder understanding and perpetuate division. By adopting a multidimensional approach to media consumption, individuals and platforms can promote a healthier, more inclusive information ecosystem that supports critical thinking and societal cohesion."
  )  

puts("seeding successful :)")
