.class public final Lcom/android/server/audio/MusicFxHelper$MySparseArray;
.super Landroid/util/SparseArray;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/MusicFxHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/MusicFxHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final put(ILcom/android/server/audio/MusicFxHelper$PackageSessions;)V
    .locals 11

    .line 2
    const-string/jumbo v0, "com.android.musicfx"

    const-string v1, " UID "

    const-string/jumbo v2, "registered to observer with UID "

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v3

    const-string v4, "AS.MusicFxHelper"

    if-nez v3, :cond_1

    .line 3
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    iget-object v5, v5, Lcom/android/server/audio/MusicFxHelper;->mPackageName:Ljava/lang/String;

    invoke-interface {v3, v0, v5}, Landroid/app/IActivityManager;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 4
    const-string v5, "RemoteException with getPackageProcessState: "

    .line 5
    invoke-static {v5, v3, v4}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    const/16 v3, 0x14

    :goto_0
    const/4 v5, 0x6

    if-le v3, v5, :cond_0

    .line 6
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.android.musicfx.KeepAliveService"

    invoke-virtual {v5, v0, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 7
    iget-object v5, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/audio/MusicFxHelper;->mIsBound:Z

    .line 8
    iget-object v7, v5, Lcom/android/server/audio/MusicFxHelper;->mContext:Landroid/content/Context;

    iget-object v5, v5, Lcom/android/server/audio/MusicFxHelper;->mMusicFxBindConnection:Lcom/android/server/audio/MusicFxHelper$2;

    .line 9
    invoke-static {}, Lcom/android/server/audio/MusicFxHelper;->getCurrentUserId()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    .line 10
    invoke-virtual {v7, v0, v5, v6, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 11
    const-string v0, "bindService to com.android.musicfx"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_0
    const-string/jumbo v0, "com.android.musicfx procState "

    .line 13
    invoke-static {v3, v0, v4}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    iget-object v3, v0, Lcom/android/server/audio/MusicFxHelper;->mUidObserverToken:Landroid/os/IBinder;

    if-nez v3, :cond_2

    .line 15
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    iget-object v6, v1, Lcom/android/server/audio/MusicFxHelper;->mEffectUidObserver:Lcom/android/server/audio/MusicFxHelper$1;

    iget-object v9, v1, Lcom/android/server/audio/MusicFxHelper;->mPackageName:Ljava/lang/String;

    filled-new-array {p1}, [I

    move-result-object v10

    const/4 v7, 0x2

    const/4 v8, -0x1

    invoke-interface/range {v5 .. v10}, Landroid/app/IActivityManager;->registerUidObserverForUids(Landroid/app/IUidObserver;IILjava/lang/String;[I)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/audio/MusicFxHelper;->mUidObserverToken:Landroid/os/IBinder;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    .line 17
    :cond_2
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 18
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    iget-object v3, v2, Lcom/android/server/audio/MusicFxHelper;->mUidObserverToken:Landroid/os/IBinder;

    iget-object v2, v2, Lcom/android/server/audio/MusicFxHelper;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v3, v2, p1}, Landroid/app/IActivityManager;->addUidToObserver(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " add to observer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 20
    :goto_1
    const-string v1, "RemoteException with UID observer add/register: "

    .line 21
    invoke-static {v1, v0, v4}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 22
    :cond_3
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic put(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/android/server/audio/MusicFxHelper$PackageSessions;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->put(ILcom/android/server/audio/MusicFxHelper$PackageSessions;)V

    return-void
.end method

.method public final remove(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "AS.MusicFxHelper"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v2, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    .line 14
    .line 15
    iget-object v3, v2, Lcom/android/server/audio/MusicFxHelper;->mUidObserverToken:Landroid/os/IBinder;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/android/server/audio/MusicFxHelper;->mPackageName:Ljava/lang/String;

    .line 18
    .line 19
    invoke-interface {v0, v3, v2, p1}, Landroid/app/IActivityManager;->removeUidFromObserver(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    const-string v2, "RemoteException with removeUidFromObserver: "

    .line 25
    .line 26
    invoke-static {v2, v0, v1}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/server/audio/MusicFxHelper;->mEffectUidObserver:Lcom/android/server/audio/MusicFxHelper$1;

    .line 45
    .line 46
    invoke-interface {p1, v0}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catch_1
    move-exception p1

    .line 51
    const-string v0, "RemoteException with unregisterUidObserver: "

    .line 52
    .line 53
    invoke-static {v0, p1, v1}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :goto_1
    iget-object p1, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    .line 57
    .line 58
    const/4 v0, 0x0

    .line 59
    iput-object v0, p1, Lcom/android/server/audio/MusicFxHelper;->mUidObserverToken:Landroid/os/IBinder;

    .line 60
    .line 61
    iget-boolean v0, p1, Lcom/android/server/audio/MusicFxHelper;->mIsBound:Z

    .line 62
    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    iget-object v0, p1, Lcom/android/server/audio/MusicFxHelper;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/android/server/audio/MusicFxHelper;->mMusicFxBindConnection:Lcom/android/server/audio/MusicFxHelper$2;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/audio/MusicFxHelper$MySparseArray;->this$0:Lcom/android/server/audio/MusicFxHelper;

    .line 73
    .line 74
    const/4 p1, 0x0

    .line 75
    iput-boolean p1, p0, Lcom/android/server/audio/MusicFxHelper;->mIsBound:Z

    .line 76
    .line 77
    const-string/jumbo p0, "last session closed, unregister UID observer, and unbind com.android.musicfx"

    .line 78
    .line 79
    .line 80
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_1
    return-void
.end method
