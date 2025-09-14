.class public final Lcom/android/server/wm/RotationWatcherController$ProposedRotationListener;
.super Lcom/android/server/wm/RotationWatcherController$RotationWatcher;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/server/wm/RotationWatcherController$ProposedRotationListener;->mToken:Landroid/os/IBinder;

    .line 5
    .line 6
    return-void
.end method
