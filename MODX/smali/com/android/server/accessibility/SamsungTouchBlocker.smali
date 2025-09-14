.class public final Lcom/android/server/accessibility/SamsungTouchBlocker;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/accessibility/SamsungTouchBlocker$1;

.field public mIsBlocking:Z

.field public mIsLastEventDown:Z

.field public mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field public mTapDurationEnabled:Z

.field public mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

.field public mTouchBlockingObserver:Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

.field public mTouchBlockingPeriod:F

.field public mTouchBlockingPeriodMilli:J


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 7
    new-instance v0, Lcom/android/server/accessibility/SamsungTouchBlocker$1;

    .line 9
    invoke-direct {v0, p0}, Lcom/android/server/accessibility/SamsungTouchBlocker$1;-><init>(Lcom/android/server/accessibility/SamsungTouchBlocker;)V

    .line 12
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mHandler:Lcom/android/server/accessibility/SamsungTouchBlocker$1;

    .line 14
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

    .line 16
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsLastEventDown:Z

    .line 19
    new-instance v2, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

    .line 21
    invoke-direct {v2, p0, p2, v0}, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;-><init>(Lcom/android/server/accessibility/SamsungTouchBlocker;ILcom/android/server/accessibility/SamsungTouchBlocker$1;)V

    .line 24
    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingObserver:Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    move-result-object p1

    .line 30
    iget-object p2, v2, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 32
    if-nez p2, :cond_0

    .line 34
    iput-object p1, v2, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 36
    iget-object p2, v2, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTouchBlockingSettingsUri:Landroid/net/Uri;

    .line 38
    iget v3, v2, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mUserId:I

    .line 40
    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 43
    iget-object p1, v2, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 45
    iget-object p2, v2, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTapDurationSettingsUri:Landroid/net/Uri;

    .line 47
    iget v3, v2, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mUserId:I

    .line 49
    invoke-virtual {p1, p2, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 52
    iget-object p1, v2, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTouchBlockingSettingsUri:Landroid/net/Uri;

    .line 54
    const/4 p2, 0x1

    .line 55
    invoke-virtual {v2, p2, p1}, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->onChange(ZLandroid/net/Uri;)V

    .line 58
    iget-object p1, v2, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mTapDurationSettingsUri:Landroid/net/Uri;

    .line 60
    invoke-virtual {v2, p2, p1}, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->onChange(ZLandroid/net/Uri;)V

    .line 63
    iget-wide v2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingPeriodMilli:J

    .line 65
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 68
    iput-boolean p2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    .line 70
    return-void

    .line 71
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 73
    const-string p1, "Observer has already been started."

    .line 75
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 78
    throw p0
.end method


# virtual methods
.method public final clearEvents(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final getDisplayContext(I)Landroid/content/Context;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {v1, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    .line 27
    move-result-object p1

    .line 28
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

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
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mContext:Landroid/content/Context;

    .line 40
    return-object p0
.end method

.method public final onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iput-object v1, v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mContext:Landroid/content/Context;

    .line 8
    iget-object v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mWindowManager:Landroid/view/WindowManager;

    .line 10
    iget-object v3, v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->view:Landroid/view/View;

    .line 12
    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 15
    iget-object v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mStandbyImageView:Landroid/widget/ImageView;

    .line 17
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 20
    iget-object v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mProgressImageView:Landroid/widget/ImageView;

    .line 22
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 25
    iget-object v2, v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mIgnoreImageView:Landroid/widget/ImageView;

    .line 27
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 30
    iget-object v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mTapImageView:Landroid/widget/ImageView;

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 35
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingObserver:Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

    .line 39
    if-eqz v0, :cond_2

    .line 41
    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 43
    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 48
    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingObserver:Lcom/android/server/accessibility/SamsungTouchBlocker$TouchBlockingObserver;

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 53
    const-string v0, "TouchBlockingObserver has not been started"

    .line 55
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    throw p0

    .line 59
    :cond_2
    :goto_0
    return-void
.end method

.method public final onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 8
    :cond_0
    return-void
.end method

.method public final onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_5

    .line 12
    if-eqz v0, :cond_2

    .line 14
    if-eq v0, v4, :cond_1

    .line 16
    if-eq v0, v3, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 22
    move-result p2

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 26
    move-result p1

    .line 27
    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/SamsungTouchBlocker;->setXY(FF)V

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 33
    if-eqz p0, :cond_4

    .line 35
    new-instance p1, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;

    .line 37
    const/4 p2, 0x0

    .line 38
    invoke-direct {p1, p0, v2, p2}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;ZI)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object p2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 47
    if-nez p2, :cond_3

    .line 49
    new-instance p2, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 54
    move-result p3

    .line 55
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/SamsungTouchBlocker;->getDisplayContext(I)Landroid/content/Context;

    .line 58
    move-result-object p3

    .line 59
    invoke-direct {p2, p3}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;-><init>(Landroid/content/Context;)V

    .line 62
    iput-object p2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 64
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 67
    move-result p2

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 71
    move-result p1

    .line 72
    invoke-virtual {p0, p2, p1}, Lcom/android/server/accessibility/SamsungTouchBlocker;->setXY(FF)V

    .line 75
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchBlocker;->onTapIgnore()V

    .line 78
    :cond_4
    :goto_0
    return-void

    .line 79
    :cond_5
    const-string v1, "SamsungTouchBlocker"

    .line 81
    if-eqz v0, :cond_9

    .line 83
    if-eq v0, v4, :cond_7

    .line 85
    if-eq v0, v3, :cond_6

    .line 87
    goto :goto_1

    .line 88
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 91
    move-result v0

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 95
    move-result v2

    .line 96
    invoke-virtual {p0, v0, v2}, Lcom/android/server/accessibility/SamsungTouchBlocker;->setXY(FF)V

    .line 99
    goto :goto_1

    .line 100
    :cond_7
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 102
    if-eqz v0, :cond_8

    .line 104
    new-instance v5, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;

    .line 106
    const/4 v6, 0x0

    .line 107
    invoke-direct {v5, v0, v2, v6}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;ZI)V

    .line 110
    invoke-virtual {v0, v5}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 113
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsLastEventDown:Z

    .line 115
    if-eqz v0, :cond_b

    .line 117
    const-string v0, "Touch Blocker is activated"

    .line 119
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mHandler:Lcom/android/server/accessibility/SamsungTouchBlocker$1;

    .line 124
    iget-wide v5, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTouchBlockingPeriodMilli:J

    .line 126
    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 129
    iput-boolean v4, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    .line 131
    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsLastEventDown:Z

    .line 133
    goto :goto_1

    .line 134
    :cond_9
    iput-boolean v4, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsLastEventDown:Z

    .line 136
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 138
    if-nez v0, :cond_a

    .line 140
    new-instance v0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 145
    move-result v2

    .line 146
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/SamsungTouchBlocker;->getDisplayContext(I)Landroid/content/Context;

    .line 149
    move-result-object v2

    .line 150
    invoke-direct {v0, v2}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;-><init>(Landroid/content/Context;)V

    .line 153
    iput-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 155
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 158
    move-result v0

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 162
    move-result v2

    .line 163
    invoke-virtual {p0, v0, v2}, Lcom/android/server/accessibility/SamsungTouchBlocker;->setXY(FF)V

    .line 166
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungTouchBlocker;->onTapIgnore()V

    .line 169
    :cond_b
    :goto_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 171
    if-eqz v0, :cond_d

    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 176
    move-result v0

    .line 177
    if-eq v0, v3, :cond_c

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    .line 181
    const-string v2, "Inject this event : "

    .line 183
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object v0

    .line 193
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_c
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 198
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 201
    :cond_d
    return-void
.end method

.method public final onTapIgnore()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 3
    if-eqz v0, :cond_2

    .line 5
    iget-boolean v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    .line 7
    new-instance v2, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-direct {v2, v0, v1, v3}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;ZI)V

    .line 13
    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 16
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 18
    iget-boolean v1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mIsBlocking:Z

    .line 20
    if-nez v1, :cond_1

    .line 22
    iget-boolean p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapDurationEnabled:Z

    .line 24
    if-nez p0, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 30
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    new-instance v1, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-direct {v1, v0, p0, v2}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;ZI)V

    .line 39
    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 42
    :cond_2
    return-void
.end method

.method public final setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/accessibility/BaseEventStreamTransformation;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 3
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 5
    return-void
.end method

.method public final setXY(FF)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker;->mTapIgnore:Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;

    .line 3
    if-eqz p0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mDisplay:Landroid/view/Display;

    .line 7
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x3

    .line 12
    iget v2, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->size:I

    .line 14
    if-ne v0, v1, :cond_0

    .line 16
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 18
    float-to-int p1, p1

    .line 19
    div-int/lit8 v1, v2, 0x2

    .line 21
    sub-int/2addr p1, v1

    .line 22
    iget v1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->navigationBarHeight:I

    .line 24
    sub-int/2addr p1, v1

    .line 25
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 30
    float-to-int p1, p1

    .line 31
    div-int/lit8 v1, v2, 0x2

    .line 33
    sub-int/2addr p1, v1

    .line 34
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 36
    :goto_0
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 38
    float-to-int p2, p2

    .line 39
    div-int/lit8 v2, v2, 0x2

    .line 41
    sub-int/2addr p2, v2

    .line 42
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 44
    new-instance p1, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda2;

    .line 46
    invoke-direct {p1, p0}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungAccessibilityTappingUI;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 52
    :cond_1
    return-void
.end method
