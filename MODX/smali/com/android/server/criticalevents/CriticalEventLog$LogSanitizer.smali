.class public final Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mTraceProcessClassEnum:I

.field public mTraceProcessName:Ljava/lang/String;

.field public mTraceUid:I


# virtual methods
.method public final shouldSanitize(IILjava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p3, :cond_0

    .line 5
    iget-object v2, p0, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceProcessName:Ljava/lang/String;

    .line 7
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p3

    .line 11
    if-eqz p3, :cond_0

    .line 13
    iget p3, p0, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceUid:I

    .line 15
    if-ne p3, p2, :cond_0

    .line 17
    move p2, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move p2, v0

    .line 20
    :goto_0
    if-ne p1, v1, :cond_1

    .line 22
    iget p0, p0, Lcom/android/server/criticalevents/CriticalEventLog$LogSanitizer;->mTraceProcessClassEnum:I

    .line 24
    if-ne p0, v1, :cond_1

    .line 26
    if-nez p2, :cond_1

    .line 28
    move v0, v1

    .line 29
    :cond_1
    return v0
.end method
