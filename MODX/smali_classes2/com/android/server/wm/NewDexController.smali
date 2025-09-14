.class public final Lcom/android/server/wm/NewDexController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/IController;


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mWm:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/NewDexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    const-string p0, "[NewDexController]"

    .line 2
    .line 3
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final initialize()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/wm/NewDexController$H;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/NewDexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/NewDexController;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/NewDexController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-class p1, Landroid/hardware/display/DisplayManager;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 14
    .line 15
    return-void
.end method
