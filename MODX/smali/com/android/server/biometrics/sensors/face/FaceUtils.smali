.class public final Lcom/android/server/biometrics/sensors/face/FaceUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BiometricUtils;


# static fields
.field public static final sInstanceLock:Ljava/lang/Object;

.field public static sInstances:Landroid/util/SparseArray;


# instance fields
.field public final mFileName:Ljava/lang/String;

.field public mIsBootComplete:Z

.field mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

.field public final mUserStates:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstanceLock:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mUserStates:Landroid/util/SparseArray;

    .line 11
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mFileName:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static getInstance(ILjava/lang/String;)Lcom/android/server/biometrics/sensors/face/FaceUtils;
    .locals 3

    .line 1
    const-string/jumbo v0, "settings_face_"

    .line 4
    sget-object v1, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstanceLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    sget-object v2, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstances:Landroid/util/SparseArray;

    .line 9
    if-nez v2, :cond_0

    .line 11
    new-instance v2, Landroid/util/SparseArray;

    .line 13
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 16
    sput-object v2, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstances:Landroid/util/SparseArray;

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstances:Landroid/util/SparseArray;

    .line 23
    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    if-nez v2, :cond_2

    .line 29
    if-nez p1, :cond_1

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    const-string v0, ".xml"

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    :cond_1
    sget-object v0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstances:Landroid/util/SparseArray;

    .line 50
    new-instance v2, Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 52
    invoke-direct {v2, p1}, Lcom/android/server/biometrics/sensors/face/FaceUtils;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    :cond_2
    sget-object p1, Lcom/android/server/biometrics/sensors/face/FaceUtils;->sInstances:Landroid/util/SparseArray;

    .line 60
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object p0

    .line 64
    check-cast p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;

    .line 66
    monitor-exit v1

    .line 67
    return-object p0

    .line 68
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
.end method


# virtual methods
.method public final bridge synthetic addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .locals 0

    .line 1
    check-cast p3, Landroid/hardware/face/Face;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->addBiometricForUser(Landroid/content/Context;ILandroid/hardware/face/Face;)V

    return-void
.end method

.method public final addBiometricForUser(Landroid/content/Context;ILandroid/hardware/face/Face;)V
    .locals 2

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    move-result-object v0

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mWriteStateRunnable:Lcom/android/server/biometrics/sensors/BiometricUserState$$ExternalSyntheticLambda0;

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p3}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result p3

    .line 8
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.bio.face.intent.action.FACE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->semSendTemplateChangedBroadCast(IILandroid/content/Context;Landroid/content/Intent;)V

    return-void

    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getBiometrics()Ljava/util/List;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mUserStates:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/server/biometrics/sensors/face/FaceUserState;

    .line 10
    if-nez v0, :cond_0

    .line 12
    new-instance v0, Lcom/android/server/biometrics/sensors/face/FaceUserState;

    .line 14
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mFileName:Ljava/lang/String;

    .line 16
    invoke-direct {v0, p1, v1, p2}, Lcom/android/server/biometrics/sensors/BiometricUserState;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 19
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mUserStates:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit p0

    .line 28
    return-object v0

    .line 29
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p1
.end method

.method public final onBootComplete()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mIsBootComplete:Z

    .line 4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    .line 6
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/Runnable;

    .line 25
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 34
    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method public final removeBiometricForUser(Landroid/content/Context;II)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p3}, Lcom/android/server/biometrics/sensors/BiometricUserState;->removeBiometric(I)V

    .line 8
    new-instance v0, Landroid/content/Intent;

    .line 10
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricUserState;->getBiometrics()Ljava/util/List;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 29
    const-string/jumbo v1, "com.samsung.android.bio.face.intent.action.FACE_RESET"

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const-string/jumbo v1, "com.samsung.android.bio.face.intent.action.FACE_REMOVED"

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    :goto_0
    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->semSendTemplateChangedBroadCast(IILandroid/content/Context;Landroid/content/Intent;)V

    .line 45
    return-void
.end method

.method public final semSendTemplateChangedBroadCast(IILandroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/biometrics/sensors/face/FaceUtils$$ExternalSyntheticLambda0;

    .line 3
    invoke-direct {v0, p2, p1, p3, p4}, Lcom/android/server/biometrics/sensors/face/FaceUtils$$ExternalSyntheticLambda0;-><init>(IILandroid/content/Context;Landroid/content/Intent;)V

    .line 6
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mIsBootComplete:Z

    .line 8
    if-nez p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    .line 12
    if-nez p1, :cond_0

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/face/FaceUtils;->mPendingRunnableAfterBootCompletion:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/face/FaceUtils$$ExternalSyntheticLambda0;->run()V

    .line 30
    :goto_0
    return-void
.end method

.method public final setInvalidationInProgress(Landroid/content/Context;IZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/sensors/face/FaceUserState;

    .line 4
    move-result-object p0

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iput-boolean p3, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mInvalidationInProgress:Z

    .line 8
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricUserState;->mWriteStateRunnable:Lcom/android/server/biometrics/sensors/BiometricUserState$$ExternalSyntheticLambda0;

    .line 10
    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p1
.end method
