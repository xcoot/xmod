.class public final Lcom/android/server/usage/BroadcastEvent;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIdForResponseEvent:J

.field public final mSourceUid:I

.field public final mTargetPackage:Ljava/lang/String;

.field public final mTargetUserId:I

.field public final mTimestampsMs:Landroid/util/LongArrayQueue;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/usage/BroadcastEvent;->mSourceUid:I

    .line 5
    .line 6
    iput-object p5, p0, Lcom/android/server/usage/BroadcastEvent;->mTargetPackage:Ljava/lang/String;

    .line 7
    .line 8
    iput p2, p0, Lcom/android/server/usage/BroadcastEvent;->mTargetUserId:I

    .line 9
    .line 10
    iput-wide p3, p0, Lcom/android/server/usage/BroadcastEvent;->mIdForResponseEvent:J

    .line 11
    .line 12
    new-instance p1, Landroid/util/LongArrayQueue;

    .line 13
    .line 14
    invoke-direct {p1}, Landroid/util/LongArrayQueue;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/server/usage/BroadcastEvent;->mTimestampsMs:Landroid/util/LongArrayQueue;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    instance-of v2, p1, Lcom/android/server/usage/BroadcastEvent;

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    check-cast p1, Lcom/android/server/usage/BroadcastEvent;

    .line 14
    .line 15
    iget v2, p0, Lcom/android/server/usage/BroadcastEvent;->mSourceUid:I

    .line 16
    .line 17
    iget v3, p1, Lcom/android/server/usage/BroadcastEvent;->mSourceUid:I

    .line 18
    .line 19
    if-ne v2, v3, :cond_2

    .line 20
    .line 21
    iget-wide v2, p0, Lcom/android/server/usage/BroadcastEvent;->mIdForResponseEvent:J

    .line 22
    .line 23
    iget-wide v4, p1, Lcom/android/server/usage/BroadcastEvent;->mIdForResponseEvent:J

    .line 24
    .line 25
    cmp-long v2, v2, v4

    .line 26
    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    iget v2, p0, Lcom/android/server/usage/BroadcastEvent;->mTargetUserId:I

    .line 30
    .line 31
    iget v3, p1, Lcom/android/server/usage/BroadcastEvent;->mTargetUserId:I

    .line 32
    .line 33
    if-ne v2, v3, :cond_2

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/usage/BroadcastEvent;->mTargetPackage:Ljava/lang/String;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/server/usage/BroadcastEvent;->mTargetPackage:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    move v0, v1

    .line 47
    :goto_0
    return v0

    .line 48
    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/usage/BroadcastEvent;->mSourceUid:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/server/usage/BroadcastEvent;->mTargetUserId:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-wide v2, p0, Lcom/android/server/usage/BroadcastEvent;->mIdForResponseEvent:J

    .line 14
    .line 15
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object p0, p0, Lcom/android/server/usage/BroadcastEvent;->mTargetPackage:Ljava/lang/String;

    .line 20
    .line 21
    filled-new-array {v0, p0, v1, v2}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "BroadcastEvent {srcUid="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/usage/BroadcastEvent;->mSourceUid:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ",tgtPkg="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/usage/BroadcastEvent;->mTargetPackage:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ",tgtUser="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/android/server/usage/BroadcastEvent;->mTargetUserId:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ",id="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Lcom/android/server/usage/BroadcastEvent;->mIdForResponseEvent:J

    .line 39
    .line 40
    const-string/jumbo p0, "}"

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1, v2, p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method
