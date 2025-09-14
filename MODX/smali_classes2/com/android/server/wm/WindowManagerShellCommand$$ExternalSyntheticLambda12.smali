.class public final synthetic Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowManagerShellCommand;

.field public final synthetic f$1:Landroid/view/IWindow;

.field public final synthetic f$2:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowManagerShellCommand;Landroid/view/IWindow;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/WindowManagerShellCommand;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda12;->f$1:Landroid/view/IWindow;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda12;->f$2:Landroid/os/ParcelFileDescriptor;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/wm/WindowManagerShellCommand;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda12;->f$1:Landroid/view/IWindow;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerShellCommand$$ExternalSyntheticLambda12;->f$2:Landroid/os/ParcelFileDescriptor;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerShellCommand;->mInternal:Lcom/android/server/wm/WindowManagerService;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 10
    .line 11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 12
    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    const-string v2, "DUMP_ENCODED"

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-interface {v1, v2, v3, p0}, Landroid/view/IWindow;->executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :catch_0
    move-exception p0

    .line 25
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    .line 27
    .line 28
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 35
    .line 36
    .line 37
    throw p0
.end method
