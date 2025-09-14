.class public Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mNativeServicePtr:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final cancelSynced()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->nativeCancelSynced(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getCapabilities()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->nativeGetCapabilities(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final getVibratorIds()[I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/android/server/vibrator/VibratorManagerService;->nativeGetVibratorIds(J)[I

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final init(Lcom/android/server/vibrator/VibratorManagerService$OnSyncedVibrationCompleteListener;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/android/server/vibrator/VibratorManagerService;->nativeInit(Lcom/android/server/vibrator/VibratorManagerService$OnSyncedVibrationCompleteListener;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/vibrator/VibratorManagerService;->nativeGetFinalizer()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long p1, v0, v2

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const-class p1, Lcom/android/server/vibrator/VibratorManagerService;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1, v0, v1}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    .line 28
    .line 29
    invoke-virtual {p1, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public final prepareSynced([I)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1}, Lcom/android/server/vibrator/VibratorManagerService;->nativePrepareSynced(J[I)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final triggerSynced(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/vibrator/VibratorManagerService$NativeWrapper;->mNativeServicePtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService;->nativeTriggerSynced(JJ)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
