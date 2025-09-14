.class public final synthetic Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method private final accept$com$android$server$accessibility$AccessibilityManagerService$$ExternalSyntheticLambda16(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result p0

    .line 9
    check-cast p3, Ljava/lang/Integer;

    .line 11
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result p2

    .line 15
    iget-object p3, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter p3

    .line 18
    :try_start_0
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 20
    if-eqz v0, :cond_0

    .line 22
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 24
    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1, p0, p2}, Lcom/android/server/accessibility/AccessibilityInputFilter;->requestDragging(II)V

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    monitor-exit p3

    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method private final accept$com$android$server$accessibility$AccessibilityManagerService$$ExternalSyntheticLambda29(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result p0

    .line 9
    check-cast p3, Ljava/lang/Integer;

    .line 11
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result p2

    .line 15
    iget-object p3, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 17
    invoke-virtual {p1, p0, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    .line 20
    iget-object p3, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 22
    monitor-enter p3

    .line 23
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 26
    move-result-object p2

    .line 27
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 30
    invoke-virtual {p1, p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p0
.end method

.method private final accept$com$android$server$accessibility$AccessibilityManagerService$$ExternalSyntheticLambda37(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 3
    check-cast p2, Ljava/lang/Integer;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 8
    move-result p0

    .line 9
    check-cast p3, Ljava/lang/Integer;

    .line 11
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result p2

    .line 15
    iget-object p3, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter p3

    .line 18
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 21
    move-result-object p2

    .line 22
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object p2, p2, Lcom/android/server/accessibility/AccessibilityUserState;->mUserClients:Landroid/os/RemoteCallbackList;

    .line 25
    invoke-virtual {p1, p0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendStateToClients(ILandroid/os/RemoteCallbackList;)V

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p0
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 8
    check-cast p2, Landroid/util/SparseArray;

    .line 10
    check-cast p3, Ljava/lang/Boolean;

    .line 12
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    move-result p0

    .line 16
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget p3, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 21
    invoke-virtual {p1, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 24
    move-result-object p1

    .line 25
    iget-object p3, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result p3

    .line 31
    add-int/lit8 p3, p3, -0x1

    .line 33
    :goto_0
    if-ltz p3, :cond_1

    .line 35
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityUserState;->mBoundServices:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 43
    iget v2, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 45
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->contains(I)Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_0

    .line 51
    iget-boolean v2, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRequestImeApis:Z

    .line 53
    if-eqz v2, :cond_0

    .line 55
    iget v2, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mId:I

    .line 57
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v2

    .line 61
    check-cast v2, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 63
    iget-object v1, v1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mInvocationHandler:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$InvocationHandler;

    .line 65
    const/4 v3, 0x0

    .line 66
    const/16 v4, 0xb

    .line 68
    invoke-virtual {v1, v4, p0, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 75
    goto :goto_1

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_2

    .line 78
    :cond_0
    :goto_1
    add-int/lit8 p3, p3, -0x1

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    monitor-exit v0

    .line 82
    return-void

    .line 83
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw p0

    .line 85
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;->accept$com$android$server$accessibility$AccessibilityManagerService$$ExternalSyntheticLambda37(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    return-void

    .line 89
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;->accept$com$android$server$accessibility$AccessibilityManagerService$$ExternalSyntheticLambda29(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    return-void

    .line 93
    :pswitch_2
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 95
    check-cast p2, Landroid/view/accessibility/AccessibilityEvent;

    .line 97
    check-cast p3, Ljava/lang/Integer;

    .line 99
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 102
    move-result p0

    .line 103
    invoke-virtual {p1, p2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 106
    return-void

    .line 107
    :pswitch_3
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 109
    check-cast p2, Landroid/os/RemoteCallbackList;

    .line 111
    check-cast p3, Ljava/lang/Long;

    .line 113
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 116
    move-result-wide v0

    .line 117
    iget-object p0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mGlobalClients:Landroid/os/RemoteCallbackList;

    .line 119
    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClientsOfServicesStateChange(Landroid/os/RemoteCallbackList;J)V

    .line 122
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyClientsOfServicesStateChange(Landroid/os/RemoteCallbackList;J)V

    .line 125
    return-void

    .line 126
    :pswitch_4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda12;->accept$com$android$server$accessibility$AccessibilityManagerService$$ExternalSyntheticLambda16(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    return-void

    .line 130
    :pswitch_5
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 132
    check-cast p2, Ljava/lang/Integer;

    .line 134
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 137
    move-result p0

    .line 138
    check-cast p3, Ljava/lang/Boolean;

    .line 140
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 143
    move-result p2

    .line 144
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 146
    monitor-enter v0

    .line 147
    :try_start_1
    iget v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mCurrentUserId:I

    .line 149
    invoke-virtual {p1, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getUserStateLocked(I)Lcom/android/server/accessibility/AccessibilityUserState;

    .line 152
    move-result-object v1

    .line 153
    iget-object v1, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mServiceDetectsGestures:Landroid/util/SparseArray;

    .line 155
    invoke-virtual {v1, p0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    iget-boolean v1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 160
    if-eqz v1, :cond_3

    .line 162
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 164
    if-eqz p1, :cond_3

    .line 166
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 168
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->contains(I)Z

    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_2

    .line 174
    iget-object v1, p1, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 176
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 179
    move-result-object v1

    .line 180
    check-cast v1, Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 182
    invoke-virtual {v1, p2}, Lcom/android/server/accessibility/gestures/TouchExplorer;->setServiceDetectsGestures(Z)V

    .line 185
    :cond_2
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityInputFilter;->mServiceDetectsGestures:Landroid/util/SparseArray;

    .line 187
    invoke-virtual {p1, p0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    goto :goto_3

    .line 191
    :catchall_1
    move-exception p0

    .line 192
    goto :goto_4

    .line 193
    :cond_3
    :goto_3
    monitor-exit v0

    .line 194
    return-void

    .line 195
    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    throw p0

    .line 197
    :pswitch_6
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 199
    check-cast p2, Ljava/lang/Integer;

    .line 201
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 204
    move-result p0

    .line 205
    check-cast p3, Landroid/graphics/Region;

    .line 207
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 209
    monitor-enter v0

    .line 210
    :try_start_2
    iget-boolean p2, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 212
    if-eqz p2, :cond_4

    .line 214
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 216
    if-eqz p1, :cond_4

    .line 218
    if-eqz p3, :cond_4

    .line 220
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 222
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->contains(I)Z

    .line 225
    move-result p2

    .line 226
    if-eqz p2, :cond_4

    .line 228
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 230
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 233
    move-result-object p0

    .line 234
    check-cast p0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 236
    iput-object p3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mGestureDetectionPassthroughRegion:Landroid/graphics/Region;

    .line 238
    goto :goto_5

    .line 239
    :catchall_2
    move-exception p0

    .line 240
    goto :goto_6

    .line 241
    :cond_4
    :goto_5
    monitor-exit v0

    .line 242
    return-void

    .line 243
    :goto_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 244
    throw p0

    .line 245
    :pswitch_7
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 247
    check-cast p2, Ljava/lang/Integer;

    .line 249
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 252
    move-result p0

    .line 253
    check-cast p3, Landroid/graphics/Region;

    .line 255
    iget-object p2, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    .line 257
    monitor-enter p2

    .line 258
    :try_start_3
    iget-boolean v0, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mHasInputFilter:Z

    .line 260
    if-eqz v0, :cond_5

    .line 262
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mInputFilter:Lcom/android/server/accessibility/AccessibilityInputFilter;

    .line 264
    if-eqz p1, :cond_5

    .line 266
    if-eqz p3, :cond_5

    .line 268
    iget-object v0, p1, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 270
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->contains(I)Z

    .line 273
    move-result v0

    .line 274
    if-eqz v0, :cond_5

    .line 276
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityInputFilter;->mTouchExplorer:Landroid/util/SparseArray;

    .line 278
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 281
    move-result-object p0

    .line 282
    check-cast p0, Lcom/android/server/accessibility/gestures/TouchExplorer;

    .line 284
    iput-object p3, p0, Lcom/android/server/accessibility/gestures/TouchExplorer;->mTouchExplorationPassthroughRegion:Landroid/graphics/Region;

    .line 286
    goto :goto_7

    .line 287
    :catchall_3
    move-exception p0

    .line 288
    goto :goto_8

    .line 289
    :cond_5
    :goto_7
    monitor-exit p2

    .line 290
    return-void

    .line 291
    :goto_8
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 292
    throw p0

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
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
