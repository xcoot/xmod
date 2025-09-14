.class public final Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mService:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 1

    .line 1
    const/16 v0, 0x1f4

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;->mService:Lcom/android/server/vibrator/VibratorManagerService;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService;->systemReady()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 v0, 0x3e8

    .line 12
    .line 13
    if-ne p1, v0, :cond_3

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;->mService:Lcom/android/server/vibrator/VibratorManagerService;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mVibrationSettings:Lcom/android/server/vibrator/VibrationSettings;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings;->mCustomSettings:Lcom/android/server/vibrator/VibrationCustomSettings;

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/server/vibrator/VibrationCustomSettings;->mService:Lcom/android/server/vibrator/VibratorManagerService;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p1, p1, Lcom/android/server/vibrator/VibratorController;->mNativeWrapper:Lcom/android/server/vibrator/VibratorController$NativeWrapper;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorController$NativeWrapper;->supportsFoldState()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    const-string p0, "VibratorManagerService"

    .line 43
    .line 44
    const-string p1, "Fold mode is not supported"

    .line 45
    .line 46
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance v0, Lcom/android/server/vibrator/VibrationCustomSettings$1;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibrationCustomSettings$1;-><init>(Lcom/android/server/vibrator/VibrationCustomSettings;)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lcom/android/server/vibrator/VibratorManagerService$Injector;

    .line 8
    .line 9
    invoke-direct {v2}, Lcom/android/server/vibrator/VibratorManagerService$Injector;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lcom/android/server/vibrator/VibratorManagerService;-><init>(Landroid/content/Context;Lcom/android/server/vibrator/VibratorManagerService$Injector;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;->mService:Lcom/android/server/vibrator/VibratorManagerService;

    .line 16
    .line 17
    const-string/jumbo v1, "vibrator_manager"

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
