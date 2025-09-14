.class public Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;
.super Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mStackTraceElements:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;-><init>(JLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public dumpDetails(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->findMethodName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, "Failed to get method name"

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->findCallSiteIndex()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    .line 19
    .line 20
    array-length v0, v0

    .line 21
    if-ge p1, v0, :cond_1

    .line 22
    .line 23
    const-string v0, " at "

    .line 24
    .line 25
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    .line 29
    .line 30
    aget-object v0, v0, p1

    .line 31
    .line 32
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    return-void
.end method

.method public final findCallSiteIndex()I
    .locals 4

    .line 1
    const-class v0, Lcom/android/server/power/ShutdownCheckPoints;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    .line 9
    .line 10
    array-length v3, v2

    .line 11
    if-ge v1, v3, :cond_0

    .line 12
    .line 13
    aget-object v2, v2, v1

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    .line 29
    .line 30
    array-length v3, v2

    .line 31
    if-ge v1, v3, :cond_1

    .line 32
    .line 33
    aget-object v2, v2, v1

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    return v1
.end method

.method public final findMethodName()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->findCallSiteIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    .line 6
    .line 7
    array-length v1, p0

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    aget-object p0, p0, v0

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v1, "."

    .line 21
    .line 22
    invoke-static {v0, v1, p0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "SYSTEM"

    .line 2
    .line 3
    return-object p0
.end method
