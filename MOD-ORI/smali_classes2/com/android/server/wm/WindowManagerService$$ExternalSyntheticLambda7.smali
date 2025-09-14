.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget p0, p0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/wm/DisplayPolicy;

    .line 7
    .line 8
    const/4 p0, 0x0

    .line 9
    iput p0, p1, Lcom/android/server/wm/DisplayPolicy;->mLastDisableFlags:I

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_0
    check-cast p1, Lcom/android/server/wm/DisplayPolicy;

    .line 16
    .line 17
    sget p0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    sget-boolean p0, Landroid/view/ViewRootImpl;->CLIENT_TRANSIENT:Z

    .line 23
    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    sget-boolean p0, Landroid/view/ViewRootImpl;->CLIENT_IMMERSIVE_CONFIRMATION:Z

    .line 27
    .line 28
    if-nez p0, :cond_0

    .line 29
    .line 30
    iget-object p0, p1, Lcom/android/server/wm/DisplayPolicy;->mImmersiveModeConfirmation:Lcom/android/server/wm/ImmersiveModeConfirmation;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    :pswitch_1
    check-cast p1, Lcom/android/server/wm/WindowContainer;

    .line 37
    .line 38
    sget p0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    invoke-virtual {p1, p0, p0}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void

    .line 51
    :pswitch_2
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 52
    .line 53
    sget p0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    .line 54
    .line 55
    iget-object p0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 56
    .line 57
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 58
    .line 59
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->updateCurrentUserResources()V

    .line 62
    .line 63
    .line 64
    new-instance v1, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;

    .line 65
    .line 66
    const/4 v2, 0x2

    .line 67
    invoke-direct {v1, v0, v2}, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DisplayPolicy;I)V

    .line 68
    .line 69
    .line 70
    iget-object v0, v0, Lcom/android/server/wm/DisplayPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->requestDisplayUpdate(Ljava/lang/Runnable;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 76
    .line 77
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayPolicy;->mHasNavigationBar:Z

    .line 78
    .line 79
    if-eq p0, v0, :cond_2

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 82
    .line 83
    .line 84
    :cond_2
    return-void

    .line 85
    :pswitch_3
    check-cast p1, Lcom/android/server/wm/DisplayPolicy;

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->systemReady()V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_4
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
