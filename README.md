# Clothography

Clothography is a marketplace for second-hand clothing resale. Featuring an optional custom passwordless login and bitcoin acceptance it aims to streamline the process of buying and selling your clothes online. Stores user uploaded photos on S3 and supports tagging via acts-as-taggable-on for more precise searching. 

My final project for my [General Assembly WDI Course](https://generalassemb.ly/education/web-development-immersive), and a work in progress.

[Current Pivotal Tracker](https://www.pivotaltracker.com/n/projects/1076320)

## INSTALLATION

1. `git clone git@github.com:trinityXmontoya/clothography.git`
2. `cd clothography`
3. Run `bundle`
4. Run `touch .env` from your terminal or create a .env file.
5. Add `.env` to your `.gitignore` file
  This app requires a `.env` file to store your API keys. The `dotenv-rails gem` will load the variables from your `.env` file into the app when it is first loaded.
6. You will need access tokens from [AWS S3](http://blogs.aws.amazon.com/security/post/Tx1R9KDN9ISZ0HF/Where-s-my-secret-access-key), [TWITTER](https://apps.twitter.com/app/new), and [STRIPE](https://dashboard.stripe.com/account/apikeys).
  You will also need to declare a variable for your port of choice, email configuration, and the rack environment

  Your `.env` file should look as follows:

  ```
  S3_BUCKET_NAME=XXXX
  AWS_ACCESS_KEY_ID=XXXX
  AWS_SECRET_ACCESS_KEY=XXXX

  EMAIL_USERNAME=XXXX
  EMAIL_PASSWORD=XXXX

  TWITTER_CONSUMER_KEY=XXXX
  TWITTER_CONSUMER_SECRET=XXXX

  STRIPE_SECRET_KEY=XXXX
  STRIPE_PUBLISHABLE_KEY=XXXX
  
  RACK_ENV=XXXX
  PORT=XXXX
  ```
7. run `rails s`

The app will now be running at http://localhost:X, where X is the PORT number you specified in the `.env` file.
