.class public final Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

.field public mRunningUid:Landroid/util/ArraySet;

.field public mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    .line 6
    .line 7
    new-instance v0, Landroid/util/ArraySet;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mRunningUid:Landroid/util/ArraySet;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 15
    .line 16
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 19
    .line 20
    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayWindowPolicyController(I)Landroid/window/DisplayWindowPolicyController;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final hasController()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public final keepActivityOnWindowFlagsChanged(Landroid/content/pm/ActivityInfo;IIII)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/window/DisplayWindowPolicyController;->isInterestedWindowFlags(II)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    .line 15
    .line 16
    invoke-virtual {p0, p1, p4, p5}, Landroid/window/DisplayWindowPolicyController;->keepActivityOnWindowFlagsChanged(Landroid/content/pm/ActivityInfo;II)Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method
