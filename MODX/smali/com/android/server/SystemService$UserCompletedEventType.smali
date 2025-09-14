.class public final Lcom/android/server/SystemService$UserCompletedEventType;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final EVENT_TYPE_USER_STARTING:I = 0x1

.field public static final EVENT_TYPE_USER_SWITCHING:I = 0x4

.field public static final EVENT_TYPE_USER_UNLOCKED:I = 0x2


# instance fields
.field public final mEventType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/SystemService$UserCompletedEventType;->mEventType:I

    .line 6
    return-void
.end method

.method public static newUserCompletedEventTypeForTest(I)Lcom/android/server/SystemService$UserCompletedEventType;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/SystemService$UserCompletedEventType;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/SystemService$UserCompletedEventType;-><init>(I)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public includesOnUserStarting()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/SystemService$UserCompletedEventType;->mEventType:I

    .line 3
    const/4 v0, 0x1

    .line 4
    and-int/2addr p0, v0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public includesOnUserSwitching()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/SystemService$UserCompletedEventType;->mEventType:I

    .line 3
    and-int/lit8 p0, p0, 0x4

    .line 5
    if-eqz p0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public includesOnUserUnlocked()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/SystemService$UserCompletedEventType;->mEventType:I

    .line 3
    and-int/lit8 p0, p0, 0x2

    .line 5
    if-eqz p0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "{"

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lcom/android/server/SystemService$UserCompletedEventType;->includesOnUserSwitching()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 15
    const-string/jumbo v1, "|Switching"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService$UserCompletedEventType;->includesOnUserUnlocked()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 27
    const-string/jumbo v1, "|Unlocked"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/SystemService$UserCompletedEventType;->includesOnUserStarting()Z

    .line 36
    move-result p0

    .line 37
    if-eqz p0, :cond_2

    .line 39
    const-string/jumbo p0, "|Starting"

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 48
    move-result p0

    .line 49
    const/4 v1, 0x1

    .line 50
    if-le p0, v1, :cond_3

    .line 52
    const-string/jumbo p0, "|"

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_3
    const-string/jumbo p0, "}"

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method
