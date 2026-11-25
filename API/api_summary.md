# API Summary

## What is a REST API?
A REST API allows different applications to communicate over the internet using HTTP methods. It exchanges data in formats such as JSON.

## HTTP Status Codes
- 200: Request successful.
- 404: Requested resource not found.

## jq Filter
Filter used:
jq '{name:.name, repos:.public_repos, followers:.followers, joined:.created_at}'

- name: Displays GitHub user's name.
- repos: Displays public repositories.
- followers: Displays followers.
- joined: Displays account creation date.
