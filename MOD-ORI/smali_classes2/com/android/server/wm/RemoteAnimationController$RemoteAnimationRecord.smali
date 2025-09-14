.class public final Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

.field public mBackdropColor:I

.field public mMode:I

.field public final mShowBackdrop:Z

.field public final mStartBounds:Landroid/graphics/Rect;

.field public mTarget:Landroid/view/RemoteAnimationTarget;

.field public mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

.field public final mWindowContainer:Lcom/android/server/wm/WindowContainer;

.field public final synthetic this$0:Lcom/android/server/wm/RemoteAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 14

    .line 1
    move-object v8, p0

    .line 2
    move-object v9, p1

    .line 3
    move-object/from16 v10, p6

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v9, v8, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    .line 9
    .line 10
    const/4 v11, 0x0

    .line 11
    iput-object v11, v8, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 12
    .line 13
    const/4 v12, 0x0

    .line 14
    iput v12, v8, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mBackdropColor:I

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    iput v0, v8, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mMode:I

    .line 18
    .line 19
    move-object/from16 v0, p2

    .line 20
    .line 21
    iput-object v0, v8, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 22
    .line 23
    move/from16 v13, p7

    .line 24
    .line 25
    iput-boolean v13, v8, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mShowBackdrop:Z

    .line 26
    .line 27
    if-eqz v10, :cond_0

    .line 28
    .line 29
    new-instance v6, Landroid/graphics/Rect;

    .line 30
    .line 31
    invoke-direct {v6, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 32
    .line 33
    .line 34
    iput-object v6, v8, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mStartBounds:Landroid/graphics/Rect;

    .line 35
    .line 36
    new-instance v11, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 37
    .line 38
    move-object v0, v11

    .line 39
    move-object v1, p1

    .line 40
    move-object v2, p0

    .line 41
    move-object/from16 v3, p3

    .line 42
    .line 43
    move-object/from16 v4, p4

    .line 44
    .line 45
    move-object/from16 v5, p5

    .line 46
    .line 47
    move/from16 v7, p7

    .line 48
    .line 49
    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;-><init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 50
    .line 51
    .line 52
    iput-object v11, v8, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 53
    .line 54
    if-eqz p8, :cond_1

    .line 55
    .line 56
    iget-object v0, v9, Lcom/android/server/wm/RemoteAnimationController;->mRemoteAnimationAdapter:Landroid/view/RemoteAnimationAdapter;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getChangeNeedsSnapshot()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    new-instance v4, Landroid/graphics/Rect;

    .line 65
    .line 66
    invoke-direct {v4, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, v12, v12}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 70
    .line 71
    .line 72
    new-instance v11, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 73
    .line 74
    new-instance v3, Landroid/graphics/Point;

    .line 75
    .line 76
    invoke-direct {v3, v12, v12}, Landroid/graphics/Point;-><init>(II)V

    .line 77
    .line 78
    .line 79
    new-instance v6, Landroid/graphics/Rect;

    .line 80
    .line 81
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 82
    .line 83
    .line 84
    move-object v0, v11

    .line 85
    move-object v1, p1

    .line 86
    move-object v2, p0

    .line 87
    move-object/from16 v5, p6

    .line 88
    .line 89
    move/from16 v7, p7

    .line 90
    .line 91
    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;-><init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 92
    .line 93
    .line 94
    iput-object v11, v8, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    new-instance v10, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 98
    .line 99
    new-instance v6, Landroid/graphics/Rect;

    .line 100
    .line 101
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 102
    .line 103
    .line 104
    move-object v0, v10

    .line 105
    move-object v1, p1

    .line 106
    move-object v2, p0

    .line 107
    move-object/from16 v3, p3

    .line 108
    .line 109
    move-object/from16 v4, p4

    .line 110
    .line 111
    move-object/from16 v5, p5

    .line 112
    .line 113
    move/from16 v7, p7

    .line 114
    .line 115
    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;-><init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 116
    .line 117
    .line 118
    iput-object v10, v8, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 119
    .line 120
    iput-object v11, v8, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mStartBounds:Landroid/graphics/Rect;

    .line 121
    .line 122
    :cond_1
    :goto_0
    return-void
.end method
