.class public final synthetic Lcom/android/server/wm/Transition$$ExternalSyntheticLambda1;
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
    iput p1, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda1;->$r8$classId:I

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
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget p0, p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    check-cast p1, Landroid/os/IRemoteCallback;

    .line 8
    .line 9
    :try_start_0
    invoke-interface {p1, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :catch_0
    return-void

    .line 13
    :pswitch_0
    check-cast p1, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 14
    .line 15
    sget-boolean p0, Lcom/android/server/wm/ChangeTransitionController;->DISABLE_LEGACY_RESIZE_TRANSITION:Z

    .line 16
    .line 17
    :try_start_1
    iget-object p0, p1, Lcom/android/server/wm/Transition$ChangeInfo;->mChangeLeash:Landroid/view/SurfaceControl;

    .line 18
    .line 19
    if-eqz p0, :cond_3

    .line 20
    .line 21
    iget-object p0, p1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 22
    .line 23
    if-eqz p0, :cond_3

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    .line 41
    .line 42
    invoke-static {v0, p0}, Lcom/android/server/wm/Transition;->getLeashSurface(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :goto_0
    if-eqz v0, :cond_3

    .line 66
    .line 67
    if-nez v1, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 78
    .line 79
    .line 80
    const/4 p0, 0x0

    .line 81
    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 85
    .line 86
    .line 87
    const/high16 p0, 0x3f800000    # 1.0f

    .line 88
    .line 89
    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 96
    .line 97
    .line 98
    const-string p0, "ChangeTransitionController"

    .line 99
    .line 100
    const-string/jumbo p1, "restoreFromChangeLeash. cause wc is not target for transition."

    .line 101
    .line 102
    .line 103
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :catch_1
    move-exception p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    :cond_3
    :goto_1
    return-void

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
