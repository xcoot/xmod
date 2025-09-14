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

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

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

    .line 12
    goto/16 :goto_1

    .line 14
    :cond_1
    if-nez p1, :cond_2

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 19
    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 22
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 27
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 29
    goto :goto_1

    .line 30
    :cond_2
    new-instance p1, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 32
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 34
    invoke-direct {p1, v0}, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 39
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 42
    iget-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 44
    const/16 v0, 0x55

    .line 46
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 49
    iget-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 51
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 54
    new-instance p1, Landroid/widget/HorizontalScrollView;

    .line 56
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 58
    invoke-direct {p1, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 61
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 63
    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    .line 66
    invoke-virtual {p1, v1}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 69
    new-instance v0, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda5;

    .line 71
    invoke-direct {v0, p1}, Lcom/android/server/input/debug/FocusEventDebugView$$ExternalSyntheticLambda5;-><init>(Landroid/widget/HorizontalScrollView;)V

    .line 74
    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 77
    invoke-virtual {p1, v2}, Landroid/widget/HorizontalScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 80
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 82
    const/4 v3, -0x2

    .line 83
    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 86
    const/16 v4, 0xc

    .line 88
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 91
    const/16 v5, 0xb

    .line 93
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 96
    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v0, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 101
    iget-object v5, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 103
    invoke-direct {v0, v5}, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;-><init>(Landroid/content/Context;)V

    .line 106
    iput-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 108
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 111
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 113
    const/16 v2, 0x53

    .line 115
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 118
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 120
    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 123
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 126
    const/16 v2, 0x9

    .line 128
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 131
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getId()I

    .line 134
    move-result p1

    .line 135
    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 138
    iget-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 140
    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    :goto_1
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/input/debug/FocusEventDebugView;

    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance p1, Ljava/util/HashMap;

    .line 6
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeys:Ljava/util/Map;

    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 15
    iput-object p2, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mService:Lcom/android/server/input/InputManagerService;

    .line 17
    iput-object p3, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueViewFactory:Ljava/util/function/Supplier;

    .line 19
    iput-object p4, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphViewFactory:Ljava/util/function/Supplier;

    .line 21
    iget-object p2, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 23
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 30
    move-result-object p2

    .line 31
    iput-object p2, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mDm:Landroid/util/DisplayMetrics;

    .line 33
    const/high16 p3, 0x41800000    # 16.0f

    .line 35
    invoke-static {p1, p3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 38
    move-result p1

    .line 39
    float-to-int p1, p1

    .line 40
    iput p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mOuterPadding:I

    .line 42
    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/input/debug/FocusEventDebugView;->handleKeyEvent(Landroid/view/KeyEvent;)V

    .line 4
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final handleKeyEvent(Landroid/view/KeyEvent;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 3
    if-eqz v0, :cond_13

    .line 5
    new-instance v0, Landroid/util/Pair;

    .line 7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v2

    .line 23
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 29
    move-result v1

    .line 30
    invoke-static {v1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedModifierContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeyContainer:Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;

    .line 41
    :goto_0
    iget-object v2, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeys:Ljava/util/Map;

    .line 43
    check-cast v2, Ljava/util/HashMap;

    .line 45
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyView;

    .line 51
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 54
    move-result v3

    .line 55
    const-string v4, "FocusEventDebugView"

    .line 57
    const/4 v5, 0x1

    .line 58
    if-eqz v3, :cond_3

    .line 60
    if-eq v3, v5, :cond_1

    .line 62
    goto/16 :goto_2

    .line 64
    :cond_1
    if-nez v2, :cond_2

    .line 66
    new-instance p0, Ljava/lang/StringBuilder;

    .line 68
    const-string v0, "Got key up for "

    .line 70
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 76
    move-result v0

    .line 77
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string v0, " that was not tracked as being down."

    .line 86
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p0

    .line 93
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    goto/16 :goto_2

    .line 98
    :cond_2
    iget-object p0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeys:Ljava/util/Map;

    .line 100
    check-cast p0, Ljava/util/HashMap;

    .line 102
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    const/4 p0, 0x0

    .line 109
    invoke-virtual {v2, p0}, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyView;->setHighlighted(Z)V

    .line 112
    invoke-virtual {v2}, Landroid/widget/TextView;->clearAnimation()V

    .line 115
    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 118
    move-result-object p0

    .line 119
    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 123
    move-result-object p0

    .line 124
    const-wide/16 v2, 0x3e8

    .line 126
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 129
    move-result-object p0

    .line 130
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    .line 132
    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 135
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 138
    move-result-object p0

    .line 139
    new-instance v0, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer$$ExternalSyntheticLambda0;

    .line 141
    invoke-direct {v0, v1}, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;)V

    .line 144
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 151
    goto/16 :goto_2

    .line 153
    :cond_3
    if-eqz v2, :cond_5

    .line 155
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 158
    move-result p0

    .line 159
    if-nez p0, :cond_4

    .line 161
    new-instance p0, Ljava/lang/StringBuilder;

    .line 163
    const-string v0, "Got key down for "

    .line 165
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 171
    move-result v0

    .line 172
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v0, " that was already tracked as being down."

    .line 181
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object p0

    .line 188
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    goto/16 :goto_2

    .line 193
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    goto/16 :goto_2

    .line 198
    :cond_5
    new-instance v2, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyView;

    .line 200
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 202
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 205
    move-result v4

    .line 206
    const/4 v6, 0x3

    .line 207
    if-eq v4, v6, :cond_11

    .line 209
    const/4 v6, 0x4

    .line 210
    if-eq v4, v6, :cond_10

    .line 212
    const/16 v6, 0x3d

    .line 214
    if-eq v4, v6, :cond_f

    .line 216
    const/16 v6, 0x3e

    .line 218
    if-eq v4, v6, :cond_e

    .line 220
    const/16 v6, 0x42

    .line 222
    if-eq v4, v6, :cond_d

    .line 224
    const/16 v6, 0x43

    .line 226
    if-eq v4, v6, :cond_c

    .line 228
    const/16 v6, 0x55

    .line 230
    if-eq v4, v6, :cond_b

    .line 232
    const/16 v6, 0xa0

    .line 234
    if-eq v4, v6, :cond_d

    .line 236
    const/16 v6, 0x138

    .line 238
    if-eq v4, v6, :cond_a

    .line 240
    const/16 v6, 0x6f

    .line 242
    if-eq v4, v6, :cond_9

    .line 244
    const/16 v6, 0x70

    .line 246
    if-eq v4, v6, :cond_8

    .line 248
    packed-switch v4, :pswitch_data_0

    .line 251
    packed-switch v4, :pswitch_data_1

    .line 254
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    .line 257
    move-result v4

    .line 258
    if-eqz v4, :cond_7

    .line 260
    const/high16 v6, -0x80000000

    .line 262
    and-int/2addr v6, v4

    .line 263
    if-eqz v6, :cond_6

    .line 265
    const v6, 0x7fffffff

    .line 268
    and-int/2addr v4, v6

    .line 269
    invoke-static {v4}, Landroid/view/KeyCharacterMap;->getCombiningChar(I)I

    .line 272
    move-result v4

    .line 273
    new-instance v6, Ljava/lang/StringBuilder;

    .line 275
    const-string/jumbo v7, "\u25cc"

    .line 278
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    int-to-char v4, v4

    .line 282
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 285
    move-result-object v4

    .line 286
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    move-result-object v4

    .line 293
    goto :goto_1

    .line 294
    :cond_6
    int-to-char v4, v4

    .line 295
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 298
    move-result-object v4

    .line 299
    goto :goto_1

    .line 300
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 303
    move-result v4

    .line 304
    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 307
    move-result-object v4

    .line 308
    const-string v6, "KEYCODE_"

    .line 310
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 313
    move-result v6

    .line 314
    if-eqz v6, :cond_12

    .line 316
    const/16 v6, 0x8

    .line 318
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 321
    move-result-object v4

    .line 322
    goto :goto_1

    .line 323
    :pswitch_0
    const-string/jumbo v4, "\u2198"

    .line 326
    goto :goto_1

    .line 327
    :pswitch_1
    const-string/jumbo v4, "\u2197"

    .line 330
    goto :goto_1

    .line 331
    :pswitch_2
    const-string/jumbo v4, "\u2199"

    .line 334
    goto :goto_1

    .line 335
    :pswitch_3
    const-string/jumbo v4, "\u2196"

    .line 338
    goto :goto_1

    .line 339
    :pswitch_4
    const-string/jumbo v4, "\u2192"

    .line 342
    goto :goto_1

    .line 343
    :pswitch_5
    const-string/jumbo v4, "\u2190"

    .line 346
    goto :goto_1

    .line 347
    :pswitch_6
    const-string/jumbo v4, "\u2193"

    .line 350
    goto :goto_1

    .line 351
    :pswitch_7
    const-string/jumbo v4, "\u2191"

    .line 354
    goto :goto_1

    .line 355
    :cond_8
    const-string/jumbo v4, "\u2326"

    .line 358
    goto :goto_1

    .line 359
    :cond_9
    const-string/jumbo v4, "esc"

    .line 362
    goto :goto_1

    .line 363
    :cond_a
    const-string/jumbo v4, "\u25a1"

    .line 366
    goto :goto_1

    .line 367
    :cond_b
    const-string/jumbo v4, "\u23ef"

    .line 370
    goto :goto_1

    .line 371
    :cond_c
    const-string/jumbo v4, "\u232b"

    .line 374
    goto :goto_1

    .line 375
    :cond_d
    const-string/jumbo v4, "\u23ce"

    .line 378
    goto :goto_1

    .line 379
    :cond_e
    const-string/jumbo v4, "\u2423"

    .line 382
    goto :goto_1

    .line 383
    :cond_f
    const-string/jumbo v4, "\u21e5"

    .line 386
    goto :goto_1

    .line 387
    :cond_10
    const-string/jumbo v4, "\u25c1"

    .line 390
    goto :goto_1

    .line 391
    :cond_11
    const-string/jumbo v4, "\u25ef"

    .line 394
    :cond_12
    :goto_1
    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 397
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 400
    move-result-object v3

    .line 401
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 404
    move-result-object v3

    .line 405
    const/high16 v6, 0x41800000    # 16.0f

    .line 407
    invoke-static {v5, v6, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 410
    move-result v6

    .line 411
    float-to-int v6, v6

    .line 412
    const/high16 v7, 0x41000000    # 8.0f

    .line 414
    invoke-static {v5, v7, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 417
    move-result v7

    .line 418
    float-to-int v7, v7

    .line 419
    const/high16 v8, 0x42000000    # 32.0f

    .line 421
    invoke-static {v5, v8, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 424
    move-result v8

    .line 425
    float-to-int v8, v8

    .line 426
    const/4 v9, 0x2

    .line 427
    const/high16 v10, 0x41400000    # 12.0f

    .line 429
    invoke-static {v9, v10, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 432
    move-result v3

    .line 433
    float-to-int v3, v3

    .line 434
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    const/16 v4, 0x11

    .line 439
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 442
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 445
    int-to-float v3, v3

    .line 446
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 449
    sget-object v3, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 451
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 454
    const v3, 0x108035d

    .line 457
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 460
    invoke-virtual {v2, v6, v7, v6, v7}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 463
    invoke-virtual {v2, v5}, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyView;->setHighlighted(Z)V

    .line 466
    iget-object p0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mPressedKeys:Ljava/util/Map;

    .line 468
    check-cast p0, Ljava/util/HashMap;

    .line 470
    invoke-virtual {p0, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 476
    move-result p0

    .line 477
    iget-object v0, v1, Lcom/android/server/input/debug/FocusEventDebugView$PressedKeyContainer;->mPressedKeyLayoutParams:Landroid/view/ViewGroup$MarginLayoutParams;

    .line 479
    invoke-virtual {v1, v2, p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 482
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->invalidate()V

    .line 485
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->recycle()V

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

    .line 3
    if-eqz v0, :cond_7

    .line 5
    const/16 v0, 0x1a

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

    .line 13
    iget-object v2, v1, Lcom/android/server/input/debug/RotaryInputValueView;->mUpdateActivityStatusCallback:Lcom/android/server/input/debug/RotaryInputValueView$$ExternalSyntheticLambda0;

    .line 15
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 18
    iget v2, v1, Lcom/android/server/input/debug/RotaryInputValueView;->mScaledVerticalScrollFactor:F

    .line 20
    mul-float/2addr v2, v0

    .line 21
    invoke-virtual {v1, v2}, Lcom/android/server/input/debug/RotaryInputValueView;->getFormattedValue(F)Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    const v2, -0xbdf0d8

    .line 31
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 37
    move-result-object v2

    .line 38
    sget-object v3, Lcom/android/server/input/debug/RotaryInputValueView;->ACTIVE_BACKGROUND_FILTER:Landroid/graphics/ColorFilter;

    .line 40
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 43
    iget-object v2, v1, Lcom/android/server/input/debug/RotaryInputValueView;->mUpdateActivityStatusCallback:Lcom/android/server/input/debug/RotaryInputValueView$$ExternalSyntheticLambda0;

    .line 45
    const-wide/16 v3, 0xfa

    .line 47
    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    iget-object p0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphView:Lcom/android/server/input/debug/RotaryInputGraphView;

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 55
    move-result-wide v1

    .line 56
    :goto_0
    iget-object v3, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mGraphValues:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    .line 58
    iget v4, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mSize:I

    .line 60
    iget-object v5, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mValues:[Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    .line 62
    const/16 v6, 0x190

    .line 64
    if-lez v4, :cond_0

    .line 66
    rsub-int v7, v4, 0x191

    .line 68
    iget v8, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mLastIndex:I

    .line 70
    add-int/2addr v8, v7

    .line 71
    rem-int/2addr v8, v6

    .line 72
    aget-object v7, v5, v8

    .line 74
    iget-wide v7, v7, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mTime:J

    .line 76
    sub-long v7, v1, v7

    .line 78
    sget-wide v9, Lcom/android/server/input/debug/RotaryInputGraphView;->MAX_SHOWN_TIME_INTERVAL:J

    .line 80
    cmp-long v7, v7, v9

    .line 82
    if-lez v7, :cond_0

    .line 84
    add-int/lit8 v4, v4, -0x1

    .line 86
    iput v4, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mSize:I

    .line 88
    goto :goto_0

    .line 89
    :cond_0
    const/4 v7, 0x0

    .line 90
    if-nez v4, :cond_1

    .line 92
    iput v7, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    .line 94
    :cond_1
    iget v8, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mScaledVerticalScrollFactor:F

    .line 96
    mul-float/2addr v0, v8

    .line 97
    if-nez v4, :cond_2

    .line 99
    move v5, v7

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    iget v8, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mLastIndex:I

    .line 103
    aget-object v5, v5, v8

    .line 105
    iget v5, v5, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mPos:F

    .line 107
    :goto_1
    add-float/2addr v5, v0

    .line 108
    iget v0, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mLastIndex:I

    .line 110
    const/4 v8, 0x1

    .line 111
    add-int/2addr v0, v8

    .line 112
    rem-int/2addr v0, v6

    .line 113
    iput v0, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mLastIndex:I

    .line 115
    iget-object v9, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mValues:[Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    .line 117
    aget-object v10, v9, v0

    .line 119
    if-nez v10, :cond_3

    .line 121
    new-instance v10, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    .line 123
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 126
    iput v5, v10, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mPos:F

    .line 128
    iput-wide v1, v10, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mTime:J

    .line 130
    aput-object v10, v9, v0

    .line 132
    goto :goto_2

    .line 133
    :cond_3
    iput v5, v10, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mPos:F

    .line 135
    iput-wide v1, v10, Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;->mTime:J

    .line 137
    :goto_2
    if-eq v4, v6, :cond_4

    .line 139
    add-int/2addr v4, v8

    .line 140
    iput v4, v3, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mSize:I

    .line 142
    :cond_4
    iget v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    .line 144
    sub-float v0, v5, v0

    .line 146
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 149
    move-result v0

    .line 150
    iget v1, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterToBorderDistance:F

    .line 152
    sub-float/2addr v0, v1

    .line 153
    cmpl-float v1, v0, v7

    .line 155
    if-lez v1, :cond_6

    .line 157
    iget v1, p0, Lcom/android/server/input/debug/RotaryInputGraphView;->mFrameCenterPosition:F

    .line 159
    sub-float/2addr v5, v1

    .line 160
    cmpg-float v2, v5, v7

    .line 162
    if-gez v2, :cond_5

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

    .line 170
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 176
    :cond_7
    return-void
.end method

.method public handleUpdateShowRotaryInput(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

    .line 3
    if-eqz v0, :cond_0

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

    .line 10
    return-void

    .line 11
    :cond_1
    if-nez p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mFocusEventDebugGlobalMonitor:Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;

    .line 15
    invoke-virtual {p1}, Landroid/view/InputEventReceiver;->dispose()V

    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mFocusEventDebugGlobalMonitor:Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;

    .line 21
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

    .line 23
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 26
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

    .line 28
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphView:Lcom/android/server/input/debug/RotaryInputGraphView;

    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 33
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphView:Lcom/android/server/input/debug/RotaryInputGraphView;

    .line 35
    return-void

    .line 36
    :cond_2
    new-instance p1, Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;

    .line 38
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mService:Lcom/android/server/input/InputManagerService;

    .line 40
    invoke-direct {p1, p0, v0}, Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;-><init>(Lcom/android/server/input/debug/FocusEventDebugView;Lcom/android/server/input/InputManagerService;)V

    .line 43
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mFocusEventDebugGlobalMonitor:Lcom/android/server/input/debug/FocusEventDebugGlobalMonitor;

    .line 45
    iget-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueViewFactory:Ljava/util/function/Supplier;

    .line 47
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/android/server/input/debug/RotaryInputValueView;

    .line 53
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

    .line 55
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 57
    const/4 v0, -0x2

    .line 58
    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 61
    const/16 v0, 0xe

    .line 63
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 66
    const/16 v0, 0xc

    .line 68
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 71
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputValueView:Lcom/android/server/input/debug/RotaryInputValueView;

    .line 73
    invoke-virtual {p0, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphViewFactory:Ljava/util/function/Supplier;

    .line 78
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Lcom/android/server/input/debug/RotaryInputGraphView;

    .line 84
    iput-object p1, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphView:Lcom/android/server/input/debug/RotaryInputGraphView;

    .line 86
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 88
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mDm:Landroid/util/DisplayMetrics;

    .line 90
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 92
    int-to-double v0, v0

    .line 93
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 95
    mul-double/2addr v0, v2

    .line 96
    double-to-int v0, v0

    .line 97
    const/4 v1, -0x1

    .line 98
    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 101
    const/16 v0, 0xd

    .line 103
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 106
    iget-object v0, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mRotaryInputGraphView:Lcom/android/server/input/debug/RotaryInputGraphView;

    .line 108
    invoke-virtual {p0, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    return-void
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    .line 5
    move-result-object v0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isRound()Z

    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 15
    invoke-virtual {v0}, Landroid/view/RoundedCorner;->getRadius()I

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

    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_1

    .line 28
    invoke-virtual {p1}, Landroid/view/WindowInsets;->isRound()Z

    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_1

    .line 34
    invoke-virtual {v2}, Landroid/view/RoundedCorner;->getRadius()I

    .line 37
    move-result v2

    .line 38
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 41
    move-result v0

    .line 42
    :cond_1
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_2

    .line 48
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    .line 55
    move-result v2

    .line 56
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 59
    move-result v0

    .line 60
    :cond_2
    iget v2, p0, Lcom/android/server/input/debug/FocusEventDebugView;->mOuterPadding:I

    .line 62
    add-int/2addr v0, v2

    .line 63
    invoke-virtual {p0, v2, v2, v2, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 66
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setClipToPadding(Z)V

    .line 69
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 72
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method
