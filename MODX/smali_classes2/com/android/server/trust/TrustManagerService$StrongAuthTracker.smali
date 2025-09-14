.class public final Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final canAgentsRunForUser(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    return p0
.end method

.method public final cancelPendingAlarm(Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p1, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final onStrongAuthRequiredChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string/jumbo v0, "onStrongAuthRequiredChanged("

    .line 11
    .line 12
    .line 13
    const-string v1, ") -> trustAllowed="

    .line 14
    .line 15
    invoke-static {p1, v0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, " agentsCanRun="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "TrustManagerService"

    .line 43
    .line 44
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    .line 56
    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;

    .line 66
    .line 67
    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->cancelPendingAlarm(Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->cancelPendingAlarm(Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 84
    .line 85
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mIdleTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->cancelPendingAlarm(Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;)V

    .line 94
    .line 95
    .line 96
    :cond_1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 97
    .line 98
    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 99
    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 102
    .line 103
    invoke-virtual {p0, p1}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    .line 104
    .line 105
    .line 106
    return-void
.end method
