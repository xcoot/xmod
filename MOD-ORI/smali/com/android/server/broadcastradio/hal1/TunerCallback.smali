.class Lcom/android/server/broadcastradio/hal1/TunerCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/radio/ITunerCallback;


# static fields
.field public static final TAG:Ljava/lang/String; = "BcRadio1Srv.TunerCallback"


# instance fields
.field public final mClientCallback:Landroid/hardware/radio/ITunerCallback;

.field public mInitialConfigurationDone:Z

.field public final mNativeContext:J

.field public final mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

.field public final mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/hal1/Tuner;Landroid/hardware/radio/ITunerCallback;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mInitialConfigurationDone:Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    .line 17
    .line 18
    invoke-direct {p0, p1, p3}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->nativeInit(Lcom/android/server/broadcastradio/hal1/Tuner;I)J

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    iput-wide p1, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mNativeContext:J

    .line 23
    .line 24
    return-void
.end method

.method private native nativeDetach(J)V
.end method

.method private native nativeFinalize(J)V
.end method

.method private native nativeInit(Lcom/android/server/broadcastradio/hal1/Tuner;I)J
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 2
    .line 3
    const-string v0, "Not a binder"

    .line 4
    .line 5
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public final detach()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mNativeContext:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->nativeDetach(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;->run()V
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
    const-string p1, "BcRadio1Srv.TunerCallback"

    .line 7
    .line 8
    const-string/jumbo v0, "client died"

    .line 9
    .line 10
    .line 11
    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method public final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mNativeContext:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->nativeFinalize(J)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final handleHwFailure()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->onError(I)V

    .line 3
    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/Tuner;->close()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final isInitialConfigurationDone()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mInitialConfigurationDone:Z

    .line 2
    .line 3
    return p0
.end method

.method public final synthetic lambda$onAntennaState$5(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onAntennaState(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic lambda$onBackgroundScanAvailabilityChange$6(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onBackgroundScanAvailabilityChange(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic lambda$onBackgroundScanComplete$7()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/hardware/radio/ITunerCallback;->onBackgroundScanComplete()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic lambda$onConfigurationChanged$1(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic lambda$onCurrentProgramInfoChanged$2(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic lambda$onEmergencyAnnouncement$4(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onEmergencyAnnouncement(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic lambda$onError$0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onError(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic lambda$onProgramListChanged$8()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/hardware/radio/ITunerCallback;->onProgramListChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic lambda$onProgramListUpdated$10(Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic lambda$onTrafficAnnouncement$3(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onTrafficAnnouncement(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic lambda$sendProgramListUpdate$9(Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onAntennaState(Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;ZI)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onBackgroundScanAvailabilityChange(Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;ZI)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onBackgroundScanComplete()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onConfigFlagUpdated(IZ)V
    .locals 0

    .line 1
    const-string p0, "BcRadio1Srv.TunerCallback"

    .line 2
    .line 3
    const-string p1, "Not applicable for HAL 1.x"

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mInitialConfigurationDone:Z

    .line 3
    .line 4
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda5;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/RadioManager$BandConfig;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda5;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onEmergencyAnnouncement(Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;ZI)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onError(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda9;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onParametersUpdated(Ljava/util/Map;)V
    .locals 0

    .line 1
    const-string p0, "BcRadio1Srv.TunerCallback"

    .line 2
    .line 3
    const-string p1, "Not applicable for HAL 1.x"

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onProgramListChanged()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->sendProgramListUpdate()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/ProgramList$Chunk;I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onTrafficAnnouncement(Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;ZI)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V
    .locals 0

    .line 1
    const-string p0, "BcRadio1Srv.TunerCallback"

    .line 2
    .line 3
    const-string p1, "Not applicable for HAL 1.x"

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final sendProgramListUpdate()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/hardware/radio/ProgramList$Filter;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mTuner:Lcom/android/server/broadcastradio/hal1/Tuner;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/hardware/radio/ProgramList$Filter;->getVendorFilter()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v1, v0}, Lcom/android/server/broadcastradio/hal1/Tuner;->getProgramList(Ljava/util/Map;)Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/util/Set;

    .line 35
    .line 36
    new-instance v1, Landroid/hardware/radio/ProgramList$Chunk;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x1

    .line 40
    invoke-direct {v1, v3, v3, v0, v2}, Landroid/hardware/radio/ProgramList$Chunk;-><init>(ZZLjava/util/Set;Ljava/util/Set;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;Landroid/hardware/radio/ProgramList$Chunk;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->dispatch(Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :catch_0
    const-string p0, "BcRadio1Srv.TunerCallback"

    .line 54
    .line 55
    const-string v0, "Program list not ready yet"

    .line 56
    .line 57
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Landroid/hardware/radio/ProgramList$Filter;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/hardware/radio/ProgramList$Filter;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->sendProgramListUpdate()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final stopProgramListUpdates()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback;->mProgramListFilter:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
