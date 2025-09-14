.class public final Lcom/android/server/media/MediaSessionStack;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

.field public final mCachedActiveLists:Landroid/util/SparseArray;

.field public mIsMultiSoundOn:Z

.field public mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

.field public final mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionService$FullUserRecord;

.field public final mPrevPlayedUids:Ljava/util/List;

.field public final mSessions:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/android/server/media/MediaSessionService;->LONG_PRESS_TIMEOUT:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/AudioPlayerStateMonitor;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionStack;->mIsMultiSoundOn:Z

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mPrevPlayedUids:Ljava/util/List;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 29
    .line 30
    iput-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final addSession(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .locals 2

    .line 1
    const-string v0, "addSession to bottom of stack | record: %s"

    .line 2
    .line 3
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "MediaSessionStack"

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 17
    .line 18
    check-cast v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    .line 33
    .line 34
    const/4 v0, -0x1

    .line 35
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionIfNeeded()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecordImpl;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_3

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 21
    .line 22
    instance-of v3, v2, Lcom/android/server/media/MediaSession2Record;

    .line 23
    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ne p1, v3, :cond_0

    .line 32
    .line 33
    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-virtual {v3, v4}, Lcom/android/server/media/AudioPlayerStateMonitor;->isPlaybackActive(I)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaSessionRecordImpl;->checkPlaybackActiveState(Z)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_2

    .line 48
    .line 49
    return-object v2

    .line 50
    :cond_2
    if-nez v1, :cond_0

    .line 51
    .line 52
    move-object v1, v2

    .line 53
    goto :goto_0

    .line 54
    :cond_3
    return-object v1
.end method

.method public final getDefaultVolumeSession()Lcom/android/server/media/MediaSessionRecord;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    invoke-virtual {p0, v1, v0}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(IZ)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    .line 21
    .line 22
    invoke-virtual {v3, v0}, Lcom/android/server/media/MediaSessionRecord;->checkPlaybackActiveState(Z)Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionRecord;->canHandleVolumeKey()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    return-object v3

    .line 35
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method public final getPriorityList(IZ)Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 7
    .line 8
    check-cast p0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_5

    .line 21
    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 27
    .line 28
    instance-of v4, v3, Lcom/android/server/media/MediaSessionRecord;

    .line 29
    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    .line 34
    .line 35
    const/4 v4, -0x1

    .line 36
    if-eq p1, v4, :cond_2

    .line 37
    .line 38
    iget v4, v3, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 39
    .line 40
    if-eq p1, v4, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_3

    .line 48
    .line 49
    if-nez p2, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/4 v4, 0x1

    .line 56
    invoke-virtual {v3, v4}, Lcom/android/server/media/MediaSessionRecord;->checkPlaybackActiveState(Z)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_4

    .line 61
    .line 62
    add-int/lit8 v4, v2, 0x1

    .line 63
    .line 64
    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    move v2, v4

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    add-int/lit8 v4, v1, 0x1

    .line 72
    .line 73
    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    move v1, v4

    .line 77
    goto :goto_0

    .line 78
    :cond_5
    return-object v0
.end method

.method public final getSession2Tokens(I)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 7
    .line 8
    check-cast p0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 25
    .line 26
    const/4 v2, -0x1

    .line 27
    if-eq p1, v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ne v2, p1, :cond_0

    .line 34
    .line 35
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecordImpl;->isActive()Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    instance-of v2, v1, Lcom/android/server/media/MediaSession2Record;

    .line 42
    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    check-cast v1, Lcom/android/server/media/MediaSession2Record;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    return-object v0
.end method

.method public final onPlaybackStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;Z)V
    .locals 2

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    const-string/jumbo p2, "onPlaybackStateChanged - Pushing session to top | record: %s"

    .line 4
    .line 5
    .line 6
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p2, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    const-string v0, "MediaSessionStack"

    .line 15
    .line 16
    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 20
    .line 21
    check-cast p2, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    iget-boolean p2, p0, Lcom/android/server/media/MediaSessionStack;->mIsMultiSoundOn:Z

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    const/4 p2, 0x1

    .line 32
    invoke-virtual {p1, p2}, Lcom/android/server/media/MediaSessionRecordImpl;->checkPlaybackActiveState(Z)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 39
    .line 40
    check-cast v1, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-lez v1, :cond_0

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 49
    .line 50
    check-cast v1, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 57
    .line 58
    invoke-virtual {v1, p2}, Lcom/android/server/media/MediaSessionRecordImpl;->checkPlaybackActiveState(Z)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    .line 64
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 65
    .line 66
    check-cast v0, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    iget-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 73
    .line 74
    check-cast p2, Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    iget-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 81
    .line 82
    check-cast p2, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    .line 92
    .line 93
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 94
    .line 95
    .line 96
    iget-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    .line 97
    .line 98
    const/4 v0, -0x1

    .line 99
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 103
    .line 104
    if-eqz p2, :cond_3

    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    if-ne p2, p1, :cond_3

    .line 115
    .line 116
    iget-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionStack;->findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecordImpl;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iget-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 127
    .line 128
    if-eq p1, p2, :cond_3

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getSessionPolicies()I

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    and-int/lit8 p2, p2, 0x2

    .line 135
    .line 136
    if-nez p2, :cond_3

    .line 137
    .line 138
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 139
    .line 140
    .line 141
    :cond_3
    return-void
