.class public final synthetic Lcom/android/server/am/AppRestrictionController$RestrictionSettings$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    iput p0, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    .line 5
    .line 6
    iput p0, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    .line 7
    .line 8
    const-wide/16 v0, 0x0

    .line 9
    .line 10
    iput-wide v0, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    .line 11
    .line 12
    const/16 v2, 0x100

    .line 13
    .line 14
    iput v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    .line 15
    .line 16
    iget-object v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    :goto_0
    iget-object v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    .line 21
    .line 22
    array-length v3, v2

    .line 23
    if-ge p0, v3, :cond_0

    .line 24
    .line 25
    aput-wide v0, v2, p0

    .line 26
    .line 27
    add-int/lit8 p0, p0, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return-void
.end method
