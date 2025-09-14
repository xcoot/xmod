.class public final Lcom/android/server/UiModeManagerService$5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/twilight/TwilightListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTwilightStateChanged(Lcom/android/server/twilight/TwilightState;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    .line 9
    .line 10
    iget v1, v1, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 11
    .line 12
    if-nez v1, :cond_3

    .line 13
    .line 14
    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    .line 15
    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->shouldApplyAutomaticChangesImmediately()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    .line 25
    .line 26
    iget-boolean v1, v0, Lcom/android/server/UiModeManagerService;->mAutoModeChangeImmediately:Z

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->registerDeviceInactiveListenerLocked()V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    .line 38
    .line 39
    iget-boolean v0, v0, Lcom/android/server/UiModeManagerService;->mAutoModeChangeImmediately:Z

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    sget-object v0, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    .line 44
    .line 45
    const-string v0, "Twilight state is changed immediately after MODE_NIGHT_AUTO setting"

    .line 46
    .line 47
    invoke-static {v0}, Lcom/android/server/UiModeManagerService$LogWrapper;->i(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$5;->this$0:Lcom/android/server/UiModeManagerService;

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 54
    .line 55
    .line 56
    :cond_3
    :goto_1
    monitor-exit p1

    .line 57
    return-void

    .line 58
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method
