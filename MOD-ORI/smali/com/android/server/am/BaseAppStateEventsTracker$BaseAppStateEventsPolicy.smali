.class public abstract Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;
.super Lcom/android/server/am/BaseAppStatePolicy;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDefaultMaxTrackingDuration:J

.field public final mKeyMaxTrackingDuration:Ljava/lang/String;

.field public volatile mMaxTrackingDuration:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateEventsTracker;Ljava/lang/String;ZLjava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BaseAppStatePolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateTracker;Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    iput-object p5, p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mKeyMaxTrackingDuration:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p6, p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mDefaultMaxTrackingDuration:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStatePolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mKeyMaxTrackingDuration:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/16 p2, 0x3d

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 19
    .line 20
    .line 21
    iget-wide v0, p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mMaxTrackingDuration:J

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public getExemptionReasonString(IILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p2}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public abstract onMaxTrackingDurationChanged()V
.end method

.method public onPropertiesChanged(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mKeyMaxTrackingDuration:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mKeyMaxTrackingDuration:Ljava/lang/String;

    .line 10
    .line 11
    iget-wide v0, p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mDefaultMaxTrackingDuration:J

    .line 12
    .line 13
    const-string v2, "activity_manager"

    .line 14
    .line 15
    invoke-static {v2, p1, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-wide v2, p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mMaxTrackingDuration:J

    .line 20
    .line 21
    cmp-long p1, v0, v2

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mMaxTrackingDuration:J

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->onMaxTrackingDurationChanged()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mKeyTrackerEnabled:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStatePolicy;->updateTrackerEnabled()V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public onSystemReady()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStatePolicy;->updateTrackerEnabled()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mKeyMaxTrackingDuration:Ljava/lang/String;

    .line 5
    .line 6
    iget-wide v1, p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mDefaultMaxTrackingDuration:J

    .line 7
    .line 8
    const-string v3, "activity_manager"

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-wide v2, p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mMaxTrackingDuration:J

    .line 15
    .line 16
    cmp-long v2, v0, v2

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->mMaxTrackingDuration:J

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->onMaxTrackingDurationChanged()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
