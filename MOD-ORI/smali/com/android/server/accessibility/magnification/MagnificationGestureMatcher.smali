.class public abstract Lcom/android/server/accessibility/magnification/MagnificationGestureMatcher;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static gestureIdToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0xc9

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0xca

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const-string/jumbo p0, "none"

    .line 13
    .line 14
    .line 15
    return-object p0

    .line 16
    :pswitch_0
    const-string p0, "GESTURE_TRIPLE_TAP_AND_HOLD"

    .line 17
    .line 18
    return-object p0

    .line 19
    :pswitch_1
    const-string p0, "GESTURE_TRIPLE_TAP"

    .line 20
    .line 21
    return-object p0

    .line 22
    :pswitch_2
    const-string p0, "GESTURE_SINGLE_TAP_AND_HOLD"

    .line 23
    .line 24
    return-object p0

    .line 25
    :pswitch_3
    const-string p0, "GESTURE_SINGLE_TAP"

    .line 26
    .line 27
    return-object p0

    .line 28
    :pswitch_4
    const-string p0, "GESTURE_SWIPE"

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_5
    const-string p0, "GESTURE_TWO_FINGERS_DOWN_OR_SWIPE"

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_0
    const-string p0, "SEM_GESTURE_DOUBLE_TAP_AND_HOLD"

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    const-string p0, "SEM_GESTURE_DOUBLE_TAP"

    .line 38
    .line 39
    return-object p0

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
