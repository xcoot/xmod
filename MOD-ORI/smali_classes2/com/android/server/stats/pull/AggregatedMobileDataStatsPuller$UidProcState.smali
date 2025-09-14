.class public final Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mState:I

.field public final mUid:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mUid:I

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mState:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;

    .line 11
    .line 12
    iget v1, p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mUid:I

    .line 13
    .line 14
    iget v3, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mUid:I

    .line 15
    .line 16
    if-ne v3, v1, :cond_1

    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mState:I

    .line 19
    .line 20
    iget p1, p1, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mState:I

    .line 21
    .line 22
    if-ne p0, p1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v0, v2

    .line 26
    :goto_0
    return v0

    .line 27
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mUid:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller$UidProcState;->mState:I

    .line 6
    .line 7
    add-int/2addr v0, p0

    .line 8
    return v0
.end method
