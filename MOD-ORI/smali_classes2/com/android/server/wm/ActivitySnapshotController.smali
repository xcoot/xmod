.class public final Lcom/android/server/wm/ActivitySnapshotController;
.super Lcom/android/server/wm/AbsAppSnapshotController;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mOnBackPressedActivities:Landroid/util/ArraySet;

.field final mPendingDeleteActivity:Landroid/util/ArraySet;

.field final mPendingLoadActivity:Landroid/util/ArraySet;

.field final mPendingRemoveActivity:Landroid/util/ArraySet;

.field public final mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

.field public final mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

.field public final mSavedFilesInOrder:Ljava/util/ArrayList;

.field public final mSnapshotLoader:Lcom/android/server/wm/AppSnapshotLoader;

.field public final mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

.field public final mTmpBelowActivities:Ljava/util/ArrayList;

.field public final mTmpTransitionParticipants:Ljava/util/ArrayList;

.field public final mUserSavedFiles:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/SnapshotPersistQueue;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingDeleteActivity:Landroid/util/ArraySet;

    .line 17
    .line 18
    new-instance v0, Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    .line 24
    .line 25
    new-instance v0, Landroid/util/ArraySet;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mOnBackPressedActivities:Landroid/util/ArraySet;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpBelowActivities:Ljava/util/ArrayList;

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    .line 45
    .line 46
    new-instance v0, Landroid/util/SparseArray;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    .line 52
    .line 53
    new-instance v0, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    .line 59
    .line 60
    iput-object p2, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 61
    .line 62
    new-instance v2, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda1;

    .line 63
    .line 64
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 65
    .line 66
    .line 67
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const v1, 0x111026d

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    new-instance v0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 81
    .line 82
    const-string v3, "activity_snapshots"

    .line 83
    .line 84
    const/4 v4, 0x0

    .line 85
    const/4 v5, 0x0

    .line 86
    move-object v1, v0

    .line 87
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;-><init>(Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda1;Ljava/lang/String;ZFZ)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 91
    .line 92
    new-instance v1, Lcom/android/server/wm/TaskSnapshotPersister;

    .line 93
    .line 94
    invoke-direct {v1, p2, v0}, Lcom/android/server/wm/TaskSnapshotPersister;-><init>(Lcom/android/server/wm/SnapshotPersistQueue;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    .line 95
    .line 96
    .line 97
    iput-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 98
    .line 99
    new-instance p2, Lcom/android/server/wm/AppSnapshotLoader;

    .line 100
    .line 101
    invoke-direct {p2, v0}, Lcom/android/server/wm/AppSnapshotLoader;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    .line 102
    .line 103
    .line 104
    iput-object p2, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotLoader:Lcom/android/server/wm/AppSnapshotLoader;

    .line 105
    .line 106
    new-instance p2, Lcom/android/server/wm/ActivitySnapshotCache;

    .line 107
    .line 108
    const-string v0, "Activity"

    .line 109
    .line 110
    invoke-direct {p2, v0}, Lcom/android/server/wm/SnapshotCache;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iput-object p2, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    .line 114
    .line 115
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const p2, 0x111013f

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    const/4 p2, 0x0

    .line 129
    if-nez p1, :cond_1

    .line 130
    .line 131
    const-string/jumbo p1, "persist.wm.debug.activity_screenshot"

    .line 132
    .line 133
    .line 134
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-nez p1, :cond_0

    .line 139
    .line 140
    invoke-static {}, Lcom/android/window/flags/Flags;->activitySnapshotByDefault()Z

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-eqz p1, :cond_1

    .line 145
    .line 146
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-nez p1, :cond_1

    .line 151
    .line 152
    const/4 p2, 0x1

    .line 153
    :cond_1
    iput-boolean p2, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mSnapshotEnabled:Z

    .line 154
    .line 155
    return-void
.end method

.method public static getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static isInParticipant(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    :goto_0
    if-ltz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 14
    .line 15
    if-eq p0, v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    :goto_1
    return v1

    .line 28
    :cond_2
    const/4 p0, 0x0

    .line 29
    return p0
.end method


# virtual methods
.method public final addBelowActivityIfExist(Lcom/android/server/wm/ActivityRecord;Landroid/util/ArraySet;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpBelowActivities:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/wm/ActivitySnapshotController;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;ZLjava/util/ArrayList;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpBelowActivities:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    add-int/lit8 p1, p1, -0x1

    .line 13
    .line 14
    :goto_0
    if-ltz p1, :cond_0

    .line 15
    .line 16
    iget-object p3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpBelowActivities:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    check-cast p3, Lcom/android/server/wm/ActivityRecord;

    .line 23
    .line 24
    invoke-virtual {p2, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    add-int/lit8 p1, p1, -0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpBelowActivities:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public addUserSavedFile(ILandroid/window/TaskSnapshot;[I)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    aget v1, p3, v0

    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->getUserFiles(I)Landroid/util/SparseArray;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string p1, "Duplicate request for recording activity snapshot "

    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "WindowManager"

    .line 31
    .line 32
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    array-length v1, p3

    .line 37
    const/4 v2, 0x1

    .line 38
    sub-int/2addr v1, v2

    .line 39
    :goto_0
    if-ltz v1, :cond_1

    .line 40
    .line 41
    aget v3, p3, v1

    .line 42
    .line 43
    xor-int/2addr v0, v3

    .line 44
    add-int/lit8 v1, v1, -0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    new-instance v1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    .line 48
    .line 49
    invoke-direct {v1, v0, p1}, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;-><init>(II)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->getUserFiles(I)Landroid/util/SparseArray;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    array-length v4, p3

    .line 57
    sub-int/2addr v4, v2

    .line 58
    :goto_1
    if-ltz v4, :cond_2

    .line 59
    .line 60
    aget v5, p3, v4

    .line 61
    .line 62
    invoke-virtual {v3, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v4, v4, -0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    iget-object v3, v1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    .line 69
    .line 70
    invoke-virtual {v3, p3}, Landroid/util/IntArray;->addAll([I)V

    .line 71
    .line 72
    .line 73
    iget-object p3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    iget-object p3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 79
    .line 80
    invoke-virtual {p3, v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->persistSnapshot(IILandroid/window/TaskSnapshot;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    const/16 p2, 0x28

    .line 90
    .line 91
    if-le p1, p2, :cond_6

    .line 92
    .line 93
    iget-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    add-int/lit8 p2, p1, -0x14

    .line 100
    .line 101
    if-ge p2, v2, :cond_3

    .line 102
    .line 103
    goto :goto_5

    .line 104
    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    add-int/lit8 p1, p1, -0x15

    .line 110
    .line 111
    :goto_2
    if-ltz p1, :cond_5

    .line 112
    .line 113
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    .line 120
    .line 121
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    .line 122
    .line 123
    iget v3, v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mUserId:I

    .line 124
    .line 125
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Landroid/util/SparseArray;

    .line 130
    .line 131
    iget-object v3, v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    .line 132
    .line 133
    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    sub-int/2addr v3, v2

    .line 138
    :goto_3
    if-ltz v3, :cond_4

    .line 139
    .line 140
    iget-object v4, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    .line 141
    .line 142
    check-cast v4, Lcom/android/server/wm/ActivitySnapshotCache;

    .line 143
    .line 144
    iget-object v5, v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    .line 145
    .line 146
    invoke-virtual {v5, v3}, Landroid/util/IntArray;->get(I)I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-virtual {v4, v5}, Lcom/android/server/wm/SnapshotCache;->removeRunningEntry(Ljava/lang/Integer;)V

    .line 155
    .line 156
    .line 157
    iget-object v4, v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    .line 158
    .line 159
    invoke-virtual {v4, v3}, Landroid/util/IntArray;->get(I)I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 164
    .line 165
    .line 166
    add-int/lit8 v3, v3, -0x1

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_4
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    add-int/lit8 p1, p1, -0x1

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_5
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 176
    .line 177
    .line 178
    move-result p0

    .line 179
    sub-int/2addr p0, v2

    .line 180
    :goto_4
    if-ltz p0, :cond_6

    .line 181
    .line 182
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    check-cast p1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    .line 187
    .line 188
    iget v0, p1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mFileId:I

    .line 189
    .line 190
    iget p1, p1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mUserId:I

    .line 191
    .line 192
    invoke-virtual {p3, v0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->removeSnapshot(II)V

    .line 193
    .line 194
    .line 195
    add-int/lit8 p0, p0, -0x1

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_6
    :goto_5
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->dump(Ljava/io/PrintWriter;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    add-int/lit8 v0, v0, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz v0, :cond_2

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/util/SparseArray;

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v3, "   UserSavedFile userId="

    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v2, Landroid/util/ArraySet;

    .line 46
    .line 47
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    add-int/lit8 v3, v3, -0x1

    .line 55
    .line 56
    :goto_1
    if-ltz v3, :cond_0

    .line 57
    .line 58
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    .line 63
    .line 64
    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    add-int/lit8 v3, v3, -0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_0
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    add-int/lit8 v1, v1, -0x1

    .line 75
    .line 76
    :goto_2
    if-ltz v1, :cond_1

    .line 77
    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v4, "     SavedFile="

    .line 81
    .line 82
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    add-int/lit8 v1, v1, -0x1

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    return-void
.end method

.method public final findAppTokenForSnapshot(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .locals 3

    .line 1
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_3

    .line 7
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mLastSurfaceShowing:Z

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 19
    .line 20
    iget-boolean v1, v1, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda18;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-direct {v1, v2}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda18;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 37
    :goto_1
    if-eqz v0, :cond_3

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    move-object p1, p0

    .line 41
    :goto_2
    move-object p0, p1

    .line 42
    :goto_3
    return-object p0
.end method

.method public final findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->getUserFiles(I)Landroid/util/SparseArray;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    .line 16
    .line 17
    return-object p0
.end method

.method public final getActivityBelow(Lcom/android/server/wm/ActivityRecord;ZLjava/util/ArrayList;)V
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    iget-object v4, v3, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    const/4 v4, 0x0

    .line 27
    :goto_0
    if-ne v2, v3, :cond_3

    .line 28
    .line 29
    if-nez v2, :cond_4

    .line 30
    .line 31
    :cond_3
    if-nez v4, :cond_7

    .line 32
    .line 33
    :cond_4
    if-eqz p2, :cond_5

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-static {v1, p0}, Lcom/android/server/wm/ActivitySnapshotController;->isInParticipant(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_6

    .line 42
    .line 43
    :cond_5
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :cond_6
    return-void

    .line 47
    :cond_7
    if-ne v4, v2, :cond_8

    .line 48
    .line 49
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/wm/ActivitySnapshotController;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;ZLjava/util/ArrayList;)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_8
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    if-ne v3, v0, :cond_a

    .line 58
    .line 59
    if-eqz v2, :cond_9

    .line 60
    .line 61
    iget-object p1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    goto :goto_1

    .line 68
    :cond_9
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    :goto_1
    iget-object v0, v3, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 75
    .line 76
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-le v0, p1, :cond_a

    .line 81
    .line 82
    return-void

    .line 83
    :cond_a
    if-eqz p2, :cond_b

    .line 84
    .line 85
    iget-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-static {v1, p1}, Lcom/android/server/wm/ActivitySnapshotController;->isInParticipant(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_c

    .line 92
    .line 93
    :cond_b
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    :cond_c
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-eqz p1, :cond_e

    .line 101
    .line 102
    if-eqz p2, :cond_d

    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-static {p1, p0}, Lcom/android/server/wm/ActivitySnapshotController;->isInParticipant(Lcom/android/server/wm/ActivityRecord;Ljava/util/ArrayList;)Z

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    if-eqz p0, :cond_e

    .line 111
    .line 112
    :cond_d
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    :cond_e
    :goto_2
    return-void
.end method

.method public final getLetterboxInsets(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/wm/Letterbox;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSnapshot([Lcom/android/server/wm/ActivityRecord;)Landroid/window/TaskSnapshot;
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-object v1

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    aget-object v2, p1, v0

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_3

    .line 14
    .line 15
    iget-object v3, v2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    array-length v4, p1

    .line 22
    if-eq v3, v4, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    array-length v3, p1

    .line 26
    add-int/lit8 v3, v3, -0x1

    .line 27
    .line 28
    move v4, v0

    .line 29
    :goto_0
    if-ltz v3, :cond_2

    .line 30
    .line 31
    aget-object v5, p1, v3

    .line 32
    .line 33
    invoke-static {v5}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    xor-int/2addr v4, v5

    .line 38
    add-int/lit8 v3, v3, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget p1, v2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mFileId:I

    .line 42
    .line 43
    if-ne p1, v4, :cond_3

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    .line 46
    .line 47
    check-cast p0, Lcom/android/server/wm/ActivitySnapshotCache;

    .line 48
    .line 49
    iget-object p1, v2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/util/IntArray;->get(I)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotCache;->getSnapshot(Ljava/lang/Integer;)Landroid/window/TaskSnapshot;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    :cond_3
    :goto_1
    return-object v1
.end method

.method public final getTaskDescription(Lcom/android/server/wm/WindowContainer;)Landroid/app/ActivityManager$TaskDescription;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 4
    .line 5
    return-object p0
.end method

.method public final getTopActivity(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 2
    .line 3
    return-object p1
.end method

.method public final getUserFiles(I)Landroid/util/SparseArray;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v1, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 25
    .line 26
    new-instance v2, Lcom/android/server/wm/ActivitySnapshotController$1;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 29
    .line 30
    invoke-direct {v2, v3, p1}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;I)V

    .line 31
    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/SnapshotPersistQueue;->addToQueueInternal(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;Z)V

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0

    .line 42
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mUserSavedFiles:Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Landroid/util/SparseArray;

    .line 49
    .line 50
    return-object p0
.end method

.method public final handleActivityTransition(Lcom/android/server/wm/ActivityRecord;)V
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
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingDeleteActivity:Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->addBelowActivityIfExist(Lcom/android/server/wm/ActivityRecord;Landroid/util/ArraySet;Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->addBelowActivityIfExist(Lcom/android/server/wm/ActivityRecord;Landroid/util/ArraySet;Z)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public handleTransitionFinish(Ljava/util/ArrayList;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v0, 0x1

    .line 18
    sub-int/2addr p1, v0

    .line 19
    :goto_0
    if-ltz p1, :cond_6

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mTmpTransitionParticipants:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    if-nez v2, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    iget-object v3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    .line 60
    .line 61
    invoke-virtual {p0, v2, v3, v0}, Lcom/android/server/wm/ActivitySnapshotController;->addBelowActivityIfExist(Lcom/android/server/wm/ActivityRecord;Landroid/util/ArraySet;Z)V

    .line 62
    .line 63
    .line 64
    new-instance v2, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda0;

    .line 65
    .line 66
    invoke-direct {v2, p0}, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivitySnapshotController;)V

    .line 67
    .line 68
    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    .line 75
    .line 76
    invoke-virtual {p0, v2, v1, v0}, Lcom/android/server/wm/ActivitySnapshotController;->addBelowActivityIfExist(Lcom/android/server/wm/ActivityRecord;Landroid/util/ArraySet;Z)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    if-eqz v2, :cond_4

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->handleActivityTransition(Lcom/android/server/wm/ActivityRecord;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    if-eqz v2, :cond_5

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->handleActivityTransition(Lcom/android/server/wm/ActivityRecord;)V

    .line 111
    .line 112
    .line 113
    :cond_5
    :goto_1
    add-int/lit8 p1, p1, -0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_6
    return-void
.end method

.method public hasRecord(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final initSnapshotScale()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const v0, 0x1050108

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getFloat(I)F

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    .line 18
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const v0, 0x3dcccccd    # 0.1f

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public loadSnapshotInner([Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/SnapshotPersistQueue;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 7
    .line 8
    new-instance v8, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;

    .line 9
    .line 10
    iget v5, p2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mFileId:I

    .line 11
    .line 12
    iget v6, p2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mUserId:I

    .line 13
    .line 14
    iget-object v7, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 15
    .line 16
    move-object v2, v8

    .line 17
    move-object v3, p0

    .line 18
    move-object v4, p1

    .line 19
    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;-><init>(Lcom/android/server/wm/ActivitySnapshotController;[Lcom/android/server/wm/ActivityRecord;IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    invoke-virtual {v1, v8, p0}, Lcom/android/server/wm/SnapshotPersistQueue;->addToQueueInternal(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;Z)V

    .line 24
    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final postProcess()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    :goto_0
    if-ltz v1, :cond_2

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    .line 27
    .line 28
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    add-int/lit8 v1, v1, -0x1

    .line 51
    .line 52
    :goto_1
    if-ltz v1, :cond_a

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    .line 59
    .line 60
    iget-object v3, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    add-int/lit8 v4, v4, -0x1

    .line 70
    .line 71
    const/4 v5, 0x0

    .line 72
    move-object v6, v5

    .line 73
    :goto_2
    if-ltz v4, :cond_5

    .line 74
    .line 75
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    .line 80
    .line 81
    invoke-static {v7}, Lcom/android/server/wm/ActivitySnapshotController;->getSystemHashCode(Lcom/android/server/wm/ActivityRecord;)I

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    iget-object v9, v2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    .line 86
    .line 87
    invoke-virtual {v9, v8}, Landroid/util/IntArray;->contains(I)Z

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-eqz v8, :cond_4

    .line 92
    .line 93
    if-nez v6, :cond_3

    .line 94
    .line 95
    new-instance v6, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    :cond_3
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    :cond_4
    add-int/lit8 v4, v4, -0x1

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    if-eqz v6, :cond_7

    .line 107
    .line 108
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    iget-object v4, v2, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    .line 113
    .line 114
    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eq v3, v4, :cond_6

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_6
    const/4 v3, 0x0

    .line 122
    new-array v3, v3, [Lcom/android/server/wm/ActivityRecord;

    .line 123
    .line 124
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    move-object v5, v3

    .line 129
    check-cast v5, [Lcom/android/server/wm/ActivityRecord;

    .line 130
    .line 131
    :cond_7
    :goto_3
    if-nez v5, :cond_8

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_8
    invoke-virtual {p0, v5}, Lcom/android/server/wm/ActivitySnapshotController;->getSnapshot([Lcom/android/server/wm/ActivityRecord;)Landroid/window/TaskSnapshot;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    if-eqz v3, :cond_9

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_9
    invoke-virtual {p0, v5, v2}, Lcom/android/server/wm/ActivitySnapshotController;->loadSnapshotInner([Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;)V

    .line 142
    .line 143
    .line 144
    :goto_4
    add-int/lit8 v1, v1, -0x1

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    .line 148
    .line 149
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    add-int/lit8 v0, v0, -0x1

    .line 154
    .line 155
    :goto_6
    if-ltz v0, :cond_c

    .line 156
    .line 157
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    .line 158
    .line 159
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 164
    .line 165
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    if-eqz v1, :cond_b

    .line 170
    .line 171
    iget-object v2, v1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    .line 172
    .line 173
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    add-int/lit8 v2, v2, -0x1

    .line 178
    .line 179
    :goto_7
    if-ltz v2, :cond_b

    .line 180
    .line 181
    iget-object v3, v1, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    .line 182
    .line 183
    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    iget-object v4, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    .line 188
    .line 189
    check-cast v4, Lcom/android/server/wm/ActivitySnapshotCache;

    .line 190
    .line 191
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v4, v3}, Lcom/android/server/wm/SnapshotCache;->removeRunningEntry(Ljava/lang/Integer;)V

    .line 196
    .line 197
    .line 198
    add-int/lit8 v2, v2, -0x1

    .line 199
    .line 200
    goto :goto_7

    .line 201
    :cond_b
    add-int/lit8 v0, v0, -0x1

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingDeleteActivity:Landroid/util/ArraySet;

    .line 205
    .line 206
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    add-int/lit8 v0, v0, -0x1

    .line 211
    .line 212
    :goto_8
    if-ltz v0, :cond_d

    .line 213
    .line 214
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingDeleteActivity:Landroid/util/ArraySet;

    .line 215
    .line 216
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 221
    .line 222
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->removeIfUserSavedFileExist(Lcom/android/server/wm/ActivityRecord;)V

    .line 223
    .line 224
    .line 225
    add-int/lit8 v0, v0, -0x1

    .line 226
    .line 227
    goto :goto_8

    .line 228
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivitySnapshotController;->resetTmpFields()V

    .line 229
    .line 230
    .line 231
    return-void
.end method

.method public final removeIfUserSavedFileExist(Lcom/android/server/wm/ActivityRecord;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivitySnapshotController;->findSavedFile(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivitySnapshotController;->getUserFiles(I)Landroid/util/SparseArray;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    add-int/lit8 v2, v2, -0x1

    .line 20
    .line 21
    :goto_0
    if-ltz v2, :cond_1

    .line 22
    .line 23
    iget-object v3, v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Landroid/util/IntArray;->get(I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    iget-object v4, v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    .line 30
    .line 31
    invoke-virtual {v4, v3}, Landroid/util/IntArray;->indexOf(I)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-ltz v4, :cond_0

    .line 36
    .line 37
    iget-object v5, v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mActivityIds:Landroid/util/IntArray;

    .line 38
    .line 39
    invoke-virtual {v5, v4}, Landroid/util/IntArray;->remove(I)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    .line 43
    .line 44
    check-cast v4, Lcom/android/server/wm/ActivitySnapshotCache;

    .line 45
    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v4, v5}, Lcom/android/server/wm/SnapshotCache;->removeRunningEntry(Ljava/lang/Integer;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v2, v2, -0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ActivitySnapshotController;->mSavedFilesInOrder:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    iget v0, v0, Lcom/android/server/wm/ActivitySnapshotController$UserSavedFile;->mFileId:I

    .line 65
    .line 66
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 69
    .line 70
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->removeSnapshot(II)V

    .line 71
    .line 72
    .line 73
    :cond_2
    return-void
.end method

.method public resetTmpFields()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingRemoveActivity:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingDeleteActivity:Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPendingLoadActivity:Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final use16BitFormat()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/ActivitySnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mUse16BitFormat:Z

    .line 4
    .line 5
    return p0
.end method
