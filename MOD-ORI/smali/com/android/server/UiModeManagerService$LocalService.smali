.class public final Lcom/android/server/UiModeManagerService$LocalService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


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
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isNightMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/UiModeManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 9
    .line 10
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    .line 11
    .line 12
    and-int/lit8 p0, p0, 0x20

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method
