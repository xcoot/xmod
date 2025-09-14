.class public final Lcom/android/server/wm/WmCoverState;
.super Lcom/samsung/android/cover/CoverState;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sIsEnabled:Z = false

.field public static sWmCoverState:Lcom/android/server/wm/WmCoverState;


# direct methods
.method public static getInstance()Lcom/android/server/wm/WmCoverState;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    sget-object v0, Lcom/android/server/wm/WmCoverState;->sWmCoverState:Lcom/android/server/wm/WmCoverState;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getWindowLayerFromTypeLw(I)I
    .locals 3

    .line 1
    const/16 v0, 0x833

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x96b

    .line 6
    .line 7
    if-eq p1, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v1, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 11
    .line 12
    const/16 v2, 0xf

    .line 13
    .line 14
    if-eq v1, v2, :cond_1

    .line 15
    .line 16
    const/16 v2, 0x10

    .line 17
    .line 18
    if-eq v1, v2, :cond_1

    .line 19
    .line 20
    const/16 v2, 0x11

    .line 21
    .line 22
    if-ne v1, v2, :cond_2

    .line 23
    .line 24
    :cond_1
    if-eq p1, v0, :cond_3

    .line 25
    .line 26
    iget-boolean p0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 27
    .line 28
    xor-int/lit8 p0, p0, 0x1

    .line 29
    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    :goto_0
    const/4 p0, -0x1

    .line 34
    return p0

    .line 35
    :cond_3
    :goto_1
    const/16 p0, 0x1a

    .line 36
    .line 37
    return p0
.end method

.method public final isFlipTypeCoverClosed()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x7

    .line 12
    if-eq p0, v0, :cond_0

    .line 13
    .line 14
    const/16 v0, 0xe

    .line 15
    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return v1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public final isViewCoverClosed()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/cover/CoverState;->switchState:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget p0, p0, Lcom/samsung/android/cover/CoverState;->type:I

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    return v1

    .line 14
    :cond_0
    :goto_0
    const/4 p0, 0x0

    .line 15
    return p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
