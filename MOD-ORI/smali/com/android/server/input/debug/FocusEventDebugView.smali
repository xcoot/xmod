.class public final Lcom/android/server/input/debug/FocusEventDebugView;
.super Landroid/widget/RelativeLayout;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDm:Landroid/util/DisplayMetrics;

.field public mFocusEventDebugGlobalMonitor:Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;

.field public final mOuterPadding:I

.field public mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

.field public final mPressedKeys:Ljava/util/Map;

.field public mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

.field public mRotaryInputGraphView:Lcom/android/server/input/debug/RotaryInputGraphView;

.field public final mRotaryInputGraphViewFactory:Ljava/util/function/Supplier;

.field public mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

.field public final mRotaryInputValueViewFactory:Ljava/util/function/Supplier;

.field public final mService:Lcom/android/server/input/InputManagerService;


# direct methods
.method public static $r8$lambda$NOfikC3SqQwvKrlgqWnqfisz50A(Lcom/android/server/input/debug/FocusEventDebugView;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move v3, v2

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v3, v1

    .line 10
    :goto_0
    if-ne p1, v3, :cond_1

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_1
    if-nez p1, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    new-instance p1, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 31
    .line 32
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-direct {p1, v0}, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 43
    .line 44
    const/16 v0, 0x55

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Landroid/widget/HorizontalScrollView;

    .line 55
    .line 56
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-direct {p1, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda5;

    .line 70
    .line 71
    invoke-direct {v0, p1}, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda5;-><init>(Landroid/widget/HorizontalScrollView;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v2}, Landroid/widget/HorizontalScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 78
    .line 79
    .line 80
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 81
    .line 82
    const/4 v3, -0x2

    .line 83
    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 84
    .line 85
    .line 86
    const/16 v4, 0xc

    .line 87
    .line 88
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 89
    .line 90
    .line 91
    const/16 v5, 0xb

    .line 92
    .line 93
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    .line 98
    .line 99
    new-instance v0, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 100
    .line 101
    iget-object v5, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 102
    .line 103
    invoke-direct {v0, v5}, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;-><init>(Landroid/content/Context;)V

    .line 104
    .line 105
    .line 106
    iput-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 112
    .line 113
    const/16 v2, 0x53

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 119
    .line 120
    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 124
    .line 125
    .line 126
    const/16 v2, 0x9

    .line 127
    .line 128
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getId()I

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 139
    .line 140
    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    .line 142
    .line 143
    :goto_1
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/input/debug/FocusEventDebugView;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeys:Ljava/util/Map;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mService:Lcom/android/server/input/InputManagerService;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueViewFactory:Ljava/util/function/Supplier;

    .line 18
    .line 19
    iput-object p4, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphViewFactory:Ljava/util/function/Supplier;

    .line 20
    .line 21
    iget-object p2, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iput-object p2, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mDm:Landroid/util/DisplayMetrics;

    .line 32
    .line 33
    const/high16 p3, 0x41800000    # 16.0f

    .line 34
    .line 35
    invoke-static {p1, p3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    float-to-int p1, p1

    .line 40
    iput p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mOuterPadding:I

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/FocusEventDebugView;->handleKeyEvent(Landroid/view/KeyEvent;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final handleKeyEvent(Landroid/view/KeyEvent;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 2
    .line 3
    if-eqz v0, :cond_13

    .line 4
    .line 5
    new-instance v0, Landroid/util/Pair;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {v1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 40
    .line 41
    :goto_0
    iget-object v2, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeys:Ljava/util/Map;

    .line 42
    .line 43
    check-cast v2, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyView;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    const-string v4, "FocusEventDebugView"

    .line 56
    .line 57
    const/4 v5, 0x1

    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    if-eq v3, v5, :cond_1

    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :cond_1
    if-nez v2, :cond_2

    .line 65
    .line 66
    new-instance p0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v0, "Got key up for "

    .line 69
    .line 70
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v0, " that was not tracked as being down."

    .line 85
    .line 86
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :cond_2
    iget-object p0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeys:Ljava/util/Map;

    .line 99
    .line 100
    check-cast p0, Ljava/util/HashMap;

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    const/4 p0, 0x0

    .line 109
    invoke-virtual {v2, p0}, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyView;->setHighlighted(Z)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2}, Landroid/widget/TextView;->clearAnimation()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    const-wide/16 v2, 0x3e8

    .line 125
    .line 126
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 131
    .line 132
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    new-instance v0, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer$$ExternalSyntheticLambda0;

    .line 140
    .line 141
    invoke-direct {v0, v1}, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_2

    .line 152
    .line 153
    :cond_3
    if-eqz v2, :cond_5

    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 156
    .line 157
    .line 158
    move-result p0

    .line 159
    if-nez p0, :cond_4

    .line 160
    .line 161
    new-instance p0, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v0, "Got key down for "

    .line 164
    .line 165
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v0, " that was already tracked as being down."

    .line 180
    .line 181
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    goto/16 :goto_2

    .line 192
    .line 193
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 194
    .line 195
    .line 196
    goto/16 :goto_2

    .line 197
    .line 198
    :cond_5
    new-instance v2, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyView;

    .line 199
    .line 200
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 201
    .line 202
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    const/4 v6, 0x3

    .line 207
    if-eq v4, v6, :cond_11

    .line 208
    .line 209
    const/4 v6, 0x4

    .line 210
    if-eq v4, v6, :cond_10

    .line 211
    .line 212
    const/16 v6, 0x3d

    .line 213
    .line 214
    if-eq v4, v6, :cond_f

    .line 215
    .line 216
    const/16 v6, 0x3e

    .line 217
    .line 218
    if-eq v4, v6, :cond_e

    .line 219
    .line 220
    const/16 v6, 0x42

    .line 221
    .line 222
    if-eq v4, v6, :cond_d

    .line 223
    .line 224
    const/16 v6, 0x43

    .line 225
    .line 226
    if-eq v4, v6, :cond_c

    .line 227
    .line 228
    const/16 v6, 0x55

    .line 229
    .line 230
    if-eq v4, v6, :cond_b

    .line 231
    .line 232
    const/16 v6, 0xa0

    .line 233
    .line 234
    if-eq v4, v6, :cond_d

    .line 235
    .line 236
    const/16 v6, 0x138

    .line 237
    .line 238
    if-eq v4, v6, :cond_a

    .line 239
    .line 240
    const/16 v6, 0x6f

    .line 241
    .line 242
    if-eq v4, v6, :cond_9

    .line 243
    .line 244
    const/16 v6, 0x70

    .line 245
    .line 246
    if-eq v4, v6, :cond_8

    .line 247
    .line 248
    packed-switch v4, :pswitch_data_0

    .line 249
    .line 250
    .line 251
    packed-switch v4, :pswitch_data_1

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    .line 255
    .line 256
    .line 257
    move-result v4

    .line 258
    if-eqz v4, :cond_7

    .line 259
    .line 260
    const/high16 v6, -0x80000000

    .line 261
    .line 262
    and-int/2addr v6, v4

    .line 263
    if-eqz v6, :cond_6

    .line 264
    .line 265
    const v6, 0x7fffffff

    .line 266
    .line 267
    .line 268
    and-int/2addr v4, v6

    .line 269
    invoke-static {v4}, Landroid/view/KeyCharacterMap;->getCombiningChar(I)I

    .line 270
    .line 271
    .line 272
    move-result v4

    .line 273
    new-instance v6, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    const-string/jumbo v7, "\u25cc"

    .line 276
    .line 277
    .line 278
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    int-to-char v4, v4

    .line 282
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    goto :goto_1

    .line 294
    :cond_6
    int-to-char v4, v4

    .line 295
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    goto :goto_1

    .line 300
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    const-string v6, "KEYCODE_"

    .line 309
    .line 310
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 311
    .line 312
    .line 313
    move-result v6

    .line 314
    if-eqz v6, :cond_12

    .line 315
    .line 316
    const/16 v6, 0x8

    .line 317
    .line 318
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v4

    .line 322
    goto :goto_1

    .line 323
    :pswitch_0
    const-string/jumbo v4, "\u2198"

    .line 324
    .line 325
    .line 326
    goto :goto_1

    .line 327
    :pswitch_1
    const-string/jumbo v4, "\u2197"

    .line 328
    .line 329
    .line 330
    goto :goto_1

    .line 331
    :pswitch_2
    const-string/jumbo v4, "\u2199"

    .line 332
    .line 333
    .line 334
    goto :goto_1

    .line 335
    :pswitch_3
    const-string/jumbo v4, "\u2196"

    .line 336
    .line 337
    .line 338
    goto :goto_1

    .line 339
    :pswitch_4
    const-string/jumbo v4, "\u2192"

    .line 340
    .line 341
    .line 342
    goto :goto_1

    .line 343
    :pswitch_5
    const-string/jumbo v4, "\u2190"

    .line 344
    .line 345
    .line 346
    goto :goto_1

    .line 347
    :pswitch_6
    const-string/jumbo v4, "\u2193"

    .line 348
    .line 349
    .line 350
    goto :goto_1

    .line 351
    :pswitch_7
    const-string/jumbo v4, "\u2191"

    .line 352
    .line 353
    .line 354
    goto :goto_1

    .line 355
    :cond_8
    const-string/jumbo v4, "\u2326"

    .line 356
    .line 357
    .line 358
    goto :goto_1

    .line 359
    :cond_9
    const-string/jumbo v4, "esc"

    .line 360
    .line 361
    .line 362
    goto :goto_1

    .line 363
    :cond_a
    const-string/jumbo v4, "\u25a1"

    .line 364
    .line 365
    .line 366
    goto :goto_1

    .line 367
    :cond_b
    const-string/jumbo v4, "\u23ef"

    .line 368
    .line 369
    .line 370
    goto :goto_1

    .line 371
    :cond_c
    const-string/jumbo v4, "\u232b"

    .line 372
    .line 373
    .line 374
    goto :goto_1

    .line 375
    :cond_d
    const-string/jumbo v4, "\u23ce"

    .line 376
    .line 377
    .line 378
    goto :goto_1

    .line 379
    :cond_e
    const-string/jumbo v4, "\u2423"

    .line 380
    .line 381
    .line 382
    goto :goto_1

    .line 383
    :cond_f
    const-string/jumbo v4, "\u21e5"

    .line 384
    .line 385
    .line 386
    goto :goto_1

    .line 387
    :cond_10
    const-string/jumbo v4, "\u25c1"

    .line 388
    .line 389
    .line 390
    goto :goto_1

    .line 391
    :cond_11
    const-string/jumbo v4, "\u25ef"

    .line 392
    .line 393
    .line 394
    :cond_12
    :goto_1
    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 398
    .line 399
    .line 400
    move-result-object v3

    .line 401
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 402
    .line 403
    .line 404
    move-result-object v3

    .line 405
    const/high16 v6, 0x41800000    # 16.0f

    .line 406
    .line 407
    invoke-static {v5, v6, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 408
    .line 409
    .line 410
    move-result v6

    .line 411
    float-to-int v6, v6

    .line 412
    const/high16 v7, 0x41000000    # 8.0f

    .line 413
    .line 414
    invoke-static {v5, v7, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 415
    .line 416
    .line 417
    move-result v7

    .line 418
    float-to-int v7, v7

    .line 419
    const/high16 v8, 0x42000000    # 32.0f

    .line 420
    .line 421
    invoke-static {v5, v8, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 422
    .line 423
    .line 424
    move-result v8

    .line 425
    float-to-int v8, v8

    .line 426
    const/4 v9, 0x2

    .line 427
    const/high16 v10, 0x41400000    # 12.0f

    .line 428
    .line 429
    invoke-static {v9, v10, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 430
    .line 431
    .line 432
    move-result v3

    .line 433
    float-to-int v3, v3

    .line 434
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    .line 436
    .line 437
    const/16 v4, 0x11

    .line 438
    .line 439
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 443
    .line 444
    .line 445
    int-to-float v3, v3

    .line 446
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 447
    .line 448
    .line 449
    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 450
    .line 451
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 452
    .line 453
    .line 454
    const v3, 0x108035d

    .line 455
    .line 456
    .line 457
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v2, v6, v7, v6, v7}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v2, v5}, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyView;->setHighlighted(Z)V

    .line 464
    .line 465
    .line 466
    iget-object p0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeys:Ljava/util/Map;

    .line 467
    .line 468
    check-cast p0, Ljava/util/HashMap;

    .line 469
    .line 470
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 474
    .line 475
    .line 476
    move-result p0

    .line 477
    iget-object v0, v1, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;->mPressedKeyLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 478
    .line 479
    invoke-virtual {v1, v2, p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 483
    .line 484
    .line 485
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->recycle()V

    .line 486
    .line 487
    .line 488
    :cond_13
    return-void

    .line 489
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    :pswitch_data_1
    .packed-switch 0x10c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleRotaryInput(Landroid/view/MotionEvent;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    const/16 v0, 0x1a

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

    .line 12
    .line 13
    iget-object v2, v1, Lcom/android/server/input/debug/RotaryInputValueView;->mUpdateActivityStatusCallback:Lcom/android/server/input/debug/RotaryInputValueView$$ExternalSyntheticLambda0;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    iget v2, v1, Lcom/android/server/input/debug/RotaryInputValueView;->mScaledVerticalScrollFactor:F

    .line 19
    .line 20
    mul-float/2addr v2, v0

    .line 21
    invoke-virtual {v1, v2}, Lcom/android/server/input/debug/RotaryInputValueView;->getFormattedValue(F)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    const v2, -0xbdf0d8

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    sget-object v3, Lcom/android/server/input/debug/RotaryInputValueView;->ACTIVE_BACKGROUND_FILTER:Landroid/graphics/ColorFilter;

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, v1, Lcom/android/server/input/debug/RotaryInputValueView;->mUpdateActivityStatusCallback:Lcom/android/server/input/debug/RotaryInputValueView$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    const-wide/16 v3, 0xfa

    .line 46
    .line 47
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphView:Lcom/android/server/input/debug/RotaryInputGraphView;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    :goto_0
    iget-object v3, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    .line 57
    .line 58
    iget v4, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mSize:I

    .line 59
    .line 60
    iget-object v5, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mValues:[Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    .line 61
    .line 62
    const/16 v6, 0x190

    .line 63
    .line 64
    if-lez v4, :cond_0

    .line 65
    .line 66
    rsub-int v7, v4, 0x191

    .line 67
    .line 68
    iget v8, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mLastIndex:I

    .line 69
    .line 70
    add-int/2addr v8, v7

    .line 71
    rem-int/2addr v8, v6

    .line 72
    aget-object v7, v5, v8

    .line 73
    .line 74
    iget-wide v7, v7, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mTime:J

    .line 75
    .line 76
    sub-long v7, v1, v7

    .line 77
    .line 78
    sget-wide v9, Lcom/android/server/input/debug/RotaryInputGraphView;->MAX_SHOWN_TIME_INTERVAL:J

    .line 79
    .line 80
    cmp-long v7, v7, v9

    .line 81
    .line 82
    if-lez v7, :cond_0

    .line 83
    .line 84
    add-int/lit8 v4, v4, -0x1

    .line 85
    .line 86
    iput v4, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mSize:I

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    const/4 v7, 0x0

    .line 90
    if-nez v4, :cond_1

    .line 91
    .line 92
    iput v7, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    .line 93
    .line 94
    :cond_1
    iget v8, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mScaledVerticalScrollFactor:F

    .line 95
    .line 96
    mul-float/2addr v0, v8

    .line 97
    if-nez v4, :cond_2

    .line 98
    .line 99
    move v5, v7

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    iget v8, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mLastIndex:I

    .line 102
    .line 103
    aget-object v5, v5, v8

    .line 104
    .line 105
    iget v5, v5, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mPos:F

    .line 106
    .line 107
    :goto_1
    add-float/2addr v5, v0

    .line 108
    iget v0, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mLastIndex:I

    .line 109
    .line 110
    const/4 v8, 0x1

    .line 111
    add-int/2addr v0, v8

    .line 112
    rem-int/2addr v0, v6

    .line 113
    iput v0, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mLastIndex:I

    .line 114
    .line 115
    iget-object v9, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mValues:[Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    .line 116
    .line 117
    aget-object v10, v9, v0

    .line 118
    .line 119
    if-nez v10, :cond_3

    .line 120
    .line 121
    new-instance v10, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    .line 122
    .line 123
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 124
    .line 125
    .line 126
    iput v5, v10, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mPos:F

    .line 127
    .line 128
    iput-wide v1, v10, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mTime:J

    .line 129
    .line 130
    aput-object v10, v9, v0

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_3
    iput v5, v10, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mPos:F

    .line 134
    .line 135
    iput-wide v1, v10, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mTime:J

    .line 136
    .line 137
    :goto_2
    if-eq v4, v6, :cond_4

    .line 138
    .line 139
    add-int/2addr v4, v8

    .line 140
    iput v4, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mSize:I

    .line 141
    .line 142
    :cond_4
    iget v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    .line 143
    .line 144
    sub-float v0, v5, v0

    .line 145
    .line 146
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    iget v1, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterToBorderDistance:F

    .line 151
    .line 152
    sub-float/2addr v0, v1

    .line 153
    cmpl-float v1, v0, v7

    .line 154
    .line 155
    if-lez v1, :cond_6

    .line 156
    .line 157
    iget v1, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    .line 158
    .line 159
    sub-float/2addr v5, v1

    .line 160
    cmpg-float v2, v5, v7

    .line 161
    .line 162
    if-gez v2, :cond_5

    .line 163
    .line 164
    const/4 v8, -0x1

    .line 165
    :cond_5
    int-to-float v2, v8

    .line 166
    mul-float/2addr v2, v0

    .line 167
    add-float/2addr v2, v1

    .line 168
    iput v2, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    .line 169
    .line 170
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 174
    .line 175
    .line 176
    :cond_7
    return-void
.end method

.method public handleUpdateShowRotaryInput(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    if-nez p1, :cond_2

    .line 12
    .line 13
    iget-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mFocusEventDebugGlobalMonitor:Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/InputEventReceiver;->dispose()V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mFocusEventDebugGlobalMonitor:Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphView:Lcom/android/server/input/debug/RotaryInputGraphView;

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphView:Lcom/android/server/input/debug/RotaryInputGraphView;

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    new-instance p1, Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mService:Lcom/android/server/input/InputManagerService;

    .line 39
    .line 40
    invoke-direct {p1, p0, v0}, Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;-><init>(Lcom/android/server/input/debug/FocusEventDebugView;Lcom/android/server/input/InputManagerService;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mFocusEventDebugGlobalMonitor:Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;

    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueViewFactory:Ljava/util/function/Supplier;

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/android/server/input/debug/RotaryInputValueView;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

    .line 54
    .line 55
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 56
    .line 57
    const/4 v0, -0x2

    .line 58
    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 59
    .line 60
    .line 61
    const/16 v0, 0xe

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 64
    .line 65
    .line 66
    const/16 v0, 0xc

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

    .line 72
    .line 73
    invoke-virtual {p0, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphViewFactory:Ljava/util/function/Supplier;

    .line 77
    .line 78
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lcom/android/server/input/debug/RotaryInputGraphView;

    .line 83
    .line 84
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphView:Lcom/android/server/input/debug/RotaryInputGraphView;

    .line 85
    .line 86
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mDm:Landroid/util/DisplayMetrics;

    .line 89
    .line 90
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 91
    .line 92
    int-to-double v0, v0

    .line 93
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 94
    .line 95
    mul-double/2addr v0, v2

    .line 96
    double-to-int v0, v0

    .line 97
    const/4 v1, -0x1

    .line 98
    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 99
    .line 100
    .line 101
    const/16 v0, 0xd

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphView:Lcom/android/server/input/debug/RotaryInputGraphView;

    .line 107
    .line 108
    invoke-virtual {p0, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isRound()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getRadius()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v1

    .line 21
    :goto_0
    const/4 v2, 0x2

    .line 22
    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isRound()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Landroid/view/RoundedCorner;->getRadius()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    :cond_1
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    :cond_2
    iget v2, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mOuterPadding:I

    .line 61
    .line 62
    add-int/2addr v0, v2

    .line 63
    invoke-virtual {p0, v2, v2, v2, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setClipToPadding(Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 70
    .line 71
    .line 72
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method
