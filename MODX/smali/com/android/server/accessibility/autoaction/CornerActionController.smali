.class public final Lcom/android/server/accessibility/autoaction/CornerActionController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final POPUP_DIRECTION:[I

.field public static final POPUP_GRAVITY:[I

.field public static final TTS_CORNER:[I

.field public static final mGestureActionFlag:Ljava/util/HashMap;


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public final mCornerActionTypeObserver:Lcom/android/server/accessibility/autoaction/CornerActionController$1;

.field public mCornerActions:[Ljava/lang/String;

.field public mDragAction:Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;

.field public mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

.field public mGestureAction:Ljava/lang/String;

.field public mIsAnimating:Z

.field public final mParams:Landroid/view/WindowManager$LayoutParams;

.field public mScreenHeight:I

.field public mScreenWidth:I

.field public mTipAnchorView:Landroid/view/View;

.field public mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

.field public final mUserId:I

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v2

    .line 13
    const-string/jumbo v3, "double_click"

    .line 16
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const/4 v2, 0x2

    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v3

    .line 24
    const-string/jumbo v4, "zoom_in"

    .line 27
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const/4 v3, 0x4

    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v3

    .line 35
    const-string/jumbo v4, "zoom_out"

    .line 38
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const/16 v3, 0x8

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v3

    .line 47
    const-string/jumbo v4, "swipe_left"

    .line 50
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const/16 v3, 0x10

    .line 55
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v3

    .line 59
    const-string/jumbo v4, "swipe_right"

    .line 62
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const/16 v3, 0x20

    .line 67
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v3

    .line 71
    const-string/jumbo v4, "swipe_up"

    .line 74
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/16 v3, 0x40

    .line 79
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v3

    .line 83
    const-string/jumbo v4, "swipe_down"

    .line 86
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const/16 v3, 0x80

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object v3

    .line 95
    const-string/jumbo v4, "click_and_hold"

    .line 98
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const/16 v3, 0x100

    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    move-result-object v3

    .line 107
    const-string/jumbo v4, "drag"

    .line 110
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const/16 v3, 0x200

    .line 115
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v3

    .line 119
    const-string/jumbo v4, "drag_and_drop"

    .line 122
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const/16 v0, 0x53

    .line 127
    const/16 v3, 0x55

    .line 129
    const/16 v4, 0x33

    .line 131
    const/16 v5, 0x35

    .line 133
    filled-new-array {v4, v5, v0, v3}, [I

    .line 136
    move-result-object v0

    .line 137
    sput-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->POPUP_GRAVITY:[I

    .line 139
    const/4 v0, 0x3

    .line 140
    const/4 v3, 0x0

    .line 141
    filled-new-array {v0, v2, v1, v3}, [I

    .line 144
    move-result-object v0

    .line 145
    sput-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->POPUP_DIRECTION:[I

    .line 147
    const v0, 0x104010f

    .line 150
    const v1, 0x1040110

    .line 153
    const v2, 0x1040112

    .line 156
    const v3, 0x1040113

    .line 159
    filled-new-array {v2, v3, v0, v1}, [I

    .line 162
    move-result-object v0

    .line 163
    sput-object v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->TTS_CORNER:[I

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mIsAnimating:Z

    .line 10
    new-instance v1, Lcom/android/server/accessibility/autoaction/CornerActionController$1;

    .line 12
    new-instance v2, Landroid/os/Handler;

    .line 14
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 17
    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/autoaction/CornerActionController$1;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionController;Landroid/os/Handler;)V

    .line 20
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    move-result-object v2

    .line 26
    iput-object v2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContentResolver:Landroid/content/ContentResolver;

    .line 28
    iput p2, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mUserId:I

    .line 30
    const-string/jumbo v3, "window"

    .line 33
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/view/WindowManager;

    .line 39
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mWindowManager:Landroid/view/WindowManager;

    .line 41
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 43
    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 48
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 50
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 52
    const/16 p0, 0x7d6

    .line 54
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 56
    const/16 p0, 0x20

    .line 58
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 60
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 62
    const/high16 v3, 0x20000

    .line 64
    or-int/2addr p0, v3

    .line 65
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 67
    const-string p0, "accessibility_corner_actions"

    .line 69
    invoke-static {p0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {v2, p0, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 76
    const/4 p0, 0x1

    .line 77
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/autoaction/CornerActionController$1;->onChange(Z)V

    .line 80
    return-void
.end method


# virtual methods
.method public final clearDuration()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mDurationProgress:Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v1, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda0;

    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, v0, v2}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;I)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/autoaction/CornerActionCircleCue;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mIsAnimating:Z

    .line 20
    :cond_0
    return-void
.end method

.method public final getCorner(IFF)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 3
    const-string/jumbo v1, "display"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 20
    new-instance v0, Landroid/view/DisplayInfo;

    .line 22
    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 28
    iget p1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 30
    iput p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenWidth:I

    .line 32
    iget p1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 34
    iput p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    cmpl-float v0, p2, p1

    .line 39
    const/high16 v1, 0x42200000    # 40.0f

    .line 41
    if-nez v0, :cond_1

    .line 43
    cmpg-float v2, p3, v1

    .line 45
    if-ltz v2, :cond_2

    .line 47
    :cond_1
    cmpg-float v2, p2, v1

    .line 49
    if-gez v2, :cond_3

    .line 51
    cmpl-float v3, p3, p1

    .line 53
    if-nez v3, :cond_3

    .line 55
    :cond_2
    const/4 p0, 0x0

    .line 56
    return p0

    .line 57
    :cond_3
    iget v3, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenWidth:I

    .line 59
    add-int/lit8 v4, v3, -0x1

    .line 61
    int-to-float v4, v4

    .line 62
    cmpl-float v4, p2, v4

    .line 64
    const/4 v5, 0x1

    .line 65
    if-nez v4, :cond_4

    .line 67
    cmpg-float v4, p3, v1

    .line 69
    if-ltz v4, :cond_5

    .line 71
    :cond_4
    int-to-float v4, v3

    .line 72
    sub-float/2addr v4, p2

    .line 73
    cmpg-float v4, v4, v1

    .line 75
    if-gez v4, :cond_6

    .line 77
    cmpl-float p1, p3, p1

    .line 79
    if-nez p1, :cond_6

    .line 81
    :cond_5
    return v5

    .line 82
    :cond_6
    if-gez v2, :cond_7

    .line 84
    iget p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    .line 86
    sub-int/2addr p1, v5

    .line 87
    int-to-float p1, p1

    .line 88
    cmpl-float p1, p3, p1

    .line 90
    if-eqz p1, :cond_8

    .line 92
    :cond_7
    if-nez v0, :cond_9

    .line 94
    iget p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    .line 96
    int-to-float p1, p1

    .line 97
    sub-float/2addr p1, p3

    .line 98
    cmpg-float p1, p1, v1

    .line 100
    if-gez p1, :cond_9

    .line 102
    :cond_8
    const/4 p0, 0x2

    .line 103
    return p0

    .line 104
    :cond_9
    int-to-float p1, v3

    .line 105
    sub-float/2addr p1, p2

    .line 106
    cmpg-float p1, p1, v1

    .line 108
    if-gez p1, :cond_a

    .line 110
    iget p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    .line 112
    sub-int/2addr p1, v5

    .line 113
    int-to-float p1, p1

    .line 114
    cmpl-float p1, p3, p1

    .line 116
    if-eqz p1, :cond_b

    .line 118
    :cond_a
    sub-int/2addr v3, v5

    .line 119
    int-to-float p1, v3

    .line 120
    cmpl-float p1, p2, p1

    .line 122
    if-nez p1, :cond_c

    .line 124
    iget p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    .line 126
    int-to-float p0, p0

    .line 127
    sub-float/2addr p0, p3

    .line 128
    cmpg-float p0, p0, v1

    .line 130
    if-gez p0, :cond_c

    .line 132
    :cond_b
    const/4 p0, 0x3

    .line 133
    return p0

    .line 134
    :cond_c
    const/4 p0, -0x1

    .line 135
    return p0
.end method

.method public final getDisplayContext(I)Landroid/content/Context;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 3
    const-string/jumbo v1, "display"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_0

    .line 20
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 22
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {v1, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 27
    move-result-object p1

    .line 28
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 33
    move-result-object p0

    .line 34
    invoke-direct {v0, p1, p0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 37
    return-object v0

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 40
    return-object p0
.end method

.method public final performCornerAction(IILjava/lang/String;)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p2

    .line 5
    move-object/from16 v2, p3

    .line 7
    const/16 v4, 0x9

    .line 9
    const/16 v5, 0x8

    .line 11
    const/4 v6, 0x7

    .line 12
    const/4 v7, 0x6

    .line 13
    const/4 v8, 0x5

    .line 14
    const/4 v9, 0x4

    .line 15
    const/4 v10, 0x3

    .line 16
    const/4 v11, 0x2

    .line 17
    const/4 v12, 0x1

    .line 18
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    const/4 v13, 0x0

    .line 22
    iget v14, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mUserId:I

    .line 24
    const/4 v15, -0x1

    .line 25
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    .line 28
    move-result v16

    .line 29
    sparse-switch v16, :sswitch_data_0

    .line 32
    :goto_0
    move v3, v15

    .line 33
    goto/16 :goto_1

    .line 35
    :sswitch_0
    const-string/jumbo v3, "double_click"

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_0

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/16 v3, 0xa

    .line 47
    goto/16 :goto_1

    .line 49
    :sswitch_1
    const-string/jumbo v3, "swipe_right"

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    move v3, v4

    .line 60
    goto/16 :goto_1

    .line 62
    :sswitch_2
    const-string/jumbo v3, "zoom_out"

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_2

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    move v3, v5

    .line 73
    goto/16 :goto_1

    .line 75
    :sswitch_3
    const-string/jumbo v3, "swipe_left"

    .line 78
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result v3

    .line 82
    if-nez v3, :cond_3

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    move v3, v6

    .line 86
    goto :goto_1

    .line 87
    :sswitch_4
    const-string/jumbo v3, "swipe_down"

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result v3

    .line 94
    if-nez v3, :cond_4

    .line 96
    goto :goto_0

    .line 97
    :cond_4
    move v3, v7

    .line 98
    goto :goto_1

    .line 99
    :sswitch_5
    const-string/jumbo v3, "drag_and_drop"

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_5

    .line 108
    goto :goto_0

    .line 109
    :cond_5
    move v3, v8

    .line 110
    goto :goto_1

    .line 111
    :sswitch_6
    const-string/jumbo v3, "drag"

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    move-result v3

    .line 118
    if-nez v3, :cond_6

    .line 120
    goto :goto_0

    .line 121
    :cond_6
    move v3, v9

    .line 122
    goto :goto_1

    .line 123
    :sswitch_7
    const-string/jumbo v3, "swipe_up"

    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result v3

    .line 130
    if-nez v3, :cond_7

    .line 132
    goto :goto_0

    .line 133
    :cond_7
    move v3, v10

    .line 134
    goto :goto_1

    .line 135
    :sswitch_8
    const-string/jumbo v3, "zoom_in"

    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    move-result v3

    .line 142
    if-nez v3, :cond_8

    .line 144
    goto :goto_0

    .line 145
    :cond_8
    move v3, v11

    .line 146
    goto :goto_1

    .line 147
    :sswitch_9
    const-string/jumbo v3, "pause_resume_auto_click"

    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    move-result v3

    .line 154
    if-nez v3, :cond_9

    .line 156
    goto :goto_0

    .line 157
    :cond_9
    move v3, v12

    .line 158
    goto :goto_1

    .line 159
    :sswitch_a
    const-string/jumbo v3, "click_and_hold"

    .line 162
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    move-result v3

    .line 166
    if-nez v3, :cond_a

    .line 168
    goto/16 :goto_0

    .line 170
    :cond_a
    move v3, v13

    .line 171
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 174
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 176
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    .line 179
    move-result v1

    .line 180
    sparse-switch v1, :sswitch_data_1

    .line 183
    :goto_2
    move v3, v15

    .line 184
    goto/16 :goto_3

    .line 186
    :sswitch_b
    const-string/jumbo v1, "open_close_quick_panel"

    .line 189
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    move-result v1

    .line 193
    if-nez v1, :cond_b

    .line 195
    goto :goto_2

    .line 196
    :cond_b
    const/16 v3, 0x13

    .line 198
    goto/16 :goto_3

    .line 200
    :sswitch_c
    const-string/jumbo v1, "ringtone_volume_down"

    .line 203
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    move-result v1

    .line 207
    if-nez v1, :cond_c

    .line 209
    goto :goto_2

    .line 210
    :cond_c
    const/16 v3, 0x12

    .line 212
    goto/16 :goto_3

    .line 214
    :sswitch_d
    const-string/jumbo v1, "media_volume_up"

    .line 217
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    move-result v1

    .line 221
    if-nez v1, :cond_d

    .line 223
    goto :goto_2

    .line 224
    :cond_d
    const/16 v3, 0x11

    .line 226
    goto/16 :goto_3

    .line 228
    :sswitch_e
    const-string/jumbo v1, "recents"

    .line 231
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 234
    move-result v1

    .line 235
    if-nez v1, :cond_e

    .line 237
    goto :goto_2

    .line 238
    :cond_e
    const/16 v3, 0x10

    .line 240
    goto/16 :goto_3

    .line 242
    :sswitch_f
    const-string/jumbo v1, "send_sos_messages"

    .line 245
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    move-result v1

    .line 249
    if-nez v1, :cond_f

    .line 251
    goto :goto_2

    .line 252
    :cond_f
    const/16 v3, 0xf

    .line 254
    goto/16 :goto_3

    .line 256
    :sswitch_10
    const-string/jumbo v1, "power_off_menu"

    .line 259
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 262
    move-result v1

    .line 263
    if-nez v1, :cond_10

    .line 265
    goto :goto_2

    .line 266
    :cond_10
    const/16 v3, 0xe

    .line 268
    goto/16 :goto_3

    .line 270
    :sswitch_11
    const-string/jumbo v1, "media_volume_down"

    .line 273
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    move-result v1

    .line 277
    if-nez v1, :cond_11

    .line 279
    goto :goto_2

    .line 280
    :cond_11
    const/16 v3, 0xd

    .line 282
    goto/16 :goto_3

    .line 284
    :sswitch_12
    const-string/jumbo v1, "increase_brightness"

    .line 287
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    move-result v1

    .line 291
    if-nez v1, :cond_12

    .line 293
    goto :goto_2

    .line 294
    :cond_12
    const/16 v3, 0xc

    .line 296
    goto/16 :goto_3

    .line 298
    :sswitch_13
    const-string/jumbo v1, "none"

    .line 301
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    move-result v1

    .line 305
    if-nez v1, :cond_13

    .line 307
    goto :goto_2

    .line 308
    :cond_13
    const/16 v3, 0xb

    .line 310
    goto/16 :goto_3

    .line 312
    :sswitch_14
    const-string/jumbo v1, "home"

    .line 315
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    move-result v1

    .line 319
    if-nez v1, :cond_14

    .line 321
    goto/16 :goto_2

    .line 323
    :cond_14
    const/16 v3, 0xa

    .line 325
    goto/16 :goto_3

    .line 327
    :sswitch_15
    const-string v1, "back"

    .line 329
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 332
    move-result v1

    .line 333
    if-nez v1, :cond_15

    .line 335
    goto/16 :goto_2

    .line 337
    :cond_15
    move v3, v4

    .line 338
    goto/16 :goto_3

    .line 340
    :sswitch_16
    const-string/jumbo v1, "screen_shot"

    .line 343
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    move-result v1

    .line 347
    if-nez v1, :cond_16

    .line 349
    goto/16 :goto_2

    .line 351
    :cond_16
    move v3, v5

    .line 352
    goto/16 :goto_3

    .line 354
    :sswitch_17
    const-string/jumbo v1, "reduce_brightness"

    .line 357
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 360
    move-result v1

    .line 361
    if-nez v1, :cond_17

    .line 363
    goto/16 :goto_2

    .line 365
    :cond_17
    move v3, v6

    .line 366
    goto :goto_3

    .line 367
    :sswitch_18
    const-string/jumbo v1, "screen_off"

    .line 370
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    move-result v1

    .line 374
    if-nez v1, :cond_18

    .line 376
    goto/16 :goto_2

    .line 378
    :cond_18
    move v3, v7

    .line 379
    goto :goto_3

    .line 380
    :sswitch_19
    const-string/jumbo v1, "sound_vibrate_mute"

    .line 383
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 386
    move-result v1

    .line 387
    if-nez v1, :cond_19

    .line 389
    goto/16 :goto_2

    .line 391
    :cond_19
    move v3, v8

    .line 392
    goto :goto_3

    .line 393
    :sswitch_1a
    const-string/jumbo v1, "screen_rotation"

    .line 396
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 399
    move-result v1

    .line 400
    if-nez v1, :cond_1a

    .line 402
    goto/16 :goto_2

    .line 404
    :cond_1a
    move v3, v9

    .line 405
    goto :goto_3

    .line 406
    :sswitch_1b
    const-string/jumbo v1, "ringtone_volume_up"

    .line 409
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 412
    move-result v1

    .line 413
    if-nez v1, :cond_1b

    .line 415
    goto/16 :goto_2

    .line 417
    :cond_1b
    move v3, v10

    .line 418
    goto :goto_3

    .line 419
    :sswitch_1c
    const-string/jumbo v1, "talk_to_bixby"

    .line 422
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 425
    move-result v1

    .line 426
    if-nez v1, :cond_1c

    .line 428
    goto/16 :goto_2

    .line 430
    :cond_1c
    move v3, v11

    .line 431
    goto :goto_3

    .line 432
    :sswitch_1d
    const-string v1, "accessibility_button"

    .line 434
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 437
    move-result v1

    .line 438
    if-nez v1, :cond_1d

    .line 440
    goto/16 :goto_2

    .line 442
    :cond_1d
    move v3, v12

    .line 443
    goto :goto_3

    .line 444
    :sswitch_1e
    const-string/jumbo v1, "open_close_notifications"

    .line 447
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 450
    move-result v1

    .line 451
    if-nez v1, :cond_1e

    .line 453
    goto/16 :goto_2

    .line 455
    :cond_1e
    move v3, v13

    .line 456
    :goto_3
    packed-switch v3, :pswitch_data_1

    .line 459
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 461
    const-string v1, "Wrong Corner Action Type"

    .line 463
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 466
    throw v0

    .line 467
    :pswitch_0
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseQuickPanel;

    .line 469
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 472
    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseQuickPanel;->mContext:Landroid/content/Context;

    .line 474
    goto/16 :goto_4

    .line 476
    :pswitch_1
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;

    .line 478
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 481
    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;->mContext:Landroid/content/Context;

    .line 483
    iput v14, v1, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;->mUserId:I

    .line 485
    goto :goto_4

    .line 486
    :pswitch_2
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/PowerOffMenu;

    .line 488
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 491
    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/PowerOffMenu;->mContext:Landroid/content/Context;

    .line 493
    goto :goto_4

    .line 494
    :pswitch_3
    const/4 v1, 0x0

    .line 495
    goto :goto_4

    .line 496
    :pswitch_4
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;

    .line 498
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 501
    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;->mContext:Landroid/content/Context;

    .line 503
    goto :goto_4

    .line 504
    :pswitch_5
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;

    .line 506
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 509
    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->mContext:Landroid/content/Context;

    .line 511
    iput-object v2, v1, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->mType:Ljava/lang/String;

    .line 513
    iput v14, v1, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->mUserId:I

    .line 515
    goto :goto_4

    .line 516
    :pswitch_6
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenOff;

    .line 518
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 521
    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenOff;->mContext:Landroid/content/Context;

    .line 523
    goto :goto_4

    .line 524
    :pswitch_7
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;

    .line 526
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mContext:Landroid/content/Context;

    .line 531
    iput v14, v1, Lcom/android/server/accessibility/autoaction/actiontype/ScreenRotation;->mUserId:I

    .line 533
    goto :goto_4

    .line 534
    :pswitch_8
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;

    .line 536
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 539
    const-string v3, "audio"

    .line 541
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 544
    move-result-object v0

    .line 545
    check-cast v0, Landroid/media/AudioManager;

    .line 547
    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mAudioManager:Landroid/media/AudioManager;

    .line 549
    iput-object v2, v1, Lcom/android/server/accessibility/autoaction/actiontype/SoundAction;->mType:Ljava/lang/String;

    .line 551
    goto :goto_4

    .line 552
    :pswitch_9
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;

    .line 554
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 557
    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;->mContext:Landroid/content/Context;

    .line 559
    iput v14, v1, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;->mUserId:I

    .line 561
    goto :goto_4

    .line 562
    :pswitch_a
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;

    .line 564
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 567
    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mContext:Landroid/content/Context;

    .line 569
    iput-object v2, v1, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mType:Ljava/lang/String;

    .line 571
    iput v14, v1, Lcom/android/server/accessibility/autoaction/actiontype/NavigationBarAction;->mUserId:I

    .line 573
    goto :goto_4

    .line 574
    :pswitch_b
    new-instance v1, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseNotifications;

    .line 576
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 579
    iput-object v0, v1, Lcom/android/server/accessibility/autoaction/actiontype/OpenCloseNotifications;->mContext:Landroid/content/Context;

    .line 581
    :goto_4
    if-eqz v1, :cond_1f

    .line 583
    move/from16 v3, p1

    .line 585
    invoke-virtual {v1, v3}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->performCornerAction(I)V

    .line 588
    :cond_1f
    return v13

    .line 589
    :pswitch_c
    return v10

    .line 590
    :pswitch_d
    move/from16 v3, p1

    .line 592
    iput-object v2, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureAction:Ljava/lang/String;

    .line 594
    iget-object v4, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContentResolver:Landroid/content/ContentResolver;

    .line 596
    const-string v5, "accessibility_corner_action_tip_shown"

    .line 598
    invoke-static {v4, v5, v13, v14}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 601
    move-result v4

    .line 602
    sget-object v6, Lcom/android/server/accessibility/autoaction/CornerActionController;->mGestureActionFlag:Ljava/util/HashMap;

    .line 604
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    move-result-object v6

    .line 608
    check-cast v6, Ljava/lang/Integer;

    .line 610
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 613
    move-result v6

    .line 614
    and-int v7, v4, v6

    .line 616
    if-nez v7, :cond_22

    .line 618
    new-instance v7, Landroid/view/View;

    .line 620
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/accessibility/autoaction/CornerActionController;->getDisplayContext(I)Landroid/content/Context;

    .line 623
    move-result-object v3

    .line 624
    invoke-direct {v7, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 627
    iput-object v7, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipAnchorView:Landroid/view/View;

    .line 629
    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 631
    sget-object v8, Lcom/android/server/accessibility/autoaction/CornerActionController;->POPUP_GRAVITY:[I

    .line 633
    aget v8, v8, v1

    .line 635
    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 637
    iget-object v8, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mWindowManager:Landroid/view/WindowManager;

    .line 639
    invoke-interface {v8, v7, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 642
    new-instance v3, Lcom/samsung/android/widget/SemTipPopup;

    .line 644
    iget-object v7, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipAnchorView:Landroid/view/View;

    .line 646
    invoke-direct {v3, v7}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;)V

    .line 649
    iput-object v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 651
    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContext:Landroid/content/Context;

    .line 653
    invoke-static/range {p3 .. p3}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;->getTitleResId(Ljava/lang/String;)I

    .line 656
    move-result v2

    .line 657
    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 660
    move-result-object v2

    .line 661
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 664
    move-result-object v2

    .line 665
    const v7, 0x1040111

    .line 668
    invoke-virtual {v3, v7, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 671
    move-result-object v2

    .line 672
    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 674
    invoke-virtual {v3, v2}, Lcom/samsung/android/widget/SemTipPopup;->setMessage(Ljava/lang/CharSequence;)V

    .line 677
    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 679
    invoke-virtual {v3, v12}, Lcom/samsung/android/widget/SemTipPopup;->setExpanded(Z)V

    .line 682
    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 684
    rem-int/lit8 v7, v1, 0x2

    .line 686
    if-nez v7, :cond_20

    .line 688
    move v7, v13

    .line 689
    goto :goto_5

    .line 690
    :cond_20
    iget v7, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenWidth:I

    .line 692
    :goto_5
    if-ge v1, v11, :cond_21

    .line 694
    move v8, v13

    .line 695
    goto :goto_6

    .line 696
    :cond_21
    iget v8, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mScreenHeight:I

    .line 698
    :goto_6
    invoke-virtual {v3, v7, v8}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    .line 701
    new-array v3, v12, [Z

    .line 703
    aput-boolean v13, v3, v13

    .line 705
    new-instance v7, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda0;

    .line 707
    invoke-direct {v7, v0, v3}, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionController;[Z)V

    .line 710
    iget-object v8, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 712
    new-instance v9, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda1;

    .line 714
    invoke-direct {v9, v0, v3}, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionController;[Z)V

    .line 717
    invoke-virtual {v8, v9}, Lcom/samsung/android/widget/SemTipPopup;->setOnDismissListener(Lcom/samsung/android/widget/SemTipPopup$OnDismissListener;)V

    .line 720
    iget-object v3, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    .line 722
    invoke-virtual {v3}, Lcom/samsung/android/widget/SemTipPopup;->semGetBalloonPopupWindow()Landroid/widget/PopupWindow;

    .line 725
    move-result-object v3

    .line 726
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 729
    move-result-object v3

    .line 730
    invoke-virtual {v3, v12}, Landroid/view/View;->setFocusable(Z)V

    .line 733
    invoke-virtual {v3, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 736
    new-instance v2, Lcom/android/server/accessibility/autoaction/CornerActionController$2;

    .line 738
    invoke-direct {v2, v0}, Lcom/android/server/accessibility/autoaction/CornerActionController$2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionController;)V

    .line 741
    invoke-virtual {v3, v2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 744
    new-instance v2, Landroid/os/Handler;

    .line 746
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 749
    move-result-object v3

    .line 750
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 753
    new-instance v3, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda2;

    .line 755
    invoke-direct {v3, v0, v1}, Lcom/android/server/accessibility/autoaction/CornerActionController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionController;I)V

    .line 758
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 761
    const-wide/16 v8, 0x1388

    .line 763
    invoke-virtual {v2, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 766
    or-int v1, v4, v6

    .line 768
    iget-object v0, v0, Lcom/android/server/accessibility/autoaction/CornerActionController;->mContentResolver:Landroid/content/ContentResolver;

    .line 770
    invoke-static {v0, v5, v1, v14}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 773
    :cond_22
    return v12

    .line 774
    nop

    .line 775
    :sswitch_data_0
    .sparse-switch
        -0x643f1902 -> :sswitch_a
        -0x5513dbbf -> :sswitch_9
        -0x68ea6ef -> :sswitch_8
        -0x54cce40 -> :sswitch_7
        0x2f2d34 -> :sswitch_6
        0x19319b02 -> :sswitch_5
        0x1aa61287 -> :sswitch_4
        0x1aa98dec -> :sswitch_3
        0x34b9e0e2 -> :sswitch_2
        0x3ade90d7 -> :sswitch_1
        0x51e7c39a -> :sswitch_0
    .end sparse-switch

    .line 821
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    .line 847
    :sswitch_data_1
    .sparse-switch
        -0x7ec2e294 -> :sswitch_1e
        -0x74e910bd -> :sswitch_1d
        -0x682f8f69 -> :sswitch_1c
        -0x55236e7d -> :sswitch_1b
        -0x5173c60f -> :sswitch_1a
        -0x18e94be7 -> :sswitch_19
        -0x18db78e4 -> :sswitch_18
        -0x1479af36 -> :sswitch_17
        -0x291c913 -> :sswitch_16
        0x2e04e7 -> :sswitch_15
        0x30f4df -> :sswitch_14
        0x33af38 -> :sswitch_13
        0x1443e66e -> :sswitch_12
        0x1af46ecc -> :sswitch_11
        0x2d9a2c29 -> :sswitch_10
        0x3f33e64b -> :sswitch_f
        0x40828578 -> :sswitch_e
        0x4505db45 -> :sswitch_d
        0x65f68d8a -> :sswitch_c
        0x670f86b6 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_a
        :pswitch_3
        :pswitch_5
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method
