.class public final synthetic Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;

    .line 3
    iget-object v0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->this$0:Lcom/android/server/input/KeyboardBacklightController;

    .line 5
    iget-object v0, v0, Lcom/android/server/input/KeyboardBacklightController;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 7
    iget-object v1, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mLight:Landroid/hardware/lights/Light;

    .line 9
    invoke-virtual {v1}, Landroid/hardware/lights/Light;->getId()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Integer;

    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result p1

    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-static {p1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    .line 27
    move-result p1

    .line 28
    iget p0, p0, Lcom/android/server/input/KeyboardBacklightController$KeyboardBacklightState;->mDeviceId:I

    .line 30
    invoke-interface {v0, p0, v1, p1}, Lcom/android/server/input/NativeInputManagerService;->setLightColor(III)V

    .line 33
    return-void
.end method
