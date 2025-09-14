.class public Lcom/android/server/power/PowerManagerService$NativeWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final nativeAcquireSuspendBlocker(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeAcquireSuspendBlocker(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final nativeForceSuspend()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeForceSuspend()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final nativeInit(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mnativeInit(Lcom/android/server/power/PowerManagerService;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final nativeReleaseSuspendBlocker(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeReleaseSuspendBlocker(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final nativeSetAutoSuspend(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeSetAutoSuspend(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final nativeSetInteractiveAsync(ZI)V
    .locals 0

    .line 1
    invoke-static {p2, p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeSetInteractiveAsync(IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final nativeSetPowerBoost(II)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeSetPowerBoost(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final nativeSetPowerMode(IZ)Z
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeSetPowerMode(IZ)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
