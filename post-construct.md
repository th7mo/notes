---
title: "@PostConstruct"
description: "Spring Boot lifecycle Annotation"
isPublic: true
dateCreated: "20-09-2024"
dateLastModified: "20-09-2024"
---

The `@PostConstruct` annotation can be used to call a method of a class after
the initialization of a bean is finished:

```java
import jakarta.annotation.PostConstruct;

@PostConstruct
public void init() {
    // Do stuff
}
```

This can be useful if a field of a class is dependent on another field that is
injected:

```java
@Value("${some.property}")
private String someProperty;

private String dependentProperty = foo(someProperty);
```

The code fragment above will crash because `someProperty` is not initialized in
time. The solution is to assign the `dependentProperty` after the bean is
created:

```java
import jakarta.annotation.PostConstruct;

@Value("${some.property}")
private String someProperty;

private String dependentProperty;

@PostConstruct
public void init() {
    dependentProperty = foo(someProperty);
}
```

As of JDK 11 the `@PostConstruct` and `@PreDestroy` annotations were moved from
`javax.annotation` to `jakarta.annotation`.
