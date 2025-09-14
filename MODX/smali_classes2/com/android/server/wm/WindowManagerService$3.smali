.class public final Lcom/android/server/wm/WindowManagerService$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# instance fields
.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/view/IOnKeyguardExitResult;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/wm/WindowManagerService;

    .line 4
    .line 5
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$mdoDump(Lcom/android/server/wm/WindowManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 0

    .line 1
    const-string p3, "-a"

    .line 2
    .line 3
    filled-new-array {p3}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/android/server/wm/WindowManagerService;

    .line 10
    .line 11
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->-$$Nest$mdoDump(Lcom/android/server/wm/WindowManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public dumpHigh(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    if-eqz p4, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/android/server/wm/WindowManagerService;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 10
    .line 11
    const-string v5, "all"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    new-array v6, v1, [Ljava/lang/String;

    .line 15
    .line 16
    const/4 v10, 0x0

    .line 17
    const/4 v11, -0x1

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v8, 0x1

    .line 20
    const/4 v9, 0x1

    .line 21
    const/4 v12, -0x1

    .line 22
    const-wide/16 v13, 0x3e8

    .line 23
    .line 24
    move-object/from16 v3, p1

    .line 25
    .line 26
    move-object/from16 v4, p2

    .line 27
    .line 28
    invoke-virtual/range {v2 .. v14}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZZZIIJ)Z

    .line 29
    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    new-instance v2, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 44
    .line 45
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 46
    .line 47
    .line 48
    monitor-enter v3

    .line 49
    :try_start_0
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 50
    .line 51
    new-instance v4, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda5;

    .line 52
    .line 53
    const/4 v5, 0x3

    .line 54
    invoke-direct {v4, v2, v5}, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda5;-><init>(Ljava/util/ArrayList;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v4, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 58
    .line 59
    .line 60
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 62
    .line 63
    .line 64
    new-instance v0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda37;

    .line 65
    .line 66
    move-object/from16 v1, p1

    .line 67
    .line 68
    move-object/from16 v3, p2

    .line 69
    .line 70
    invoke-direct {v0, v1, v3}, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda37;-><init>(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 80
    .line 81
    .line 82
    throw v0
.end method

.method public onKeyguardExitResult(Z)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/view/IOnKeyguardExitResult;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Landroid/view/IOnKeyguardExitResult;->onKeyguardExitResult(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    return-void
.end method
