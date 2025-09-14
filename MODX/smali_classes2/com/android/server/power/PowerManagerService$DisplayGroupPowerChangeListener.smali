.class public final Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayGroupListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDisplayGroupAdded(I)V
    .locals 11

    .line 1
    const-string/jumbo v0, "onDisplayGroupAdded: groupId="

    .line 2
    .line 3
    .line 4
    const-string v1, "Tried to add already existing group:"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 7
    .line 8
    iget-object v2, v2, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v2

    .line 11
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 12
    .line 13
    iget-object v3, v3, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    const-string p0, "PowerManagerService"

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    monitor-exit v2

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const-string v1, "PowerManagerService"

    .line 43
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    const/4 v1, 0x1

    .line 63
    move v8, v1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move v8, v0

    .line 66
    :goto_0
    new-instance v1, Lcom/android/server/power/PowerGroup;

    .line 67
    .line 68
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 69
    .line 70
    iget-object v5, v3, Lcom/android/server/power/PowerManagerService;->mPowerGroupWakefulnessChangeListener:Lcom/android/server/power/PowerManagerService$1;

    .line 71
    .line 72
    iget-object v6, v3, Lcom/android/server/power/PowerManagerService;->mNotifier:Lcom/android/server/power/Notifier;

    .line 73
    .line 74
    iget-object v7, v3, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 75
    .line 76
    iget-object v3, v3, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 82
    .line 83
    .line 84
    move-result-wide v9

    .line 85
    move-object v3, v1

    .line 86
    move v4, p1

    .line 87
    invoke-direct/range {v3 .. v10}, Lcom/android/server/power/PowerGroup;-><init>(ILcom/android/server/power/PowerManagerService$1;Lcom/android/server/power/Notifier;Landroid/hardware/display/DisplayManagerInternal;ZJ)V

    .line 88
    .line 89
    .line 90
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 91
    .line 92
    iget-object v3, v3, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 93
    .line 94
    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 98
    .line 99
    invoke-virtual {v3, v0, v1}, Lcom/android/server/power/PowerManagerService;->onPowerGroupEventLocked(ILcom/android/server/power/PowerGroup;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 103
    .line 104
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;

    .line 105
    .line 106
    new-instance v1, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener$$ExternalSyntheticLambda0;

    .line 107
    .line 108
    const/4 v3, 0x1

    .line 109
    invoke-direct {v1, p0, p1, v3}, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;II)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 113
    .line 114
    .line 115
    monitor-exit v2

    .line 116
    return-void

    .line 117
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    throw p0
.end method

.method public final onDisplayGroupChanged(I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "onDisplayGroupChanged: groupId="

    .line 2
    .line 3
    .line 4
    const-string v1, "Tried to change non-existent group: "

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 7
    .line 8
    iget-object v2, v2, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v2

    .line 11
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 12
    .line 13
    iget-object v3, v3, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    const-string p0, "PowerManagerService"

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    monitor-exit v2

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string v1, "PowerManagerService"

    .line 43
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lcom/android/server/power/PowerGroup;

    .line 68
    .line 69
    const/4 v0, 0x2

    .line 70
    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/PowerManagerService;->onPowerGroupEventLocked(ILcom/android/server/power/PowerGroup;)V

    .line 71
    .line 72
    .line 73
    monitor-exit v2

    .line 74
    return-void

    .line 75
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method

.method public final onDisplayGroupRemoved(I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "onDisplayGroupRemoved: groupId="

    .line 2
    .line 3
    .line 4
    const-string v1, "Tried to remove non-existent group:"

    .line 5
    .line 6
    const-string v2, "Tried to remove default display group: "

    .line 7
    .line 8
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 9
    .line 10
    iget-object v3, v3, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v3

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    :try_start_0
    const-string p0, "PowerManagerService"

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget v0, Lcom/android/server/power/Slog;->$r8$clinit:I

    .line 30
    .line 31
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    monitor-exit v3

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 39
    .line 40
    iget-object v2, v2, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 41
    .line 42
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    const-string p0, "PowerManagerService"

    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    monitor-exit v3

    .line 66
    return-void

    .line 67
    :cond_1
    const-string v1, "PowerManagerService"

    .line 68
    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 85
    .line 86
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 87
    .line 88
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Lcom/android/server/power/PowerGroup;

    .line 93
    .line 94
    const/4 v2, 0x1

    .line 95
    invoke-virtual {v0, v2, v1}, Lcom/android/server/power/PowerManagerService;->onPowerGroupEventLocked(ILcom/android/server/power/PowerGroup;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;

    .line 101
    .line 102
    new-instance v1, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener$$ExternalSyntheticLambda0;

    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/PowerManagerService$DisplayGroupPowerChangeListener;II)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    .line 110
    .line 111
    monitor-exit v3

    .line 112
    return-void

    .line 113
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    throw p0
.end method
