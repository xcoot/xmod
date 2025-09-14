.class public final Lcom/android/server/audio/MusicFxHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

.field public final mClientUidMapLock:Ljava/lang/Object;

.field public final mClientUidSessionMap:Lcom/android/server/audio/MusicFxHelper$MySparseArray;

.field public final mContext:Landroid/content/Context;

.field public final mEffectUidObserver:Lcom/android/server/audio/MusicFxHelper$1;

.field public mIsBound:Z

.field public final mMusicFxBindConnection:Lcom/android/server/audio/MusicFxHelper$2;

.field public final mPackageName:Ljava/lang/String;

.field public mUidObserverToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService$AudioHandler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/audio/MusicFxHelper;->mClientUidMapLock:Ljava/lang/Object;

    .line 11
    const-class v0, Lcom/android/server/audio/MusicFxHelper;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/android/server/audio/MusicFxHelper;->mPackageName:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/android/server/audio/MusicFxHelper;->mUidObserverToken:Landroid/os/IBinder;

    .line 26
    new-instance v0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;

    .line 28
    invoke-direct {v0, p0}, Lcom/android/server/audio/MusicFxHelper$MySparseArray;-><init>(Lcom/android/server/audio/MusicFxHelper;)V

    .line 31
    iput-object v0, p0, Lcom/android/server/audio/MusicFxHelper;->mClientUidSessionMap:Lcom/android/server/audio/MusicFxHelper$MySparseArray;

    .line 33
    new-instance v0, Lcom/android/server/audio/MusicFxHelper$1;

    .line 35
    invoke-direct {v0, p0}, Lcom/android/server/audio/MusicFxHelper$1;-><init>(Lcom/android/server/audio/MusicFxHelper;)V

    .line 38
    iput-object v0, p0, Lcom/android/server/audio/MusicFxHelper;->mEffectUidObserver:Lcom/android/server/audio/MusicFxHelper$1;

    .line 40
    new-instance v0, Lcom/android/server/audio/MusicFxHelper$2;

    .line 42
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/android/server/audio/MusicFxHelper;->mMusicFxBindConnection:Lcom/android/server/audio/MusicFxHelper$2;

    .line 47
    iput-object p1, p0, Lcom/android/server/audio/MusicFxHelper;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/server/audio/MusicFxHelper;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 51
    return-void
.end method

.method public static getCurrentUserId()I
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 8
    move-result-object v2

    .line 9
    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    .line 12
    move-result-object v2

    .line 13
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18
    return v2

    .line 19
    :catchall_0
    move-exception v2

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    throw v2

    .line 24
    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    const/4 v0, 0x0

    .line 28
    return v0
.end method


