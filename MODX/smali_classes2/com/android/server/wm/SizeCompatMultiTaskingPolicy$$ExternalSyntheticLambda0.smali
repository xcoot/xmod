.class public final synthetic Lcom/android/server/wm/SizeCompatMultiTaskingPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/graphics/Rect;

.field public final synthetic f$1:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/SizeCompatMultiTaskingPolicy$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Rect;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/SizeCompatMultiTaskingPolicy$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Rect;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SizeCompatMultiTaskingPolicy$$ExternalSyntheticLambda0;->f$0:Landroid/graphics/Rect;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/SizeCompatMultiTaskingPolicy$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/Rect;

    .line 4
    .line 5
    check-cast p1, Landroid/graphics/Rect;

    .line 6
    .line 7
    check-cast p2, Landroid/graphics/Rect;

    .line 8
    .line 9
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 10
    .line 11
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 12
    .line 13
    invoke-virtual {p2, v1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-lt v2, v1, :cond_0

    .line 29
    .line 30
    iget p1, p0, Landroid/graphics/Rect;->left:I

    .line 31
    .line 32
    sub-int v3, v1, v2

    .line 33
    .line 34
    shr-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    add-int/2addr p1, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget v3, p2, Landroid/graphics/Rect;->right:I

    .line 39
    .line 40
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 41
    .line 42
    if-ge v3, v4, :cond_1

    .line 43
    .line 44
    move p1, v4

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 47
    .line 48
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 49
    .line 50
    if-le v3, v4, :cond_2

    .line 51
    .line 52
    sub-int p1, v4, v2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    int-to-float v4, v1

    .line 56
    int-to-float p1, p1

    .line 57
    div-float/2addr v4, p1

    .line 58
    int-to-float p1, v3

    .line 59
    mul-float/2addr p1, v4

    .line 60
    float-to-int p1, p1

    .line 61
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-lt v4, v3, :cond_3

    .line 74
    .line 75
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 76
    .line 77
    sub-int v5, v3, v4

    .line 78
    .line 79
    shr-int/lit8 v5, v5, 0x1

    .line 80
    .line 81
    add-int/2addr v0, v5

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    .line 84
    .line 85
    iget v6, p0, Landroid/graphics/Rect;->top:I

    .line 86
    .line 87
    if-ge v5, v6, :cond_4

    .line 88
    .line 89
    move v0, v6

    .line 90
    goto :goto_1

    .line 91
    :cond_4
    iget v5, p2, Landroid/graphics/Rect;->top:I

    .line 92
    .line 93
    iget v6, p0, Landroid/graphics/Rect;->bottom:I

    .line 94
    .line 95
    if-le v5, v6, :cond_5

    .line 96
    .line 97
    sub-int v0, v6, v4

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_5
    int-to-float v6, v3

    .line 101
    int-to-float v0, v0

    .line 102
    div-float/2addr v6, v0

    .line 103
    int-to-float v0, v5

    .line 104
    mul-float/2addr v0, v6

    .line 105
    float-to-int v0, v0

    .line 106
    :goto_1
    iget v5, p0, Landroid/graphics/Rect;->left:I

    .line 107
    .line 108
    if-lt p1, v5, :cond_6

    .line 109
    .line 110
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 111
    .line 112
    if-lt v0, v5, :cond_6

    .line 113
    .line 114
    add-int v5, p1, v2

    .line 115
    .line 116
    iget v6, p0, Landroid/graphics/Rect;->right:I

    .line 117
    .line 118
    if-gt v5, v6, :cond_6

    .line 119
    .line 120
    add-int v5, v0, v4

    .line 121
    .line 122
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 123
    .line 124
    if-le v5, p0, :cond_7

    .line 125
    .line 126
    :cond_6
    sub-int/2addr v1, v2

    .line 127
    shr-int/lit8 p1, v1, 0x1

    .line 128
    .line 129
    sub-int/2addr v3, v4

    .line 130
    shr-int/lit8 v0, v3, 0x1

    .line 131
    .line 132
    :cond_7
    invoke-virtual {p2, p1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 133
    .line 134
    .line 135
    return-void
.end method
