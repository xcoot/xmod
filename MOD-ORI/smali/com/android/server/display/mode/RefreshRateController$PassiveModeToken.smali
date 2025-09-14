.class public final Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;
.super Lcom/android/server/display/mode/RefreshRateToken;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/mode/RefreshRateController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/RefreshRateController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;->this$0:Lcom/android/server/display/mode/RefreshRateController;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/IRefreshRateToken$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_FOR_SUB_DISPLAY:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->isSubScreen()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;->this$0:Lcom/android/server/display/mode/RefreshRateController;

    .line 10
    .line 11
    iget-boolean v1, v1, Lcom/android/server/display/mode/RefreshRateController;->mIsSubScreen:Z

    .line 12
    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v1, "default display was changed!, don\'t need to check passive mode for "

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;->this$0:Lcom/android/server/display/mode/RefreshRateController;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController;->mDisplayToken:Landroid/os/IBinder;

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string v0, "RefreshRateModeManager"

    .line 35
    .line 36
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;->this$0:Lcom/android/server/display/mode/RefreshRateController;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Lcom/android/server/display/mode/RefreshRateController;->updateLfdValueLocked(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/display/mode/RefreshRateController$PassiveModeToken;->this$0:Lcom/android/server/display/mode/RefreshRateController;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->updatePassiveLocked()V

    .line 49
    .line 50
    .line 51
    return-void
.end method
