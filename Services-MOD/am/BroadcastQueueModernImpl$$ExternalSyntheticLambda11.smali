.class public final synthetic Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda11;->f$0:J

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/am/BroadcastQueueModernImpl$$ExternalSyntheticLambda11;->f$0:J

    .line 3
    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    .line 5
    iget-wide v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->mForcedDelayedDurationMs:J

    .line 7
    cmp-long p0, v2, v0

    .line 9
    if-eqz p0, :cond_0

    .line 11
    iput-wide v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->mForcedDelayedDurationMs:J

    .line 13
    const/4 p0, 0x1

    .line 14
    iput-boolean p0, p1, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    .line 16
    :cond_0
    return-void
.end method
