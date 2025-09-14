.class public final Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V
    .locals 10

    .line 1
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1, p2}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(ILjava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 30
    .line 31
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 32
    .line 33
    .line 34
    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 40
    .line 41
    iget-object v2, v1, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 42
    .line 43
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    if-eqz v8, :cond_1

    .line 48
    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 50
    .line 51
    .line 52
    move-result-wide v6

    .line 53
    new-instance v9, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda8;

    .line 54
    .line 55
    move-object v2, v9

    .line 56
    move-object v3, v1

    .line 57
    move-object v4, p2

    .line 58
    move v5, p3

    .line 59
    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/ProcessList;Ljava/lang/String;ZJ)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v8, v9}, Lcom/android/server/am/UidRecord;->forEachProcess(Ljava/util/function/Consumer;)V

    .line 63
    .line 64
    .line 65
    iget-object p3, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 66
    .line 67
    const/16 v1, 0x15

    .line 68
    .line 69
    invoke-virtual {p3, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    .line 70
    .line 71
    .line 72
    :cond_1
    iget-object p3, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    .line 73
    .line 74
    invoke-virtual {p3, p1, p2}, Lcom/android/server/am/ActiveServices;->isForegroundServiceAllowedInBackgroundRestricted(ILjava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    if-nez p3, :cond_2

    .line 79
    .line 80
    iget-object p3, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    .line 81
    .line 82
    invoke-virtual {p3, p1}, Lcom/android/server/am/ActiveServices;->isTempAllowedByAlarmClock(I)Z

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    if-nez p3, :cond_2

    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    .line 89
    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActiveServices;->stopAllForegroundServicesLocked(ILjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 103
    .line 104
    .line 105
    throw p0
.end method
