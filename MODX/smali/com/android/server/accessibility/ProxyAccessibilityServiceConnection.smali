.class public final Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;
.super Lcom/android/server/accessibility/AccessibilityServiceConnection;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDeviceId:I

.field public mDisplayId:I

.field public mFocusColor:I

.field public mFocusStrokeWidth:I

.field public mInstalledAndEnabledServices:Ljava/util/List;

.field public mInteractiveTimeout:I

.field public mNonInteractiveTimeout:I


# virtual methods
.method public final binderDied()V
    .locals 0

    .line 1
    return-void
.end method

.method public final disableSelf()V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo v0, "disableSelf is not supported"

    .line 6
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final dispatchGesture(ILandroid/content/pm/ParceledListSlice;I)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "dispatchGesture is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string p1, ", notificationTimeout="

    .line 3
    const-string p3, ", eventTypes="

    .line 5
    const-string v0, ", capabilities="

    .line 7
    const-string v1, ", feedbackType"

    .line 9
    const-string v2, ", deviceId="

    .line 11
    const-string v3, "Proxy[displayId="

    .line 13
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mContext:Landroid/content/Context;

    .line 15
    const-string v5, "ProxyAccessibilityServiceConnection"

    .line 17
    invoke-static {v4, v5, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_0

    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v4, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 26
    monitor-enter v4

    .line 27
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    iget v3, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDisplayId:I

    .line 34
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    iget v2, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 51
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    iget v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mFeedbackType:I

    .line 68
    invoke-static {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackTypeToString(I)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 89
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    .line 92
    move-result v0

    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    iget p3, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mEventTypes:I

    .line 110
    invoke-static {p3}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    .line 113
    move-result-object p3

    .line 114
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object p3

    .line 121
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 124
    new-instance p3, Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    iget-wide v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mNotificationTimeout:J

    .line 131
    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 138
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 141
    const-string p1, ", nonInteractiveUiTimeout="

    .line 143
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 146
    move-result-object p1

    .line 147
    iget p3, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mNonInteractiveTimeout:I

    .line 149
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 152
    move-result-object p3

    .line 153
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 156
    const-string p1, ", interactiveUiTimeout="

    .line 158
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 161
    move-result-object p1

    .line 162
    iget p3, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mInteractiveTimeout:I

    .line 164
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 167
    move-result-object p3

    .line 168
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 171
    const-string p1, ", focusStrokeWidth="

    .line 173
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 176
    move-result-object p1

    .line 177
    iget p3, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mFocusStrokeWidth:I

    .line 179
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 182
    move-result-object p3

    .line 183
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 186
    const-string p1, ", focusColor="

    .line 188
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 191
    move-result-object p1

    .line 192
    iget p3, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mFocusColor:I

    .line 194
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 197
    move-result-object p3

    .line 198
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 201
    const-string p1, ", installedAndEnabledServiceCount="

    .line 203
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 206
    move-result-object p1

    .line 207
    iget-object p3, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mInstalledAndEnabledServices:Ljava/util/List;

    .line 209
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 212
    move-result p3

    .line 213
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 216
    move-result-object p3

    .line 217
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 220
    const-string p1, ", installedAndEnabledServices="

    .line 222
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 225
    move-result-object p1

    .line 226
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mInstalledAndEnabledServices:Ljava/util/List;

    .line 228
    invoke-interface {p0}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 231
    move-result-object p0

    .line 232
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 235
    const-string p0, "]"

    .line 237
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 240
    monitor-exit v4

    .line 241
    return-void

    .line 242
    :catchall_0
    move-exception p0

    .line 243
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    throw p0
.end method

.method public final getCurrentMagnificationRegion(I)Landroid/graphics/Region;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "getCurrentMagnificationRegion is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final getInstalledAndEnabledServices()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mInstalledAndEnabledServices:Ljava/util/List;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 12
    move-result-object p0

    .line 13
    :goto_0
    monitor-exit v0

    .line 14
    return-object p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final getMagnificationCenterX(I)F
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "getMagnificationCenterX is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final getMagnificationCenterY(I)F
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "getMagnificationCenterY is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final getMagnificationConfig(I)Landroid/accessibilityservice/MagnificationConfig;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "getMagnificationConfig is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final getMagnificationRegion(I)Landroid/graphics/Region;
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "getMagnificationRegion is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final getMagnificationScale(I)F
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "getMagnificationScale is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final getSoftKeyboardShowMode()I
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo v0, "getSoftKeyboardShowMode is not supported"

    .line 6
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final getSystemActions()Ljava/util/List;
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo v0, "getSystemActions is not supported"

    .line 6
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final getWindows()Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getWindows()Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;

    .line 7
    invoke-direct {v1}, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;-><init>()V

    .line 10
    iget p0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDisplayId:I

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, p0, v2}, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/util/List;

    .line 22
    invoke-virtual {v1, p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;->put(ILjava/lang/Object;)V

    .line 25
    return-object v1
.end method

.method public final hasRightsToCurrentUserLocked()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final isAccessibilityButtonAvailable()Z
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo v0, "isAccessibilityButtonAvailable is not supported"

    .line 6
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final isCapturingFingerprintGestures()Z
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo v0, "isCapturingFingerprintGestures is not supported"

    .line 6
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final isFingerprintGestureDetectionAvailable()Z
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo v0, "isFingerprintGestureDetectionAvailable is not supported"

    .line 6
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final isMagnificationCallbackEnabled(I)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "isMagnificationCallbackEnabled is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final onDoubleTap(I)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "onDoubleTap is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final onDoubleTapAndHold(I)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "onDoubleTapAndHold is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final onFingerprintGesture(I)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "onFingerprintGesture is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final onFingerprintGestureDetectionActiveChanged(Z)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "onFingerprintGestureDetectionActiveChanged is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final onKeyEvent(Landroid/view/KeyEvent;I)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "onKeyEvent is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "onServiceConnected is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "onServiceDisconnected is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final performGlobalAction(I)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "performGlobalAction is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final requestDelegating(I)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "requestDelegating is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final requestDragging(II)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "requestDragging is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final requestTouchExploration(I)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "requestTouchExploration is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final resetCurrentMagnification(IZ)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "resetCurrentMagnification is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final resetMagnification(IZ)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "resetMagnification is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final resolveAccessibilityWindowIdForFindFocusLocked(II)I
    .locals 3

    .line 1
    const/4 v0, -0x2

    .line 2
    if-ne p1, v0, :cond_5

    .line 4
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 6
    iget v0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDisplayId:I

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    const/4 v1, -0x1

    .line 12
    if-eq v0, v1, :cond_4

    .line 14
    if-eqz v0, :cond_4

    .line 16
    iget-boolean v2, p1, Lcom/android/server/accessibility/AccessibilityWindowManager;->mHasProxy:Z

    .line 18
    if-nez v2, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v2, p1, Lcom/android/server/accessibility/AccessibilityWindowManager;->mDisplayWindowsObservers:Landroid/util/SparseArray;

    .line 23
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;

    .line 29
    if-eqz v0, :cond_3

    .line 31
    iget-boolean v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mIsProxy:Z

    .line 33
    if-eqz v2, :cond_3

    .line 35
    const/4 v2, 0x1

    .line 36
    if-ne p2, v2, :cond_1

    .line 38
    iget p1, p1, Lcom/android/server/accessibility/AccessibilityWindowManager;->mTopFocusedWindowId:I

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 p1, 0x2

    .line 42
    if-ne p2, p1, :cond_2

    .line 44
    iget p1, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mProxyDisplayAccessibilityFocusedWindow:I

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move p1, v1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDefaultFocus(I)I

    .line 52
    move-result p1

    .line 53
    goto :goto_1

    .line 54
    :cond_4
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getDefaultFocus(I)I

    .line 57
    move-result p1

    .line 58
    :goto_1
    iget-object p2, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mA11yWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 60
    iget p0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mDisplayTypes:I

    .line 62
    invoke-virtual {p2, p1, p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->windowIdBelongsToDisplayType(II)Z

    .line 65
    move-result p0

    .line 66
    if-nez p0, :cond_5

    .line 68
    return v1

    .line 69
    :cond_5
    return p1
.end method

.method public final sendGesture(ILandroid/content/pm/ParceledListSlice;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "sendGesture is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final setAnimationScale(F)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "setAnimationScale is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final setDefaultPropertiesIfNullLocked(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "ProxyClass"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget p0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDisplayId:I

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "ProxyPackage"

    .line 23
    if-nez v0, :cond_0

    .line 25
    new-instance v0, Landroid/content/pm/ResolveInfo;

    .line 27
    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 30
    new-instance v2, Landroid/content/pm/ServiceInfo;

    .line 32
    invoke-direct {v2}, Landroid/content/pm/ServiceInfo;-><init>()V

    .line 35
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    .line 37
    invoke-direct {v3}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 40
    iput-object v1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 42
    iput-object p0, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 44
    iput-object v1, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 46
    iput-object p0, v3, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 48
    iput-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 50
    iput-object v3, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 52
    invoke-virtual {p1, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setResolveInfo(Landroid/content/pm/ResolveInfo;)V

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    .line 58
    move-result-object v0

    .line 59
    if-nez v0, :cond_1

    .line 61
    new-instance v0, Landroid/content/ComponentName;

    .line 63
    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setComponentName(Landroid/content/ComponentName;)V

    .line 69
    :cond_1
    return-void
.end method

.method public final setFocusAppearance(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSecurityPolicy:Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    .line 6
    invoke-virtual {v1, p0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v1, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mFocusStrokeWidth:I

    .line 18
    if-ne v1, p1, :cond_1

    .line 20
    iget v1, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mFocusColor:I

    .line 22
    if-ne v1, p2, :cond_1

    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :cond_1
    iput p1, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mFocusStrokeWidth:I

    .line 28
    iput p2, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mFocusColor:I

    .line 30
    iget-object p1, p0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 32
    iget p0, p0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 34
    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 36
    iget-object p1, p1, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 38
    const/4 p2, 0x0

    .line 39
    invoke-virtual {p1, p0, p2}, Lcom/android/server/accessibility/ProxyManager;->onProxyChanged(IZ)V

    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final setGestureDetectionPassthroughRegion(ILandroid/graphics/Region;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "setGestureDetectionPassthroughRegion is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final setInputMethodEnabled(Ljava/lang/String;Z)I
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "setInputMethodEnabled is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final setInstalledAndEnabledServices(Ljava/util/List;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    iget-object v3, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mLock:Ljava/lang/Object;

    .line 9
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    move-object/from16 v4, p1

    .line 12
    :try_start_1
    iput-object v4, v0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mInstalledAndEnabledServices:Ljava/util/List;

    .line 14
    iget-object v5, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mAccessibilityServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 16
    const/4 v6, 0x0

    .line 17
    iput v6, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 19
    iput v6, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 21
    const-wide/16 v7, 0x0

    .line 23
    iput-wide v7, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 25
    new-instance v7, Ljava/util/HashSet;

    .line 27
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 30
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v4

    .line 34
    move v8, v6

    .line 35
    move v9, v8

    .line 36
    move v10, v9

    .line 37
    move v11, v10

    .line 38
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v12

    .line 42
    if-eqz v12, :cond_3

    .line 44
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v12

    .line 48
    check-cast v12, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 50
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isAccessibilityTool()Z

    .line 53
    move-result v13

    .line 54
    or-int/2addr v8, v13

    .line 55
    iget-object v13, v12, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 57
    if-eqz v13, :cond_1

    .line 59
    array-length v14, v13

    .line 60
    if-nez v14, :cond_0

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    if-nez v11, :cond_2

    .line 65
    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 68
    move-result-object v13

    .line 69
    invoke-interface {v7, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 72
    goto :goto_2

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    goto :goto_4

    .line 75
    :cond_1
    :goto_1
    const/4 v11, 0x1

    .line 76
    :cond_2
    :goto_2
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getInteractiveUiTimeoutMillis()I

    .line 79
    move-result v13

    .line 80
    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    .line 83
    move-result v9

    .line 84
    invoke-virtual {v12}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getNonInteractiveUiTimeoutMillis()I

    .line 87
    move-result v13

    .line 88
    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    .line 91
    move-result v10

    .line 92
    iget-wide v13, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 94
    move-object v15, v7

    .line 95
    iget-wide v6, v12, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 97
    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 100
    move-result-wide v6

    .line 101
    iput-wide v6, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 103
    iget v6, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 105
    iget v7, v12, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 107
    or-int/2addr v6, v7

    .line 108
    iput v6, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 110
    iget v6, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 112
    iget v7, v12, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 114
    or-int/2addr v6, v7

    .line 115
    iput v6, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 117
    iget v6, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 119
    iget v7, v12, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 121
    or-int/2addr v6, v7

    .line 122
    iput v6, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 124
    invoke-virtual {v0, v12}, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->setDefaultPropertiesIfNullLocked(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 127
    move-object v7, v15

    .line 128
    const/4 v6, 0x0

    .line 129
    goto :goto_0

    .line 130
    :cond_3
    move-object v15, v7

    .line 131
    invoke-virtual {v5, v8}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setAccessibilityTool(Z)V

    .line 134
    invoke-virtual {v5, v9}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setInteractiveUiTimeoutMillis(I)V

    .line 137
    invoke-virtual {v5, v10}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setNonInteractiveUiTimeoutMillis(I)V

    .line 140
    iput v9, v0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mInteractiveTimeout:I

    .line 142
    iput v10, v0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mNonInteractiveTimeout:I

    .line 144
    if-eqz v11, :cond_4

    .line 146
    const/4 v4, 0x0

    .line 147
    iput-object v4, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 149
    goto :goto_3

    .line 150
    :cond_4
    const/4 v4, 0x0

    .line 151
    new-array v6, v4, [Ljava/lang/String;

    .line 153
    move-object v4, v15

    .line 154
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 157
    move-result-object v4

    .line 158
    check-cast v4, [Ljava/lang/String;

    .line 160
    iput-object v4, v5, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 162
    :goto_3
    invoke-virtual {v0, v5}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->setDynamicallyConfigurableProperties(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 165
    iget-object v4, v0, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    .line 167
    iget v0, v0, Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;->mDeviceId:I

    .line 169
    check-cast v4, Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 171
    iget-object v4, v4, Lcom/android/server/accessibility/AccessibilityManagerService;->mProxyManager:Lcom/android/server/accessibility/ProxyManager;

    .line 173
    const/4 v5, 0x0

    .line 174
    invoke-virtual {v4, v0, v5}, Lcom/android/server/accessibility/ProxyManager;->onProxyChanged(IZ)V

    .line 177
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 181
    return-void

    .line 182
    :goto_4
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 184
    :catchall_1
    move-exception v0

    .line 185
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 188
    throw v0
.end method

.method public final setMagnificationCallbackEnabled(IZ)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "setMagnificationCallbackEnabled is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final setMagnificationConfig(ILandroid/accessibilityservice/MagnificationConfig;Z)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "setMagnificationConfig is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final setOnKeyEventResult(ZI)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "setOnKeyEventResult is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final setServiceDetectsGesturesEnabled(IZ)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "setServiceDetectsGesturesEnabled is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "setServiceInfo is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final setSoftKeyboardCallbackEnabled(Z)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "setSoftKeyboardCallbackEnabled is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final setSoftKeyboardShowMode(I)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "setSoftKeyboardShowMode is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final setTouchExplorationPassthroughRegion(ILandroid/graphics/Region;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "setTouchExplorationPassthroughRegion is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final supportsFlagForNotImportantViews(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final switchToInputMethod(Ljava/lang/String;)Z
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "switchToInputMethod is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method

.method public final takeScreenshot(ILandroid/os/RemoteCallback;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string/jumbo p1, "takeScreenshot is not supported"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    throw p0
.end method
