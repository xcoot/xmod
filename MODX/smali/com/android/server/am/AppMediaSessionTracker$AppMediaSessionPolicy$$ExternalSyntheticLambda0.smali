.class public final synthetic Lcom/android/server/am/AppMediaSessionTracker$AppMediaSessionPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/AppMediaSessionTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/AppMediaSessionTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/AppMediaSessionTracker$AppMediaSessionPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/AppMediaSessionTracker;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppMediaSessionTracker$AppMediaSessionPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/AppMediaSessionTracker;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 12
    iget-object v2, v2, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 14
    check-cast v2, Lcom/android/server/am/AppMediaSessionTracker$AppMediaSessionPolicy;

    .line 16
    iget-wide v2, v2, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mMaxTrackingDuration:J

    .line 18
    sub-long/2addr v0, v2

    .line 19
    const-wide/16 v2, 0x0

    .line 21
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 24
    move-result-wide v0

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BaseAppStateEventsTracker;->trim(J)V

    .line 28
    return-void
.end method
