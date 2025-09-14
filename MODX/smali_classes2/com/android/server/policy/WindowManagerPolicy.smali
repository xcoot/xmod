.class public interface abstract Lcom/android/server/policy/WindowManagerPolicy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants;


# direct methods
.method public static getWindowLayerFromTypeLw(I)I
    .locals 1

    .line 12
    invoke-static {p0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 13
    invoke-static {p0, v0, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZZ)I

    move-result p0

    return p0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Use getWindowLayerFromTypeLw() or getWindowLayerLw() for alert window types"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getWindowLayerFromTypeLw(IZZ)I
    .locals 23

    move/from16 v0, p0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const/16 v0, 0x24

    return v0

    :cond_0
    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const/16 v2, 0x63

    if-gt v0, v2, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v3, 0x6

    const/16 v4, 0xa

    const/16 v5, 0x12

    const/16 v6, 0x1a

    const/16 v7, 0xf

    const/16 v8, 0x17

    const/16 v9, 0x19

    const/4 v10, 0x5

    const/16 v11, 0x22

    const/16 v12, 0x1e

    const/16 v13, 0x16

    const/16 v14, 0xc

    const/16 v15, 0x18

    const/16 v16, 0x11

    const/16 v17, 0x1c

    const/16 v18, 0x1b

    const/16 v19, 0x4

    const/4 v2, -0x1

    const/16 v20, 0x1f

    const/16 v21, 0x15

    const/16 v22, 0x3

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sparse-switch v0, :sswitch_data_0

    const/16 v1, 0xa2b

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa2c

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa2e

    if-eq v0, v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move/from16 v1, v19

    goto :goto_0

    :cond_3
    move/from16 v1, v22

    :goto_0
    if-lez v1, :cond_4

    goto/16 :goto_1

    :cond_4
    move v1, v2

    goto/16 :goto_1

    :sswitch_0
    move/from16 v1, v18

    goto/16 :goto_1

    :sswitch_1
    move/from16 v1, v17

    goto :goto_1

    :sswitch_2
    move/from16 v1, v16

    goto :goto_1

    :sswitch_3
    move/from16 v1, v20

    goto :goto_1

    :sswitch_4
    move v1, v15

    goto :goto_1

    :sswitch_5
    move v1, v14

    goto :goto_1

    :sswitch_6
    move v1, v13

    goto :goto_1

    :sswitch_7
    move v1, v12

    goto :goto_1

    :sswitch_8
    move v1, v11

    goto :goto_1

    :sswitch_9
    move/from16 v1, v22

    goto :goto_1

    :sswitch_a
    move v1, v10

    goto :goto_1

    :sswitch_b
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_c
    move v1, v9

    goto :goto_1

    :sswitch_d
    move v1, v8

    goto :goto_1

    :sswitch_e
    move v1, v7

    goto :goto_1

    :sswitch_f
    move v1, v6

    goto :goto_1

    :sswitch_10
    move v1, v5

    goto :goto_1

    :sswitch_11
    move v1, v4

    goto :goto_1

    .line 1
    :sswitch_12
    sget-boolean v1, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    if-eqz v1, :cond_5

    .line 2
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WmCoverState;->getWindowLayerFromTypeLw(I)I

    move-result v1

    if-eq v1, v2, :cond_5

    goto :goto_1

    :cond_5
    move/from16 v1, v21

    goto :goto_1

    :sswitch_13
    move v1, v3

    :goto_1
    :sswitch_14
    if-lez v1, :cond_6

    return v1

    .line 3
    :cond_6
    const-string v1, "Unknown window type: "

    const-string v2, "WindowManager"

    .line 4
    invoke-static {v0, v1, v2}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v22

    :pswitch_1
    const/16 v0, 0x10

    return v0

    :pswitch_2
    return v16

    :pswitch_3
    const/16 v0, 0x20

    return v0

    :pswitch_4
    const/16 v0, 0xb

    return v0

    :pswitch_5
    return v6

    :pswitch_6
    const/16 v0, 0x14

    return v0

    :pswitch_7
    return v20

    :pswitch_8
    return v21

    :pswitch_9
    return v17

    :pswitch_a
    const/16 v0, 0x1d

    return v0

    :pswitch_b
    return v9

    :pswitch_c
    return v10

    :pswitch_d
    return v11

    :pswitch_e
    return v13

    :pswitch_f
    return v15

    :pswitch_10
    const/16 v0, 0x23

    return v0

    :pswitch_11
    return v5

    :pswitch_12
    return v12

    :pswitch_13
    const/16 v0, 0x21

    return v0

    :pswitch_14
    return v1

    :pswitch_15
    const/16 v0, 0xe

    return v0

    :pswitch_16
    const/16 v0, 0xd

    return v0

    :pswitch_17
    if-eqz p1, :cond_7

    move/from16 v2, v18

    goto :goto_2

    :cond_7
    const/16 v2, 0x9

    :goto_2
    return v2

    :pswitch_18
    const/16 v0, 0x13

    return v0

    :pswitch_19
    return v3

    :pswitch_1a
    const/16 v0, 0x8

    return v0

    :pswitch_1b
    if-eqz p1, :cond_8

    move v4, v8

    :cond_8
    return v4

    .line 5
    :pswitch_1c
    sget-boolean v1, Lcom/android/server/wm/WmCoverState;->sIsEnabled:Z

    if-eqz v1, :cond_9

    .line 6
    invoke-static {}, Lcom/android/server/wm/WmCoverState;->getInstance()Lcom/android/server/wm/WmCoverState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WmCoverState;->getWindowLayerFromTypeLw(I)I

    move-result v0

    if-eq v0, v2, :cond_9

    return v0

    :cond_9
    return v21

    :pswitch_1d
    if-eqz p1, :cond_a

    move v2, v14

    goto :goto_3

    :cond_a
    const/16 v2, 0x9

    :goto_3
    return v2

    :pswitch_1e
    return v22

    :pswitch_1f
    return v19

    :pswitch_20
    return v7

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_1e
        :pswitch_1e
        :pswitch_5
        :pswitch_1e
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x82f -> :sswitch_13
        0x833 -> :sswitch_12
        0x8b1 -> :sswitch_11
        0x8b2 -> :sswitch_10
        0x8b3 -> :sswitch_3
        0x8b4 -> :sswitch_f
        0x8de -> :sswitch_e
        0x8df -> :sswitch_e
        0x8e2 -> :sswitch_d
        0x8e8 -> :sswitch_c
        0x8e9 -> :sswitch_d
        0x961 -> :sswitch_c
        0x962 -> :sswitch_b
        0x963 -> :sswitch_a
        0x965 -> :sswitch_c
        0x966 -> :sswitch_9
        0x967 -> :sswitch_8
        0x968 -> :sswitch_7
        0x96b -> :sswitch_12
        0x96c -> :sswitch_b
        0x96e -> :sswitch_6
        0x96f -> :sswitch_10
        0x97e -> :sswitch_9
        0x97f -> :sswitch_5
        0x988 -> :sswitch_d
        0x989 -> :sswitch_d
        0x98a -> :sswitch_4
        0xa28 -> :sswitch_3
        0xa29 -> :sswitch_f
        0xa2d -> :sswitch_f
        0xa2e -> :sswitch_4
        0xa3a -> :sswitch_5
        0xa3b -> :sswitch_8
        0xa3c -> :sswitch_14
        0xa3d -> :sswitch_e
        0xa3e -> :sswitch_2
        0xa3f -> :sswitch_4
        0xa40 -> :sswitch_5
        0xa46 -> :sswitch_1
        0xa47 -> :sswitch_0
        0xa48 -> :sswitch_9
    .end sparse-switch
.end method

.method public static getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .locals 3

    .line 1
    check-cast p0, Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-object v0, p0

    .line 7
    :goto_0
    move-object v1, v0

    .line 8
    :cond_0
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 22
    .line 23
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 24
    .line 25
    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-static {v0, p0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZZ)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0
.end method