# virtual methods
.method public final handleAudioEffectSessionClose(IILjava/lang/String;)Z
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, " UID "

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, " close MusicFx session "

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    const-string v2, "AS.MusicFxHelper"

    .line 31
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p0, p0, Lcom/android/server/audio/MusicFxHelper;->mClientUidSessionMap:Lcom/android/server/audio/MusicFxHelper$MySparseArray;

    .line 36
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;

    .line 42
    const-string v3, " does not exist in map, abort"

    .line 44
    const/4 v4, 0x0

    .line 45
    if-nez v0, :cond_0

    .line 47
    new-instance p0, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return v4

    .line 72
    :cond_0
    iget-object v5, v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mPackageName:Ljava/lang/String;

    .line 74
    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_1

    .line 80
    const-string p0, "Inconsistency package names for UID "

    .line 82
    const-string p2, " close, prev: "

    .line 84
    invoke-static {p1, p0, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    move-result-object p0

    .line 88
    iget-object p1, v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mPackageName:Ljava/lang/String;

    .line 90
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string p1, ", now: "

    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 105
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return v4

    .line 109
    :cond_1
    iget-object v5, v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mSessions:Ljava/util/List;

    .line 111
    if-eqz v5, :cond_3

    .line 113
    check-cast v5, Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_3

    .line 121
    iget-object v5, v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mSessions:Ljava/util/List;

    .line 123
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    move-result-object v6

    .line 127
    check-cast v5, Ljava/util/ArrayList;

    .line 129
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 132
    move-result v5

    .line 133
    if-nez v5, :cond_2

    .line 135
    new-instance p0, Ljava/lang/StringBuilder;

    .line 137
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    const-string p1, " session "

    .line 151
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object p0

    .line 164
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return v4

    .line 168
    :cond_2
    iget-object p3, v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mSessions:Ljava/util/List;

    .line 170
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    move-result-object p2

    .line 174
    check-cast p3, Ljava/util/ArrayList;

    .line 176
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 179
    :cond_3
    iget-object p2, v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mSessions:Ljava/util/List;

    .line 181
    if-eqz p2, :cond_5

    .line 183
    check-cast p2, Ljava/util/ArrayList;

    .line 185
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 188
    move-result p2

    .line 189
    if-nez p2, :cond_4

    .line 191
    goto :goto_0

    .line 192
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->put(ILcom/android/server/audio/MusicFxHelper$PackageSessions;)V

    .line 195
    goto :goto_1

    .line 196
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->remove(I)V

    .line 199
    :goto_1
    const/4 p0, 0x1

    .line 200
    return p0
.end method

.method public final handleAudioEffectSessionOpen(IILjava/lang/String;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, " UID "

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, " open MusicFx session "

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    const-string v1, "AS.MusicFxHelper"

    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object p0, p0, Lcom/android/server/audio/MusicFxHelper;->mClientUidSessionMap:Lcom/android/server/audio/MusicFxHelper$MySparseArray;

    .line 36
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;

    .line 42
    if-eqz v0, :cond_1

    .line 44
    iget-object v2, v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mSessions:Ljava/util/List;

    .line 46
    if-eqz v2, :cond_1

    .line 48
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v3

    .line 52
    check-cast v2, Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 57
    move-result v2

    .line 58
    const/4 v3, 0x0

    .line 59
    if-eqz v2, :cond_0

    .line 61
    const-string p0, "Audio session "

    .line 63
    const-string v0, " already open for UID: "

    .line 65
    const-string v2, ", package: "

    .line 67
    invoke-static {p2, p1, p0, v0, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string p1, ", abort"

    .line 76
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return v3

    .line 87
    :cond_0
    iget-object v2, v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mPackageName:Ljava/lang/String;

    .line 89
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_2

    .line 95
    const-string p0, "Inconsistency package names for UID open: "

    .line 97
    const-string p2, " prev: "

    .line 99
    invoke-static {p1, p0, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    move-result-object p0

    .line 103
    iget-object p1, v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mPackageName:Ljava/lang/String;

    .line 105
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string p1, ", now: "

    .line 110
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object p0

    .line 120
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return v3

    .line 124
    :cond_1
    new-instance v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;

    .line 126
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    .line 131
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    iput-object v1, v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mSessions:Ljava/util/List;

    .line 136
    iput-object p3, v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mPackageName:Ljava/lang/String;

    .line 138
    :cond_2
    iget-object p3, v0, Lcom/android/server/audio/MusicFxHelper$PackageSessions;->mSessions:Ljava/util/List;

    .line 140
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    move-result-object p2

    .line 144
    check-cast p3, Ljava/util/ArrayList;

    .line 146
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->put(ILcom/android/server/audio/MusicFxHelper$PackageSessions;)V

    .line 152
    const/4 p0, 0x1

    .line 153
    return p0
.end method

.method public final setMusicFxServiceWithObserver(Landroid/content/Intent;Ljava/lang/String;I)Z
    .locals 3

    .line 1
    const-string v0, "android.media.extra.AUDIO_SESSION"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string p0, "AS.MusicFxHelper"

    .line 12
    const-string p1, " intent have no invalid audio session"

    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return v1

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/MusicFxHelper;->mClientUidMapLock:Ljava/lang/Object;

    .line 24
    monitor-enter v1

    .line 25
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    const-string v2, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    .line 31
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p0, p3, v0, p2}, Lcom/android/server/audio/MusicFxHelper;->handleAudioEffectSessionOpen(IILjava/lang/String;)Z

    .line 40
    move-result p0

    .line 41
    monitor-exit v1

    .line 42
    return p0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0, p3, v0, p2}, Lcom/android/server/audio/MusicFxHelper;->handleAudioEffectSessionClose(IILjava/lang/String;)Z

    .line 48
    move-result p0

    .line 49
    monitor-exit v1

    .line 50
    return p0

    .line 51
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method
