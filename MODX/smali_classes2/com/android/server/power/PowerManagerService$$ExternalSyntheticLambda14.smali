.class public final synthetic Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/power/PowerManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda14;->f$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    const-string v0, "Dex display type: "

    .line 4
    .line 5
    iget-object v10, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v10

    .line 8
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/16 v3, 0x66

    .line 19
    .line 20
    if-ne v2, v3, :cond_1

    .line 21
    .line 22
    const/4 v3, 0x4

    .line 23
    if-eq p1, v3, :cond_0

    .line 24
    .line 25
    const/4 v3, 0x3

    .line 26
    if-ne p1, v3, :cond_1

    .line 27
    .line 28
    :cond_0
    const/4 v3, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v3, 0x0

    .line 31
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    .line 32
    .line 33
    const-string v3, "PowerManagerService"

    .line 34
    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, ", enabled: "

    .line 44
    .line 45
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string p1, ", dual view: "

    .line 52
    .line 53
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p1, " -> "

    .line 60
    .line 61
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    .line 65
    .line 66
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {v3, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    .line 77
    .line 78
    if-eq v1, p1, :cond_3

    .line 79
    .line 80
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 81
    .line 82
    const/4 v0, 0x2

    .line 83
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->contains(I)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mIsDualViewMode:Z

    .line 90
    .line 91
    if-eqz p1, :cond_2

    .line 92
    .line 93
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 99
    .line 100
    .line 101
    move-result-wide v3

    .line 102
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    const-string v9, "dex enabled"

    .line 109
    .line 110
    const/16 v7, 0x3e8

    .line 111
    .line 112
    const/4 v1, 0x2

    .line 113
    const/4 v2, 0x1

    .line 114
    const/16 v5, 0x3e8

    .line 115
    .line 116
    const/16 v6, 0xb

    .line 117
    .line 118
    move-object v0, p0

    .line 119
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(IIJIIILjava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :catchall_0
    move-exception p0

    .line 124
    goto :goto_2

    .line 125
    :cond_2
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 131
    .line 132
    .line 133
    move-result-wide v3

    .line 134
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    const-string v9, "dex disabled"

    .line 141
    .line 142
    const/16 v7, 0x3e8

    .line 143
    .line 144
    const/4 v1, 0x2

    .line 145
    const/4 v2, 0x0

    .line 146
    const/16 v5, 0x3e8

    .line 147
    .line 148
    const/16 v6, 0xc

    .line 149
    .line 150
    move-object v0, p0

    .line 151
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/power/PowerManagerService;->setWakefulnessLocked(IIJIIILjava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 155
    .line 156
    .line 157
    :cond_3
    monitor-exit v10

    .line 158
    return-void

    .line 159
    :goto_2
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    throw p0
.end method
