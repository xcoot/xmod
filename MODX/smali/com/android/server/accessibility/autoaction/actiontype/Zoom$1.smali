.class public final Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/actiontype/Zoom;

.field public final synthetic val$displayId:I

.field public final synthetic val$ratio:I

.field public final synthetic val$x:I

.field public final synthetic val$y:I


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/actiontype/Zoom;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/Zoom;

    .line 6
    iput p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->val$x:I

    .line 8
    iput p3, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->val$y:I

    .line 10
    iput p4, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->val$ratio:I

    .line 12
    iput p5, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->val$displayId:I

    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->this$0:Lcom/android/server/accessibility/autoaction/actiontype/Zoom;

    .line 3
    iget v1, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->val$x:I

    .line 5
    iget v2, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->val$y:I

    .line 7
    iget v3, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->val$ratio:I

    .line 9
    int-to-float v3, v3

    .line 10
    iget v6, p0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom$1;->val$displayId:I

    .line 12
    iget-object p0, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mContext:Landroid/content/Context;

    .line 14
    const-string/jumbo v4, "display"

    .line 17
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 23
    invoke-virtual {p0, v6}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 26
    move-result-object p0

    .line 27
    new-instance v4, Landroid/view/DisplayInfo;

    .line 29
    invoke-direct {v4}, Landroid/view/DisplayInfo;-><init>()V

    .line 32
    invoke-virtual {p0, v4}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 35
    iget p0, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 37
    iget-object v4, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    move-result-object v4

    .line 43
    const v5, 0x10505ff

    .line 46
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 49
    move-result v4

    .line 50
    mul-int/lit8 v5, v4, 0x2

    .line 52
    sub-int v5, p0, v5

    .line 54
    int-to-float v7, v5

    .line 55
    mul-float/2addr v7, v3

    .line 56
    const/high16 v3, 0x42c80000    # 100.0f

    .line 58
    div-float/2addr v7, v3

    .line 59
    const/high16 v3, 0x40000000    # 2.0f

    .line 61
    sub-float/2addr v7, v3

    .line 62
    float-to-int v3, v7

    .line 63
    add-int/lit8 v5, v5, -0x2

    .line 65
    if-le v3, v5, :cond_0

    .line 67
    move v3, v5

    .line 68
    :cond_0
    add-int/lit8 v5, v1, -0x32

    .line 70
    add-int/lit8 v7, v1, 0x32

    .line 72
    const-string/jumbo v1, "com.samsung.android.messaging"

    .line 75
    invoke-virtual {v0}, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->getTopPackageName()Ljava/lang/String;

    .line 78
    move-result-object v8

    .line 79
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_1

    .line 85
    move v1, v5

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    div-int/lit8 v1, v3, 0x2

    .line 89
    sub-int v1, v5, v1

    .line 91
    :goto_0
    div-int/lit8 v3, v3, 0x2

    .line 93
    add-int/2addr v3, v7

    .line 94
    if-ge v1, v4, :cond_2

    .line 96
    sub-int/2addr v1, v4

    .line 97
    add-int/lit8 v1, v1, 0x1

    .line 99
    sub-int/2addr v3, v1

    .line 100
    add-int/lit8 v1, v4, -0x1

    .line 102
    :cond_2
    sub-int/2addr p0, v4

    .line 103
    if-le v3, p0, :cond_3

    .line 105
    sub-int/2addr v3, p0

    .line 106
    add-int/lit8 v3, v3, -0x1

    .line 108
    sub-int/2addr v1, v3

    .line 109
    add-int/lit8 p0, p0, 0x1

    .line 111
    :goto_1
    move v3, v1

    .line 112
    goto :goto_2

    .line 113
    :cond_3
    move p0, v3

    .line 114
    goto :goto_1

    .line 115
    :goto_2
    iget-object v1, v0, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->mType:Ljava/lang/String;

    .line 117
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    const-string/jumbo v4, "zoom_in"

    .line 123
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    move-result v4

    .line 127
    if-nez v4, :cond_5

    .line 129
    const-string/jumbo v4, "zoom_out"

    .line 132
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_4

    .line 138
    move v1, v2

    .line 139
    move v2, v3

    .line 140
    move v3, v5

    .line 141
    move v4, p0

    .line 142
    move v5, v7

    .line 143
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->generateTouchEvent(IIIIII)V

    .line 146
    goto :goto_3

    .line 147
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 149
    const-string v0, "Wrong Zoom Type"

    .line 151
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 154
    throw p0

    .line 155
    :cond_5
    move v1, v2

    .line 156
    move v2, v5

    .line 157
    move v4, v7

    .line 158
    move v5, p0

    .line 159
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accessibility/autoaction/actiontype/Zoom;->generateTouchEvent(IIIIII)V

    .line 162
    :goto_3
    return-void
.end method
