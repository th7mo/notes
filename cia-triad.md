---
title: "CIA Triad"
description: "A security model design to protect information"
isPublic: true
---

The CIA triad is a security model designed to protect (digital) information.
CIA stands for:

* Confidentiality
* Integrity
* Availability

The goal of Confidentiality is restricting accessibility to information. This
can be achieved by encrypting information, authentication mechanisms and
access controls.

Integrity guarantees that the information will not be modified undesirable.
(Immutability of information). Methods to keep integrity are storing the
information multiple times, checksums that prove that data has been modified and
digital signatures.

Availability ensures that the information is always accessible to the people
that are privileged to do so. This can be achieved by load-balancing and
recoveries.
