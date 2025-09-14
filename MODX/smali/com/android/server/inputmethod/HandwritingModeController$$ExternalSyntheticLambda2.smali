.class public final synthetic Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver$InputEventListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/HandwritingModeController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/HandwritingModeController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 6
    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)Z
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 3
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    .line 5
    if-eqz v0, :cond_f

    .line 7
    instance-of v0, p1, Landroid/view/MotionEvent;

    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "HandwritingModeController"

    .line 12
    if-eqz v0, :cond_e

    .line 14
    check-cast p1, Landroid/view/MotionEvent;

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isStylusPointer()Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 22
    goto/16 :goto_1

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 27
    move-result v0

    .line 28
    iget v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    .line 30
    if-eq v0, v3, :cond_1

    .line 32
    const-string p0, "Received stylus event associated with the incorrect display."

    .line 34
    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    goto/16 :goto_1

    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 42
    move-result v0

    .line 43
    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Ljava/lang/Runnable;

    .line 45
    const/4 v3, 0x1

    .line 46
    if-eqz v2, :cond_3

    .line 48
    const/16 v2, 0x9

    .line 50
    if-eq v0, v2, :cond_2

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 55
    move-result v4

    .line 56
    if-ne v4, v2, :cond_3

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Ljava/lang/Runnable;

    .line 60
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 63
    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Ljava/lang/Runnable;

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isHoverEvent()Z

    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_4

    .line 73
    goto :goto_0

    .line 74
    :cond_4
    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatePackageName:Ljava/lang/String;

    .line 76
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_5

    .line 82
    iget-boolean v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationConnectionlessFlow:Z

    .line 84
    if-eqz v2, :cond_7

    .line 86
    :cond_5
    if-eq v0, v3, :cond_6

    .line 88
    const/4 v2, 0x3

    .line 89
    if-ne v0, v2, :cond_7

    .line 91
    :cond_6
    iput-boolean v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 93
    invoke-static {}, Lcom/android/text/flags/Flags;->handwritingEndOfLineTap()Z

    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_c

    .line 99
    if-ne v0, v3, :cond_c

    .line 101
    iput-boolean v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    .line 103
    :cond_7
    if-nez v0, :cond_9

    .line 105
    iget-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    .line 107
    if-eqz v0, :cond_8

    .line 109
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    iput-boolean v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    .line 116
    :cond_8
    iput-boolean v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 118
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 120
    if-nez v0, :cond_a

    .line 122
    iget-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    .line 124
    if-nez v0, :cond_a

    .line 126
    goto :goto_0

    .line 127
    :cond_a
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 132
    move-result v0

    .line 133
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getHandwritingBufferSize()I

    .line 136
    move-result v2

    .line 137
    if-lt v0, v2, :cond_b

    .line 139
    iput-boolean v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 141
    iget-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    .line 143
    if-eqz p1, :cond_d

    .line 145
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 150
    iput-boolean v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    .line 152
    goto :goto_0

    .line 153
    :cond_b
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 155
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    goto :goto_0

    .line 163
    :cond_c
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 165
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 168
    :cond_d
    :goto_0
    move v1, v3

    .line 169
    goto :goto_1

    .line 170
    :cond_e
    const-string p0, "Received non-motion event in stylus monitor."

    .line 172
    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_1
    return v1

    .line 176
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 178
    const-string p1, "Input Event should not be processed when IME has the spy channel."

    .line 180
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 183
    throw p0
.end method
