.class public final synthetic Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/EmbeddedWindowController;

.field public final synthetic f$1:Landroid/os/IBinder;

.field public final synthetic f$2:Landroid/window/InputTransferToken;

.field public final synthetic f$3:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/EmbeddedWindowController;Landroid/os/IBinder;Landroid/window/InputTransferToken;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/EmbeddedWindowController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;->f$2:Landroid/window/InputTransferToken;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;->f$3:Landroid/os/IBinder;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/EmbeddedWindowController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;->f$1:Landroid/os/IBinder;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;->f$2:Landroid/window/InputTransferToken;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/EmbeddedWindowController$$ExternalSyntheticLambda0;->f$3:Landroid/os/IBinder;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/server/wm/EmbeddedWindowController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 10
    .line 11
    monitor-enter v3

    .line 12
    :try_start_0
    iget-object v4, v0, Lcom/android/server/wm/EmbeddedWindowController;->mWindows:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByInputTransferToken:Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/wm/EmbeddedWindowController;->mWindowsByWindowToken:Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    monitor-exit v3

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method
