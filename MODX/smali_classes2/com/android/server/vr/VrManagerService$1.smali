.class public final Lcom/android/server/vr/VrManagerService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceEvent(Lcom/android/server/utils/ManagedApplicationService$LogEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/vr/VrManagerService;->logEvent(Lcom/android/server/utils/ManagedApplicationService$LogFormattable;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/vr/VrManagerService;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/vr/VrManagerService;->mCurrentVrService:Lcom/android/server/utils/ManagedApplicationService;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, v1, Lcom/android/server/utils/ManagedApplicationService;->mComponent:Landroid/content/ComponentName;

    .line 20
    .line 21
    :goto_0
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v2, p1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->component:Landroid/content/ComponentName;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget v2, p1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->event:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    if-eq v2, v3, :cond_1

    .line 35
    .line 36
    const/4 v3, 0x3

    .line 37
    if-ne v2, v3, :cond_2

    .line 38
    .line 39
    :cond_1
    iget-object v2, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/android/server/vr/VrManagerService;->callFocusedActivityChangedLocked()V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 49
    .line 50
    iget-boolean v0, v0, Lcom/android/server/vr/VrManagerService;->mBootsToVr:Z

    .line 51
    .line 52
    if-nez v0, :cond_4

    .line 53
    .line 54
    iget v0, p1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->event:I

    .line 55
    .line 56
    const/4 v2, 0x4

    .line 57
    if-ne v0, v2, :cond_4

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    iget-object p1, p1, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->component:Landroid/content/ComponentName;

    .line 62
    .line 63
    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    :cond_3
    const-string p1, "VrManagerService"

    .line 70
    .line 71
    const-string v0, "VrListenerSevice has died permanently, leaving system VR mode."

    .line 72
    .line 73
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/vr/VrManagerService$1;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 77
    .line 78
    const/4 p1, 0x0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/vr/VrManagerService;->setPersistentVrModeEnabled(Z)V

    .line 80
    .line 81
    .line 82
    :cond_4
    return-void

    .line 83
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    throw p0
.end method
