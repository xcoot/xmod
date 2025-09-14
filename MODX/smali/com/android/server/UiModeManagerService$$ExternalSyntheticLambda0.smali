.class public final synthetic Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/UiModeManagerService;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/UiModeManagerService;

    .line 6
    iput-object p2, p0, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 8
    iput-object p3, p0, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda0;->f$2:Landroid/content/res/Resources;

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/UiModeManagerService;

    .line 3
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    .line 5
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda0;->f$2:Landroid/content/res/Resources;

    .line 7
    iget-object v2, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    const-class v3, Lcom/android/server/twilight/TwilightManager;

    .line 12
    invoke-virtual {v0, v3}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Lcom/android/server/twilight/TwilightManager;

    .line 18
    if-eqz v3, :cond_0

    .line 20
    iput-object v3, v0, Lcom/android/server/UiModeManagerService;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 28
    move-result v3

    .line 29
    invoke-virtual {v0, v1, p0, v3}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 32
    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->updateSystemProperties()V

    .line 35
    monitor-exit v2

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method
