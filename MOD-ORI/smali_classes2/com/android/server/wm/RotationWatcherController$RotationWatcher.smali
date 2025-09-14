.class public abstract Lcom/android/server/wm/RotationWatcherController$RotationWatcher;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mOwnerUid:I

.field public final mWatcher:Landroid/view/IRotationWatcher;

.field public final mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mOwnerUid:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
