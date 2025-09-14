.class public final synthetic Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessErrorStateRecord;

.field public final synthetic f$1:Lcom/android/internal/os/anr/AnrLatencyTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 3
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda1;->f$1:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->updateCpuStatsNowCalled()V

    .line 11
    iget-object v0, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 13
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 16
    invoke-virtual {p0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->updateCpuStatsNowReturned()V

    .line 19
    return-void
.end method
