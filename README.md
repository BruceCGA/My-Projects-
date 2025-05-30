# GitHub Pages

## API Module Description: 
Phase 1: User Directory

In this phase, I will crawl the user directory of all remaining humans to acquire an authentication token. The user directory is paginated, and I will need to find my token by navigating through the directory until I find a user whose username matches mine.

Phase 2: Bounties

In this phase, I will use the authentication token to access an API endpoint with various "bounties" that I can complete. The bounties are designed to practice scraping techniques and to practice using the requests library to invoke APIs.  The parameters of the task may also change at any time, I will need to write code to automate this scraping process rather than manually extracting it myself.

Phase 3: Submission

In this phase, I will POST data to a /submit endpoint to complete each bounty.

## Distributed Computing / MLOps Module Description:
PySpark Stack Overflow Data Analysis Overview
In this assignment, I will apply Apache Spark concepts to analyze a subset of the Stack Overflow data dump. This dataset contains questions, answers, comments, and user information from the popular programming Q&A website.
Dataset Description
The dataset contains the following tables:

    posts.parquet: Contains questions and answers
        Key columns: Id, PostTypeId (1=Question, 2=Answer), CreationDate, Score, Body, Title, Tags, OwnerUserId, ParentId, ViewCount, CommentCount, ClosedDate
    users.parquet: Contains user information
        Key columns: Id, Reputation, DisplayName, CreationDate, LastAccessDate, Location, AboutMe, Views, UpVotes, DownVotes
    comments.parquet: Contains comments on posts
        Key columns: Id, PostId, UserId, Score, Text, CreationDate
    tags.parquet: Contains tag information
        Key columns: Id, TagName, Count, ExcerptPostId, WikiPostId

The data has been resampled from the original Stack Overflow data dump to a more manageable size suitable for classroom analysis.
Programming Language Popularity Over Time:
How has the relative popularity of the top 10 programming languages changed over the past five years, and which languages are growing or declining the fastest?
Expected Output: 1. A DataFrame with columns: language, quarter, post_count,percentage_of_total, growth_rate - language: Name of the programming language - quarter: Time period in YYYY-Q# format (e.g., “2019-Q1”) - post_count: Number of posts in that quarter - percentage_of_total: Percentage of all programming language posts - growth_rate: Quarter-over-quarter percentage change

    A visualization showing the trend lines for each language over time

    A table of the top 5 fastest-growing and top 5 fastest-declining languages, measured by average quarterly growth rate

Key Spark Concepts: UDFs, DataFrame operations, window functions, time-series analysis

## Group_and_save_attachments

This is one of the automation macros I wrote for my coop. This one is the only one that doesn't involve confidentiality, so I can share this.
Purpose:
Automatically saves all attachments from emails located in a specific subfolder of the Outlook Inbox into organized folders on the user's computer.
Look in the "download files" folder in the Outlook Inbox.
For each email found:
Creates a folder on D:\attachment download\ named after the email subject.
Saves all attachments from that email into that folder.

## Hotdog Recognition

This project utilizes CNNs to solve a simple image recognition problem (identify if the food is a hot dog or not). I also built a GAN network for bird recognition, but unfortunately, that one exceeds the upload size limit. If interested, I can share a Google Colab link to that project: https://drive.google.com/file/d/1MrUAsjQMPXcZWs9ng3cm8M7TJ1WZUuNl/view?usp=drive_link

## Screening for Chronic Kidney Disease

I am building a predictive model to identify which adults in a test set of 2,819 people are most at risk for Chronic Kidney Disease (CKD) using a training set of 6,000 labeled cases.
These are the key deliverables for this assignment:
Split the data into:
    Training set (first 6,000 rows)
    Validation/Test set (last 2,819 rows)
    Save both as CSVs and upload into R.
Develop a Prediction Model:
    Use the training data to identify risk factors and build a predictive model.
    Try at least:
        Classification Tree
        Linear Regression (Linear Probability Model)
        Logistic Regression
    Choose the best model based on performance.
Make Predictions:
    Use my final model to predict CKD risk (0 or 1) for the 2,819 subjects in the test set.
    Save these predictions in an Excel file with:
        Column 1: Subject ID
        Column 2: Prediction (0 or 1)
Scoring System (your model's objective):
    +$1,300 for each person correctly predicted to have CKD.
    −$100 for every person predicted as “at risk” (i.e., predicted CKD = 1), whether correct or not.
    This means precision matters a lot—false positives are costly.
