-- Recovered from the submitted NPC Emotional Response System final report.
-- No schema or sample database was supplied; this has not been executed.
CREATE VIEW v_NPCEmotions AS
SELECT N.NPCName, E.EmotionName, N.PersonalityType, N.EmotionPoints
FROM NPC N
JOIN Emotions E ON N.CurrentEmotionID = E.EmotionID;