.end method

.method public final removeSession(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "removeSession | record: %s"

    .line 2
    .line 3
    .line 4
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "MediaSessionStack"

    .line 13
    .line 14
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 18
    .line 19
    check-cast v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 25
    .line 26
    if-ne v0, p1, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    .line 42
    .line 43
    const/4 p1, -0x1

    .line 44
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public final updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v1, "MediaSessionService"

    .line 11
    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "Media button session is changed to "

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v1

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 37
    .line 38
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->pushAddressedPlayerChangedLocked()V

    .line 59
    .line 60
    .line 61
    monitor-exit v1

    .line 62
    return-void

    .line 63
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0
.end method

.method public final updateMediaButtonSessionIfNeeded()V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    const-string v0, "MediaSessionStack"

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v4, "updateMediaButtonSessionIfNeeded, callers="

    .line 12
    .line 13
    .line 14
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    move v6, v2

    .line 31
    :goto_0
    if-ge v6, v1, :cond_1

    .line 32
    .line 33
    add-int/lit8 v7, v6, 0x4

    .line 34
    .line 35
    array-length v8, v4

    .line 36
    if-lt v7, v8, :cond_0

    .line 37
    .line 38
    const-string v7, "<bottom of call stack>"

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    aget-object v7, v4, v7

    .line 42
    .line 43
    new-instance v8, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v9, "."

    .line 56
    .line 57
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v9

    .line 64
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v9, ":"

    .line 68
    .line 69
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    :goto_1
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v7, " "

    .line 87
    .line 88
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    add-int/lit8 v6, v6, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    :cond_2
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 109
    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    new-instance v3, Ljava/util/ArrayList;

    .line 114
    .line 115
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .line 117
    .line 118
    iget-object v4, v0, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    .line 119
    .line 120
    monitor-enter v4

    .line 121
    :try_start_0
    iget-object v0, v0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Ljava/util/List;

    .line 122
    .line 123
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 124
    .line 125
    .line 126
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    move v0, v2

    .line 128
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    if-ge v0, v4, :cond_b

    .line 133
    .line 134
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    check-cast v4, Ljava/lang/Integer;

    .line 139
    .line 140
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    invoke-virtual {p0, v4}, Lcom/android/server/media/MediaSessionStack;->findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecordImpl;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    if-nez v5, :cond_3

    .line 149
    .line 150
    sget-boolean v5, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    .line 151
    .line 152
    if-eqz v5, :cond_a

    .line 153
    .line 154
    const-string v5, "MediaSessionStack"

    .line 155
    .line 156
    const-string/jumbo v6, "updateMediaButtonSessionIfNeeded, skipping uid="

    .line 157
    .line 158
    .line 159
    invoke-static {v4, v6, v5}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_8

    .line 163
    .line 164
    :cond_3
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecordImpl;->getSessionPolicies()I

    .line 165
    .line 166
    .line 167
    move-result v6

    .line 168
    and-int/2addr v6, v1

    .line 169
    const/4 v7, 0x1

    .line 170
    if-eqz v6, :cond_4

    .line 171
    .line 172
    move v6, v7

    .line 173
    goto :goto_3

    .line 174
    :cond_4
    move v6, v2

    .line 175
    :goto_3
    sget-boolean v8, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    .line 176
    .line 177
    if-eqz v8, :cond_5

    .line 178
    .line 179
    const-string v8, "MediaSessionStack"

    .line 180
    .line 181
    new-instance v9, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string/jumbo v10, "updateMediaButtonSessionIfNeeded, checking uid="

    .line 184
    .line 185
    .line 186
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v4, ", mediaButtonSession="

    .line 193
    .line 194
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v4, ", ignoreButtonSession="

    .line 201
    .line 202
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-static {v8, v9, v6}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 206
    .line 207
    .line 208
    :cond_5
    if-nez v6, :cond_a

    .line 209
    .line 210
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 211
    .line 212
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    iget-object v4, v0, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    .line 217
    .line 218
    monitor-enter v4

    .line 219
    :try_start_1
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    iget-object v3, v0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Ljava/util/List;

    .line 228
    .line 229
    check-cast v3, Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 232
    .line 233
    .line 234
    move-result v3

    .line 235
    sub-int/2addr v3, v7

    .line 236
    :goto_4
    if-ltz v3, :cond_8

    .line 237
    .line 238
    iget-object v6, v0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Ljava/util/List;

    .line 239
    .line 240
    check-cast v6, Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    check-cast v6, Ljava/lang/Integer;

    .line 247
    .line 248
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 249
    .line 250
    .line 251
    move-result v6

    .line 252
    if-ne v6, v1, :cond_6

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_6
    iget-object v6, v0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Ljava/util/List;

    .line 256
    .line 257
    check-cast v6, Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    check-cast v6, Ljava/lang/Integer;

    .line 264
    .line 265
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 266
    .line 267
    .line 268
    move-result v6

    .line 269
    invoke-static {v6}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    .line 274
    .line 275
    .line 276
    move-result v7

    .line 277
    if-ne v2, v7, :cond_7

    .line 278
    .line 279
    invoke-virtual {v0, v6}, Lcom/android/server/media/AudioPlayerStateMonitor;->isPlaybackActive(I)Z

    .line 280
    .line 281
    .line 282
    move-result v6

    .line 283
    if-nez v6, :cond_7

    .line 284
    .line 285
    iget-object v6, v0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Ljava/util/List;

    .line 286
    .line 287
    check-cast v6, Ljava/util/ArrayList;

    .line 288
    .line 289
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    goto :goto_5

    .line 293
    :catchall_0
    move-exception p0

    .line 294
    goto :goto_7

    .line 295
    :cond_7
    :goto_5
    add-int/lit8 v3, v3, -0x1

    .line 296
    .line 297
    goto :goto_4

    .line 298
    :cond_8
    :goto_6
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 300
    .line 301
    if-eq v5, v0, :cond_9

    .line 302
    .line 303
    invoke-virtual {p0, v5}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 304
    .line 305
    .line 306
    :cond_9
    return-void

    .line 307
    :goto_7
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    throw p0

    .line 309
    :cond_a
    :goto_8
    add-int/lit8 v0, v0, 0x1

    .line 310
    .line 311
    goto/16 :goto_2

    .line 312
    .line 313
    :cond_b
    return-void

    .line 314
    :catchall_1
    move-exception p0

    .line 315
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 316
    throw p0
.end method
