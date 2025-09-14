.class public abstract Lcom/android/server/WatchdogDiagnostics;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static printAnnotatedStack(Ljava/lang/Thread;Ljava/io/PrintWriter;)Z
    .locals 9

    .line 1
    invoke-static {p0}, Ldalvik/system/VMStack;->getAnnotatedThreadStackTrace(Ljava/lang/Thread;)[Ldalvik/system/AnnotatedStackTraceElement;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    const-string v3, "!@ "

    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string p0, " annotated stack trace:"

    .line 25
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    array-length p0, v0

    .line 36
    move v2, v1

    .line 37
    :goto_0
    if-ge v2, p0, :cond_3

    .line 39
    aget-object v3, v0, v2

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    const-string v5, "!@    at "

    .line 45
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v3}, Ldalvik/system/AnnotatedStackTraceElement;->getStackTraceElement()Ljava/lang/StackTraceElement;

    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v3}, Ldalvik/system/AnnotatedStackTraceElement;->getBlockedOn()Ljava/lang/Object;

    .line 65
    move-result-object v4

    .line 66
    const-string v5, "!@    "

    .line 68
    if-eqz v4, :cond_1

    .line 70
    invoke-virtual {v3}, Ldalvik/system/AnnotatedStackTraceElement;->getBlockedOn()Ljava/lang/Object;

    .line 73
    move-result-object v4

    .line 74
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 77
    move-result v6

    .line 78
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 89
    move-result-object v4

    .line 90
    filled-new-array {v6, v4}, [Ljava/lang/Object;

    .line 93
    move-result-object v4

    .line 94
    const-string v6, "- waiting to lock <0x%08x> (a %s)"

    .line 96
    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    move-result-object v4

    .line 104
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    :cond_1
    invoke-virtual {v3}, Ldalvik/system/AnnotatedStackTraceElement;->getHeldLocks()[Ljava/lang/Object;

    .line 110
    move-result-object v4

    .line 111
    if-eqz v4, :cond_2

    .line 113
    invoke-virtual {v3}, Ldalvik/system/AnnotatedStackTraceElement;->getHeldLocks()[Ljava/lang/Object;

    .line 116
    move-result-object v3

    .line 117
    array-length v4, v3

    .line 118
    move v6, v1

    .line 119
    :goto_1
    if-ge v6, v4, :cond_2

    .line 121
    aget-object v7, v3, v6

    .line 123
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 126
    move-result v8

    .line 127
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    move-result-object v8

    .line 131
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    move-result-object v7

    .line 135
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 138
    move-result-object v7

    .line 139
    filled-new-array {v8, v7}, [Ljava/lang/Object;

    .line 142
    move-result-object v7

    .line 143
    const-string v8, "- locked <0x%08x> (a %s)"

    .line 145
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 148
    move-result-object v7

    .line 149
    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    move-result-object v7

    .line 153
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    add-int/lit8 v6, v6, 0x1

    .line 158
    goto :goto_1

    .line 159
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 161
    goto :goto_0

    .line 162
    :cond_3
    const/4 p0, 0x1

    .line 163
    return p0
.end method
