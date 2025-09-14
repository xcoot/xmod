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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)Z
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingEventReceiver:Landroid/view/InputEventReceiver;

    .line 4
    .line 5
    if-eqz v0, :cond_f

    .line 6
    .line 7
    instance-of v0, p1, Landroid/view/MotionEvent;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "HandwritingModeController"

    .line 11
    .line 12
    if-eqz v0, :cond_e

    .line 13
    .line 14
    check-cast p1, Landroid/view/MotionEvent;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isStylusPointer()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mCurrentDisplayId:I

    .line 29
    .line 30
    if-eq v0, v3, :cond_1

    .line 31
    .line 32
    const-string p0, "Received stylus event associated with the incorrect display."

    .line 33
    .line 34
    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Ljava/lang/Runnable;

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    const/16 v2, 0x9

    .line 49
    .line 50
    if-eq v0, v2, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-ne v4, v2, :cond_3

    .line 57
    .line 58
    :cond_2
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Ljava/lang/Runnable;

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    iput-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Ljava/lang/Runnable;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isHoverEvent()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_4

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    iget-object v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatePackageName:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_5

    .line 81
    .line 82
    iget-boolean v2, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationConnectionlessFlow:Z

    .line 83
    .line 84
    if-eqz v2, :cond_7

    .line 85
    .line 86
    :cond_5
    if-eq v0, v3, :cond_6

    .line 87
    .line 88
    const/4 v2, 0x3

    .line 89
    if-ne v0, v2, :cond_7

    .line 90
    .line 91
    :cond_6
    iput-boolean v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 92
    .line 93
    invoke-static {}, Lcom/android/text/flags/Flags;->handwritingEndOfLineTap()Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_c

    .line 98
    .line 99
    if-ne v0, v3, :cond_c

    .line 100
    .line 101
    iput-boolean v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    .line 102
    .line 103
    :cond_7
    if-nez v0, :cond_9

    .line 104
    .line 105
    iget-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    .line 106
    .line 107
    if-eqz v0, :cond_8

    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 112
    .line 113
    .line 114
    iput-boolean v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    .line 115
    .line 116
    :cond_8
    iput-boolean v3, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 117
    .line 118
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 119
    .line 120
    if-nez v0, :cond_a

    .line 121
    .line 122
    iget-boolean v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    .line 123
    .line 124
    if-nez v0, :cond_a

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_a
    iget-object v0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->getHandwritingBufferSize()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-lt v0, v2, :cond_b

    .line 138
    .line 139
    iput-boolean v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGesture:Z

    .line 140
    .line 141
    iget-boolean p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    .line 142
    .line 143
    if-eqz p1, :cond_d

    .line 144
    .line 145
    iget-object p1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 146
    .line 147
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 148
    .line 149
    .line 150
    iput-boolean v1, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mRecordingGestureAfterStylusUp:Z

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_b
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_c
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingBuffer:Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 166
    .line 167
    .line 168
    :cond_d
    :goto_0
    move v1, v3

    .line 169
    goto :goto_1

    .line 170
    :cond_e
    const-string p0, "Received non-motion event in stylus monitor."

    .line 171
    .line 172
    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    :goto_1
    return v1

    .line 176
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 177
    .line 178
    const-string p1, "Input Event should not be processed when IME has the spy channel."

    .line 179
    .line 180
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p0
.end method
