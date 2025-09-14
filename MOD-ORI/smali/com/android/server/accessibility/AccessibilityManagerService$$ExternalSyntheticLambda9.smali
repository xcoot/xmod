.class public final synthetic Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final accept$com$android$server$accessibility$AccessibilityManagerService$$ExternalSyntheticLambda34(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 4
    .line 5
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-boolean p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputSessionRequested:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 13
    .line 14
    const/16 p2, 0xa

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 21
    .line 22
    .line 23
    :cond_0
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p1
.end method

.method private final accept$com$android$server$accessibility$AccessibilityManagerService$$ExternalSyntheticLambda35(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 4
    .line 5
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputBound:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 13
    .line 14
    const/16 v1, 0xc

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mRemoteInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 24
    .line 25
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 26
    .line 27
    iget-boolean p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mRestarting:Z

    .line 28
    .line 29
    iget-object p2, p2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iput-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 39
    .line 40
    iput-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    const/16 v1, 0xe

    .line 44
    .line 45
    invoke-virtual {p2, v1, p1, v0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    :goto_0
    monitor-exit p0

    .line 56
    return-void

    .line 57
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p1
.end method

.method private final accept$com$android$server$accessibility$AccessibilityManagerService$$ExternalSyntheticLambda36(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter p2

    .line 12
    :try_start_0
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 28
    .line 29
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->contains(I)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 44
    .line 45
    iget-object p2, p1, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 46
    .line 47
    iget-object v0, p1, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedRawEvent:Landroid/view/MotionEvent;

    .line 48
    .line 49
    iget p1, p1, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedPolicyFlags:I

    .line 50
    .line 51
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void

    .line 55
    :goto_1
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw p0
.end method

.method private final accept$com$android$server$accessibility$AccessibilityManagerService$$ExternalSyntheticLambda39(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    iget v0, p2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->unbindAccessibilityFromCurrentClient(I)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    iget-object p1, p2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 21
    .line 22
    const/16 p2, 0xd

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 29
    .line 30
    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p1
.end method

.method private final accept$com$android$server$accessibility$AccessibilityManagerService$$ExternalSyntheticLambda44(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 2
    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 4
    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter p2

    .line 12
    :try_start_0
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->requestDelegating(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit p2

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method private final accept$com$android$server$accessibility$AccessibilityManagerService$$ExternalSyntheticLambda45(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/accessibility/AccessibilityUserState;

    .line 4
    .line 5
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mUiAutomationManager:Lcom/android/server/accessibility/UiAutomationManager;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/accessibility/UiAutomationManager;->suppressingAccessibilityServicesLocked()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_7

    .line 14
    .line 15
    :cond_0
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter p0

    .line 18
    :try_start_0
    iget-boolean v0, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mIsMagnificationSingleFingerTripleTapEnabled:Z

    .line 19
    .line 20
    invoke-static {}, Lcom/android/server/accessibility/Flags;->enableMagnificationMultipleFingerMultipleTapGesture()Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityUserState;->isShortcutMagnificationEnabledLocked()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    iget-boolean v1, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAMEnabled:Z

    .line 30
    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    :cond_1
    or-int/lit8 v0, v0, 0x40

    .line 34
    .line 35
    :cond_2
    iget-object v1, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v3, 0x0

    .line 42
    move v4, v3

    .line 43
    :goto_0
    if-ge v4, v2, :cond_4

    .line 44
    .line 45
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 50
    .line 51
    iget-object v6, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 52
    .line 53
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_3

    .line 61
    .line 62
    or-int/lit8 v0, v0, 0x20

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    :goto_1
    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityUserState;->isHandlingAccessibilityEventsLocked()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_7

    .line 73
    .line 74
    iget-boolean v1, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    .line 75
    .line 76
    if-eqz v1, :cond_7

    .line 77
    .line 78
    or-int/lit8 v1, v0, 0x2

    .line 79
    .line 80
    iget-boolean v2, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceHandlesDoubleTap:Z

    .line 81
    .line 82
    if-eqz v2, :cond_5

    .line 83
    .line 84
    or-int/lit16 v1, v0, 0x82

    .line 85
    .line 86
    :cond_5
    iget-boolean v0, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestMultiFingerGestures:Z

    .line 87
    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    or-int/lit16 v0, v1, 0x100

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_6
    move v0, v1

    .line 94
    :goto_2
    iget-boolean v1, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mRequestTwoFingerPassthrough:Z

    .line 95
    .line 96
    if-eqz v1, :cond_7

    .line 97
    .line 98
    or-int/lit16 v0, v0, 0x200

    .line 99
    .line 100
    :cond_7
    iget-boolean v1, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mIsFilterKeyEventsEnabled:Z

    .line 101
    .line 102
    if-eqz v1, :cond_8

    .line 103
    .line 104
    or-int/lit8 v0, v0, 0x4

    .line 105
    .line 106
    :cond_8
    iget-boolean v1, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mSendMotionEventsEnabled:Z

    .line 107
    .line 108
    if-eqz v1, :cond_9

    .line 109
    .line 110
    or-int/lit16 v0, v0, 0x400

    .line 111
    .line 112
    :cond_9
    iget-boolean v1, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoclickEnabled:Z

    .line 113
    .line 114
    if-eqz v1, :cond_a

    .line 115
    .line 116
    or-int/lit8 v0, v0, 0x8

    .line 117
    .line 118
    :cond_a
    iget-boolean v1, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mIsPerformGesturesEnabled:Z

    .line 119
    .line 120
    if-eqz v1, :cond_b

    .line 121
    .line 122
    or-int/lit8 v0, v0, 0x10

    .line 123
    .line 124
    :cond_b
    iget-boolean v1, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mIsAutoActionEnabled:Z

    .line 125
    .line 126
    if-eqz v1, :cond_c

    .line 127
    .line 128
    or-int/lit16 v0, v0, 0x800

    .line 129
    .line 130
    :cond_c
    iget-boolean v1, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mIsCornerActionEnabled:Z

    .line 131
    .line 132
    if-eqz v1, :cond_d

    .line 133
    .line 134
    or-int/lit16 v0, v0, 0x1000

    .line 135
    .line 136
    :cond_d
    iget-boolean v1, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTapDurationEnabled:Z

    .line 137
    .line 138
    if-eqz v1, :cond_e

    .line 139
    .line 140
    const/high16 v1, -0x80000000

    .line 141
    .line 142
    or-int/2addr v0, v1

    .line 143
    :cond_e
    iget-boolean v1, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchBlockingEnabled:Z

    .line 144
    .line 145
    if-eqz v1, :cond_f

    .line 146
    .line 147
    const/high16 v1, 0x1000000

    .line 148
    .line 149
    or-int/2addr v0, v1

    .line 150
    :cond_f
    iget-object v1, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    move v2, v3

    .line 157
    move v4, v2

    .line 158
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-eqz v5, :cond_10

    .line 163
    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    check-cast v5, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 169
    .line 170
    iget v6, v5, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mGenericMotionEventSources:I

    .line 171
    .line 172
    or-int/2addr v2, v6

    .line 173
    iget v5, v5, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mObservedMotionEventSources:I

    .line 174
    .line 175
    or-int/2addr v4, v5

    .line 176
    goto :goto_3

    .line 177
    :catchall_0
    move-exception p1

    .line 178
    goto/16 :goto_8

    .line 179
    .line 180
    :cond_10
    if-eqz v2, :cond_11

    .line 181
    .line 182
    or-int/lit16 v0, v0, 0x800

    .line 183
    .line 184
    :cond_11
    const/4 v1, 0x1

    .line 185
    const/4 v5, 0x0

    .line 186
    if-eqz v0, :cond_14

    .line 187
    .line 188
    iget-boolean v6, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 189
    .line 190
    if-nez v6, :cond_13

    .line 191
    .line 192
    iput-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 193
    .line 194
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 195
    .line 196
    if-nez v3, :cond_12

    .line 197
    .line 198
    new-instance v3, Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 199
    .line 200
    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 201
    .line 202
    invoke-direct {v3, v5, p1}, Lcom/android/server/accessibility/AccessibilityInputFilter;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V

    .line 203
    .line 204
    .line 205
    iput-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 206
    .line 207
    :cond_12
    iget-object v5, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 208
    .line 209
    move v3, v1

    .line 210
    :cond_13
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 211
    .line 212
    iget p2, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 213
    .line 214
    invoke-virtual {v1, p2, v0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setUserAndEnabledFeatures(II)V

    .line 215
    .line 216
    .line 217
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 218
    .line 219
    iput v2, p2, Lcom/android/server/accessibility/AccessibilityInputFilter;->mCombinedGenericMotionEventSources:I

    .line 220
    .line 221
    iput v4, p2, Lcom/android/server/accessibility/AccessibilityInputFilter;->mCombinedMotionEventObservedSources:I

    .line 222
    .line 223
    goto :goto_6

    .line 224
    :cond_14
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 225
    .line 226
    if-eqz v0, :cond_18

    .line 227
    .line 228
    iput-boolean v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 229
    .line 230
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 231
    .line 232
    iget v2, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    .line 233
    .line 234
    invoke-virtual {v0, v2, v3}, Lcom/android/server/accessibility/AccessibilityInputFilter;->setUserAndEnabledFeatures(II)V

    .line 235
    .line 236
    .line 237
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 238
    .line 239
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityInputFilter;->mServiceDetectsGestures:Landroid/util/SparseArray;

    .line 240
    .line 241
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 242
    .line 243
    .line 244
    iget-boolean v0, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    .line 245
    .line 246
    if-eqz v0, :cond_17

    .line 247
    .line 248
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-eqz v2, :cond_17

    .line 261
    .line 262
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v2

    .line 266
    check-cast v2, Landroid/view/Display;

    .line 267
    .line 268
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    iget-object v4, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceDetectsGestures:Landroid/util/SparseArray;

    .line 273
    .line 274
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->contains(I)Z

    .line 275
    .line 276
    .line 277
    move-result v4

    .line 278
    if-eqz v4, :cond_15

    .line 279
    .line 280
    iget-object v4, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceDetectsGestures:Landroid/util/SparseArray;

    .line 281
    .line 282
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    check-cast v4, Ljava/lang/Boolean;

    .line 287
    .line 288
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    goto :goto_5

    .line 293
    :cond_15
    move v4, v3

    .line 294
    :goto_5
    iget-object v6, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 295
    .line 296
    iget-object v7, v6, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 297
    .line 298
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->contains(I)Z

    .line 299
    .line 300
    .line 301
    move-result v7

    .line 302
    if-eqz v7, :cond_16

    .line 303
    .line 304
    iget-object v7, v6, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 305
    .line 306
    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    check-cast v7, Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 311
    .line 312
    invoke-virtual {v7, v4}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setServiceDetectsGestures(Z)V

    .line 313
    .line 314
    .line 315
    :cond_16
    iget-object v6, v6, Lcom/android/server/accessibility/AccessibilityInputFilter;->mServiceDetectsGestures:Landroid/util/SparseArray;

    .line 316
    .line 317
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    invoke-virtual {v6, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    goto :goto_4

    .line 325
    :cond_17
    move v3, v1

    .line 326
    :cond_18
    :goto_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    if-eqz v3, :cond_1b

    .line 328
    .line 329
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 330
    .line 331
    const-wide/16 v0, 0x1200

    .line 332
    .line 333
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityTraceManager;->isA11yTracingEnabledForTypes(J)Z

    .line 334
    .line 335
    .line 336
    move-result p0

    .line 337
    if-eqz p0, :cond_19

    .line 338
    .line 339
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mTraceManager:Lcom/android/server/accessibility/AccessibilityTraceManager;

    .line 340
    .line 341
    const-string p2, "WindowManagerInternal.setInputFilter"

    .line 342
    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    const-string/jumbo v3, "inputFilter="

    .line 346
    .line 347
    .line 348
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityTraceManager;->logTrace(Ljava/lang/String;JLjava/lang/String;)V

    .line 359
    .line 360
    .line 361
    :cond_19
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 362
    .line 363
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowManagerInternal;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 364
    .line 365
    .line 366
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 367
    .line 368
    sget-boolean p1, Lcom/android/server/accessibility/ProxyManager;->DEBUG:Z

    .line 369
    .line 370
    if-eqz p1, :cond_1a

    .line 371
    .line 372
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    .line 374
    .line 375
    new-instance p1, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    const-string p2, "Set proxy input filter to "

    .line 378
    .line 379
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p1

    .line 389
    const-string p2, "ProxyManager"

    .line 390
    .line 391
    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    :cond_1a
    iput-object v5, p0, Lcom/android/server/accessibility/ProxyManager;->mA11yInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 395
    .line 396
    :cond_1b
    :goto_7
    return-void

    .line 397
    :goto_8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    throw p1
.end method

.method private final accept$com$android$server$accessibility$AccessibilityManagerService$$ExternalSyntheticLambda47(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/accessibility/AccessibilityUserState;

    .line 4
    .line 5
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    const-string v2, "android.hardware.fingerprint"

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    move v2, v1

    .line 30
    :goto_0
    if-ge v2, v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 37
    .line 38
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->isCapturingFingerprintGestures()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 45
    .line 46
    .line 47
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :try_start_1
    const-string/jumbo v5, "fingerprint"

    .line 49
    .line 50
    .line 51
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-static {v5}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    .line 56
    .line 57
    .line 58
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    .line 61
    .line 62
    if-eqz v5, :cond_0

    .line 63
    .line 64
    new-instance v0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    .line 65
    .line 66
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 73
    .line 74
    invoke-direct {v0, v5, v2, v3}, Lcom/android/server/accessibility/FingerprintGestureDispatcher;-><init>(Landroid/hardware/fingerprint/IFingerprintService;Landroid/content/res/Resources;Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    goto :goto_7

    .line 82
    :catchall_1
    move-exception p1

    .line 83
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mFingerprintGestureDispatcher:Lcom/android/server/accessibility/FingerprintGestureDispatcher;

    .line 92
    .line 93
    if-eqz p0, :cond_7

    .line 94
    .line 95
    iget-boolean p1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHardwareSupportsGestures:Z

    .line 96
    .line 97
    if-nez p1, :cond_2

    .line 98
    .line 99
    goto :goto_6

    .line 100
    :cond_2
    iget-object p1, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mLock:Ljava/lang/Object;

    .line 101
    .line 102
    monitor-enter p1

    .line 103
    :try_start_3
    iget-object v0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    .line 104
    .line 105
    check-cast v0, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 108
    .line 109
    .line 110
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-ge v1, v0, :cond_4

    .line 115
    .line 116
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;

    .line 121
    .line 122
    invoke-interface {v0}, Lcom/android/server/accessibility/FingerprintGestureDispatcher$FingerprintGestureClient;->isCapturingFingerprintGestures()Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-eqz v2, :cond_3

    .line 127
    .line 128
    iget-object v2, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    .line 129
    .line 130
    check-cast v2, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :catchall_2
    move-exception p0

    .line 137
    goto :goto_5

    .line 138
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    iget-object p2, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mCapturingClients:Ljava/util/List;

    .line 142
    .line 143
    check-cast p2, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 146
    .line 147
    .line 148
    move-result p2

    .line 149
    if-eqz p2, :cond_5

    .line 150
    .line 151
    iget-boolean p2, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mRegisteredReadOnlyExceptInHandler:Z

    .line 152
    .line 153
    if-eqz p2, :cond_6

    .line 154
    .line 155
    iget-object p0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHandler:Landroid/os/Handler;

    .line 156
    .line 157
    const/4 p2, 0x2

    .line 158
    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 163
    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_5
    iget-boolean p2, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mRegisteredReadOnlyExceptInHandler:Z

    .line 167
    .line 168
    if-nez p2, :cond_6

    .line 169
    .line 170
    iget-object p0, p0, Lcom/android/server/accessibility/FingerprintGestureDispatcher;->mHandler:Landroid/os/Handler;

    .line 171
    .line 172
    const/4 p2, 0x1

    .line 173
    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 178
    .line 179
    .line 180
    :cond_6
    :goto_4
    monitor-exit p1

    .line 181
    goto :goto_6

    .line 182
    :goto_5
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 183
    throw p0

    .line 184
    :cond_7
    :goto_6
    return-void

    .line 185
    :goto_7
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 186
    throw p1
.end method

.method private final accept$com$android$server$accessibility$AccessibilityManagerService$$ExternalSyntheticLambda48(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 4
    .line 5
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p2, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-boolean v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mIsTouchExplorationEnabled:Z

    .line 35
    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    monitor-exit p0

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    .line 43
    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    monitor-exit p0

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    .line 55
    .line 56
    iget-object v3, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    const v3, 0x1010355

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService$6;

    .line 69
    .line 70
    invoke-direct {v3, p1, v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$6;-><init>(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Lcom/android/server/accessibility/AccessibilityServiceConnection;)V

    .line 71
    .line 72
    .line 73
    const p2, 0x104000a

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    new-instance v1, Lcom/android/server/accessibility/AccessibilityManagerService$5;

    .line 81
    .line 82
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 83
    .line 84
    .line 85
    const/high16 v2, 0x1040000

    .line 86
    .line 87
    invoke-virtual {p2, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    const v1, 0x10404d1

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const v2, 0x10404d0

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    iput-object p2, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    .line 120
    .line 121
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    const/16 v0, 0x7d3

    .line 126
    .line 127
    invoke-virtual {p2, v0}, Landroid/view/Window;->setType(I)V

    .line 128
    .line 129
    .line 130
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    .line 131
    .line 132
    invoke-virtual {p2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 141
    .line 142
    or-int/lit8 v0, v0, 0x10

    .line 143
    .line 144
    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 145
    .line 146
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    .line 147
    .line 148
    const/4 v0, 0x1

    .line 149
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mEnableTouchExplorationDialog:Landroid/app/AlertDialog;

    .line 153
    .line 154
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 155
    .line 156
    .line 157
    monitor-exit p0

    .line 158
    :goto_0
    return-void

    .line 159
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    throw p1
.end method

.method private final accept$com$android$server$accessibility$AccessibilityManagerService$$ExternalSyntheticLambda64(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 2
    .line 3
    check-cast p2, Landroid/util/ArraySet;

    .line 4
    .line 5
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    const/4 v0, 0x1

    .line 9
    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputSessionRequested:Z

    .line 10
    .line 11
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    sub-int/2addr v1, v0

    .line 24
    :goto_0
    if-ltz v1, :cond_1

    .line 25
    .line 26
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 33
    .line 34
    iget v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 35
    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_0

    .line 45
    .line 46
    iget-boolean v2, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestImeApis:Z

    .line 47
    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    iget-object v0, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 51
    .line 52
    const/16 v2, 0xa

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 59
    .line 60
    .line 61
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    monitor-exit p0

    .line 67
    return-void

    .line 68
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p1
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 7
    .line 8
    check-cast p2, Ljava/lang/Integer;

    .line 9
    .line 10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    iget-boolean p2, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 18
    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    monitor-exit v0

    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getValidDisplayList()Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const/4 v1, 0x0

    .line 30
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ge v1, v2, :cond_2

    .line 35
    .line 36
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/view/Display;

    .line 41
    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-ne v3, p0, :cond_1

    .line 49
    .line 50
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 51
    .line 52
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->refreshMagnificationMode(Landroid/view/Display;)V

    .line 53
    .line 54
    .line 55
    monitor-exit v0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    monitor-exit v0

    .line 61
    :goto_1
    return-void

    .line 62
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    throw p0

    .line 64
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;->accept$com$android$server$accessibility$AccessibilityManagerService$$ExternalSyntheticLambda64(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :pswitch_1
    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 69
    .line 70
    check-cast p2, Landroid/content/ComponentName;

    .line 71
    .line 72
    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-static {}, Landroid/view/accessibility/Flags;->a11yQsShortcut()Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_3

    .line 82
    .line 83
    iget-object p0, p1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 84
    .line 85
    invoke-virtual {p0, p2}, Lcom/android/server/statusbar/StatusBarManagerService;->remTile(Landroid/content/ComponentName;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    return-void

    .line 89
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;->accept$com$android$server$accessibility$AccessibilityManagerService$$ExternalSyntheticLambda48(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;->accept$com$android$server$accessibility$AccessibilityManagerService$$ExternalSyntheticLambda47(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;->accept$com$android$server$accessibility$AccessibilityManagerService$$ExternalSyntheticLambda45(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;->accept$com$android$server$accessibility$AccessibilityManagerService$$ExternalSyntheticLambda44(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;->accept$com$android$server$accessibility$AccessibilityManagerService$$ExternalSyntheticLambda39(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :pswitch_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;->accept$com$android$server$accessibility$AccessibilityManagerService$$ExternalSyntheticLambda36(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    return-void

    .line 113
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;->accept$com$android$server$accessibility$AccessibilityManagerService$$ExternalSyntheticLambda35(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :pswitch_9
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda9;->accept$com$android$server$accessibility$AccessibilityManagerService$$ExternalSyntheticLambda34(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :pswitch_a
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 122
    .line 123
    check-cast p2, Ljava/lang/Integer;

    .line 124
    .line 125
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 130
    .line 131
    monitor-enter v0

    .line 132
    :try_start_1
    iget-boolean p2, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 133
    .line 134
    if-eqz p2, :cond_4

    .line 135
    .line 136
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 137
    .line 138
    if-eqz p1, :cond_4

    .line 139
    .line 140
    invoke-virtual {p1, p0}, Lcom/android/server/accessibility/AccessibilityInputFilter;->requestTouchExploration(I)V

    .line 141
    .line 142
    .line 143
    goto :goto_3

    .line 144
    :catchall_1
    move-exception p0

    .line 145
    goto :goto_4

    .line 146
    :cond_4
    :goto_3
    monitor-exit v0

    .line 147
    return-void

    .line 148
    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 149
    throw p0

    .line 150
    :pswitch_b
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 151
    .line 152
    check-cast p2, Ljava/lang/Integer;

    .line 153
    .line 154
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 155
    .line 156
    .line 157
    move-result p0

    .line 158
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 159
    .line 160
    monitor-enter v0

    .line 161
    :try_start_2
    iget-boolean p2, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 162
    .line 163
    if-eqz p2, :cond_5

    .line 164
    .line 165
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 166
    .line 167
    if-eqz p1, :cond_5

    .line 168
    .line 169
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 170
    .line 171
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->contains(I)Z

    .line 172
    .line 173
    .line 174
    move-result p2

    .line 175
    if-eqz p2, :cond_5

    .line 176
    .line 177
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 178
    .line 179
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    check-cast p0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 184
    .line 185
    iget-object p1, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    .line 186
    .line 187
    iget-object p2, p1, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 188
    .line 189
    iget-object v1, p1, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedRawEvent:Landroid/view/MotionEvent;

    .line 190
    .line 191
    iget p1, p1, Lcom/android/server/accessibility/gestures/TouchState;->mLastReceivedPolicyFlags:I

    .line 192
    .line 193
    invoke-virtual {p0, p2, v1, p1}, Lcom/android/server/accessibility/gestures/TouchExplorer;->onDoubleTapAndHold(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 194
    .line 195
    .line 196
    goto :goto_5

    .line 197
    :catchall_2
    move-exception p0

    .line 198
    goto :goto_6

    .line 199
    :cond_5
    :goto_5
    monitor-exit v0

    .line 200
    return-void

    .line 201
    :goto_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 202
    throw p0

    .line 203
    :pswitch_c
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 204
    .line 205
    check-cast p2, Landroid/view/accessibility/AccessibilityEvent;

    .line 206
    .line 207
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 208
    .line 209
    monitor-enter p0

    .line 210
    :try_start_3
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 211
    .line 212
    if-eqz v0, :cond_7

    .line 213
    .line 214
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 215
    .line 216
    if-eqz p1, :cond_7

    .line 217
    .line 218
    const/4 v0, 0x0

    .line 219
    :goto_7
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    .line 220
    .line 221
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-ge v0, v1, :cond_7

    .line 226
    .line 227
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityInputFilter;->mEventHandler:Landroid/util/SparseArray;

    .line 228
    .line 229
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    check-cast v1, Lcom/android/server/accessibility/EventStreamTransformation;

    .line 234
    .line 235
    if-eqz v1, :cond_6

    .line 236
    .line 237
    invoke-interface {v1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 238
    .line 239
    .line 240
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 241
    .line 242
    goto :goto_7

    .line 243
    :catchall_3
    move-exception p1

    .line 244
    goto :goto_8

    .line 245
    :cond_7
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 246
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :goto_8
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 251
    throw p1

    .line 252
    nop

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
