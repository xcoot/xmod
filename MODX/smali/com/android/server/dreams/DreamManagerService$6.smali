.class public final Lcom/android/server/dreams/DreamManagerService$6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$6;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$6;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$6;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 8
    iget-object v2, v1, Lcom/android/server/dreams/DreamManagerService;->mCurrentDream:Lcom/android/server/dreams/DreamManagerService$DreamRecord;

    .line 10
    if-eqz v2, :cond_0

    .line 12
    iget-object v3, v2, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->name:Landroid/content/ComponentName;

    .line 14
    if-eqz v3, :cond_0

    .line 16
    iget-boolean v2, v2, Lcom/android/server/dreams/DreamManagerService$DreamRecord;->canDoze:Z

    .line 18
    if-eqz v2, :cond_0

    .line 20
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 23
    iget-object v1, v1, Lcom/android/server/dreams/DreamManagerService;->mDozeConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 25
    invoke-virtual {v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->ambientDisplayComponent()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v3, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 39
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$6;->this$0:Lcom/android/server/dreams/DreamManagerService;

    .line 41
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 46
    move-result-wide v1

    .line 47
    const-string v3, "android.server.dreams:SYSPROP"

    .line 49
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    :goto_0
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method
