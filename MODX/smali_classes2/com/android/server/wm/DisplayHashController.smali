.class public final Lcom/android/server/wm/DisplayHashController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDisplayHashAlgorithms:Ljava/util/Map;

.field public final mDisplayHashAlgorithmsLock:Ljava/lang/Object;

.field public mDisplayHashThrottlingEnabled:Z

.field public final mHandler:Lcom/android/server/wm/DisplayHashController$Handler;

.field public mIntervalBetweenRequestMillis:I

.field public final mIntervalBetweenRequestsLock:Ljava/lang/Object;

.field public mLastRequestTimeMs:J

.field public mLastRequestUid:I

.field public final mSalt:[B

.field public mServiceConnection:Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

.field public final mServiceConnectionLock:Ljava/lang/Object;

.field public final mTmpFloat9:[F

.field public final mTmpMatrix:Landroid/graphics/Matrix;

.field public final mTmpRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mServiceConnectionLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mDisplayHashAlgorithmsLock:Ljava/lang/Object;

    .line 17
    .line 18
    const/16 v0, 0x9

    .line 19
    .line 20
    new-array v0, v0, [F

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mTmpFloat9:[F

    .line 23
    .line 24
    new-instance v0, Landroid/graphics/Matrix;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 30
    .line 31
    new-instance v0, Landroid/graphics/RectF;

    .line 32
    .line 33
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mTmpRectF:Landroid/graphics/RectF;

    .line 37
    .line 38
    new-instance v0, Ljava/lang/Object;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mIntervalBetweenRequestsLock:Ljava/lang/Object;

    .line 44
    .line 45
    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/android/server/wm/DisplayHashController;->mIntervalBetweenRequestMillis:I

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayHashController;->mDisplayHashThrottlingEnabled:Z

    .line 50
    .line 51
    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    new-instance p1, Lcom/android/server/wm/DisplayHashController$Handler;

    .line 54
    .line 55
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-direct {p1, p0, v0}, Lcom/android/server/wm/DisplayHashController$Handler;-><init>(Lcom/android/server/wm/DisplayHashController;Landroid/os/Looper;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController;->mHandler:Lcom/android/server/wm/DisplayHashController$Handler;

    .line 63
    .line 64
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController;->mSalt:[B

    .line 77
    .line 78
    return-void
.end method

.method public static sendDisplayHashError(ILandroid/os/RemoteCallback;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "DISPLAY_HASH_ERROR_CODE"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final calculateDisplayHashBoundsLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/wm/DisplayHashController;->mTmpFloat9:[F

    .line 36
    .line 37
    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowState;->getTransformationMatrix([FLandroid/graphics/Matrix;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/android/server/wm/DisplayHashController;->mTmpRectF:Landroid/graphics/RectF;

    .line 41
    .line 42
    invoke-virtual {p1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/server/wm/DisplayHashController;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mTmpRectF:Landroid/graphics/RectF;

    .line 48
    .line 49
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController;->mTmpRectF:Landroid/graphics/RectF;

    .line 53
    .line 54
    iget p1, p0, Landroid/graphics/RectF;->left:F

    .line 55
    .line 56
    float-to-int p1, p1

    .line 57
    iget v0, p0, Landroid/graphics/RectF;->top:F

    .line 58
    .line 59
    float-to-int v0, v0

    .line 60
    iget v1, p0, Landroid/graphics/RectF;->right:F

    .line 61
    .line 62
    float-to-int v1, v1

    .line 63
    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    .line 64
    .line 65
    float-to-int p0, p0

    .line 66
    invoke-virtual {p3, p1, v0, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 67
    .line 68
    .line 69
    iget-object p0, p2, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 70
    .line 71
    if-eqz p0, :cond_2

    .line 72
    .line 73
    iget p1, p0, Landroid/view/MagnificationSpec;->scale:F

    .line 74
    .line 75
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->scale(F)V

    .line 76
    .line 77
    .line 78
    iget p1, p0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 79
    .line 80
    float-to-int p1, p1

    .line 81
    iget p0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    .line 82
    .line 83
    float-to-int p0, p0

    .line 84
    invoke-virtual {p3, p1, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    if-eqz p0, :cond_3

    .line 92
    .line 93
    return-void

    .line 94
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p3, p0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final connectAndRun(Lcom/android/server/wm/DisplayHashController$Command;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mServiceConnectionLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayHashController;->mHandler:Lcom/android/server/wm/DisplayHashController$Handler;

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    .line 9
    .line 10
    const-wide/16 v3, 0x2710

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/wm/DisplayHashController;->mServiceConnection:Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayHashController;->getServiceComponentName()Landroid/content/ComponentName;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    new-instance v3, Landroid/content/Intent;

    .line 26
    .line 27
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 34
    .line 35
    .line 36
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :try_start_1
    new-instance v1, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;-><init>(Lcom/android/server/wm/DisplayHashController;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/android/server/wm/DisplayHashController;->mServiceConnection:Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

    .line 43
    .line 44
    iget-object v6, p0, Lcom/android/server/wm/DisplayHashController;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v6, v3, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    .line 48
    .line 49
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_2

    .line 55
    :catchall_1
    move-exception p0

    .line 56
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController;->mServiceConnection:Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;

    .line 61
    .line 62
    if-eqz p0, :cond_3

    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mRemoteService:Landroid/service/displayhash/IDisplayHashingService;

    .line 65
    .line 66
    if-nez v1, :cond_2

    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mQueuedCommands:Ljava/util/ArrayList;

    .line 69
    .line 70
    if-nez v1, :cond_1

    .line 71
    .line 72
    new-instance v1, Ljava/util/ArrayList;

    .line 73
    .line 74
    const/4 v2, 0x1

    .line 75
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .line 77
    .line 78
    iput-object v1, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mQueuedCommands:Ljava/util/ArrayList;

    .line 79
    .line 80
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mQueuedCommands:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    :try_start_3
    invoke-interface {p1, v1}, Lcom/android/server/wm/DisplayHashController$Command;->run(Landroid/service/displayhash/IDisplayHashingService;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catch_0
    move-exception p0

    .line 91
    :try_start_4
    const-string p1, "exception calling service: "

    .line 92
    .line 93
    const-string v1, "WindowManager"

    .line 94
    .line 95
    invoke-static {p1, p0, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    :goto_1
    monitor-exit v0

    .line 99
    return-void

    .line 100
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 101
    throw p0
.end method

.method public final getDisplayHashAlgorithms()Ljava/util/Map;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mDisplayHashAlgorithmsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayHashController;->mDisplayHashAlgorithms:Ljava/util/Map;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-object v1

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance v1, Lcom/android/server/wm/DisplayHashController$SyncCommand;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayHashController$SyncCommand;-><init>(Lcom/android/server/wm/DisplayHashController;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda1;

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-direct {v2, v3}, Lcom/android/server/wm/DisplayHashController$$ExternalSyntheticLambda1;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayHashController$SyncCommand;->run(Ljava/util/function/BiConsumer;)Landroid/os/Bundle;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, Lcom/android/server/wm/DisplayHashController;->mDisplayHashAlgorithms:Ljava/util/Map;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/lang/String;

    .line 57
    .line 58
    iget-object v4, p0, Lcom/android/server/wm/DisplayHashController;->mDisplayHashAlgorithms:Ljava/util/Map;

    .line 59
    .line 60
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    check-cast v5, Landroid/service/displayhash/DisplayHashParams;

    .line 65
    .line 66
    check-cast v4, Ljava/util/HashMap;

    .line 67
    .line 68
    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController;->mDisplayHashAlgorithms:Ljava/util/Map;

    .line 73
    .line 74
    monitor-exit v0

    .line 75
    return-object p0

    .line 76
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p0
.end method

.method public final getServiceComponentName()Landroid/content/ComponentName;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "WindowManager"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const-string/jumbo p0, "no external services package!"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :goto_0
    move-object p0, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const-string v3, "android.service.displayhash.DisplayHashingService"

    .line 25
    .line 26
    invoke-static {v3, v0}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/16 v5, 0x84

    .line 41
    .line 42
    invoke-virtual {p0, v0, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 43
    .line 44
    .line 45
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    .line 48
    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 52
    .line 53
    if-nez p0, :cond_2

    .line 54
    .line 55
    :cond_1
    const-string p0, "No valid components found."

    .line 56
    .line 57
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    :goto_1
    if-nez p0, :cond_3

    .line 62
    .line 63
    return-object v2

    .line 64
    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    .line 65
    .line 66
    iget-object v3, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 67
    .line 68
    iget-object v4, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 69
    .line 70
    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v3, "android.permission.BIND_DISPLAY_HASHING_SERVICE"

    .line 74
    .line 75
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-nez p0, :cond_4

    .line 82
    .line 83
    new-instance p0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v0, " requires permission android.permission.BIND_DISPLAY_HASHING_SERVICE"

    .line 96
    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    return-object v2

    .line 108
    :cond_4
    return-object v0

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 111
    .line 112
    .line 113
    throw p0
.end method
