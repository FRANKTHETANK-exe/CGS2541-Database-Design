-- Recovered from the submitted NPC Emotional Response System final report.
-- Original statements, with document line breaks restored.
-- No schema or sample database was supplied; these have not been executed.

-- 1. List Angry NPCs
SELECT N.NPCName
FROM NPC N
JOIN Emotions E ON N.CurrentEmotionID = E.EmotionID
WHERE E.EmotionName = 'Angry';

-- 2. Show Interactions Between Player and NPC
-- The supplied query returns all interactions; it has no player/NPC filter.
SELECT P.PlayerName, N.NPCName, A.ActionName, I.InteractionTime
FROM Interactions I
JOIN Players P ON I.PlayerID = P.PlayerID
JOIN NPC N ON I.NPCID = N.NPCID
JOIN Actions A ON I.ActionID = A.ActionID;

-- 3. Most Impactful Actions (original report title)
-- This counts action frequency, not impact magnitude.
SELECT A.ActionName, COUNT(*) AS ActionCount
FROM Interactions I
JOIN Actions A ON I.ActionID = A.ActionID
GROUP BY A.ActionName
ORDER BY ActionCount DESC;

-- 4. Retrieve Overall Player Impact
SELECT P.PlayerName, SUM(A.Impact) AS TotalImpact
FROM Interactions I
JOIN Players P ON I.PlayerID = P.PlayerID
JOIN Actions A ON I.ActionID = A.ActionID
GROUP BY P.PlayerName;

-- 5. Positive Impact Actions
SELECT ActionName
FROM Actions
WHERE Impact > 0;
