.class public final Lcom/android/server/wm/TaskSnapshotController;
.super Lcom/android/server/wm/AbsAppSnapshotController;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

.field public final mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

.field public final mSkipClosingAppSnapshotTasks:Landroid/util/IntArray;

.field public final mTmpTasks:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/SnapshotPersistQueue;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/IntArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/IntArray;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    .line 17
    .line 18
    new-instance v0, Landroid/os/Handler;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    .line 24
    .line 25
    new-instance v2, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda1;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const v1, 0x10500e9

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_LOW_TASK_SNAPSHOT_SCALE_FOR_TABLET:Z

    .line 44
    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    const v1, 0x3f333333    # 0.7f

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const v3, 0x10500f6

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    :goto_0
    const/4 v3, 0x0

    .line 65
    cmpg-float v4, v1, v3

    .line 66
    .line 67
    if-ltz v4, :cond_4

    .line 68
    .line 69
    const/high16 v4, 0x3f800000    # 1.0f

    .line 70
    .line 71
    cmpg-float v5, v4, v1

    .line 72
    .line 73
    if-lez v5, :cond_4

    .line 74
    .line 75
    cmpg-float v5, v0, v3

    .line 76
    .line 77
    if-lez v5, :cond_3

    .line 78
    .line 79
    cmpg-float v4, v4, v0

    .line 80
    .line 81
    if-ltz v4, :cond_3

    .line 82
    .line 83
    cmpg-float v4, v0, v1

    .line 84
    .line 85
    if-lez v4, :cond_2

    .line 86
    .line 87
    cmpl-float v4, v1, v3

    .line 88
    .line 89
    const/4 v7, 0x1

    .line 90
    if-lez v4, :cond_1

    .line 91
    .line 92
    div-float/2addr v1, v0

    .line 93
    move v5, v1

    .line 94
    move v4, v7

    .line 95
    goto :goto_1

    .line 96
    :cond_1
    const/4 v0, 0x0

    .line 97
    move v4, v0

    .line 98
    move v5, v3

    .line 99
    :goto_1
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const v1, 0x111026d

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    new-instance v0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 113
    .line 114
    const-string/jumbo v3, "snapshots"

    .line 115
    .line 116
    .line 117
    move-object v1, v0

    .line 118
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;-><init>(Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda1;Ljava/lang/String;ZFZ)V

    .line 119
    .line 120
    .line 121
    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 122
    .line 123
    new-instance v1, Lcom/android/server/wm/TaskSnapshotPersister;

    .line 124
    .line 125
    invoke-direct {v1, p2, v0}, Lcom/android/server/wm/TaskSnapshotPersister;-><init>(Lcom/android/server/wm/SnapshotPersistQueue;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    .line 126
    .line 127
    .line 128
    iput-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 129
    .line 130
    new-instance p2, Lcom/android/server/wm/TaskSnapshotCache;

    .line 131
    .line 132
    new-instance v1, Lcom/android/server/wm/AppSnapshotLoader;

    .line 133
    .line 134
    invoke-direct {v1, v0}, Lcom/android/server/wm/AppSnapshotLoader;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    .line 135
    .line 136
    .line 137
    invoke-direct {p2, v1}, Lcom/android/server/wm/TaskSnapshotCache;-><init>(Lcom/android/server/wm/AppSnapshotLoader;)V

    .line 138
    .line 139
    .line 140
    iput-object p2, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    .line 141
    .line 142
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    const p2, 0x111013f

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    xor-int/2addr p1, v7

    .line 156
    iput-boolean p1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mSnapshotEnabled:Z

    .line 157
    .line 158
    return-void

    .line 159
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 160
    .line 161
    const-string p1, "High-res scale must be greater than low-res scale"

    .line 162
    .line 163
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p0

    .line 167
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 168
    .line 169
    const-string p1, "High-res scale must be between 0 and 1"

    .line 170
    .line 171
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p0

    .line 175
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    .line 176
    .line 177
    const-string p1, "Low-res scale must be between 0 and 1"

    .line 178
    .line 179
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p0
.end method


# virtual methods
.method public addSkipClosingAppSnapshotTasks(Ljava/util/Set;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/server/wm/Task;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/IntArray;

    .line 25
    .line 26
    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroid/util/IntArray;->add(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method

.method public final findAppTokenForSnapshot(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/wm/Task;

    .line 2
    .line 3
    new-instance p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final getLetterboxInsets(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getSnapshot(IIZZZ)Landroid/window/TaskSnapshot;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 4
    .line 5
    if-eqz p4, :cond_1

    .line 6
    .line 7
    if-eqz p5, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    .line 10
    .line 11
    move-object v3, p0

    .line 12
    check-cast v3, Lcom/android/server/wm/TaskSnapshotCache;

    .line 13
    .line 14
    if-eqz p4, :cond_0

    .line 15
    .line 16
    iget-boolean p0, v2, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mEnableLowResSnapshots:Z

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    move v7, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v7, v0

    .line 23
    :goto_0
    const/4 v6, 0x0

    .line 24
    move v4, p1

    .line 25
    move v5, p2

    .line 26
    move v8, p5

    .line 27
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(IIZZZ)Landroid/window/TaskSnapshot;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0

    .line 32
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    .line 33
    .line 34
    move-object v3, p0

    .line 35
    check-cast v3, Lcom/android/server/wm/TaskSnapshotCache;

    .line 36
    .line 37
    if-eqz p4, :cond_2

    .line 38
    .line 39
    iget-boolean p0, v2, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mEnableLowResSnapshots:Z

    .line 40
    .line 41
    if-eqz p0, :cond_2

    .line 42
    .line 43
    move v7, v1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    move v7, v0

    .line 46
    :goto_1
    const/4 v8, 0x0

    .line 47
    move v4, p1

    .line 48
    move v5, p2

    .line 49
    move v6, p3

    .line 50
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(IIZZZ)Landroid/window/TaskSnapshot;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public final getTaskDescription(Lcom/android/server/wm/WindowContainer;)Landroid/app/ActivityManager$TaskDescription;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/wm/Task;

    .line 2
    .line 3
    iget-object p0, p1, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getTopActivity(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/wm/Task;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final isInSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/IntArray;

    .line 2
    .line 3
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/util/IntArray;->indexOf(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/4 p1, -0x1

    .line 10
    if-eq p0, p1, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method public final recordSnapshot(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->captureSnapshot(Lcom/android/server/wm/WindowContainer;)Landroid/window/TaskSnapshot;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    .line 17
    .line 18
    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/SnapshotCache;->putSnapshot(Lcom/android/server/wm/WindowContainer;Landroid/window/TaskSnapshot;)V

    .line 19
    .line 20
    .line 21
    move-object v1, v0

    .line 22
    :goto_0
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 31
    .line 32
    iget v2, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 35
    .line 36
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->persistSnapshot(IILandroid/window/TaskSnapshot;)V

    .line 37
    .line 38
    .line 39
    iget-object p0, p1, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->set(Landroid/window/TaskSnapshot;)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 47
    .line 48
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    invoke-virtual {v1, v0}, Landroid/window/TaskSnapshot;->addReference(I)V

    .line 55
    .line 56
    .line 57
    const/16 v0, 0xf

    .line 58
    .line 59
    const/4 v2, 0x0

    .line 60
    iget-object v3, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    .line 61
    .line 62
    invoke-virtual {v3, v0, p1, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;

    .line 67
    .line 68
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$$ExternalSyntheticLambda0;Landroid/os/Message;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-object v1
.end method

.method public final removeAndDeleteSnapshot(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/server/wm/TaskSnapshotCache;

    .line 5
    .line 6
    const/4 v6, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    const/4 v5, 0x0

    .line 9
    move v2, p1

    .line 10
    move v3, p2

    .line 11
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(IIZZZ)Landroid/window/TaskSnapshot;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    .line 24
    .line 25
    check-cast v1, Lcom/android/server/wm/TaskSnapshotCache;

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Lcom/android/server/wm/SnapshotCache;->removeRunningEntry(Ljava/lang/Integer;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 35
    .line 36
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->removeSnapshot(II)V

    .line 37
    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter p1

    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    new-instance v3, Lcom/android/server/wm/SnapshotPersistQueue$CloseBufferWriteQueueItem;

    .line 57
    .line 58
    invoke-direct {v3, p0, p2}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;I)V

    .line 59
    .line 60
    .line 61
    iput-object v0, v3, Lcom/android/server/wm/SnapshotPersistQueue$CloseBufferWriteQueueItem;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    .line 62
    .line 63
    const/4 p0, 0x0

    .line 64
    invoke-virtual {v2, v3, p0}, Lcom/android/server/wm/SnapshotPersistQueue;->addToQueueInternal(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;Z)V

    .line 65
    .line 66
    .line 67
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    goto :goto_2

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_1

    .line 72
    :catchall_1
    move-exception p0

    .line 73
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    :try_start_4
    throw p0

    .line 75
    :goto_1
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 76
    throw p0

    .line 77
    :cond_1
    :goto_2
    return-void
.end method

.method public final removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    array-length v0, p2

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistedTaskIdsSinceLastRemoveObsolete:Landroid/util/ArraySet;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 19
    .line 20
    new-instance v2, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 23
    .line 24
    invoke-direct {v2, p0, p1, p2, v3}, Lcom/android/server/wm/TaskSnapshotPersister$RemoveObsoleteFilesQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;Landroid/util/ArraySet;[ILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x0

    .line 28
    invoke-virtual {v1, v2, p0}, Lcom/android/server/wm/SnapshotPersistQueue;->addToQueueInternal(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;Z)V

    .line 29
    .line 30
    .line 31
    monitor-exit v0

    .line 32
    :goto_0
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public final removeSkipClosingAppSnapshotTasks(Lcom/android/server/wm/Task;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/IntArray;

    .line 2
    .line 3
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, -0x1

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/IntArray;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/util/IntArray;->remove(I)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final snapshotForSleeping(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    const/4 v2, 0x1

    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    iget-object p1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 27
    .line 28
    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 29
    .line 30
    check-cast p1, Lcom/android/server/policy/PhoneWindowManager;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    move p1, v2

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 p1, 0x0

    .line 41
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;

    .line 47
    .line 48
    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/TaskSnapshotController;Z)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/DisplayArea;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_1
    return-void
.end method

.method public final snapshotTasks(Landroid/util/ArraySet;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    :goto_0
    if-ltz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/wm/Task;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;

    .line 16
    .line 17
    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public final use16BitFormat()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mUse16BitFormat:Z

    .line 4
    .line 5
    return p0
.end method
