.class public abstract Lcom/android/server/am/BaseAppStatePolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDefaultTrackerEnabled:Z

.field public final mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

.field public final mKeyTrackerEnabled:Ljava/lang/String;

.field public final mTracker:Lcom/android/server/am/BaseAppStateTracker;

.field public volatile mTrackerEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateTracker;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/BaseAppStatePolicy;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/am/BaseAppStatePolicy;->mKeyTrackerEnabled:Ljava/lang/String;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/am/BaseAppStatePolicy;->mDefaultTrackerEnabled:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/android/server/am/BaseAppStatePolicy;->mKeyTrackerEnabled:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/16 p2, 0x3d

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 12
    .line 13
    .line 14
    iget-boolean p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    .line 15
    .line 16
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public getProposedRestrictionLevel(IILjava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public abstract onPropertiesChanged(Ljava/lang/String;)V
.end method

.method public abstract onSystemReady()V
.end method

.method public abstract onTrackerEnabled(Z)V
.end method

.method public updateTrackerEnabled()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mKeyTrackerEnabled:Ljava/lang/String;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/am/BaseAppStatePolicy;->mDefaultTrackerEnabled:Z

    .line 4
    .line 5
    const-string v2, "activity_manager"

    .line 6
    .line 7
    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-boolean v1, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/android/server/am/BaseAppStatePolicy;->onTrackerEnabled(Z)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
