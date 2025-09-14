.class public final synthetic Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(ILandroid/os/IBinder;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;->f$0:I

    .line 5
    .line 6
    iput p3, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;->f$2:Landroid/os/IBinder;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;->f$0:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt$$ExternalSyntheticLambda2;->f$2:Landroid/os/IBinder;

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 8
    .line 9
    new-instance v2, Landroid/graphics/Rect;

    .line 10
    .line 11
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 15
    .line 16
    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/4 v5, 0x0

    .line 23
    if-nez v4, :cond_0

    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_0
    and-int/lit8 v4, v3, 0x10

    .line 28
    .line 29
    if-eqz v4, :cond_1

    .line 30
    .line 31
    goto/16 :goto_2

    .line 32
    .line 33
    :cond_1
    new-instance v4, Landroid/graphics/Region;

    .line 34
    .line 35
    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_2

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mWindowFrames:Lcom/android/server/wm/WindowFrames;

    .line 49
    .line 50
    iget-object v4, v4, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 51
    .line 52
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 53
    .line 54
    .line 55
    iget v4, p1, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 56
    .line 57
    const/4 v6, 0x1

    .line 58
    if-ne v4, v6, :cond_3

    .line 59
    .line 60
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 61
    .line 62
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .line 63
    .line 64
    iget v8, v7, Landroid/graphics/Rect;->left:I

    .line 65
    .line 66
    add-int/2addr v4, v8

    .line 67
    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 68
    .line 69
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 70
    .line 71
    iget v8, v7, Landroid/graphics/Rect;->top:I

    .line 72
    .line 73
    add-int/2addr v4, v8

    .line 74
    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 75
    .line 76
    iget v4, v2, Landroid/graphics/Rect;->right:I

    .line 77
    .line 78
    iget v8, v7, Landroid/graphics/Rect;->right:I

    .line 79
    .line 80
    sub-int/2addr v4, v8

    .line 81
    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 82
    .line 83
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 84
    .line 85
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 86
    .line 87
    sub-int/2addr v4, v7

    .line 88
    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    const/4 v7, 0x2

    .line 92
    if-eq v4, v7, :cond_4

    .line 93
    .line 94
    const/4 v7, 0x3

    .line 95
    if-ne v4, v7, :cond_5

    .line 96
    .line 97
    :cond_4
    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 98
    .line 99
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 100
    .line 101
    iget v8, v7, Landroid/graphics/Rect;->left:I

    .line 102
    .line 103
    add-int/2addr v4, v8

    .line 104
    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 105
    .line 106
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 107
    .line 108
    iget v8, v7, Landroid/graphics/Rect;->top:I

    .line 109
    .line 110
    add-int/2addr v4, v8

    .line 111
    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 112
    .line 113
    iget v4, v2, Landroid/graphics/Rect;->right:I

    .line 114
    .line 115
    iget v8, v7, Landroid/graphics/Rect;->right:I

    .line 116
    .line 117
    sub-int/2addr v4, v8

    .line 118
    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 119
    .line 120
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 121
    .line 122
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    .line 123
    .line 124
    sub-int/2addr v4, v7

    .line 125
    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 126
    .line 127
    :cond_5
    :goto_0
    and-int/lit8 v3, v3, 0x28

    .line 128
    .line 129
    if-nez v3, :cond_6

    .line 130
    .line 131
    move v3, v6

    .line 132
    goto :goto_1

    .line 133
    :cond_6
    move v3, v5

    .line 134
    :goto_1
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_7

    .line 139
    .line 140
    if-eqz v3, :cond_8

    .line 141
    .line 142
    :cond_7
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 143
    .line 144
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-eq p1, p0, :cond_8

    .line 149
    .line 150
    move v5, v6

    .line 151
    :cond_8
    :goto_2
    return v5
.end method
