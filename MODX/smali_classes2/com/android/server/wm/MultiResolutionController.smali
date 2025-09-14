.class public final Lcom/android/server/wm/MultiResolutionController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDisplaySizeDensityChangedReason:Ljava/lang/String;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTmpDisplaySize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Point;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/MultiResolutionController;->mTmpDisplaySize:Landroid/graphics/Point;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/wm/MultiResolutionController;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final getForcedDisplayDensity()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiResolutionController;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "display_density_forced"

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-lez v2, :cond_0

    .line 29
    .line 30
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 36
    .line 37
    .line 38
    return p0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    :try_start_3
    const-string v2, "MultiResolutionController"

    .line 43
    .line 44
    const-string v3, "NumberFormatException"

    .line 45
    .line 46
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    .line 48
    .line 49
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    .line 56
    .line 57
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 59
    .line 60
    .line 61
    return p0

    .line 62
    :goto_0
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 63
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 64
    .line 65
    .line 66
    throw p0
.end method

.method public final getForcedDisplaySize(Landroid/graphics/Point;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiResolutionController;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "display_size_forced"

    .line 16
    .line 17
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    const/16 v2, 0x2c

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-lez v3, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 36
    .line 37
    .line 38
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    if-ne v2, v3, :cond_0

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    :try_start_1
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Point;->set(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .line 62
    .line 63
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    :try_start_3
    const-string v2, "MultiResolutionController"

    .line 72
    .line 73
    const-string v3, "NumberFormatException "

    .line 74
    .line 75
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    if-nez p0, :cond_1

    .line 85
    .line 86
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_1
    :try_start_4
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    .line 92
    .line 93
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    .line 94
    .line 95
    invoke-virtual {p1, v1, p0}, Landroid/graphics/Point;->set(II)V

    .line 96
    .line 97
    .line 98
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 99
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :goto_0
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 104
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 105
    .line 106
    .line 107
    throw p0
.end method

.method public final setForcedDisplaySizeDensityInner(Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 4
    .line 5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 6
    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getDisplayId()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_7

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getSaveToSettings()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v10, 0x1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ltz v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-ltz v1, :cond_0

    .line 42
    .line 43
    move v7, v10

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :cond_0
    move v7, v2

    .line 49
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getSaveToSettings()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getDensity()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-ltz v1, :cond_1

    .line 60
    .line 61
    move v9, v10

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move v9, v2

    .line 64
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getWidth()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    iget v4, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 69
    .line 70
    if-gez v1, :cond_2

    .line 71
    .line 72
    move v1, v4

    .line 73
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getHeight()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    iget v5, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 78
    .line 79
    if-gez v4, :cond_3

    .line 80
    .line 81
    move v11, v5

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    move v11, v4

    .line 84
    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getDensity()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    iget v5, v3, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    .line 89
    .line 90
    if-gez v4, :cond_4

    .line 91
    .line 92
    move v6, v5

    .line 93
    goto :goto_3

    .line 94
    :cond_4
    move v6, v4

    .line 95
    :goto_3
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getWidth()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-gez v4, :cond_5

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getHeight()I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/view/MultiResolutionChangeRequestInfo;->getForcedHideCutout()I

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    move v4, v1

    .line 110
    move v5, v11

    .line 111
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/DisplayContent;->setForcedSizeDensity(IIIZIZ)V

    .line 112
    .line 113
    .line 114
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_FLEXIBLE_TABLE_MODE:Z

    .line 115
    .line 116
    if-eqz p1, :cond_7

    .line 117
    .line 118
    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    int-to-float p1, p1

    .line 123
    invoke-static {v1, v11}, Ljava/lang/Math;->min(II)I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    int-to-float v1, v1

    .line 128
    div-float/2addr p1, v1

    .line 129
    const v1, 0x3fe38e39

    .line 130
    .line 131
    .line 132
    sub-float/2addr p1, v1

    .line 133
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    const v1, 0x3a83126f    # 0.001f

    .line 138
    .line 139
    .line 140
    cmpg-float p1, p1, v1

    .line 141
    .line 142
    if-gtz p1, :cond_6

    .line 143
    .line 144
    iget-object p0, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 145
    .line 146
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowManagerService;->setTableModeEnabled(Z)V

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 151
    .line 152
    invoke-virtual {p0, v10}, Lcom/android/server/wm/WindowManagerService;->setTableModeEnabled(Z)V

    .line 153
    .line 154
    .line 155
    :cond_7
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :goto_5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 162
    .line 163
    .line 164
    throw p0
.end method

.method public final updateDefaultDisplaySizeDensityChangedReason(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/MultiResolutionController;->mDisplaySizeDensityChangedReason:Ljava/lang/String;

    .line 2
    .line 3
    const-string p0, " ["

    .line 4
    .line 5
    invoke-static {p1, p0}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    sget-object p1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, "]"

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 p1, 0x0

    .line 24
    invoke-static {p0, p1}, Lcom/android/server/wm/WindowManagerServiceExt;->logCriticalInfo(Ljava/lang/String;Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final updateDisplaySizeDensityChangedReason(IIILjava/lang/String;IIZ)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Pid="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v2, ", ProcessName="

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/wm/MultiResolutionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 23
    .line 24
    iget-object v3, v2, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 25
    .line 26
    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 27
    .line 28
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 29
    .line 30
    .line 31
    monitor-enter v3

    .line 32
    :try_start_0
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerServiceExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 33
    .line 34
    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 35
    .line 36
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    iget-object v1, v1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const/4 v1, 0x0

    .line 50
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ", displayId="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const/4 v1, -0x1

    .line 66
    if-eq p2, v1, :cond_1

    .line 67
    .line 68
    const-string v2, ", UserId="

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    :cond_1
    if-eq p3, v1, :cond_2

    .line 77
    .line 78
    if-eq p5, v1, :cond_2

    .line 79
    .line 80
    const-string p2, ", Size="

    .line 81
    .line 82
    const-string/jumbo v2, "x"

    .line 83
    .line 84
    .line 85
    invoke-static {p3, p5, p2, v2, v0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    if-eq p6, v1, :cond_3

    .line 89
    .line 90
    const-string p2, ", Density="

    .line 91
    .line 92
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    :cond_3
    if-eqz p7, :cond_4

    .line 99
    .line 100
    const-string p2, ", saveToSettings=true"

    .line 101
    .line 102
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    :cond_4
    if-eqz p4, :cond_5

    .line 106
    .line 107
    const-string p2, ", info="

    .line 108
    .line 109
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    :cond_5
    const-string p2, ", caller="

    .line 116
    .line 117
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const/4 p2, 0x5

    .line 121
    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    if-nez p1, :cond_6

    .line 133
    .line 134
    invoke-virtual {p0, p2}, Lcom/android/server/wm/MultiResolutionController;->updateDefaultDisplaySizeDensityChangedReason(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :cond_6
    const-string p0, "MultiResolutionController"

    .line 138
    .line 139
    const-string/jumbo p1, "updateDisplaySizeDensityChangedReason: "

    .line 140
    .line 141
    .line 142
    invoke-static {p1, p2, p0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 148
    .line 149
    .line 150
    throw p0
.end method
