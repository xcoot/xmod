.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mGetAdServiceListCalled:Z

.field public mGetAppLinkInfoListCalled:Z

.field public mGetServiceListCalled:Z

.field public final mLock:Ljava/lang/Object;

.field public final mRunningProfiles:Ljava/util/Set;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserStates:Landroid/util/SparseArray;


# direct methods
.method public static -$$Nest$mcreateAdSessionInternalLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/ad/ITvAdService;Landroid/os/IBinder;I)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    iget-object p3, p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdSessionStateMap:Ljava/util/Map;

    .line 6
    .line 7
    check-cast p3, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    check-cast p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 14
    .line 15
    invoke-interface {p2}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p2}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    new-instance v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;

    .line 24
    .line 25
    invoke-direct {v0, p0, p3, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionCallback;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;[Landroid/view/InputChannel;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    :try_start_0
    aget-object v1, p2, p0

    .line 30
    .line 31
    iget-object v2, p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mAdServiceId:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mType:Ljava/lang/String;

    .line 34
    .line 35
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/media/tv/ad/ITvAdService;->createSession(Landroid/view/InputChannel;Landroid/media/tv/ad/ITvAdSessionCallback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    move p1, p0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    const-string v0, "TvInteractiveAppManagerService"

    .line 42
    .line 43
    const-string v1, "error in createSession"

    .line 44
    .line 45
    invoke-static {v0, v1, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    iget-object p1, p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;

    .line 49
    .line 50
    iget-object v0, p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mAdServiceId:Ljava/lang/String;

    .line 51
    .line 52
    iget p3, p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSeq:I

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-static {p1, v0, v1, v1, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->sendAdSessionTokenToClientLocked(Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    :goto_0
    aget-object p0, p2, p0

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    .line 62
    .line 63
    .line 64
    return p1
.end method

.method public static -$$Nest$mcreateSessionInternalLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/interactive/ITvInteractiveAppService;Landroid/os/IBinder;I)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    iget-object p3, p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mSessionStateMap:Ljava/util/Map;

    .line 6
    .line 7
    check-cast p3, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    check-cast p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 14
    .line 15
    invoke-interface {p2}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p2}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    new-instance v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;

    .line 24
    .line 25
    invoke-direct {v0, p0, p3, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionCallback;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;[Landroid/view/InputChannel;)V

    .line 26
    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    :try_start_0
    aget-object v1, p2, p0

    .line 30
    .line 31
    iget-object v2, p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mIAppServiceId:Ljava/lang/String;

    .line 32
    .line 33
    iget v3, p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mType:I

    .line 34
    .line 35
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/media/tv/interactive/ITvInteractiveAppService;->createSession(Landroid/view/InputChannel;Landroid/media/tv/interactive/ITvInteractiveAppSessionCallback;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    move p1, p0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    const-string v0, "TvInteractiveAppManagerService"

    .line 42
    .line 43
    const-string v1, "error in createSession"

    .line 44
    .line 45
    invoke-static {v0, v1, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    iget-object p1, p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

    .line 49
    .line 50
    iget-object v0, p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mIAppServiceId:Ljava/lang/String;

    .line 51
    .line 52
    iget p3, p3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-static {p1, v0, v1, v1, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 56
    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    :goto_0
    aget-object p0, p2, p0

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    .line 62
    .line 63
    .line 64
    return p1
.end method

.method public static -$$Nest$mgetServiceStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mServiceStateMap:Ljava/util/Map;

    .line 6
    .line 7
    check-cast p0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v1, "Service state not found for "

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p1, " (userId="

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p1, ")"

    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public static -$$Nest$mreleaseAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 6
    .line 7
    .line 8
    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 10
    .line 11
    .line 12
    iget-object v1, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Landroid/media/tv/ad/ITvAdSession;->asBinder()Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-interface {v1, p2, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 22
    .line 23
    .line 24
    iget-object v1, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    .line 25
    .line 26
    invoke-interface {v1}, Landroid/media/tv/ad/ITvAdSession;->release()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_3

    .line 32
    :catch_0
    move-exception v1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    iput-object v0, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :catchall_1
    move-exception p0

    .line 38
    move-object p2, v0

    .line 39
    goto :goto_3

    .line 40
    :catch_1
    move-exception v1

    .line 41
    move-object p2, v0

    .line 42
    :goto_1
    :try_start_2
    const-string v2, "TvInteractiveAppManagerService"

    .line 43
    .line 44
    const-string v3, "error in releaseSession"

    .line 45
    .line 46
    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    .line 48
    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    :goto_2
    invoke-virtual {p0, p3, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeAdSessionStateLocked(ILandroid/os/IBinder;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :goto_3
    if-eqz p2, :cond_2

    .line 57
    .line 58
    iput-object v0, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    .line 59
    .line 60
    :cond_2
    throw p0
.end method

.method public static -$$Nest$mreleaseSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 6
    .line 7
    .line 8
    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 10
    .line 11
    .line 12
    iget-object v1, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->asBinder()Landroid/os/IBinder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-interface {v1, p2, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 22
    .line 23
    .line 24
    iget-object v1, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    .line 25
    .line 26
    invoke-interface {v1}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->release()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_3

    .line 32
    :catch_0
    move-exception v1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    iput-object v0, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :catchall_1
    move-exception p0

    .line 38
    move-object p2, v0

    .line 39
    goto :goto_3

    .line 40
    :catch_1
    move-exception v1

    .line 41
    move-object p2, v0

    .line 42
    :goto_1
    :try_start_2
    const-string v2, "TvInteractiveAppManagerService"

    .line 43
    .line 44
    const-string v3, "error in releaseSession"

    .line 45
    .line 46
    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    .line 48
    .line 49
    if-eqz p2, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    :goto_2
    invoke-virtual {p0, p3, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeSessionStateLocked$1(ILandroid/os/IBinder;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :goto_3
    if-eqz p2, :cond_2

    .line 57
    .line 58
    iput-object v0, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    .line 59
    .line 60
    :cond_2
    throw p0
.end method

.method public static -$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v6, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    move v0, p1

    .line 8
    move v1, p2

    .line 9
    move v2, p3

    .line 10
    move-object v5, p4

    .line 11
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    .line 13
    .line 14
    new-instance v1, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    .line 20
    .line 21
    new-instance v1, Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mGetServiceListCalled:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mGetAdServiceListCalled:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mGetAppLinkInfoListCalled:Z

    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string/jumbo v0, "user"

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroid/os/UserManager;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserManager:Landroid/os/UserManager;

    .line 50
    .line 51
    return-void
.end method

.method public static getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "Session not yet created for token "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSessionToken:Landroid/os/IBinder;

    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public static getSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)Landroid/media/tv/interactive/ITvInteractiveAppSession;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "Session not yet created for token "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSessionToken:Landroid/os/IBinder;

    .line 16
    .line 17
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw v0
.end method

.method public static sendAdSessionTokenToClientLocked(Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/media/tv/ad/ITvAdClient;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p0

    .line 6
    const-string p1, "TvInteractiveAppManagerService"

    .line 7
    .line 8
    const-string p2, "error in onSessionCreated"

    .line 9
    .line 10
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method

.method public static sendSessionTokenToClientLocked(Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    .locals 0

    .line 1
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onSessionCreated(Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p0

    .line 6
    const-string p1, "TvInteractiveAppManagerService"

    .line 7
    .line 8
    const-string p2, "error in onSessionCreated"

    .line 9
    .line 10
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
.end method


# virtual methods
.method public final abortPendingCreateAdSessionRequestsLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;Ljava/lang/String;I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mSessionTokens:Ljava/util/List;

    .line 11
    .line 12
    check-cast v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/os/IBinder;

    .line 29
    .line 30
    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdSessionStateMap:Ljava/util/Map;

    .line 31
    .line 32
    check-cast v4, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 39
    .line 40
    iget-object v4, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSession:Landroid/media/tv/ad/ITvAdSession;

    .line 41
    .line 42
    if-nez v4, :cond_0

    .line 43
    .line 44
    iget-object v4, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mAdServiceId:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 71
    .line 72
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSessionToken:Landroid/os/IBinder;

    .line 73
    .line 74
    iget v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mUserId:I

    .line 75
    .line 76
    invoke-virtual {p0, v2, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeAdSessionStateLocked(ILandroid/os/IBinder;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;

    .line 80
    .line 81
    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mAdServiceId:Ljava/lang/String;

    .line 82
    .line 83
    iget v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mSeq:I

    .line 84
    .line 85
    const/4 v3, 0x0

    .line 86
    invoke-static {v1, v2, v3, v3, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->sendAdSessionTokenToClientLocked(Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    iget-object p1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mComponent:Landroid/content/ComponentName;

    .line 91
    .line 92
    invoke-virtual {p0, p3, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->updateAdServiceConnectionLocked(ILandroid/content/ComponentName;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Ljava/lang/String;I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v2, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mSessionTokens:Ljava/util/List;

    .line 11
    .line 12
    check-cast v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_2

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/os/IBinder;

    .line 29
    .line 30
    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mSessionStateMap:Ljava/util/Map;

    .line 31
    .line 32
    check-cast v4, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 39
    .line 40
    iget-object v4, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    .line 41
    .line 42
    if-nez v4, :cond_0

    .line 43
    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    iget-object v4, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mIAppServiceId:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 73
    .line 74
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSessionToken:Landroid/os/IBinder;

    .line 75
    .line 76
    iget v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mUserId:I

    .line 77
    .line 78
    invoke-virtual {p0, v2, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeSessionStateLocked$1(ILandroid/os/IBinder;)V

    .line 79
    .line 80
    .line 81
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

    .line 82
    .line 83
    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mIAppServiceId:Ljava/lang/String;

    .line 84
    .line 85
    iget v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    .line 86
    .line 87
    const/4 v3, 0x0

    .line 88
    invoke-static {v1, v2, v3, v3, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->sendSessionTokenToClientLocked(Landroid/media/tv/interactive/ITvInteractiveAppClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    iget-object p1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mComponent:Landroid/content/ComponentName;

    .line 93
    .line 94
    invoke-virtual {p0, p3, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->updateServiceConnectionLocked$1(ILandroid/content/ComponentName;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public final buildAppLinkInfoLocked(I)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-wide/16 v1, 0x80

    .line 12
    .line 13
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0, v1, p1}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_4

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 41
    .line 42
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 48
    .line 49
    if-nez v4, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const-string v4, "android.media.tv.interactive.AppLinkInfo.ClassName"

    .line 53
    .line 54
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 59
    .line 60
    const-string v5, "android.media.tv.interactive.AppLinkInfo.Uri"

    .line 61
    .line 62
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    if-eqz v2, :cond_3

    .line 67
    .line 68
    if-nez v4, :cond_2

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    new-instance v3, Landroid/media/tv/interactive/AppLinkInfo;

    .line 72
    .line 73
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 74
    .line 75
    invoke-direct {v3, v1, v2, v4}, Landroid/media/tv/interactive/AppLinkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_1
    if-eqz v3, :cond_0

    .line 79
    .line 80
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    new-instance p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$$ExternalSyntheticLambda0;

    .line 85
    .line 86
    const/4 v1, 0x2

    .line 87
    invoke-direct {p0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 88
    .line 89
    .line 90
    invoke-static {p0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 95
    .line 96
    .line 97
    iget-object p0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAppLinkInfoList:Ljava/util/List;

    .line 98
    .line 99
    check-cast p0, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 102
    .line 103
    .line 104
    iget-object p0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAppLinkInfoList:Ljava/util/List;

    .line 105
    .line 106
    check-cast p0, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final buildTvAdServiceListLocked(I[Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->enableAdServiceFw()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mPackageSet:Ljava/util/Set;

    .line 13
    .line 14
    check-cast v1, Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Landroid/content/Intent;

    .line 26
    .line 27
    const-string v3, "android.media.tv.ad.TvAdService"

    .line 28
    .line 29
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/16 v3, 0x84

    .line 33
    .line 34
    invoke-virtual {v1, v2, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v2, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const-string v4, "TvInteractiveAppManagerService"

    .line 52
    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 60
    .line 61
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 62
    .line 63
    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 64
    .line 65
    const-string v6, "android.permission.BIND_TV_AD_SERVICE"

    .line 66
    .line 67
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-nez v5, :cond_1

    .line 72
    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v6, "Skipping TV AD service "

    .line 76
    .line 77
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 81
    .line 82
    const-string v6, ": it does not require the permission android.permission.BIND_TV_AD_SERVICE"

    .line 83
    .line 84
    invoke-static {v5, v3, v6, v4}, Lcom/android/server/ProfileService$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    new-instance v5, Landroid/content/ComponentName;

    .line 89
    .line 90
    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 91
    .line 92
    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 93
    .line 94
    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :try_start_0
    new-instance v6, Landroid/media/tv/ad/TvAdServiceInfo;

    .line 98
    .line 99
    iget-object v7, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    .line 100
    .line 101
    invoke-direct {v6, v7, v5}, Landroid/media/tv/ad/TvAdServiceInfo;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mPackageSet:Ljava/util/Set;

    .line 108
    .line 109
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 110
    .line 111
    check-cast v4, Ljava/util/HashSet;

    .line 112
    .line 113
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :catch_0
    move-exception v5

    .line 118
    new-instance v6, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v7, "failed to load TV AD service "

    .line 121
    .line 122
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-static {v4, v3, v5}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_2
    new-instance v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$$ExternalSyntheticLambda0;

    .line 139
    .line 140
    const/4 v3, 0x0

    .line 141
    invoke-direct {v1, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 142
    .line 143
    .line 144
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 149
    .line 150
    .line 151
    new-instance v1, Ljava/util/HashMap;

    .line 152
    .line 153
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    const/4 v5, 0x0

    .line 165
    if-eqz v3, :cond_4

    .line 166
    .line 167
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    check-cast v3, Landroid/media/tv/ad/TvAdServiceInfo;

    .line 172
    .line 173
    invoke-virtual {v3}, Landroid/media/tv/ad/TvAdServiceInfo;->getId()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    iget-object v7, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceMap:Ljava/util/Map;

    .line 178
    .line 179
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    check-cast v7, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;

    .line 184
    .line 185
    if-nez v7, :cond_3

    .line 186
    .line 187
    new-instance v7, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;

    .line 188
    .line 189
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 190
    .line 191
    .line 192
    :cond_3
    iput-object v3, v7, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mInfo:Landroid/media/tv/ad/TvAdServiceInfo;

    .line 193
    .line 194
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    invoke-virtual {v3}, Landroid/media/tv/ad/TvAdServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v8, v9, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 213
    .line 214
    goto :goto_2

    .line 215
    :catch_1
    move-exception v5

    .line 216
    new-instance v8, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string v9, "Unable to get UID for  "

    .line 219
    .line 220
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v8

    .line 230
    invoke-static {v4, v8, v5}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .line 232
    .line 233
    :goto_2
    invoke-virtual {v3}, Landroid/media/tv/ad/TvAdServiceInfo;->getComponent()Landroid/content/ComponentName;

    .line 234
    .line 235
    .line 236
    move-result-object v3

    .line 237
    iput-object v3, v7, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mComponentName:Landroid/content/ComponentName;

    .line 238
    .line 239
    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    if-eqz v3, :cond_a

    .line 256
    .line 257
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    check-cast v3, Ljava/lang/String;

    .line 262
    .line 263
    iget-object v6, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceMap:Ljava/util/Map;

    .line 264
    .line 265
    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v6

    .line 269
    if-nez v6, :cond_7

    .line 270
    .line 271
    iget-object v6, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdCallbacks:Landroid/os/RemoteCallbackList;

    .line 272
    .line 273
    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 274
    .line 275
    .line 276
    move-result v6

    .line 277
    move v7, v5

    .line 278
    :goto_4
    if-ge v7, v6, :cond_6

    .line 279
    .line 280
    :try_start_2
    iget-object v8, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdCallbacks:Landroid/os/RemoteCallbackList;

    .line 281
    .line 282
    invoke-virtual {v8, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    check-cast v8, Landroid/media/tv/ad/ITvAdManagerCallback;

    .line 287
    .line 288
    invoke-interface {v8, v3}, Landroid/media/tv/ad/ITvAdManagerCallback;->onAdServiceAdded(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 289
    .line 290
    .line 291
    goto :goto_5

    .line 292
    :catch_2
    move-exception v8

    .line 293
    const-string v9, "failed to report added AD service to callback"

    .line 294
    .line 295
    invoke-static {v4, v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    .line 297
    .line 298
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 299
    .line 300
    goto :goto_4

    .line 301
    :cond_6
    iget-object v3, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdCallbacks:Landroid/os/RemoteCallbackList;

    .line 302
    .line 303
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 304
    .line 305
    .line 306
    goto :goto_3

    .line 307
    :cond_7
    if-eqz p2, :cond_5

    .line 308
    .line 309
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v6

    .line 313
    check-cast v6, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;

    .line 314
    .line 315
    iget-object v6, v6, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mInfo:Landroid/media/tv/ad/TvAdServiceInfo;

    .line 316
    .line 317
    invoke-virtual {v6}, Landroid/media/tv/ad/TvAdServiceInfo;->getComponent()Landroid/content/ComponentName;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    array-length v7, p2

    .line 322
    move v8, v5

    .line 323
    :goto_6
    if-ge v8, v7, :cond_5

    .line 324
    .line 325
    aget-object v9, p2, v8

    .line 326
    .line 327
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v10

    .line 331
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    .line 333
    .line 334
    move-result v9

    .line 335
    if-eqz v9, :cond_9

    .line 336
    .line 337
    invoke-virtual {p0, p1, v6}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->updateAdServiceConnectionLocked(ILandroid/content/ComponentName;)V

    .line 338
    .line 339
    .line 340
    iget-object v6, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdCallbacks:Landroid/os/RemoteCallbackList;

    .line 341
    .line 342
    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 343
    .line 344
    .line 345
    move-result v6

    .line 346
    move v7, v5

    .line 347
    :goto_7
    if-ge v7, v6, :cond_8

    .line 348
    .line 349
    :try_start_3
    iget-object v8, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdCallbacks:Landroid/os/RemoteCallbackList;

    .line 350
    .line 351
    invoke-virtual {v8, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 352
    .line 353
    .line 354
    move-result-object v8

    .line 355
    check-cast v8, Landroid/media/tv/ad/ITvAdManagerCallback;

    .line 356
    .line 357
    invoke-interface {v8, v3}, Landroid/media/tv/ad/ITvAdManagerCallback;->onAdServiceUpdated(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 358
    .line 359
    .line 360
    goto :goto_8

    .line 361
    :catch_3
    move-exception v8

    .line 362
    const-string v9, "failed to report updated AD service to callback"

    .line 363
    .line 364
    invoke-static {v4, v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    .line 366
    .line 367
    :goto_8
    add-int/lit8 v7, v7, 0x1

    .line 368
    .line 369
    goto :goto_7

    .line 370
    :cond_8
    iget-object v3, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdCallbacks:Landroid/os/RemoteCallbackList;

    .line 371
    .line 372
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 373
    .line 374
    .line 375
    goto :goto_3

    .line 376
    :cond_9
    add-int/lit8 v8, v8, 0x1

    .line 377
    .line 378
    goto :goto_6

    .line 379
    :cond_a
    iget-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceMap:Ljava/util/Map;

    .line 380
    .line 381
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 382
    .line 383
    .line 384
    move-result-object p2

    .line 385
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 386
    .line 387
    .line 388
    move-result-object p2

    .line 389
    :cond_b
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 390
    .line 391
    .line 392
    move-result v2

    .line 393
    if-eqz v2, :cond_e

    .line 394
    .line 395
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    check-cast v2, Ljava/lang/String;

    .line 400
    .line 401
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    if-nez v3, :cond_b

    .line 406
    .line 407
    iget-object v3, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceMap:Ljava/util/Map;

    .line 408
    .line 409
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;

    .line 414
    .line 415
    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mInfo:Landroid/media/tv/ad/TvAdServiceInfo;

    .line 416
    .line 417
    iget-object v6, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceStateMap:Ljava/util/Map;

    .line 418
    .line 419
    invoke-virtual {v3}, Landroid/media/tv/ad/TvAdServiceInfo;->getComponent()Landroid/content/ComponentName;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    check-cast v6, Ljava/util/HashMap;

    .line 424
    .line 425
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;

    .line 430
    .line 431
    if-eqz v3, :cond_c

    .line 432
    .line 433
    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->abortPendingCreateAdSessionRequestsLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;Ljava/lang/String;I)V

    .line 434
    .line 435
    .line 436
    :cond_c
    iget-object v3, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdCallbacks:Landroid/os/RemoteCallbackList;

    .line 437
    .line 438
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 439
    .line 440
    .line 441
    move-result v3

    .line 442
    move v6, v5

    .line 443
    :goto_a
    if-ge v6, v3, :cond_d

    .line 444
    .line 445
    :try_start_4
    iget-object v7, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdCallbacks:Landroid/os/RemoteCallbackList;

    .line 446
    .line 447
    invoke-virtual {v7, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 448
    .line 449
    .line 450
    move-result-object v7

    .line 451
    check-cast v7, Landroid/media/tv/ad/ITvAdManagerCallback;

    .line 452
    .line 453
    invoke-interface {v7, v2}, Landroid/media/tv/ad/ITvAdManagerCallback;->onAdServiceRemoved(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 454
    .line 455
    .line 456
    goto :goto_b

    .line 457
    :catch_4
    move-exception v7

    .line 458
    const-string v8, "failed to report removed AD service to callback"

    .line 459
    .line 460
    invoke-static {v4, v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    .line 462
    .line 463
    :goto_b
    add-int/lit8 v6, v6, 0x1

    .line 464
    .line 465
    goto :goto_a

    .line 466
    :cond_d
    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdCallbacks:Landroid/os/RemoteCallbackList;

    .line 467
    .line 468
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 469
    .line 470
    .line 471
    goto :goto_9

    .line 472
    :cond_e
    iget-object p0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceMap:Ljava/util/Map;

    .line 473
    .line 474
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 475
    .line 476
    .line 477
    iput-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceMap:Ljava/util/Map;

    .line 478
    .line 479
    return-void
.end method

.method public final buildTvInteractiveAppServiceListLocked(I[Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mPackageSet:Ljava/util/Set;

    .line 6
    .line 7
    check-cast v1, Ljava/util/HashSet;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Landroid/content/Intent;

    .line 19
    .line 20
    const-string v3, "android.media.tv.interactive.TvInteractiveAppService"

    .line 21
    .line 22
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/16 v3, 0x84

    .line 26
    .line 27
    invoke-virtual {v1, v2, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    const-string v4, "TvInteractiveAppManagerService"

    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 53
    .line 54
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 55
    .line 56
    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 57
    .line 58
    const-string v6, "android.permission.BIND_TV_INTERACTIVE_APP"

    .line 59
    .line 60
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-nez v5, :cond_0

    .line 65
    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v6, "Skipping TV interactiva app service "

    .line 69
    .line 70
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 74
    .line 75
    const-string v6, ": it does not require the permission android.permission.BIND_TV_INTERACTIVE_APP"

    .line 76
    .line 77
    invoke-static {v5, v3, v6, v4}, Lcom/android/server/ProfileService$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    new-instance v5, Landroid/content/ComponentName;

    .line 82
    .line 83
    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 86
    .line 87
    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :try_start_0
    new-instance v6, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    .line 91
    .line 92
    iget-object v7, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    invoke-direct {v6, v7, v5}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mPackageSet:Ljava/util/Set;

    .line 101
    .line 102
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 103
    .line 104
    check-cast v4, Ljava/util/HashSet;

    .line 105
    .line 106
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catch_0
    move-exception v5

    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v7, "failed to load TV Interactive App service "

    .line 114
    .line 115
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    invoke-static {v4, v3, v5}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_1
    new-instance v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$$ExternalSyntheticLambda0;

    .line 132
    .line 133
    const/4 v3, 0x1

    .line 134
    invoke-direct {v1, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$$ExternalSyntheticLambda0;-><init>(I)V

    .line 135
    .line 136
    .line 137
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 142
    .line 143
    .line 144
    new-instance v1, Ljava/util/HashMap;

    .line 145
    .line 146
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 147
    .line 148
    .line 149
    new-instance v3, Landroid/util/ArrayMap;

    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    invoke-direct {v3, v5}, Landroid/util/ArrayMap;-><init>(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    const/4 v6, 0x0

    .line 167
    if-eqz v5, :cond_4

    .line 168
    .line 169
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    check-cast v5, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    .line 174
    .line 175
    invoke-virtual {v5}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->getId()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    check-cast v8, Ljava/lang/Integer;

    .line 184
    .line 185
    const/4 v9, 0x1

    .line 186
    if-nez v8, :cond_2

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 190
    .line 191
    .line 192
    move-result v8

    .line 193
    add-int/2addr v9, v8

    .line 194
    :goto_2
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    invoke-virtual {v3, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    iget-object v8, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mIAppMap:Ljava/util/Map;

    .line 202
    .line 203
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    check-cast v8, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;

    .line 208
    .line 209
    if-nez v8, :cond_3

    .line 210
    .line 211
    new-instance v8, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;

    .line 212
    .line 213
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 214
    .line 215
    .line 216
    :cond_3
    iput-object v5, v8, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->mInfo:Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    .line 217
    .line 218
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 223
    .line 224
    .line 225
    move-result-object v9

    .line 226
    invoke-virtual {v5}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    .line 227
    .line 228
    .line 229
    move-result-object v10

    .line 230
    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v9, v10, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 233
    .line 234
    .line 235
    move-result-object v6

    .line 236
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :catch_1
    move-exception v6

    .line 240
    new-instance v9, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    const-string v10, "Unable to get UID for  "

    .line 243
    .line 244
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v9

    .line 254
    invoke-static {v4, v9, v6}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    .line 256
    .line 257
    :goto_3
    invoke-virtual {v5}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->getComponent()Landroid/content/ComponentName;

    .line 258
    .line 259
    .line 260
    move-result-object v5

    .line 261
    iput-object v5, v8, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->mComponentName:Landroid/content/ComponentName;

    .line 262
    .line 263
    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    goto :goto_1

    .line 267
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    :cond_5
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 276
    .line 277
    .line 278
    move-result v3

    .line 279
    if-eqz v3, :cond_a

    .line 280
    .line 281
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v3

    .line 285
    check-cast v3, Ljava/lang/String;

    .line 286
    .line 287
    iget-object v5, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mIAppMap:Ljava/util/Map;

    .line 288
    .line 289
    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    if-nez v5, :cond_7

    .line 294
    .line 295
    iget-object v5, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 296
    .line 297
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 298
    .line 299
    .line 300
    move-result v5

    .line 301
    move v7, v6

    .line 302
    :goto_5
    if-ge v7, v5, :cond_6

    .line 303
    .line 304
    :try_start_2
    iget-object v8, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 305
    .line 306
    invoke-virtual {v8, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 307
    .line 308
    .line 309
    move-result-object v8

    .line 310
    check-cast v8, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;

    .line 311
    .line 312
    invoke-interface {v8, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;->onInteractiveAppServiceAdded(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 313
    .line 314
    .line 315
    goto :goto_6

    .line 316
    :catch_2
    move-exception v8

    .line 317
    const-string v9, "failed to report added Interactive App service to callback"

    .line 318
    .line 319
    invoke-static {v4, v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    .line 321
    .line 322
    :goto_6
    add-int/lit8 v7, v7, 0x1

    .line 323
    .line 324
    goto :goto_5

    .line 325
    :cond_6
    iget-object v3, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 326
    .line 327
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 328
    .line 329
    .line 330
    goto :goto_4

    .line 331
    :cond_7
    if-eqz p2, :cond_5

    .line 332
    .line 333
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v5

    .line 337
    check-cast v5, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;

    .line 338
    .line 339
    iget-object v5, v5, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->mInfo:Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    .line 340
    .line 341
    invoke-virtual {v5}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->getComponent()Landroid/content/ComponentName;

    .line 342
    .line 343
    .line 344
    move-result-object v5

    .line 345
    array-length v7, p2

    .line 346
    move v8, v6

    .line 347
    :goto_7
    if-ge v8, v7, :cond_5

    .line 348
    .line 349
    aget-object v9, p2, v8

    .line 350
    .line 351
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v10

    .line 355
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v9

    .line 359
    if-eqz v9, :cond_9

    .line 360
    .line 361
    invoke-virtual {p0, p1, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->updateServiceConnectionLocked$1(ILandroid/content/ComponentName;)V

    .line 362
    .line 363
    .line 364
    iget-object v5, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 365
    .line 366
    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 367
    .line 368
    .line 369
    move-result v5

    .line 370
    move v7, v6

    .line 371
    :goto_8
    if-ge v7, v5, :cond_8

    .line 372
    .line 373
    :try_start_3
    iget-object v8, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 374
    .line 375
    invoke-virtual {v8, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 376
    .line 377
    .line 378
    move-result-object v8

    .line 379
    check-cast v8, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;

    .line 380
    .line 381
    invoke-interface {v8, v3}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;->onInteractiveAppServiceUpdated(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 382
    .line 383
    .line 384
    goto :goto_9

    .line 385
    :catch_3
    move-exception v8

    .line 386
    const-string v9, "failed to report updated Interactive App service to callback"

    .line 387
    .line 388
    invoke-static {v4, v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    .line 390
    .line 391
    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 392
    .line 393
    goto :goto_8

    .line 394
    :cond_8
    iget-object v3, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 395
    .line 396
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 397
    .line 398
    .line 399
    goto :goto_4

    .line 400
    :cond_9
    add-int/lit8 v8, v8, 0x1

    .line 401
    .line 402
    goto :goto_7

    .line 403
    :cond_a
    iget-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mIAppMap:Ljava/util/Map;

    .line 404
    .line 405
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 406
    .line 407
    .line 408
    move-result-object p2

    .line 409
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 410
    .line 411
    .line 412
    move-result-object p2

    .line 413
    :cond_b
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 414
    .line 415
    .line 416
    move-result v2

    .line 417
    if-eqz v2, :cond_e

    .line 418
    .line 419
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    check-cast v2, Ljava/lang/String;

    .line 424
    .line 425
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    move-result v3

    .line 429
    if-nez v3, :cond_b

    .line 430
    .line 431
    iget-object v3, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mIAppMap:Ljava/util/Map;

    .line 432
    .line 433
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;

    .line 438
    .line 439
    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvInteractiveAppState;->mInfo:Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;

    .line 440
    .line 441
    iget-object v5, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mServiceStateMap:Ljava/util/Map;

    .line 442
    .line 443
    invoke-virtual {v3}, Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;->getComponent()Landroid/content/ComponentName;

    .line 444
    .line 445
    .line 446
    move-result-object v3

    .line 447
    check-cast v5, Ljava/util/HashMap;

    .line 448
    .line 449
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    .line 454
    .line 455
    if-eqz v3, :cond_c

    .line 456
    .line 457
    invoke-virtual {p0, v3, v2, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Ljava/lang/String;I)V

    .line 458
    .line 459
    .line 460
    :cond_c
    iget-object v3, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 461
    .line 462
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 463
    .line 464
    .line 465
    move-result v3

    .line 466
    move v5, v6

    .line 467
    :goto_b
    if-ge v5, v3, :cond_d

    .line 468
    .line 469
    :try_start_4
    iget-object v7, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 470
    .line 471
    invoke-virtual {v7, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 472
    .line 473
    .line 474
    move-result-object v7

    .line 475
    check-cast v7, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;

    .line 476
    .line 477
    invoke-interface {v7, v2}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;->onInteractiveAppServiceRemoved(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 478
    .line 479
    .line 480
    goto :goto_c

    .line 481
    :catch_4
    move-exception v7

    .line 482
    const-string v8, "failed to report removed Interactive App service to callback"

    .line 483
    .line 484
    invoke-static {v4, v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    .line 486
    .line 487
    :goto_c
    add-int/lit8 v5, v5, 0x1

    .line 488
    .line 489
    goto :goto_b

    .line 490
    :cond_d
    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 491
    .line 492
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 493
    .line 494
    .line 495
    goto :goto_a

    .line 496
    :cond_e
    iget-object p0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mIAppMap:Ljava/util/Map;

    .line 497
    .line 498
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 499
    .line 500
    .line 501
    iput-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mIAppMap:Ljava/util/Map;

    .line 502
    .line 503
    return-void
.end method

.method public final clearSessionAndNotifyClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget v1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSeq:I

    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->onSessionReleased(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    const-string v1, "TvInteractiveAppManagerService"

    .line 13
    .line 14
    const-string v2, "error in onSessionReleased"

    .line 15
    .line 16
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSessionToken:Landroid/os/IBinder;

    .line 20
    .line 21
    iget p1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mUserId:I

    .line 22
    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeAdSessionStateLocked(ILandroid/os/IBinder;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;
    .locals 1

    .line 1
    invoke-virtual {p0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdSessionStateMap:Ljava/util/Map;

    .line 6
    .line 7
    check-cast p0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 14
    .line 15
    if-eqz p0, :cond_2

    .line 16
    .line 17
    const/16 p3, 0x3e8

    .line 18
    .line 19
    if-eq p1, p3, :cond_1

    .line 20
    .line 21
    iget p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mCallingUid:I

    .line 22
    .line 23
    if-ne p1, p3, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 27
    .line 28
    new-instance p3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v0, "Illegal access to the session with token "

    .line 31
    .line 32
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p2, " from uid "

    .line 39
    .line 40
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_1
    :goto_0
    return-object p0

    .line 55
    :cond_2
    new-instance p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException;

    .line 56
    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string p3, "Session state not found for token "

    .line 60
    .line 61
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0
.end method

.method public final getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-object v0
.end method

.method public final getSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;
    .locals 1

    .line 1
    invoke-virtual {p0, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mSessionStateMap:Ljava/util/Map;

    .line 6
    .line 7
    check-cast p0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 14
    .line 15
    if-eqz p0, :cond_2

    .line 16
    .line 17
    const/16 p3, 0x3e8

    .line 18
    .line 19
    if-eq p1, p3, :cond_1

    .line 20
    .line 21
    iget p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mCallingUid:I

    .line 22
    .line 23
    if-ne p1, p3, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 27
    .line 28
    new-instance p3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v0, "Illegal access to the session with token "

    .line 31
    .line 32
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string p2, " from uid "

    .line 39
    .line 40
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_1
    :goto_0
    return-object p0

    .line 55
    :cond_2
    new-instance p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException;

    .line 56
    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string p3, "Session state not found for token "

    .line 60
    .line 61
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0
.end method

.method public final getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 8
    .line 9
    return-object p0
.end method

.method public final onBootPhase(I)V
    .locals 8

    .line 1
    const/16 v0, 0x1f4

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    new-instance p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$1;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {p1, v0, v1, v4, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 17
    .line 18
    .line 19
    new-instance v5, Landroid/content/IntentFilter;

    .line 20
    .line 21
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string p1, "android.intent.action.USER_SWITCHED"

    .line 25
    .line 26
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 27
    .line 28
    const-string v1, "android.intent.action.USER_STARTED"

    .line 29
    .line 30
    const-string v2, "android.intent.action.USER_STOPPED"

    .line 31
    .line 32
    invoke-static {v5, p1, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    new-instance v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$2;

    .line 38
    .line 39
    invoke-direct {v3, p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$2;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)V

    .line 40
    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/16 v0, 0x258

    .line 49
    .line 50
    if-ne p1, v0, :cond_1

    .line 51
    .line 52
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 53
    .line 54
    monitor-enter p1

    .line 55
    :try_start_0
    iget v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    .line 56
    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildTvInteractiveAppServiceListLocked(I[Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildAppLinkInfoLocked(I)V

    .line 63
    .line 64
    .line 65
    iget v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    .line 66
    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildTvAdServiceListLocked(I[Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    monitor-exit p1

    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    throw p0

    .line 75
    :cond_1
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$BinderService;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "tv_interactive_app"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo v1, "tv_ad"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final releaseSessionOfUserLocked$1(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mSessionStateMap:Ljava/util/Map;

    .line 14
    .line 15
    check-cast p1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 36
    .line 37
    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 60
    .line 61
    :try_start_0
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;

    .line 62
    .line 63
    invoke-interface {v1}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :catch_0
    move-exception v1

    .line 68
    const-string v2, "TvInteractiveAppManagerService"

    .line 69
    .line 70
    const-string v3, "error in release"

    .line 71
    .line 72
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .line 74
    .line 75
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->clearSessionAndNotifyClientLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_3
    return-void
.end method

.method public final removeAdSessionStateLocked(ILandroid/os/IBinder;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdSessionStateMap:Ljava/util/Map;

    .line 6
    .line 7
    check-cast v1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string p0, "TvInteractiveAppManagerService"

    .line 18
    .line 19
    const-string/jumbo p1, "sessionState null, no more remove session action!"

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mClientStateMap:Ljava/util/Map;

    .line 27
    .line 28
    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;

    .line 29
    .line 30
    invoke-interface {v3}, Landroid/media/tv/ad/ITvAdClient;->asBinder()Landroid/os/IBinder;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v2, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    iget-object v3, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    .line 45
    .line 46
    check-cast v3, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    iget-object v3, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    .line 52
    .line 53
    check-cast v3, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    iget-object v3, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mClientStateMap:Ljava/util/Map;

    .line 62
    .line 63
    iget-object v4, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;

    .line 64
    .line 65
    invoke-interface {v4}, Landroid/media/tv/ad/ITvAdClient;->asBinder()Landroid/os/IBinder;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v3, Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mClient:Landroid/media/tv/ad/ITvAdClient;

    .line 75
    .line 76
    invoke-interface {v3}, Landroid/media/tv/ad/ITvAdClient;->asBinder()Landroid/os/IBinder;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    const/4 v4, 0x0

    .line 81
    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 82
    .line 83
    .line 84
    :cond_1
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceStateMap:Ljava/util/Map;

    .line 85
    .line 86
    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mComponent:Landroid/content/ComponentName;

    .line 87
    .line 88
    check-cast v0, Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;

    .line 95
    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mSessionTokens:Ljava/util/List;

    .line 99
    .line 100
    check-cast v0, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    :cond_2
    iget-object p2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;->mComponent:Landroid/content/ComponentName;

    .line 106
    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->updateAdServiceConnectionLocked(ILandroid/content/ComponentName;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final removeSessionStateLocked$1(ILandroid/os/IBinder;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mSessionStateMap:Ljava/util/Map;

    .line 6
    .line 7
    check-cast v1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const-string p0, "TvInteractiveAppManagerService"

    .line 18
    .line 19
    const-string/jumbo p1, "sessionState null, no more remove session action!"

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mClientStateMap:Ljava/util/Map;

    .line 27
    .line 28
    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

    .line 29
    .line 30
    invoke-interface {v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->asBinder()Landroid/os/IBinder;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v2, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    iget-object v3, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    .line 45
    .line 46
    check-cast v3, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    iget-object v3, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ClientState;->mSessionTokens:Ljava/util/List;

    .line 52
    .line 53
    check-cast v3, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_1

    .line 60
    .line 61
    iget-object v3, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mClientStateMap:Ljava/util/Map;

    .line 62
    .line 63
    iget-object v4, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

    .line 64
    .line 65
    invoke-interface {v4}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->asBinder()Landroid/os/IBinder;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v3, Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mClient:Landroid/media/tv/interactive/ITvInteractiveAppClient;

    .line 75
    .line 76
    invoke-interface {v3}, Landroid/media/tv/interactive/ITvInteractiveAppClient;->asBinder()Landroid/os/IBinder;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    const/4 v4, 0x0

    .line 81
    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 82
    .line 83
    .line 84
    :cond_1
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mServiceStateMap:Ljava/util/Map;

    .line 85
    .line 86
    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mComponent:Landroid/content/ComponentName;

    .line 87
    .line 88
    check-cast v0, Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    .line 95
    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mSessionTokens:Ljava/util/List;

    .line 99
    .line 100
    check-cast v0, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    :cond_2
    iget-object p2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mComponent:Landroid/content/ComponentName;

    .line 106
    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->updateServiceConnectionLocked$1(ILandroid/content/ComponentName;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final switchUser$1(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    .line 5
    .line 6
    if-ne v1, p1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserManager:Landroid/os/UserManager;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    const-string p0, "TvInteractiveAppManagerService"

    .line 25
    .line 26
    const-string p1, "cannot switch to a profile!"

    .line 27
    .line 28
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    .line 34
    .line 35
    check-cast v1, Ljava/util/HashSet;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {p0, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->releaseSessionOfUserLocked$1(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->unbindServiceOfUserLocked$1(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    .line 65
    .line 66
    check-cast v1, Ljava/util/HashSet;

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 69
    .line 70
    .line 71
    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    .line 72
    .line 73
    invoke-virtual {p0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->releaseSessionOfUserLocked$1(I)V

    .line 74
    .line 75
    .line 76
    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    .line 77
    .line 78
    invoke-virtual {p0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->unbindServiceOfUserLocked$1(I)V

    .line 79
    .line 80
    .line 81
    iput p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    .line 82
    .line 83
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0, p1, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildTvInteractiveAppServiceListLocked(I[Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildAppLinkInfoLocked(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p1, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildTvAdServiceListLocked(I[Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    monitor-exit v0

    .line 94
    return-void

    .line 95
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    throw p0
.end method

.method public final unbindServiceOfUserLocked$1(I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mServiceStateMap:Ljava/util/Map;

    .line 9
    .line 10
    check-cast v0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/content/ComponentName;

    .line 31
    .line 32
    iget-object v2, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mServiceStateMap:Ljava/util/Map;

    .line 33
    .line 34
    check-cast v2, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mSessionTokens:Ljava/util/List;

    .line 45
    .line 46
    check-cast v2, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mCallback:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;

    .line 55
    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    :try_start_0
    iget-object v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mService:Landroid/media/tv/interactive/ITvInteractiveAppService;

    .line 59
    .line 60
    invoke-interface {v3, v2}, Landroid/media/tv/interactive/ITvInteractiveAppService;->unregisterCallback(Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception v2

    .line 65
    const-string v3, "TvInteractiveAppManagerService"

    .line 66
    .line 67
    const-string v4, "error in unregisterCallback"

    .line 68
    .line 69
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    .line 73
    .line 74
    iget-object v1, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mConnection:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;

    .line 75
    .line 76
    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    return-void
.end method

.method public final updateAdServiceConnectionLocked(ILandroid/content/ComponentName;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceStateMap:Ljava/util/Map;

    .line 6
    .line 7
    check-cast v1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-boolean v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mReconnecting:Z

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mSessionTokens:Ljava/util/List;

    .line 24
    .line 25
    check-cast v2, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iput-boolean v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mReconnecting:Z

    .line 35
    .line 36
    :cond_2
    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mSessionTokens:Ljava/util/List;

    .line 37
    .line 38
    check-cast v2, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mPendingAppLinkCommand:Ljava/util/List;

    .line 47
    .line 48
    check-cast v2, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_4

    .line 55
    .line 56
    :cond_3
    const/4 v3, 0x1

    .line 57
    :cond_4
    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mService:Landroid/media/tv/ad/ITvAdService;

    .line 58
    .line 59
    iget-object v4, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mConnection:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;

    .line 60
    .line 61
    if-nez v2, :cond_6

    .line 62
    .line 63
    if-eqz v3, :cond_6

    .line 64
    .line 65
    iget-boolean v0, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mBound:Z

    .line 66
    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    return-void

    .line 70
    :cond_5
    new-instance v0, Landroid/content/Intent;

    .line 71
    .line 72
    const-string v2, "android.media.tv.ad.TvAdService"

    .line 73
    .line 74
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    .line 82
    .line 83
    new-instance v0, Landroid/os/UserHandle;

    .line 84
    .line 85
    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 86
    .line 87
    .line 88
    const p1, 0x2000001

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p2, v4, p1, v0}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    iput-boolean p0, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mBound:Z

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_6
    if-eqz v2, :cond_7

    .line 99
    .line 100
    if-nez v3, :cond_7

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    .line 103
    .line 104
    invoke-virtual {p0, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 105
    .line 106
    .line 107
    iget-object p0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceStateMap:Ljava/util/Map;

    .line 108
    .line 109
    check-cast p0, Ljava/util/HashMap;

    .line 110
    .line 111
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :cond_7
    :goto_0
    return-void
.end method

.method public final updateServiceConnectionLocked$1(ILandroid/content/ComponentName;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mServiceStateMap:Ljava/util/Map;

    .line 6
    .line 7
    check-cast v1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-boolean v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mReconnecting:Z

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mSessionTokens:Ljava/util/List;

    .line 24
    .line 25
    check-cast v2, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    iput-boolean v3, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mReconnecting:Z

    .line 35
    .line 36
    :cond_2
    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mSessionTokens:Ljava/util/List;

    .line 37
    .line 38
    check-cast v2, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mPendingAppLinkInfo:Ljava/util/List;

    .line 47
    .line 48
    check-cast v2, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mPendingAppLinkCommand:Ljava/util/List;

    .line 57
    .line 58
    check-cast v2, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_4

    .line 65
    .line 66
    :cond_3
    const/4 v3, 0x1

    .line 67
    :cond_4
    iget-object v2, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mService:Landroid/media/tv/interactive/ITvInteractiveAppService;

    .line 68
    .line 69
    iget-object v4, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mConnection:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;

    .line 70
    .line 71
    if-nez v2, :cond_6

    .line 72
    .line 73
    if-eqz v3, :cond_6

    .line 74
    .line 75
    iget-boolean v0, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mBound:Z

    .line 76
    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    return-void

    .line 80
    :cond_5
    new-instance v0, Landroid/content/Intent;

    .line 81
    .line 82
    const-string v2, "android.media.tv.interactive.TvInteractiveAppService"

    .line 83
    .line 84
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    new-instance v0, Landroid/os/UserHandle;

    .line 94
    .line 95
    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 96
    .line 97
    .line 98
    const p1, 0x2000001

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p2, v4, p1, v0}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 102
    .line 103
    .line 104
    move-result p0

    .line 105
    iput-boolean p0, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mBound:Z

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_6
    if-eqz v2, :cond_7

    .line 109
    .line 110
    if-nez v3, :cond_7

    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    .line 113
    .line 114
    invoke-virtual {p0, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 115
    .line 116
    .line 117
    iget-object p0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mServiceStateMap:Ljava/util/Map;

    .line 118
    .line 119
    check-cast p0, Ljava/util/HashMap;

    .line 120
    .line 121
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    :cond_7
    :goto_0
    return-void
.end method
