.class public final Lcom/android/server/wm/TaskbarController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public mTaskbarWin:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayPolicyExt;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/android/server/wm/DisplayPolicyExt;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/server/wm/DisplayPolicyExt;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final adjustInsetsForTaskbar(Landroid/view/InsetsState;)Landroid/view/InsetsState;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskbarController;->hasTaskbar()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/wm/TaskbarController;->getNavigationBarProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/TaskbarController;->mTaskbarWin:Lcom/android/server/wm/WindowState;

    .line 13
    .line 14
    if-nez p0, :cond_1

    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :goto_0
    if-eqz p0, :cond_3

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/InsetsSource;->getId()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    new-instance v0, Landroid/view/InsetsState;

    .line 38
    .line 39
    invoke-direct {v0, p1}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;)V

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/view/InsetsSource;->getId()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    invoke-virtual {v0, p0}, Landroid/view/InsetsState;->removeSource(I)V

    .line 49
    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_3
    :goto_1
    return-object p1
.end method

.method public final getNavigationBarProvider()Lcom/android/server/wm/InsetsSourceProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskbarController;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/DisplayPolicy;->mNavigationBar:Lcom/android/server/wm/WindowState;

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final hasTaskbar()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/TaskbarController;->mTaskbarWin:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method
