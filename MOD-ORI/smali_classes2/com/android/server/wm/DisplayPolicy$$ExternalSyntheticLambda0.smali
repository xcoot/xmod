.class public final synthetic Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/TriFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowState;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowState;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowState;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowState;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    check-cast p1, Lcom/android/server/wm/DisplayFrames;

    .line 8
    .line 9
    check-cast p2, Lcom/android/server/wm/WindowContainer;

    .line 10
    .line 11
    check-cast p3, Landroid/graphics/Rect;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 14
    .line 15
    iget v2, p1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->forRotation(I)Landroid/view/WindowManager$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v2, v0, Landroid/view/WindowManager$LayoutParams;->providedInsets:[Landroid/view/InsetsFrameProvider;

    .line 22
    .line 23
    aget-object v1, v2, v1

    .line 24
    .line 25
    iget-object v2, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/view/InsetsFrameProvider;->getSource()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x0

    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    if-eq v3, v5, :cond_2

    .line 38
    .line 39
    const/4 p2, 0x2

    .line 40
    if-eq v3, p2, :cond_1

    .line 41
    .line 42
    const/4 p2, 0x3

    .line 43
    if-eq v3, p2, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v1}, Landroid/view/InsetsFrameProvider;->getArbitraryRectangle()Landroid/graphics/Rect;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget p2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 55
    .line 56
    and-int/lit16 p2, p2, 0x1000

    .line 57
    .line 58
    if-eqz p2, :cond_4

    .line 59
    .line 60
    move v4, v5

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    invoke-virtual {p3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    :goto_0
    const/4 p2, -0x1

    .line 74
    if-ne p0, p2, :cond_5

    .line 75
    .line 76
    invoke-virtual {v1}, Landroid/view/InsetsFrameProvider;->getInsetsSize()Landroid/graphics/Insets;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    goto :goto_1

    .line 81
    :cond_5
    invoke-virtual {v1}, Landroid/view/InsetsFrameProvider;->getInsetsSizeOverrides()[Landroid/view/InsetsFrameProvider$InsetsSizeOverride;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    aget-object p0, p2, p0

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/view/InsetsFrameProvider$InsetsSizeOverride;->getInsetsSize()Landroid/graphics/Insets;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    :goto_1
    invoke-virtual {v1}, Landroid/view/InsetsFrameProvider;->getMinimalInsetsSizeInDisplayCutoutSafe()Landroid/graphics/Insets;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    if-eqz p2, :cond_6

    .line 96
    .line 97
    sget-object p2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect2:Landroid/graphics/Rect;

    .line 98
    .line 99
    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 100
    .line 101
    .line 102
    :cond_6
    invoke-static {p3, p0}, Lcom/android/server/wm/DisplayPolicy;->calculateInsetsFrame(Landroid/graphics/Rect;Landroid/graphics/Insets;)V

    .line 103
    .line 104
    .line 105
    if-eqz v4, :cond_7

    .line 106
    .line 107
    if-eqz p0, :cond_7

    .line 108
    .line 109
    sget-object p0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 110
    .line 111
    invoke-static {p1, v2, p3, p0}, Landroid/view/WindowLayout;->extendFrameByCutout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 112
    .line 113
    .line 114
    :cond_7
    invoke-virtual {v1}, Landroid/view/InsetsFrameProvider;->getMinimalInsetsSizeInDisplayCutoutSafe()Landroid/graphics/Insets;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    if-eqz p0, :cond_8

    .line 119
    .line 120
    sget-object p0, Lcom/android/server/wm/DisplayPolicy;->sTmpRect2:Landroid/graphics/Rect;

    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/view/InsetsFrameProvider;->getMinimalInsetsSizeInDisplayCutoutSafe()Landroid/graphics/Insets;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-static {p0, p2}, Lcom/android/server/wm/DisplayPolicy;->calculateInsetsFrame(Landroid/graphics/Rect;Landroid/graphics/Insets;)V

    .line 127
    .line 128
    .line 129
    sget-object p2, Lcom/android/server/wm/DisplayPolicy;->sTmpRect:Landroid/graphics/Rect;

    .line 130
    .line 131
    invoke-static {p1, v2, p0, p2}, Landroid/view/WindowLayout;->extendFrameByCutout(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_8

    .line 139
    .line 140
    invoke-virtual {p3, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 141
    .line 142
    .line 143
    :cond_8
    invoke-virtual {v1}, Landroid/view/InsetsFrameProvider;->getFlags()I

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    return-object p0
.end method
