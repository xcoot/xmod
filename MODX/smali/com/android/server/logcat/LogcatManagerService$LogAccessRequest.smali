.class public final Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFd:I

.field public final mGid:I

.field public final mPid:I

.field public final mUid:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    .line 6
    iput p2, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    .line 8
    iput p3, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    .line 10
    iput p4, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;

    .line 13
    iget v1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    .line 15
    iget v3, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    .line 17
    if-ne v3, v1, :cond_2

    .line 19
    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    .line 21
    iget v3, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    .line 23
    if-ne v1, v3, :cond_2

    .line 25
    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    .line 27
    iget v3, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    .line 29
    if-ne v1, v3, :cond_2

    .line 31
    iget p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    .line 33
    iget p1, p1, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    .line 35
    if-ne p0, p1, :cond_2

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v0, v2

    .line 39
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v2

    .line 19
    iget p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p0

    .line 25
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 32
    move-result p0

    .line 33
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "LogAccessRequest{mUid="

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mUid:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", mGid="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mGid:I

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", mPid="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mPid:I

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ", mFd="

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget p0, p0, Lcom/android/server/logcat/LogcatManagerService$LogAccessRequest;->mFd:I

    .line 40
    const/16 v1, 0x7d

    .line 42
    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/magnification/WindowMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method
