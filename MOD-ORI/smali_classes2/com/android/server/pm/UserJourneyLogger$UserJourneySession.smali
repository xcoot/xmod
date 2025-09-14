.class public final Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mJourney:I

.field public final mSessionId:J

.field public final mStartTimeInMills:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p3, p0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mJourney:I

    .line 3
    iput-wide p1, p0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mSessionId:J

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mStartTimeInMills:J

    return-void
.end method

.method public constructor <init>(JIJ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p3, p0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mJourney:I

    .line 7
    iput-wide p1, p0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mSessionId:J

    .line 8
    iput-wide p4, p0, Lcom/android/server/pm/UserJourneyLogger$UserJourneySession;->mStartTimeInMills:J

    return-void
.end method
