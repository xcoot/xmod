.class public Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    .line 5
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 7
    return-void
.end method


# virtual methods
.method public final onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 5
    const-wide/32 v1, 0x8000

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 16
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 18
    const-string v3, "AccessibilityManagerService.PM.onHandleForceStop"

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    .line 22
    const-string/jumbo v5, "intent="

    .line 25
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    const-string p1, ";packages="

    .line 33
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    const-string v5, ";uid="

    .line 42
    const-string v6, ";doit="

    .line 44
    invoke-static {p3, p1, v5, v6, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 47
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, v3, v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 59
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getLock()Ljava/lang/Object;

    .line 62
    move-result-object p1

    .line 63
    monitor-enter p1

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 67
    move-result p3

    .line 68
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 70
    iget v1, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 72
    const/4 v2, 0x0

    .line 73
    if-eq p3, v1, :cond_1

    .line 75
    monitor-exit p1

    .line 76
    return v2

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 82
    move-result-object p3

    .line 83
    invoke-static {}, Lcom/android/server/accessibility/Flags;->managerPackageMonitorLogicFix()Z

    .line 86
    if-nez p4, :cond_2

    .line 88
    iget-object p0, p3, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    .line 90
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 93
    move-result-object p0

    .line 94
    new-instance p3, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda17;

    .line 96
    const/4 p4, 0x3

    .line 97
    invoke-direct {p3, p4, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda17;-><init>(ILjava/lang/Object;)V

    .line 100
    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 103
    move-result p0

    .line 104
    monitor-exit p1

    .line 105
    return p0

    .line 106
    :cond_2
    iget-object p4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 108
    invoke-virtual {p4, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->onPackagesForceStoppedLocked([Ljava/lang/String;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    .line 111
    move-result p2

    .line 112
    if-eqz p2, :cond_3

    .line 114
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 116
    invoke-virtual {p0, p3, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 119
    :cond_3
    monitor-exit p1

    .line 120
    return v2

    .line 121
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    throw p0
.end method

.method public final onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final onPackageRemoved(Ljava/lang/String;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 5
    const-wide/32 v1, 0x8000

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 16
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 18
    const-string v3, "AccessibilityManagerService.PM.onPackageRemoved"

    .line 20
    const-string/jumbo v4, "packageName="

    .line 23
    const-string v5, ";uid="

    .line 25
    invoke-static {p2, v4, p1, v5}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {v0, v3, v1, v2, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 32
    :cond_0
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 34
    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getLock()Ljava/lang/Object;

    .line 37
    move-result-object p2

    .line 38
    monitor-enter p2

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 42
    move-result v0

    .line 43
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 45
    iget v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 47
    if-eq v0, v1, :cond_1

    .line 49
    monitor-exit p2

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-static {p0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monPackageRemovedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;)V

    .line 56
    monitor-exit p2

    .line 57
    return-void

    .line 58
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method

.method public final onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 5
    const-wide/32 v1, 0x8000

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 16
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 18
    const-string v3, "AccessibilityManagerService.PM.onPackageUpdateFinished"

    .line 20
    const-string/jumbo v4, "packageName="

    .line 23
    const-string v5, ";uid="

    .line 25
    invoke-static {p2, v4, p1, v5}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {v0, v3, v1, v2, p2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 35
    move-result p2

    .line 36
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 38
    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->parseAccessibilityServiceInfos(I)Ljava/util/List;

    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 44
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 49
    move-result-object v2

    .line 50
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {v2, v1, p2}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityShortcutListAsUser(Landroid/content/Context;I)Ljava/util/List;

    .line 55
    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 58
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getLock()Ljava/lang/Object;

    .line 61
    move-result-object v2

    .line 62
    monitor-enter v2

    .line 63
    :try_start_0
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 65
    iget v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 67
    if-eq p2, v4, :cond_1

    .line 69
    monitor-exit v2

    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_2

    .line 73
    :cond_1
    invoke-virtual {v3, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 76
    move-result-object p2

    .line 77
    iget-object v3, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    .line 79
    new-instance v4, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda7;

    .line 81
    const/4 v5, 0x2

    .line 82
    invoke-direct {v4, p1, v5}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;I)V

    .line 85
    invoke-interface {v3, v4}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 88
    move-result v3

    .line 89
    const/4 v4, 0x0

    .line 90
    if-nez v3, :cond_3

    .line 92
    iget-object v3, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    .line 94
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda7;

    .line 96
    const/4 v6, 0x3

    .line 97
    invoke-direct {v5, p1, v6}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;I)V

    .line 100
    invoke-interface {v3, v5}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 103
    move-result v3

    .line 104
    if-eqz v3, :cond_2

    .line 106
    goto :goto_0

    .line 107
    :cond_2
    move v3, v4

    .line 108
    goto :goto_1

    .line 109
    :cond_3
    :goto_0
    const/4 v3, 0x1

    .line 110
    :goto_1
    iget-object v5, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 112
    check-cast v5, Ljava/util/ArrayList;

    .line 114
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 117
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 119
    invoke-virtual {v5, p2, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/List;Ljava/util/List;)Z

    .line 122
    move-result v0

    .line 123
    if-nez v3, :cond_4

    .line 125
    if-eqz v0, :cond_5

    .line 127
    :cond_4
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 129
    invoke-virtual {v0, p2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 132
    :cond_5
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 134
    invoke-virtual {p0, p2, p1, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->migrateAccessibilityButtonSettingsIfNecessaryLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;I)V

    .line 137
    monitor-exit v2

    .line 138
    return-void

    .line 139
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    throw p0
.end method

.method public final onSomePackagesChanged()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 5
    const-wide/32 v1, 0x8000

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 16
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 18
    const-string v3, "AccessibilityManagerService.PM.onSomePackagesChanged"

    .line 20
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;J)V

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 29
    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->parseAccessibilityServiceInfos(I)Ljava/util/List;

    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 35
    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 37
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 40
    move-result-object v3

    .line 41
    iget-object v2, v2, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {v3, v2, v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityShortcutListAsUser(Landroid/content/Context;I)Ljava/util/List;

    .line 46
    move-result-object v2

    .line 47
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 49
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getLock()Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    monitor-enter v3

    .line 54
    :try_start_0
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 56
    iget v4, v4, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 58
    if-eq v0, v4, :cond_1

    .line 60
    monitor-exit v3

    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-static {}, Lcom/android/server/accessibility/Flags;->skipPackageChangeBeforeUserSwitch()Z

    .line 67
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$ManagerPackageMonitor;->mManagerService:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 69
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 74
    move-result-object v0

    .line 75
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    .line 77
    check-cast v4, Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 82
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->readConfigurationForUserStateLocked(Lcom/android/server/accessibility/AccessibilityUserState;Ljava/util/List;Ljava/util/List;)Z

    .line 85
    move-result v1

    .line 86
    if-eqz v1, :cond_2

    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityUserState;Z)V

    .line 92
    :cond_2
    monitor-exit v3

    .line 93
    return-void

    .line 94
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    throw p0
.end method
