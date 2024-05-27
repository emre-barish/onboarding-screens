# Onboarding Screens


| **Device** | **Minimum OS** |
|:---:|:---:|
| **iPhone** | iOS 16 |

## Overview

This sample app shows how to display a "Welcome" screen when the app is launched for the first time, or a "What's New" screen when the app is launched after it is updated with new features.

There are two types of onboarding screens in the sample app: `welcome` and `whatsNew`. These types are implemented as enum cases in an enum called `OnboardingType`. The onboarding features to be displayed are created through the `OnboardingFeature` struct. And the array of onboarding features are assigned to their respective `OnboardingType` enum cases.
