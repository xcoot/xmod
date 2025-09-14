.class public final Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;


# instance fields
.field public final mBlockingTasksWhenStartPhysicalState:Ljava/util/List;

.field public mBrightness:I

.field public final mBrightnessCallbacks:Ljava/util/List;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mDisplayStateCallbacks:Ljava/util/List;

.field public final mHandler:Landroid/os/Handler;

.field public mLogicalDisplayState:I

.field public mPhysicalDisplayState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mDisplayStateCallbacks:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBrightnessCallbacks:Ljava/util/List;

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mLogicalDisplayState:I

    .line 5
    iput v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mPhysicalDisplayState:I

    const/16 v0, 0x7f

    .line 6
    iput v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBrightness:I

    .line 7
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBlockingTasksWhenStartPhysicalState:Ljava/util/List;

    .line 8
    sget-object v0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mDisplayStateCallbacks:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBrightnessCallbacks:Ljava/util/List;

    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mLogicalDisplayState:I

    .line 13
    iput v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mPhysicalDisplayState:I

    const/16 v0, 0x7f

    .line 14
    iput v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBrightness:I

    .line 15
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBlockingTasksWhenStartPhysicalState:Ljava/util/List;

    .line 16
    iput-object p1, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onChanged(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mHandler:Landroid/os/Handler;

    .line 3
    new-instance v1, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda0;

    .line 5
    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;F)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    return-void
.end method

.method public final onFinish(III)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p3, v0, :cond_0

    .line 4
    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mHandler:Landroid/os/Handler;

    .line 7
    new-instance v7, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;

    .line 9
    const/4 v6, 0x0

    .line 10
    move-object v1, v7

    .line 11
    move-object v2, p0

    .line 12
    move v3, p1

    .line 13
    move v4, p2

    .line 14
    move v5, p3

    .line 15
    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;IIII)V

    .line 18
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    return-void
.end method

.method public final onStart(III)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p3, v0, :cond_0

    .line 4
    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mBlockingTasksWhenStartPhysicalState:Ljava/util/List;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/function/IntConsumer;

    .line 23
    invoke-interface {v1, p2}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mHandler:Landroid/os/Handler;

    .line 29
    new-instance v7, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;

    .line 31
    const/4 v6, 0x1

    .line 32
    move-object v1, v7

    .line 33
    move-object v2, p0

    .line 34
    move v3, p1

    .line 35
    move v4, p2

    .line 36
    move v5, p3

    .line 37
    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;IIII)V

    .line 40
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    return-void
.end method

.method public final registerStateCallback(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mDisplayStateCallbacks:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mDisplayStateCallbacks:Ljava/util/List;

    .line 12
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method
