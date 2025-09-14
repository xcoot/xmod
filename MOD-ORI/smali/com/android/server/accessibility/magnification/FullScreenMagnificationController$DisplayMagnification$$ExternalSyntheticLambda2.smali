.class public final synthetic Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    check-cast p3, Ljava/lang/Boolean;

    .line 15
    .line 16
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    iget-object v0, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object p1, p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mMagnificationInfoChangedCallbacks:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance p3, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda5;

    .line 26
    .line 27
    invoke-direct {p3, p0, p2}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda5;-><init>(IZ)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0

    .line 38
    :pswitch_0
    check-cast p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;

    .line 39
    .line 40
    check-cast p2, Landroid/view/MagnificationSpec;

    .line 41
    .line 42
    check-cast p3, Landroid/view/accessibility/MagnificationAnimationCallback;

    .line 43
    .line 44
    invoke-virtual {p1, p2, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$SpecAnimationBridge;->updateSentSpecMainThread(Landroid/view/MagnificationSpec;Landroid/view/accessibility/MagnificationAnimationCallback;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
