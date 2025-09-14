.class public final synthetic Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget p0, p2, Landroid/os/Message;->arg1:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    move p0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p0, v0

    .line 15
    :goto_0
    iget p2, p2, Landroid/os/Message;->arg2:I

    .line 16
    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    move v0, v1

    .line 20
    :cond_1
    invoke-interface {p1, p0, v0}, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;->onWallpaperVisibilityChanged(ZZ)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    iget p0, p2, Landroid/os/Message;->arg1:I

    .line 25
    .line 26
    if-eqz p0, :cond_2

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    const/4 p0, 0x0

    .line 31
    :goto_1
    invoke-interface {p1, p0}, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;->onStartHomeAnimation(Z)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_1
    iget p0, p2, Landroid/os/Message;->arg1:I

    .line 36
    .line 37
    if-eqz p0, :cond_3

    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    goto :goto_2

    .line 41
    :cond_3
    const/4 p0, 0x0

    .line 42
    :goto_2
    invoke-interface {p1, p0}, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;->onFinishRecentsAnimation(Z)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :pswitch_2
    iget p0, p2, Landroid/os/Message;->arg1:I

    .line 47
    .line 48
    if-eqz p0, :cond_4

    .line 49
    .line 50
    const/4 p0, 0x1

    .line 51
    goto :goto_3

    .line 52
    :cond_4
    const/4 p0, 0x0

    .line 53
    :goto_3
    invoke-interface {p1, p0}, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;->onStartRecentsAnimation(Z)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
