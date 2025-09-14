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

    .line 3
    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    .line 6
    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/AudioPlayerStateMonitor;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionStack;->mIsMultiSoundOn:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mPrevPlayedUids:Ljava/util/List;

    .line 28
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 30
    iput-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 32
    return-void
.end method


# virtual methods
.method public final addSession(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .locals 2

    .line 1
    const-string v0, "addSession to bottom of stack | record: %s"

    .line 3
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "MediaSessionStack"

    .line 13
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 18
    check-cast v0, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    .line 26
    move-result p1

    .line 27
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    .line 29
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 32
    iget-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    .line 34
    const/4 v0, -0x1

    .line 35
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 38
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionIfNeeded()V

    .line 41
    return-void
.end method

.method public final findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecordImpl;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_3

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 22
    instance-of v3, v2, Lcom/android/server/media/MediaSession2Record;

    .line 24
    if-eqz v3, :cond_1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    .line 30
    move-result v3

    .line 31
    if-ne p1, v3, :cond_0

    .line 33
    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 35
    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    .line 38
    move-result v4

    .line 39
    invoke-virtual {v3, v4}, Lcom/android/server/media/AudioPlayerStateMonitor;->isPlaybackActive(I)Z

    .line 42
    move-result v3

    .line 43
    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaSessionRecordImpl;->checkPlaybackActiveState(Z)Z

    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_2

    .line 49
    return-object v2

    .line 50
    :cond_2
    if-nez v1, :cond_0

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

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_1

    .line 16
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    .line 22
    invoke-virtual {v3, v0}, Lcom/android/server/media/MediaSessionRecord;->checkPlaybackActiveState(Z)Z

    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 28
    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionRecord;->canHandleVolumeKey()Z

    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_0

    .line 34
    return-object v3

    .line 35
    :cond_0
    add-int/lit8 v2, v2, 0x1

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

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 8
    check-cast p0, Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

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

    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_5

    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 28
    instance-of v4, v3, Lcom/android/server/media/MediaSessionRecord;

    .line 30
    if-nez v4, :cond_1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    .line 35
    const/4 v4, -0x1

    .line 36
    if-eq p1, v4, :cond_2

    .line 38
    iget v4, v3, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 40
    if-eq p1, v4, :cond_2

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_3

    .line 49
    if-nez p2, :cond_0

    .line 51
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/4 v4, 0x1

    .line 56
    invoke-virtual {v3, v4}, Lcom/android/server/media/MediaSessionRecord;->checkPlaybackActiveState(Z)Z

    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_4

    .line 62
    add-int/lit8 v4, v2, 0x1

    .line 64
    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 69
    move v2, v4

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    add-int/lit8 v4, v1, 0x1

    .line 73
    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

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

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 8
    check-cast p0, Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 26
    const/4 v2, -0x1

    .line 27
    if-eq p1, v2, :cond_1

    .line 29
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    .line 32
    move-result v2

    .line 33
    if-ne v2, p1, :cond_0

    .line 35
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecordImpl;->isActive()Z

    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 41
    instance-of v2, v1, Lcom/android/server/media/MediaSession2Record;

    .line 43
    if-eqz v2, :cond_0

    .line 45
    check-cast v1, Lcom/android/server/media/MediaSession2Record;

    .line 47
    iget-object v1, v1, Lcom/android/server/media/MediaSession2Record;->mSessionToken:Landroid/media/Session2Token;

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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

    .line 3
    const-string/jumbo p2, "onPlaybackStateChanged - Pushing session to top | record: %s"

    .line 6
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {p2, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    move-result-object p2

    .line 14
    const-string v0, "MediaSessionStack"

    .line 16
    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 21
    check-cast p2, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 26
    iget-boolean p2, p0, Lcom/android/server/media/MediaSessionStack;->mIsMultiSoundOn:Z

    .line 28
    const/4 v0, 0x0

    .line 29
    if-eqz p2, :cond_1

    .line 31
    const/4 p2, 0x1

    .line 32
    invoke-virtual {p1, p2}, Lcom/android/server/media/MediaSessionRecordImpl;->checkPlaybackActiveState(Z)Z

    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 40
    check-cast v1, Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 45
    move-result v1

    .line 46
    if-lez v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 50
    check-cast v1, Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 58
    invoke-virtual {v1, p2}, Lcom/android/server/media/MediaSessionRecordImpl;->checkPlaybackActiveState(Z)Z

    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 66
    check-cast v0, Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    iget-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 74
    check-cast p2, Ljava/util/ArrayList;

    .line 76
    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    iget-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 82
    check-cast p2, Ljava/util/ArrayList;

    .line 84
    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 87
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    .line 90
    move-result p2

    .line 91
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    .line 93
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 96
    iget-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    .line 98
    const/4 v0, -0x1

    .line 99
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 102
    :cond_2
    iget-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 104
    if-eqz p2, :cond_3

    .line 106
    invoke-virtual {p2}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    .line 109
    move-result p2

    .line 110
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    .line 113
    move-result p1

    .line 114
    if-ne p2, p1, :cond_3

    .line 116
    iget-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 118
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    .line 121
    move-result p1

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionStack;->findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecordImpl;

    .line 125
    move-result-object p1

    .line 126
    iget-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 128
    if-eq p1, p2, :cond_3

    .line 130
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getSessionPolicies()I

    .line 133
    move-result p2

    .line 134
    and-int/lit8 p2, p2, 0x2

    .line 136
    if-nez p2, :cond_3

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 141
    :cond_3
    return-void
.end method

.method public final removeSession(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "removeSession | record: %s"

    .line 4
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 8
    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    const-string v1, "MediaSessionStack"

    .line 14
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    .line 19
    check-cast v0, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 26
    if-ne v0, p1, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    .line 35
    move-result p1

    .line 36
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    .line 38
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 41
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    .line 43
    const/4 p1, -0x1

    .line 44
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 47
    return-void
.end method

.method public final updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 3
    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecordImpl;

    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaSessionStack;->mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string v1, "MediaSessionService"

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    const-string v3, "Media button session is changed to "

    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 31
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 33
    monitor-enter v1

    .line 34
    if-eqz v0, :cond_0

    .line 36
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 38
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 40
    invoke-virtual {v2, v0}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V

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

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->rememberMediaButtonReceiverLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 51
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 53
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mHandler:Lcom/android/server/media/MediaSessionService$MessageHandler;

    .line 55
    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->postSessionsChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->pushAddressedPlayerChangedLocked()V

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

    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_2

    .line 7
    const-string v0, "MediaSessionStack"

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v4, "updateMediaButtonSessionIfNeeded, callers="

    .line 14
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 24
    move-result-object v4

    .line 25
    new-instance v5, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    move v6, v2

    .line 31
    :goto_0
    if-ge v6, v1, :cond_1

    .line 33
    add-int/lit8 v7, v6, 0x4

    .line 35
    array-length v8, v4

    .line 36
    if-lt v7, v8, :cond_0

    .line 38
    const-string v7, "<bottom of call stack>"

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    aget-object v7, v4, v7

    .line 43
    new-instance v8, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 51
    move-result-object v9

    .line 52
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v9, "."

    .line 57
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 63
    move-result-object v9

    .line 64
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v9, ":"

    .line 69
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 75
    move-result v7

    .line 76
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v7

    .line 83
    :goto_1
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v7, " "

    .line 88
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    add-int/lit8 v6, v6, 0x1

    .line 93
    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v3

    .line 105
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 110
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    new-instance v3, Ljava/util/ArrayList;

    .line 115
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 118
    iget-object v4, v0, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    .line 120
    monitor-enter v4

    .line 121
    :try_start_0
    iget-object v0, v0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Ljava/util/List;

    .line 123
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 126
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    move v0, v2

    .line 128
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 131
    move-result v4

    .line 132
    if-ge v0, v4, :cond_b

    .line 134
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    move-result-object v4

    .line 138
    check-cast v4, Ljava/lang/Integer;

    .line 140
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 143
    move-result v4

    .line 144
    invoke-virtual {p0, v4}, Lcom/android/server/media/MediaSessionStack;->findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecordImpl;

    .line 147
    move-result-object v5

    .line 148
    if-nez v5, :cond_3

    .line 150
    sget-boolean v5, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    .line 152
    if-eqz v5, :cond_a

    .line 154
    const-string v5, "MediaSessionStack"

    .line 156
    const-string/jumbo v6, "updateMediaButtonSessionIfNeeded, skipping uid="

    .line 159
    invoke-static {v4, v6, v5}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 162
    goto/16 :goto_8

    .line 164
    :cond_3
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecordImpl;->getSessionPolicies()I

    .line 167
    move-result v6

    .line 168
    and-int/2addr v6, v1

    .line 169
    const/4 v7, 0x1

    .line 170
    if-eqz v6, :cond_4

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

    .line 177
    if-eqz v8, :cond_5

    .line 179
    const-string v8, "MediaSessionStack"

    .line 181
    new-instance v9, Ljava/lang/StringBuilder;

    .line 183
    const-string/jumbo v10, "updateMediaButtonSessionIfNeeded, checking uid="

    .line 186
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    const-string v4, ", mediaButtonSession="

    .line 194
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    const-string v4, ", ignoreButtonSession="

    .line 202
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-static {v8, v9, v6}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 208
    :cond_5
    if-nez v6, :cond_a

    .line 210
    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 212
    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecordImpl;->getUid()I

    .line 215
    move-result v1

    .line 216
    iget-object v4, v0, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    .line 218
    monitor-enter v4

    .line 219
    :try_start_1
    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 226
    move-result v2

    .line 227
    iget-object v3, v0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Ljava/util/List;

    .line 229
    check-cast v3, Ljava/util/ArrayList;

    .line 231
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 234
    move-result v3

    .line 235
    sub-int/2addr v3, v7

    .line 236
    :goto_4
    if-ltz v3, :cond_8

    .line 238
    iget-object v6, v0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Ljava/util/List;

    .line 240
    check-cast v6, Ljava/util/ArrayList;

    .line 242
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 245
    move-result-object v6

    .line 246
    check-cast v6, Ljava/lang/Integer;

    .line 248
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 251
    move-result v6

    .line 252
    if-ne v6, v1, :cond_6

    .line 254
    goto :goto_6

    .line 255
    :cond_6
    iget-object v6, v0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Ljava/util/List;

    .line 257
    check-cast v6, Ljava/util/ArrayList;

    .line 259
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 262
    move-result-object v6

    .line 263
    check-cast v6, Ljava/lang/Integer;

    .line 265
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 268
    move-result v6

    .line 269
    invoke-static {v6}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 272
    move-result-object v7

    .line 273
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    .line 276
    move-result v7

    .line 277
    if-ne v2, v7, :cond_7

    .line 279
    invoke-virtual {v0, v6}, Lcom/android/server/media/AudioPlayerStateMonitor;->isPlaybackActive(I)Z

    .line 282
    move-result v6

    .line 283
    if-nez v6, :cond_7

    .line 285
    iget-object v6, v0, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Ljava/util/List;

    .line 287
    check-cast v6, Ljava/util/ArrayList;

    .line 289
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

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

    .line 301
    if-eq v5, v0, :cond_9

    .line 303
    invoke-virtual {p0, v5}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecordImpl;)V

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

    .line 311
    goto/16 :goto_2

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
