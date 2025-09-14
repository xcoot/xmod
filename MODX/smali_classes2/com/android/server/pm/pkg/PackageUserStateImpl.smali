.class public final Lcom/android/server/pm/pkg/PackageUserStateImpl;
.super Lcom/android/server/utils/WatchableImpl;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/pkg/PackageUserStateInternal;
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

.field public mBooleans:I

.field public mCeDataInode:J

.field public mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

.field public mDeDataInode:J

.field public mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

.field public mDistractionFlags:I

.field public mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

.field public mEnabledState:I

.field public mFirstInstallTimeMillis:J

.field public mHarmfulAppWarning:Ljava/lang/String;

.field public mInstallReason:I

.field public mLastDisableAppCaller:Ljava/lang/String;

.field public mMinAspectRatio:I

.field public mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

.field public mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public mSplashScreenTheme:Ljava/lang/String;

.field public mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

.field public mUninstallReason:I

.field public mWatchable:Lcom/android/server/utils/Watchable;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/Watchable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    .line 3
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    .line 4
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    .line 5
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    .line 6
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    .line 7
    new-instance p1, Lcom/android/server/pm/pkg/PackageUserStateImpl$1;

    invoke-direct {p1, p0, p0, p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl$1;-><init>(Lcom/android/server/pm/pkg/PackageUserStateImpl;Lcom/android/server/pm/pkg/PackageUserStateImpl;Lcom/android/server/utils/Watchable;)V

    .line 8
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1, p1}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->setBoolean$1(IZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/Watchable;Lcom/android/server/pm/pkg/PackageUserStateImpl;)V
    .locals 4

    .line 10
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    .line 12
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    .line 13
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    .line 14
    iput v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    .line 15
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    .line 16
    iget p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    .line 17
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->snapshot()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 19
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-nez p1, :cond_1

    move-object p1, v1

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->snapshot()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 21
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 22
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    if-nez p1, :cond_2

    move-object v2, v1

    goto :goto_2

    .line 23
    :cond_2
    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    .line 24
    invoke-direct {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 25
    invoke-static {v2, p1}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V

    .line 26
    :goto_2
    iput-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    .line 27
    iget-wide v2, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    iput-wide v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    .line 28
    iget-wide v2, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDeDataInode:J

    iput-wide v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDeDataInode:J

    .line 29
    iget p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    .line 30
    iget p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    .line 31
    iget p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    .line 32
    iget p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    .line 33
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    .line 34
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    .line 35
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    .line 36
    iget p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    .line 37
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    if-nez p1, :cond_3

    move-object v2, v1

    goto :goto_3

    .line 38
    :cond_3
    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    .line 39
    invoke-direct {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 40
    invoke-static {v2, p1}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V

    .line 41
    :goto_3
    iput-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 42
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    if-nez p1, :cond_4

    goto :goto_4

    .line 43
    :cond_4
    new-instance v1, Lcom/android/server/utils/WatchedArrayMap;

    .line 44
    invoke-direct {v1, v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 45
    invoke-static {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V

    .line 46
    :goto_4
    iput-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 47
    iget-wide v0, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    iput-wide v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    .line 48
    iget-object p1, p2, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    .line 49
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Auto;

    .line 50
    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method


# virtual methods
.method public final dataExists()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-gtz v0, :cond_1

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDeDataInode:J

    .line 10
    .line 11
    cmp-long p0, v0, v2

    .line 12
    .line 13
    if-lez p0, :cond_0

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

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    const-class v2, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 19
    .line 20
    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    .line 21
    .line 22
    iget v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    .line 23
    .line 24
    if-ne v2, v3, :cond_2

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 27
    .line 28
    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 29
    .line 30
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 37
    .line 38
    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 39
    .line 40
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    iget-wide v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    .line 47
    .line 48
    iget-wide v4, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    .line 49
    .line 50
    cmp-long v2, v2, v4

    .line 51
    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    iget-wide v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDeDataInode:J

    .line 55
    .line 56
    iget-wide v4, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDeDataInode:J

    .line 57
    .line 58
    cmp-long v2, v2, v4

    .line 59
    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    .line 63
    .line 64
    iget v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    .line 65
    .line 66
    if-ne v2, v3, :cond_2

    .line 67
    .line 68
    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    .line 69
    .line 70
    iget v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    .line 71
    .line 72
    if-ne v2, v3, :cond_2

    .line 73
    .line 74
    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    .line 75
    .line 76
    iget v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    .line 77
    .line 78
    if-ne v2, v3, :cond_2

    .line 79
    .line 80
    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    .line 81
    .line 82
    iget v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    .line 83
    .line 84
    if-ne v2, v3, :cond_2

    .line 85
    .line 86
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_2

    .line 95
    .line 96
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    .line 97
    .line 98
    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-eqz v2, :cond_2

    .line 105
    .line 106
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 107
    .line 108
    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 109
    .line 110
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_2

    .line 115
    .line 116
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    .line 117
    .line 118
    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    .line 119
    .line 120
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_2

    .line 125
    .line 126
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    .line 127
    .line 128
    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_2

    .line 135
    .line 136
    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    .line 137
    .line 138
    iget v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    .line 139
    .line 140
    if-ne v2, v3, :cond_2

    .line 141
    .line 142
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 143
    .line 144
    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 145
    .line 146
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_2

    .line 151
    .line 152
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 153
    .line 154
    iget-object v3, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 155
    .line 156
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_2

    .line 161
    .line 162
    iget-wide v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    .line 163
    .line 164
    iget-wide v4, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    .line 165
    .line 166
    cmp-long v2, v2, v4

    .line 167
    .line 168
    if-nez v2, :cond_2

    .line 169
    .line 170
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    .line 171
    .line 172
    iget-object p1, p1, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    .line 173
    .line 174
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    if-eqz p0, :cond_2

    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_2
    move v0, v1

    .line 182
    :goto_0
    return v0

    .line 183
    :cond_3
    :goto_1
    return v1
.end method

.method public final getAllOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance v0, Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    .line 22
    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Landroid/content/pm/overlay/OverlayPaths;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/overlay/OverlayPaths$Builder;->build()Landroid/content/pm/overlay/OverlayPaths;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method

.method public final getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getBoolean$1(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    .line 2
    .line 3
    and-int/2addr p0, p1

    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public final getCeDataInode()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDeDataInode()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDeDataInode:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDisabledComponents()Landroid/util/ArraySet;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-nez p0, :cond_0

    .line 3
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic getDisabledComponents()Ljava/util/Set;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getDisabledComponents()Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public final getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDistractionFlags()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    .line 2
    .line 3
    return p0
.end method

.method public final getEnabledComponents()Landroid/util/ArraySet;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    if-nez p0, :cond_0

    .line 3
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    :goto_0
    return-object p0
.end method

.method public final bridge synthetic getEnabledComponents()Ljava/util/Set;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getEnabledComponents()Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public final getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getEnabledState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    .line 2
    .line 3
    return p0
.end method

.method public final getFirstInstallTimeMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getHarmfulAppWarning()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getInstallReason()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    .line 2
    .line 3
    return p0
.end method

.method public final getLastDisableAppCaller()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getMinAspectRatio()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    .line 2
    .line 3
    return p0
.end method

.method public final getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOverrideLabelIconForComponent(Landroid/content/ComponentName;)Landroid/util/Pair;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Landroid/util/Pair;

    .line 20
    .line 21
    return-object p0
.end method

.method public final getSharedLibraryOverlayPaths()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    return-object p0
.end method

.method public final getSplashScreenTheme()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUninstallReason()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    .line 2
    .line 3
    return p0
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    mul-int/2addr v0, v1

    .line 7
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 8
    .line 9
    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    add-int/2addr v2, v0

    .line 14
    mul-int/2addr v2, v1

    .line 15
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    add-int/2addr v0, v2

    .line 22
    mul-int/2addr v0, v1

    .line 23
    iget-wide v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mCeDataInode:J

    .line 24
    .line 25
    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    add-int/2addr v2, v0

    .line 30
    mul-int/2addr v2, v1

    .line 31
    iget-wide v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDeDataInode:J

    .line 32
    .line 33
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/2addr v0, v2

    .line 38
    mul-int/2addr v0, v1

    .line 39
    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDistractionFlags:I

    .line 40
    .line 41
    add-int/2addr v0, v2

    .line 42
    mul-int/2addr v0, v1

    .line 43
    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledState:I

    .line 44
    .line 45
    add-int/2addr v0, v2

    .line 46
    mul-int/2addr v0, v1

    .line 47
    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mInstallReason:I

    .line 48
    .line 49
    add-int/2addr v0, v2

    .line 50
    mul-int/2addr v0, v1

    .line 51
    iget v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mUninstallReason:I

    .line 52
    .line 53
    add-int/2addr v0, v2

    .line 54
    mul-int/2addr v0, v1

    .line 55
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mHarmfulAppWarning:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    add-int/2addr v2, v0

    .line 62
    mul-int/2addr v2, v1

    .line 63
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mLastDisableAppCaller:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    add-int/2addr v0, v2

    .line 70
    mul-int/2addr v0, v1

    .line 71
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mOverlayPaths:Landroid/content/pm/overlay/OverlayPaths;

    .line 72
    .line 73
    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    add-int/2addr v2, v0

    .line 78
    mul-int/2addr v2, v1

    .line 79
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    .line 80
    .line 81
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    add-int/2addr v0, v2

    .line 86
    mul-int/2addr v0, v1

    .line 87
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSplashScreenTheme:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    add-int/2addr v2, v0

    .line 94
    mul-int/2addr v2, v1

    .line 95
    iget v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mMinAspectRatio:I

    .line 96
    .line 97
    add-int/2addr v2, v0

    .line 98
    mul-int/2addr v2, v1

    .line 99
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 100
    .line 101
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    add-int/2addr v0, v2

    .line 106
    mul-int/2addr v0, v1

    .line 107
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 108
    .line 109
    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    add-int/2addr v2, v0

    .line 114
    mul-int/2addr v2, v1

    .line 115
    iget-wide v3, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mFirstInstallTimeMillis:J

    .line 116
    .line 117
    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    add-int/2addr v0, v2

    .line 122
    mul-int/lit16 v0, v0, 0x3c1

    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mArchiveState:Lcom/android/server/pm/pkg/ArchiveState;

    .line 125
    .line 126
    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    add-int/2addr p0, v0

    .line 131
    mul-int/2addr p0, v1

    .line 132
    return p0
.end method

.method public final isComponentDisabled(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final isComponentEnabled(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method public final isHidden()Z
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getBoolean$1(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isInstalled()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getBoolean$1(I)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final isInstantApp()Z
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getBoolean$1(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isNotLaunched()Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getBoolean$1(I)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final isQuarantined()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->isSuspended()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    move v2, v1

    .line 18
    :goto_0
    if-ge v2, v0, :cond_2

    .line 19
    .line 20
    iget-object v3, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/android/server/pm/pkg/SuspendParams;

    .line 27
    .line 28
    iget-boolean v3, v3, Lcom/android/server/pm/pkg/SuspendParams;->mQuarantined:Z

    .line 29
    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return v1
.end method

.method public final isStopped()Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getBoolean$1(I)Z

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public final isSuspended()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSuspendParams:Lcom/android/server/utils/WatchedArrayMap;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Map;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    .line 9
    return p0
.end method

.method public final isVirtualPreload()Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->getBoolean$1(I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final onChanged$4()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mWatchable:Lcom/android/server/utils/Watchable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, v0}, Lcom/android/server/utils/Watchable;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public overrideLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/util/Pair;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Ljava/lang/String;

    .line 19
    .line 20
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Ljava/lang/Integer;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v0, v1

    .line 26
    move-object v2, v0

    .line 27
    :goto_0
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v0, 0x0

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    :goto_1
    move v0, v3

    .line 44
    :goto_2
    if-eqz v0, :cond_6

    .line 45
    .line 46
    if-nez p2, :cond_3

    .line 47
    .line 48
    if-nez p3, :cond_3

    .line 49
    .line 50
    iget-object p2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 51
    .line 52
    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_5

    .line 64
    .line 65
    iput-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 69
    .line 70
    if-nez v1, :cond_4

    .line 71
    .line 72
    new-instance v1, Lcom/android/server/utils/WatchedArrayMap;

    .line 73
    .line 74
    invoke-direct {v1, v3}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 75
    .line 76
    .line 77
    iput-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 78
    .line 79
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mComponentLabelIconOverrideMap:Lcom/android/server/utils/WatchedArrayMap;

    .line 85
    .line 86
    invoke-static {p2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {v1, p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 94
    .line 95
    .line 96
    :cond_6
    return v0
.end method

.method public final setBoolean$1(IZ)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget p2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    .line 4
    .line 5
    or-int/2addr p1, p2

    .line 6
    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget p2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    .line 10
    .line 11
    not-int p1, p1

    .line 12
    and-int/2addr p1, p2

    .line 13
    iput p1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mBooleans:I

    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public final setDisabledComponents(Landroid/util/ArraySet;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/utils/WatchedArraySet;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->clear()V

    .line 20
    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mDisabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 25
    .line 26
    iget-object v1, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final setEnabledComponents(Landroid/util/ArraySet;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/server/utils/WatchedArraySet;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->clear()V

    .line 20
    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mEnabledComponentsWatched:Lcom/android/server/utils/WatchedArraySet;

    .line 25
    .line 26
    iget-object v1, v0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final setSharedLibraryOverlayPaths(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/content/pm/overlay/OverlayPaths;

    .line 27
    .line 28
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    return v1

    .line 35
    :cond_1
    const/4 v0, 0x1

    .line 36
    if-eqz p2, :cond_3

    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/content/pm/overlay/OverlayPaths;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    .line 46
    .line 47
    invoke-virtual {v1, p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 51
    .line 52
    .line 53
    return v0

    .line 54
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSharedLibraryOverlayPaths:Lcom/android/server/utils/WatchedArrayMap;

    .line 55
    .line 56
    invoke-virtual {p2, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_4

    .line 61
    .line 62
    move v1, v0

    .line 63
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageUserStateImpl;->onChanged$4()V

    .line 64
    .line 65
    .line 66
    return v1
.end method

.method public final snapshot()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/pm/pkg/PackageUserStateImpl;

    .line 8
    .line 9
    return-object p0
.end method
