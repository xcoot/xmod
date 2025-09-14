.class public final Lcom/android/server/wm/LaunchParamsPersister;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLaunchParamsMap:Landroid/util/SparseArray;

.field public mPackageList:Lcom/android/server/pm/PackageList;

.field public final mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mUserFolderGetter:Ljava/util/function/IntFunction;

.field public final mWindowLayoutAffinityMap:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityTaskSupervisor;Ljava/util/function/IntFunction;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/android/server/wm/LaunchParamsPersister;->mUserFolderGetter:Ljava/util/function/IntFunction;

    .line 23
    .line 24
    return-void
.end method

.method public static getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0x2f

    .line 6
    .line 7
    const/16 v1, 0x2d

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v0, Ljava/io/File;

    .line 14
    .line 15
    const-string v1, ".xml"

    .line 16
    .line 17
    invoke-static {p1, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method


# virtual methods
.method public final addComponentNameToLaunchParamAffinityMapIfNotNull(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda3;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/util/ArraySet;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final getLaunchParams(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 7
    .line 8
    :goto_0
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget v1, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_1
    iget v1, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 14
    .line 15
    :goto_1
    if-eqz p1, :cond_2

    .line 16
    .line 17
    iget-object p1, p1, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_2
    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 21
    .line 22
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 23
    .line 24
    if-nez p1, :cond_3

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    goto :goto_2

    .line 28
    :cond_3
    iget-object p1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    .line 29
    .line 30
    :goto_2
    invoke-virtual {p3}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, Ljava/util/Map;

    .line 40
    .line 41
    if-nez p2, :cond_4

    .line 42
    .line 43
    return-void

    .line 44
    :cond_4
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 49
    .line 50
    if-eqz p1, :cond_8

    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    .line 53
    .line 54
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_8

    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mWindowLayoutAffinityMap:Landroid/util/ArrayMap;

    .line 61
    .line 62
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Landroid/util/ArraySet;

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    :goto_3
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-ge v1, v2, :cond_8

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    check-cast v2, Landroid/content/ComponentName;

    .line 80
    .line 81
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 86
    .line 87
    if-nez v2, :cond_5

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_5
    if-eqz v0, :cond_6

    .line 91
    .line 92
    iget-wide v3, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    .line 93
    .line 94
    iget-wide v5, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    .line 95
    .line 96
    cmp-long v3, v3, v5

    .line 97
    .line 98
    if-lez v3, :cond_7

    .line 99
    .line 100
    :cond_6
    move-object v0, v2

    .line 101
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_8
    if-nez v0, :cond_9

    .line 105
    .line 106
    return-void

    .line 107
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 108
    .line 109
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 110
    .line 111
    iget-object p1, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(Ljava/lang/String;)Lcom/android/server/wm/DisplayContent;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    if-eqz p0, :cond_a

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    iput-object p0, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 124
    .line 125
    :cond_a
    iget p0, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    .line 126
    .line 127
    iput p0, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 128
    .line 129
    iget-object p0, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 130
    .line 131
    iget-object p1, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 132
    .line 133
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 134
    .line 135
    .line 136
    iget p0, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mOrientation:I

    .line 137
    .line 138
    iput p0, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mOrientation:I

    .line 139
    .line 140
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    .line 141
    .line 142
    if-eqz p0, :cond_b

    .line 143
    .line 144
    iget p0, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayDeviceType:I

    .line 145
    .line 146
    iput p0, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mDisplayDeviceType:I

    .line 147
    .line 148
    :cond_b
    iget-object p0, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mFreeformPersistBoundsParam:Lcom/android/server/wm/FreeformPersistBoundsParams;

    .line 149
    .line 150
    iget-object p1, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    .line 151
    .line 152
    iget-object p2, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mFreeformPersistBoundsParams:Lcom/android/server/wm/FreeformPersistBoundsParams;

    .line 153
    .line 154
    iget-object v1, p2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mFreeformBounds:Landroid/graphics/Rect;

    .line 155
    .line 156
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    .line 160
    .line 161
    iget-object v1, p2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mDisplayBounds:Landroid/graphics/Rect;

    .line 162
    .line 163
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 164
    .line 165
    .line 166
    iget p1, p2, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    .line 167
    .line 168
    iput p1, p0, Lcom/android/server/wm/FreeformPersistBoundsParams;->mRotation:I

    .line 169
    .line 170
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_PERSIST_BOUNDS:Z

    .line 171
    .line 172
    if-eqz p0, :cond_c

    .line 173
    .line 174
    iget-object p0, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mNewDexPersistBoundsParam:Lcom/android/server/wm/NewDexPersistBoundsParams;

    .line 175
    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    iget-object p1, v0, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mNewDexPersistBoundsParams:Lcom/android/server/wm/NewDexPersistBoundsParams;

    .line 180
    .line 181
    iget p2, p1, Lcom/android/server/wm/NewDexPersistBoundsParams;->mNewDexWindowingMode:I

    .line 182
    .line 183
    iput p2, p0, Lcom/android/server/wm/NewDexPersistBoundsParams;->mNewDexWindowingMode:I

    .line 184
    .line 185
    iget-object p0, p0, Lcom/android/server/wm/NewDexPersistBoundsParams;->mNewDexNextGenBounds:Landroid/graphics/Rect;

    .line 186
    .line 187
    iget-object p1, p1, Lcom/android/server/wm/NewDexPersistBoundsParams;->mNewDexNextGenBounds:Landroid/graphics/Rect;

    .line 188
    .line 189
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 190
    .line 191
    .line 192
    :cond_c
    return-void
.end method

.method public final removeRecordForPackage(Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x1

    .line 14
    if-ge v1, v2, :cond_2

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object v4, p0, Lcom/android/server/wm/LaunchParamsPersister;->mUserFolderGetter:Ljava/util/function/IntFunction;

    .line 23
    .line 24
    invoke-interface {v4, v2}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/io/File;

    .line 29
    .line 30
    new-instance v4, Ljava/io/File;

    .line 31
    .line 32
    const-string v5, "launch_params"

    .line 33
    .line 34
    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Landroid/util/ArrayMap;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    sub-int/2addr v5, v3

    .line 50
    :goto_1
    if-ltz v5, :cond_1

    .line 51
    .line 52
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Landroid/content/ComponentName;

    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_0

    .line 67
    .line 68
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    invoke-static {v4, v3}, Lcom/android/server/wm/LaunchParamsPersister;->getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :cond_0
    add-int/lit8 v5, v5, -0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 85
    .line 86
    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 88
    .line 89
    new-instance v4, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda0;

    .line 90
    .line 91
    invoke-direct {v4, p1}, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-class p1, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    .line 95
    .line 96
    invoke-virtual {v2, v4, p1}, Lcom/android/server/wm/PersisterQueue;->removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V

    .line 97
    .line 98
    .line 99
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 100
    .line 101
    new-instance p1, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;

    .line 102
    .line 103
    invoke-direct {p1, v0}, Lcom/android/server/wm/LaunchParamsPersister$CleanUpComponentQueueItem;-><init>(Ljava/util/List;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    .line 107
    .line 108
    .line 109
    monitor-exit v1

    .line 110
    return-void

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    throw p0
.end method

.method public final saveTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Landroid/util/ArrayMap;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    new-instance v2, Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/server/wm/LaunchParamsPersister;->mLaunchParamsMap:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    new-instance v3, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda1;

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-direct {v3, p0, v4}, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/LaunchParamsPersister;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0, v3}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 39
    .line 40
    new-instance v3, Landroid/view/DisplayInfo;

    .line 41
    .line 42
    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    .line 43
    .line 44
    .line 45
    iget-object v4, p2, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 46
    .line 47
    invoke-virtual {v4, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 48
    .line 49
    .line 50
    iget-object v4, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v5, v3, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    const/4 v5, 0x1

    .line 59
    xor-int/2addr v4, v5

    .line 60
    iget-object v3, v3, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 61
    .line 62
    iput-object v3, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayUniqueId:Ljava/lang/String;

    .line 63
    .line 64
    iget v3, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    const/4 v7, 0x0

    .line 71
    if-eq v3, v6, :cond_2

    .line 72
    .line 73
    move v3, v5

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move v3, v7

    .line 76
    :goto_0
    or-int/2addr v3, v4

    .line 77
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    iput v4, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowingMode:I

    .line 82
    .line 83
    iget v4, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mOrientation:I

    .line 84
    .line 85
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    .line 90
    .line 91
    if-eq v4, v6, :cond_3

    .line 92
    .line 93
    move v4, v5

    .line 94
    goto :goto_1

    .line 95
    :cond_3
    move v4, v7

    .line 96
    :goto_1
    or-int/2addr v3, v4

    .line 97
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 102
    .line 103
    iput v4, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mOrientation:I

    .line 104
    .line 105
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FREEFORM_FOLDING_POLICY:Z

    .line 106
    .line 107
    if-eqz v4, :cond_5

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-nez v4, :cond_5

    .line 114
    .line 115
    iget v4, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayDeviceType:I

    .line 116
    .line 117
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    iget v6, v6, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 122
    .line 123
    if-eq v4, v6, :cond_4

    .line 124
    .line 125
    move v4, v5

    .line 126
    goto :goto_2

    .line 127
    :cond_4
    move v4, v7

    .line 128
    :goto_2
    or-int/2addr v3, v4

    .line 129
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    iget p2, p2, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 134
    .line 135
    iput p2, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mDisplayDeviceType:I

    .line 136
    .line 137
    :cond_5
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_PERSIST_BOUNDS:Z

    .line 138
    .line 139
    if-eqz p2, :cond_8

    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isNewDexMode()Z

    .line 142
    .line 143
    .line 144
    move-result p2

    .line 145
    if-eqz p2, :cond_8

    .line 146
    .line 147
    iget-object p2, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mNewDexPersistBoundsParams:Lcom/android/server/wm/NewDexPersistBoundsParams;

    .line 148
    .line 149
    iget v4, p2, Lcom/android/server/wm/NewDexPersistBoundsParams;->mNewDexWindowingMode:I

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    if-eq v4, v6, :cond_6

    .line 156
    .line 157
    move v7, v5

    .line 158
    :cond_6
    or-int/2addr v3, v7

    .line 159
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    iput v4, p2, Lcom/android/server/wm/NewDexPersistBoundsParams;->mNewDexWindowingMode:I

    .line 164
    .line 165
    iget-object p2, p2, Lcom/android/server/wm/NewDexPersistBoundsParams;->mNewDexNextGenBounds:Landroid/graphics/Rect;

    .line 166
    .line 167
    iget-boolean v4, p1, Lcom/android/server/wm/Task;->mHasTopFullscreenWindow:Z

    .line 168
    .line 169
    if-nez v4, :cond_7

    .line 170
    .line 171
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    xor-int/2addr p1, v5

    .line 176
    or-int/2addr v3, p1

    .line 177
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 178
    .line 179
    .line 180
    goto :goto_4

    .line 181
    :cond_7
    iget-object v4, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 182
    .line 183
    if-eqz v4, :cond_a

    .line 184
    .line 185
    invoke-static {p2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    xor-int/2addr v4, v5

    .line 190
    or-int/2addr v3, v4

    .line 191
    iget-object p1, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 192
    .line 193
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 194
    .line 195
    .line 196
    goto :goto_4

    .line 197
    :cond_8
    iget-object p2, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 198
    .line 199
    if-eqz p2, :cond_9

    .line 200
    .line 201
    iget-object v4, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 202
    .line 203
    invoke-static {v4, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result p2

    .line 207
    xor-int/2addr p2, v5

    .line 208
    or-int/2addr p2, v3

    .line 209
    iget-object v3, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 210
    .line 211
    iget-object v4, p1, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 212
    .line 213
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 214
    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_9
    iget-object p2, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 218
    .line 219
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 220
    .line 221
    .line 222
    move-result p2

    .line 223
    xor-int/2addr p2, v5

    .line 224
    or-int/2addr p2, v3

    .line 225
    iget-object v3, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 226
    .line 227
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 228
    .line 229
    .line 230
    :goto_3
    iget-object p1, p1, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 231
    .line 232
    iget-object v3, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 233
    .line 234
    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v3

    .line 238
    or-int/2addr v3, p2

    .line 239
    iput-object p1, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 240
    .line 241
    if-eqz v3, :cond_a

    .line 242
    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 244
    .line 245
    .line 246
    move-result-wide p1

    .line 247
    iput-wide p1, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mTimestamp:J

    .line 248
    .line 249
    :cond_a
    :goto_4
    iget-object p1, v2, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 250
    .line 251
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->addComponentNameToLaunchParamAffinityMapIfNotNull(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    if-eqz v3, :cond_b

    .line 255
    .line 256
    new-instance p1, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    .line 257
    .line 258
    invoke-direct {p1, p0, v1, v0, v2}, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;-><init>(Lcom/android/server/wm/LaunchParamsPersister;ILandroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)V

    .line 259
    .line 260
    .line 261
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 262
    .line 263
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PersisterQueue;->updateLastOrAddItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)V

    .line 264
    .line 265
    .line 266
    :cond_b
    return-void
.end method
