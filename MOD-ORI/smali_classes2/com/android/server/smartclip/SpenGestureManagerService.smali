.class public final Lcom/android/server/smartclip/SpenGestureManagerService;
.super Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static mContext:Landroid/content/Context;


# instance fields
.field public ALLOWANCE_HOVER_TIME:I

.field public ALLOWANCE_RANGE_X:I

.field public ALLOWANCE_RANGE_Y:I

.field public final mAcAutoFloatingIconMode:Z

.field public mAcButtonPressTouchDownTime:J

.field public mAcIsBound:Z

.field public mAcIsFloatingIconEnabled:Z

.field public mAcIsHoverOccuredBeforeTouchDown:Z

.field public mAcIsPenButtonPressed:Z

.field public mAcIsScreenOffMemoShowing:Z

.field public mAcIsTouchDowned:Z

.field public mAcLastStartTime:J

.field public mAcPenButtonPressedTime:J

.field public mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

.field public mAcService:Landroid/os/Messenger;

.field public final mAcServiceConnection:Lcom/android/server/smartclip/SpenGestureManagerService$6;

.field public mAirGestureListener:Landroid/os/RemoteCallbackList;

.field public mBatteryOnlineStatus:I

.field public mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

.field public final mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

.field public mBootComplete:Z

.field public final mBroadcastReceiver:Lcom/android/server/smartclip/SpenGestureManagerService$1;

.field public final mClearCoverOpened:Z

.field public final mDataExtractionSync:Ljava/lang/Object;

.field public mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field public final mGestureDetector:Landroid/view/GestureDetector;

.field public final mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

.field public mHoverListeners:Landroid/os/RemoteCallbackList;

.field public final mInboxSPen:Z

.field public mInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

.field public mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

.field public final mInputManager:Landroid/hardware/input/InputManager;

.field public mIsEnableLockScreenQuickNote:Z

.field public mIsPenInserted:Ljava/lang/Boolean;

.field public mIsPenReversed:Ljava/lang/Boolean;

.field public mLastDoubleTapPosition:Landroid/graphics/Point;

.field public mLastScreenOffDoubleTapTime:J

.field public mMissingMethodFlags:I

.field public final mPenDataStructArray:Ljava/util/List;

.field public final mPenDoubleTap:Lcom/android/server/smartclip/SpenGestureManagerService$4;

.field public mScreenOffReason:I

.field public final mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

.field public final mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

.field public mSpenUsingStartTime:J

.field public final mSpenUspLevel:I

.field public final mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;


# direct methods
.method public static -$$Nest$mbroastcastHoverEvent(Lcom/android/server/smartclip/SpenGestureManagerService;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    :catch_0
    :cond_1
    :goto_0
    if-lez v0, :cond_3

    .line 11
    .line 12
    add-int/lit8 v0, v0, -0x1

    .line 13
    .line 14
    const/16 v1, 0x9

    .line 15
    .line 16
    if-ne p1, v1, :cond_2

    .line 17
    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    .line 25
    .line 26
    invoke-interface {v1}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;->onHoverEnter()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const/16 v1, 0xa

    .line 31
    .line 32
    if-ne p1, v1, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    .line 41
    .line 42
    invoke-interface {v1}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;->onHoverExit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 49
    .line 50
    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v0, "mHoverListeners.getRegisteredCallbackCount() = "

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    const-string p1, "SpenGestureManagerService"

    .line 72
    .line 73
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :goto_1
    return-void
.end method

.method public static -$$Nest$mcheckHoverStay(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x7

    .line 15
    if-ne p2, v0, :cond_4

    .line 16
    .line 17
    new-instance p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;

    .line 18
    .line 19
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    float-to-int v0, v0

    .line 27
    iput v0, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    float-to-int p1, p1

    .line 34
    iput p1, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    iput-wide v2, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->EnterTime:J

    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    .line 43
    .line 44
    check-cast p1, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    .line 50
    .line 51
    check-cast p1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    sub-int/2addr p1, v1

    .line 58
    :goto_0
    if-ltz p1, :cond_5

    .line 59
    .line 60
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    .line 61
    .line 62
    add-int/lit8 v1, p1, -0x1

    .line 63
    .line 64
    check-cast v0, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;

    .line 71
    .line 72
    iget v0, p1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    .line 73
    .line 74
    iget v2, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    .line 75
    .line 76
    iget v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    .line 77
    .line 78
    sub-int v4, v2, v3

    .line 79
    .line 80
    if-le v0, v4, :cond_5

    .line 81
    .line 82
    add-int/2addr v2, v3

    .line 83
    if-ge v0, v2, :cond_5

    .line 84
    .line 85
    iget v0, p1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    .line 86
    .line 87
    iget v2, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    .line 88
    .line 89
    iget v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    .line 90
    .line 91
    sub-int v4, v2, v3

    .line 92
    .line 93
    if-le v0, v4, :cond_5

    .line 94
    .line 95
    add-int/2addr v2, v3

    .line 96
    if-ge v0, v2, :cond_5

    .line 97
    .line 98
    iget-wide v2, p1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->EnterTime:J

    .line 99
    .line 100
    iget-wide v4, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->EnterTime:J

    .line 101
    .line 102
    iget p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    .line 103
    .line 104
    int-to-long v6, p1

    .line 105
    sub-long/2addr v4, v6

    .line 106
    cmp-long p1, v2, v4

    .line 107
    .line 108
    if-gez p1, :cond_3

    .line 109
    .line 110
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    .line 111
    .line 112
    check-cast p1, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 115
    .line 116
    .line 117
    new-instance p1, Landroid/os/Bundle;

    .line 118
    .line 119
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v0, "RawX"

    .line 123
    .line 124
    iget v1, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    .line 125
    .line 126
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    .line 128
    .line 129
    const-string v0, "RawY"

    .line 130
    .line 131
    iget v1, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    .line 132
    .line 133
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    .line 135
    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v0, "dictionary service start : hover time = "

    .line 139
    .line 140
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v0, " x = "

    .line 149
    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v0, " y = "

    .line 159
    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    iget v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    .line 164
    .line 165
    const-string v1, "SpenGestureManagerService"

    .line 166
    .line 167
    invoke-static {p1, v0, v1}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget p1, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawX:I

    .line 171
    .line 172
    iget p2, p2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDataStruct;->RawY:I

    .line 173
    .line 174
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    .line 175
    .line 176
    if-nez v0, :cond_1

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_1
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    :catch_0
    :goto_1
    if-lez v0, :cond_2

    .line 184
    .line 185
    add-int/lit8 v0, v0, -0x1

    .line 186
    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    .line 188
    .line 189
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    check-cast v1, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;

    .line 194
    .line 195
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;->onHoverStay(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_2
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    .line 200
    .line 201
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_3
    move p1, v1

    .line 206
    goto/16 :goto_0

    .line 207
    .line 208
    :cond_4
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    .line 209
    .line 210
    check-cast p0, Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 213
    .line 214
    .line 215
    :cond_5
    :goto_2
    return-void
.end method

.method public static -$$Nest$monFloatingIconSettingChanged(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v1, "onFloatingIconSettingChanged : "

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "SpenGestureManagerService"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsFloatingIconEnabled:Z

    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBootComplete:Z

    .line 30
    .line 31
    if-eq p1, v0, :cond_0

    .line 32
    .line 33
    invoke-static {}, Lcom/android/server/smartclip/SpenGarageSpecManager;->getInstance()Lcom/android/server/smartclip/SpenGarageSpecManager;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-boolean v0, v0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mIsBundledSpenSupported:Z

    .line 38
    .line 39
    if-ne p1, v0, :cond_2

    .line 40
    .line 41
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v0, "cause"

    .line 47
    .line 48
    const-string v1, "floating_on"

    .line 49
    .line 50
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandUiService(Landroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsFloatingIconEnabled:Z

    .line 59
    .line 60
    :cond_2
    :goto_0
    return-void
.end method

.method public static -$$Nest$mprocessMotionEventForAirCMD(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/view/MotionEvent;IZ)V
    .locals 13

    .line 1
    move-object v7, p0

    .line 2
    move v1, p2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v8, 0x0

    .line 7
    move-object v9, p1

    .line 8
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v2, 0x2

    .line 13
    if-eq v0, v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :cond_0
    const-wide/16 v3, -0x1

    .line 18
    .line 19
    if-eqz v1, :cond_f

    .line 20
    .line 21
    const/4 v10, 0x1

    .line 22
    if-eq v1, v10, :cond_e

    .line 23
    .line 24
    const/4 v0, 0x5

    .line 25
    if-eq v1, v0, :cond_f

    .line 26
    .line 27
    const/4 v0, 0x6

    .line 28
    if-eq v1, v0, :cond_e

    .line 29
    .line 30
    const/4 v0, 0x7

    .line 31
    const-wide/16 v11, 0x0

    .line 32
    .line 33
    if-eq v1, v0, :cond_6

    .line 34
    .line 35
    const/16 v0, 0x9

    .line 36
    .line 37
    if-eq v1, v0, :cond_3

    .line 38
    .line 39
    const/16 v0, 0xa

    .line 40
    .line 41
    if-eq v1, v0, :cond_1

    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_1
    iget-boolean v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    .line 46
    .line 47
    if-eqz v0, :cond_11

    .line 48
    .line 49
    iget-boolean v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    .line 50
    .line 51
    if-nez v0, :cond_11

    .line 52
    .line 53
    iget-object v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    .line 54
    .line 55
    if-eqz v0, :cond_11

    .line 56
    .line 57
    const/4 v2, -0x1

    .line 58
    const/16 v3, -0x100

    .line 59
    .line 60
    const/16 v4, 0x140

    .line 61
    .line 62
    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/input/InputManager;->semGetScanCodeState(III)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_11

    .line 67
    .line 68
    iget-object v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    .line 69
    .line 70
    const/16 v2, 0x3019

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    iget-object v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 81
    .line 82
    .line 83
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 84
    .line 85
    .line 86
    move-result-wide v2

    .line 87
    invoke-static {p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->getPenName(Landroid/view/MotionEvent;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    const-wide/16 v4, 0x0

    .line 92
    .line 93
    move-object v0, p0

    .line 94
    move v1, p2

    .line 95
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->dispatchPenDetectionInfo(IJJLjava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iput-boolean v8, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsHoverOccuredBeforeTouchDown:Z

    .line 99
    .line 100
    goto/16 :goto_2

    .line 101
    .line 102
    :cond_3
    iget-boolean v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    .line 103
    .line 104
    if-eqz v0, :cond_4

    .line 105
    .line 106
    iget-boolean v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    .line 107
    .line 108
    if-nez v0, :cond_4

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 111
    .line 112
    .line 113
    move-result-wide v2

    .line 114
    cmp-long v0, v2, v11

    .line 115
    .line 116
    if-gtz v0, :cond_4

    .line 117
    .line 118
    iput-boolean v10, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsHoverOccuredBeforeTouchDown:Z

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 121
    .line 122
    .line 123
    move-result-wide v2

    .line 124
    invoke-static {p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->getPenName(Landroid/view/MotionEvent;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    const-wide/16 v4, 0x64

    .line 129
    .line 130
    move-object v0, p0

    .line 131
    move v1, p2

    .line 132
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->dispatchPenDetectionInfo(IJJLjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_4
    iput-boolean v8, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    .line 136
    .line 137
    iget-wide v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    .line 138
    .line 139
    cmp-long v2, v0, v11

    .line 140
    .line 141
    if-lez v2, :cond_5

    .line 142
    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 144
    .line 145
    .line 146
    move-result-wide v2

    .line 147
    cmp-long v0, v0, v2

    .line 148
    .line 149
    if-nez v0, :cond_5

    .line 150
    .line 151
    move v8, v10

    .line 152
    :cond_5
    iput-boolean v8, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsTouchDowned:Z

    .line 153
    .line 154
    goto/16 :goto_2

    .line 155
    .line 156
    :cond_6
    iget-wide v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    .line 157
    .line 158
    cmp-long v0, v0, v11

    .line 159
    .line 160
    if-lez v0, :cond_7

    .line 161
    .line 162
    if-nez p3, :cond_7

    .line 163
    .line 164
    iput-boolean v8, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsTouchDowned:Z

    .line 165
    .line 166
    :cond_7
    iget-boolean v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsTouchDowned:Z

    .line 167
    .line 168
    if-eqz v0, :cond_8

    .line 169
    .line 170
    goto/16 :goto_2

    .line 171
    .line 172
    :cond_8
    if-eqz p3, :cond_9

    .line 173
    .line 174
    iget-boolean v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    .line 175
    .line 176
    if-nez v0, :cond_9

    .line 177
    .line 178
    iput-boolean v10, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    .line 179
    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 181
    .line 182
    .line 183
    move-result-wide v0

    .line 184
    iput-wide v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPenButtonPressedTime:J

    .line 185
    .line 186
    goto/16 :goto_2

    .line 187
    .line 188
    :cond_9
    if-nez p3, :cond_11

    .line 189
    .line 190
    iget-boolean v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    .line 191
    .line 192
    if-eqz v0, :cond_11

    .line 193
    .line 194
    iput-boolean v8, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    .line 195
    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 197
    .line 198
    .line 199
    move-result-wide v0

    .line 200
    iget-wide v3, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPenButtonPressedTime:J

    .line 201
    .line 202
    sub-long/2addr v0, v3

    .line 203
    cmp-long v3, v0, v11

    .line 204
    .line 205
    if-lez v3, :cond_11

    .line 206
    .line 207
    const-wide/16 v3, 0x320

    .line 208
    .line 209
    cmp-long v0, v0, v3

    .line 210
    .line 211
    if-lez v0, :cond_a

    .line 212
    .line 213
    goto/16 :goto_2

    .line 214
    .line 215
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    float-to-int v0, v0

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    float-to-int v1, v1

    .line 225
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 226
    .line 227
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 236
    .line 237
    div-int/2addr v3, v2

    .line 238
    if-ge v0, v3, :cond_b

    .line 239
    .line 240
    const-string v2, "left"

    .line 241
    .line 242
    goto :goto_0

    .line 243
    :cond_b
    const-string/jumbo v2, "right"

    .line 244
    .line 245
    .line 246
    :goto_0
    iget-boolean v3, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    .line 247
    .line 248
    const-string v4, "SpenGestureManagerService"

    .line 249
    .line 250
    if-nez v3, :cond_c

    .line 251
    .line 252
    const-string v0, "Can not start AirCommandUiService. #2"

    .line 253
    .line 254
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    goto/16 :goto_2

    .line 258
    .line 259
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 260
    .line 261
    .line 262
    move-result-wide v5

    .line 263
    iget-wide v8, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcLastStartTime:J

    .line 264
    .line 265
    sub-long v8, v5, v8

    .line 266
    .line 267
    cmp-long v3, v8, v11

    .line 268
    .line 269
    if-lez v3, :cond_d

    .line 270
    .line 271
    const-wide/16 v10, 0x190

    .line 272
    .line 273
    cmp-long v3, v8, v10

    .line 274
    .line 275
    if-gez v3, :cond_d

    .line 276
    .line 277
    const-string v0, "Can not start AirCommandUiService. #3."

    .line 278
    .line 279
    invoke-static {v0, v8, v9, v4}, Lcom/android/server/chimera/genie/GenieMemoryManager$ReclaimerHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)V

    .line 280
    .line 281
    .line 282
    goto :goto_2

    .line 283
    :cond_d
    iput-wide v5, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcLastStartTime:J

    .line 284
    .line 285
    const-string v3, "Start AirCommandUiService. #2"

    .line 286
    .line 287
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    new-instance v3, Landroid/os/Bundle;

    .line 291
    .line 292
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 293
    .line 294
    .line 295
    const-string v4, "cause"

    .line 296
    .line 297
    const-string v5, "button_pressed"

    .line 298
    .line 299
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    const-string v4, "direction"

    .line 303
    .line 304
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    const-string v2, "button_press_x"

    .line 308
    .line 309
    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 310
    .line 311
    .line 312
    const-string v0, "button_press_y"

    .line 313
    .line 314
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0, v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandUiService(Landroid/os/Bundle;)V

    .line 318
    .line 319
    .line 320
    goto :goto_2

    .line 321
    :cond_e
    if-eqz p3, :cond_11

    .line 322
    .line 323
    iget-wide v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    .line 324
    .line 325
    cmp-long v0, v0, v3

    .line 326
    .line 327
    if-nez v0, :cond_11

    .line 328
    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 330
    .line 331
    .line 332
    move-result-wide v0

    .line 333
    iput-wide v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    .line 334
    .line 335
    goto :goto_2

    .line 336
    :cond_f
    if-eqz p3, :cond_10

    .line 337
    .line 338
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    .line 339
    .line 340
    .line 341
    move-result-wide v2

    .line 342
    iput-wide v2, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    .line 343
    .line 344
    goto :goto_1

    .line 345
    :cond_10
    iput-wide v3, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    .line 346
    .line 347
    :goto_1
    iget-boolean v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    .line 348
    .line 349
    if-eqz v0, :cond_11

    .line 350
    .line 351
    iget-boolean v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    .line 352
    .line 353
    if-nez v0, :cond_11

    .line 354
    .line 355
    iget-boolean v0, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsHoverOccuredBeforeTouchDown:Z

    .line 356
    .line 357
    if-nez v0, :cond_11

    .line 358
    .line 359
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 360
    .line 361
    .line 362
    move-result-wide v2

    .line 363
    invoke-static {p1}, Lcom/android/server/smartclip/SpenGestureManagerService;->getPenName(Landroid/view/MotionEvent;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v6

    .line 367
    const-wide/16 v4, 0x64

    .line 368
    .line 369
    move-object v0, p0

    .line 370
    move v1, p2

    .line 371
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->dispatchPenDetectionInfo(IJJLjava/lang/String;)V

    .line 372
    .line 373
    .line 374
    :cond_11
    :goto_2
    return-void
.end method

.method public static -$$Nest$msendDefferedPenDetectionInfo(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v1, "sendDefferedPenDetectionInfo."

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    .line 15
    .line 16
    iget v1, v1, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->action:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "SpenGestureManagerService"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    new-instance v0, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    .line 36
    .line 37
    iget-wide v2, v2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->eventTime:J

    .line 38
    .line 39
    const-string v4, "eventTime"

    .line 40
    .line 41
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    .line 45
    .line 46
    iget-object v2, v2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->penName:Ljava/lang/String;

    .line 47
    .line 48
    const-string/jumbo v3, "penName"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    .line 55
    .line 56
    iget v2, v2, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->action:I

    .line 57
    .line 58
    const/4 v3, 0x1

    .line 59
    const/4 v4, 0x0

    .line 60
    const/4 v5, 0x0

    .line 61
    invoke-static {v4, v3, v2, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 66
    .line 67
    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcService:Landroid/os/Messenger;

    .line 69
    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    const-string v2, "Failed to send the pen detection info"

    .line 78
    .line 79
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_0
    iput-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    .line 83
    .line 84
    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    .line 4
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcService:Landroid/os/Messenger;

    .line 6
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    .line 7
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsHoverOccuredBeforeTouchDown:Z

    .line 8
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    .line 9
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsTouchDowned:Z

    .line 10
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsFloatingIconEnabled:Z

    .line 11
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    const/4 v2, 0x1

    .line 12
    iput-boolean v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    const-wide/16 v3, 0x0

    .line 13
    iput-wide v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    .line 14
    iput-wide v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPenButtonPressedTime:J

    .line 15
    iput-wide v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcLastStartTime:J

    .line 16
    iput v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    .line 17
    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    .line 18
    iput-boolean v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    .line 19
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    .line 21
    iput v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mScreenOffReason:I

    .line 22
    iput-wide v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J

    .line 23
    new-instance v0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-direct {v0}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    .line 24
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBootComplete:Z

    .line 25
    iput-wide v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastScreenOffDoubleTapTime:J

    .line 26
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$1;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    .line 27
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$4;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDoubleTap:Lcom/android/server/smartclip/SpenGestureManagerService$4;

    .line 28
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$5;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    .line 29
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$6;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcServiceConnection:Lcom/android/server/smartclip/SpenGestureManagerService$6;

    const/16 v0, 0xa

    .line 30
    iput v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    .line 31
    iput v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    const/16 v0, 0x12c

    .line 32
    iput v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    .line 34
    sput-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 35
    const-string p0, "SpenGestureManagerService"

    const-string p1, "SpenGestureManagerService(Context) "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 36
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/content/smartclip/ISpenGestureService$Stub;-><init>()V

    const/4 v2, 0x0

    .line 37
    iput-object v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v3, 0x0

    .line 38
    iput-boolean v3, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    .line 39
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    .line 40
    iput-object v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcService:Landroid/os/Messenger;

    .line 41
    iput-boolean v3, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    .line 42
    iput-boolean v3, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsHoverOccuredBeforeTouchDown:Z

    .line 43
    iput-boolean v3, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsPenButtonPressed:Z

    .line 44
    iput-boolean v3, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsTouchDowned:Z

    .line 45
    iput-boolean v3, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsFloatingIconEnabled:Z

    .line 46
    iput-boolean v3, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    const/4 v4, 0x1

    .line 47
    iput-boolean v4, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    const-wide/16 v5, 0x0

    .line 48
    iput-wide v5, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcButtonPressTouchDownTime:J

    .line 49
    iput-wide v5, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPenButtonPressedTime:J

    .line 50
    iput-wide v5, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcLastStartTime:J

    .line 51
    iput v4, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    .line 52
    iput-object v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcPendingPenDetectionInfo:Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    .line 53
    iput-boolean v4, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    .line 54
    iput-boolean v3, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    const/4 v2, -0x1

    .line 55
    iput v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    .line 56
    iput v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mScreenOffReason:I

    .line 57
    iput-wide v5, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J

    .line 58
    new-instance v7, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    invoke-direct {v7}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;-><init>()V

    iput-object v7, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    .line 59
    iput-boolean v3, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBootComplete:Z

    .line 60
    iput-wide v5, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastScreenOffDoubleTapTime:J

    .line 61
    new-instance v9, Lcom/android/server/smartclip/SpenGestureManagerService$1;

    invoke-direct {v9, v0}, Lcom/android/server/smartclip/SpenGestureManagerService$1;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    .line 62
    new-instance v5, Lcom/android/server/smartclip/SpenGestureManagerService$4;

    invoke-direct {v5, v0}, Lcom/android/server/smartclip/SpenGestureManagerService$4;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v5, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDoubleTap:Lcom/android/server/smartclip/SpenGestureManagerService$4;

    .line 63
    new-instance v5, Lcom/android/server/smartclip/SpenGestureManagerService$5;

    invoke-direct {v5, v0}, Lcom/android/server/smartclip/SpenGestureManagerService$5;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v5, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    .line 64
    new-instance v6, Lcom/android/server/smartclip/SpenGestureManagerService$6;

    invoke-direct {v6, v0}, Lcom/android/server/smartclip/SpenGestureManagerService$6;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    iput-object v6, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcServiceConnection:Lcom/android/server/smartclip/SpenGestureManagerService$6;

    const/16 v6, 0xa

    .line 65
    iput v6, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    .line 66
    iput v6, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    const/16 v7, 0x12c

    .line 67
    iput v7, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    .line 68
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mPenDataStructArray:Ljava/util/List;

    .line 69
    sput-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 70
    const-string v7, "SpenGestureManagerService"

    const-string v8, "SpenGestureManagerService(Context context, WindowManagerService Wm)"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v8

    const-string v10, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    invoke-virtual {v8, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    .line 72
    rem-int/2addr v8, v6

    const/4 v6, 0x5

    if-ne v8, v6, :cond_0

    .line 73
    iput-boolean v4, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    goto :goto_0

    .line 74
    :cond_0
    iput-boolean v3, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    .line 75
    :goto_0
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "phone"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 76
    new-instance v6, Landroid/view/GestureDetector;

    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/android/server/smartclip/SpenGestureManagerService$2;

    invoke-direct {v10, v0}, Lcom/android/server/smartclip/SpenGestureManagerService$2;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    invoke-direct {v6, v8, v10}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v6, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mGestureDetector:Landroid/view/GestureDetector;

    .line 77
    new-instance v6, Lcom/android/server/smartclip/SpenGestureManagerService$3;

    .line 78
    invoke-direct {v6}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 79
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v8, v10, v11, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 80
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string v8, "input"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/input/InputManager;

    iput-object v6, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    .line 81
    iget v6, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    if-lez v6, :cond_1

    .line 82
    new-instance v6, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;

    invoke-direct {v6, v0}, Lcom/android/server/smartclip/SpenGestureManagerService$SPenGestureInputEventReceiver;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    move-object/from16 v8, p2

    .line 83
    invoke-virtual {v8, v6, v3}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    .line 84
    :cond_1
    new-instance v6, Lcom/android/server/smartclip/BleSpenManager;

    invoke-direct {v6, v1}, Lcom/android/server/smartclip/BleSpenManager;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    .line 85
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const-string v8, "SemInputDeviceManagerService"

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    iput-object v1, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 86
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 87
    const-string v8, "lock_screen_quick_note"

    const/4 v15, -0x2

    invoke-static {v1, v8, v3, v15}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v4, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    iput-boolean v1, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "checkSettingCondition, LOCK_SCREEN_QUICK_NOTE : "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsEnableLockScreenQuickNote:Z

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    const-string v8, "com.samsung.pen.INSERT"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v8, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    iget-boolean v8, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    if-eqz v8, :cond_3

    .line 95
    const-string v8, "com.sec.android.intent.action.BLACK_MEMO"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    :cond_3
    invoke-virtual {v6}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 97
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    :cond_4
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    const/4 v14, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v10, v11

    move-object v11, v1

    invoke-virtual/range {v8 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 99
    new-instance v1, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;

    invoke-direct {v1, v0, v5}, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;Lcom/android/server/smartclip/SpenGestureManagerService$5;)V

    .line 100
    sget-object v6, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 101
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_cmd_use_minimized"

    invoke-static {v8, v9, v3, v15}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const-string v10, "air_button_onoff"

    if-eqz v8, :cond_5

    .line 102
    sget-object v8, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v10, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v4, :cond_5

    goto :goto_2

    :cond_5
    move v4, v3

    .line 103
    :goto_2
    invoke-static {v0, v4}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$monFloatingIconSettingChanged(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V

    .line 104
    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 105
    invoke-virtual {v6, v4, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 106
    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 107
    invoke-virtual {v6, v4, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 108
    const-string/jumbo v4, "pen_digitizer_enabled"

    .line 109
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    new-instance v8, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver$1;

    invoke-direct {v8, v1, v5}, Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver$1;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService$AcSettingsObserver;Lcom/android/server/smartclip/SpenGestureManagerService$5;)V

    .line 110
    invoke-virtual {v6, v4, v3, v8, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 111
    iget v1, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    if-lez v1, :cond_6

    .line 112
    new-instance v1, Lcom/android/server/smartclip/SpenThemeManager;

    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/smartclip/SpenThemeManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    goto :goto_3

    .line 113
    :cond_6
    const-string v0, "Theme isn\'t supported. Not a spen model."

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public static checkChangeSpenThemePermission()V
    .locals 1

    .line 1
    const-string v0, "com.samsung.android.permission.CHANGE_SPEN_THEME"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkPermission(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static checkPermission(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v1, p0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const-string v1, "checkPermission : Requires "

    .line 22
    .line 23
    const-string v2, " permission. caller PID="

    .line 24
    .line 25
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v2, " UID="

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "SpenGestureManagerService"

    .line 49
    .line 50
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    new-instance v0, Ljava/lang/SecurityException;

    .line 54
    .line 55
    const-string v1, "Requires "

    .line 56
    .line 57
    const-string v2, " permission"

    .line 58
    .line 59
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0
.end method

.method public static checkSmartClipMetaExtractionPermission()V
    .locals 1

    .line 1
    const-string v0, "com.samsung.android.permission.EXTRACT_SMARTCLIP_DATA"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkPermission(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static getPenName(Landroid/view/MotionEvent;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
.end method

.method public static getTopMostPackage()Landroid/content/ComponentName;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "activity"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/ActivityManager;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const-string v0, "SpenGestureManagerService"

    .line 23
    .line 24
    const-string v1, "getTopMostPackage : Failed to get running task info"

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    return-object v0

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 37
    .line 38
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 39
    .line 40
    return-object v0
.end method

.method public static isUidSignature()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x3e8

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public static sendLogSpenInsertInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "app_id"

    .line 7
    .line 8
    const-string v2, "com.android.server.smartclip"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "feature"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string p1, "extra"

    .line 19
    .line 20
    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance p0, Landroid/content/Intent;

    .line 24
    .line 25
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string p1, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    const-string p1, "data"

    .line 34
    .line 35
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    const-string p1, "com.samsung.android.providers.context"

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final canStartAirCommand()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "device_provisioned"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v2

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-string p0, "SetupWizard on"

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    const-string p0, "FactoryBinary"

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    iget-boolean p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    .line 35
    .line 36
    if-eqz p0, :cond_3

    .line 37
    .line 38
    const-string p0, "ScreenOffMemo on"

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    const/4 p0, 0x0

    .line 42
    :goto_1
    if-nez p0, :cond_4

    .line 43
    .line 44
    return v1

    .line 45
    :cond_4
    const-string v0, "Failed to start AirCommand."

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string v0, "SpenGestureManagerService"

    .line 52
    .line 53
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    return v2
.end method

.method public final dispatchPenDetectionInfo(IJJLjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p1, v0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->action:I

    .line 7
    .line 8
    iput-wide p2, v0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->eventTime:J

    .line 9
    .line 10
    iput-object p6, v0, Lcom/android/server/smartclip/SpenGestureManagerService$PenDetectionInfo;->penName:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/16 p2, 0x3019

    .line 19
    .line 20
    iput p2, p1, Landroid/os/Message;->what:I

    .line 21
    .line 22
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    .line 25
    .line 26
    invoke-virtual {p0, p1, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v0, "Permission Denial: can\'t dump from from pid="

    .line 6
    .line 7
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, ", uid="

    .line 18
    .line 19
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    const-string v0, "android.permission.DUMP"

    .line 34
    .line 35
    invoke-virtual {p1, v0, p3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string p1, "AirCommand:"

    .line 39
    .line 40
    const-string p3, "  UspLevel : "

    .line 41
    .line 42
    invoke-static {p2, p1, p3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    .line 47
    .line 48
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string p3, "  InBoxType : "

    .line 61
    .line 62
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-boolean p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInboxSPen:Z

    .line 66
    .line 67
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string p3, "  PenReversed : "

    .line 80
    .line 81
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenReversed:Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    new-instance p1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string p3, "  PenInserted : "

    .line 99
    .line 100
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Ljava/lang/Boolean;

    .line 104
    .line 105
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string p3, "  mAcIsBound : "

    .line 118
    .line 119
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-boolean p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    .line 123
    .line 124
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string p3, "  mAcIsFloatingIconEnabled : "

    .line 137
    .line 138
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-boolean p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsFloatingIconEnabled:Z

    .line 142
    .line 143
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string p3, ", "

    .line 147
    .line 148
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget-boolean p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    .line 152
    .line 153
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string p3, "  mAcIsScreenOffMemoShowing : "

    .line 166
    .line 167
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-boolean p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    .line 171
    .line 172
    invoke-static {p1, p0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method public final getBleSpenAddress()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "SpenGestureManagerService"

    .line 2
    .line 3
    const-string v1, "getBleSpenAddress"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    .line 12
    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, "BleSpenManager"

    .line 21
    .line 22
    const-string v1, "getBleSpenAddress : BLE Spen is not supported"

    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    const/4 p0, 0x0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :try_start_1
    const-string v0, "/efs/spen/blespen_addr"

    .line 33
    .line 34
    invoke-static {v0}, Lcom/android/server/smartclip/BleSpenManager;->readStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    monitor-exit p0

    .line 39
    move-object p0, v0

    .line 40
    :goto_0
    return-object p0

    .line 41
    :goto_1
    monitor-exit p0

    .line 42
    throw v0
.end method

.method public final getBleSpenCmfCode()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "SpenGestureManagerService"

    .line 2
    .line 3
    const-string v1, "getBleSpenCmfCode"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    .line 12
    .line 13
    monitor-enter p0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, "BleSpenManager"

    .line 21
    .line 22
    const-string v1, "getBleSpenCmfCode : BLE Spen is not supported"

    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    const/4 p0, 0x0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :try_start_1
    const-string v0, "/efs/spen/blespen_cmf"

    .line 33
    .line 34
    invoke-static {v0}, Lcom/android/server/smartclip/BleSpenManager;->readStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    monitor-exit p0

    .line 39
    move-object p0, v0

    .line 40
    :goto_0
    return-object p0

    .line 41
    :goto_1
    monitor-exit p0

    .line 42
    throw v0
.end method

.method public final getCurrentEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v0, "no permission to use getCurrentEditorInfo() : "

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v0, "SpenGestureManagerService"

    .line 27
    .line 28
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return-object p0

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 34
    .line 35
    return-object p0
.end method

.method public final getCurrentInputContext()Lcom/android/internal/inputmethod/IRemoteInputConnection;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v0, "no permission to use getCurrentInputContext() : "

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v0, "SpenGestureManagerService"

    .line 27
    .line 28
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    return-object p0

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 34
    .line 35
    return-object p0
.end method

.method public final getCurrentMissingMethodFlags()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mMissingMethodFlags:I

    .line 2
    .line 3
    return p0
.end method

.method public final getScreenOffDoubleTabTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastScreenOffDoubleTapTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getScreenOffReason()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mScreenOffReason:I

    .line 2
    .line 3
    return p0
.end method

.method public final getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 8

    .line 1
    const-string v0, "getScrollableRect : Result="

    .line 2
    .line 3
    const-string v1, "SpenGestureManagerService"

    .line 4
    .line 5
    const-string v2, "getScrollableRect()"

    .line 6
    .line 7
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :try_start_0
    const-string/jumbo v3, "window"

    .line 15
    .line 16
    .line 17
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    invoke-virtual {v4, v5}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    new-instance v6, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    .line 33
    .line 34
    const/4 v7, 0x4

    .line 35
    invoke-direct {v6, v4, v7, v5, v2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;-><init>(IIILandroid/os/Parcelable;)V

    .line 36
    .line 37
    .line 38
    iget v5, p1, Landroid/graphics/Rect;->left:I

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    div-int/lit8 v7, v7, 0x2

    .line 45
    .line 46
    add-int/2addr v5, v7

    .line 47
    iget v7, p1, Landroid/graphics/Rect;->top:I

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    div-int/lit8 p1, p1, 0x2

    .line 54
    .line 55
    add-int/2addr v7, p1

    .line 56
    invoke-interface {v3, v5, v7, v6, p2}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    .line 60
    .line 61
    invoke-virtual {p0, v4}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(I)Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    if-eqz p0, :cond_0

    .line 66
    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p2, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    .line 73
    .line 74
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    .line 85
    .line 86
    check-cast p0, Landroid/os/Bundle;

    .line 87
    .line 88
    return-object p0

    .line 89
    :catch_0
    move-exception p0

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    const-string p0, "getScrollableRect : Result is null!!"

    .line 92
    .line 93
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .line 95
    .line 96
    return-object v2

    .line 97
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string p2, "getScrollableAreaInfo : Exception thrown! e = "

    .line 100
    .line 101
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    .line 117
    .line 118
    return-object v2
.end method

.method public final getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;
    .locals 8

    .line 1
    const-string v0, "getScrollableViewInfo : Result="

    .line 2
    .line 3
    const-string v1, "SpenGestureManagerService"

    .line 4
    .line 5
    const-string v2, "getScrollableViewInfo()"

    .line 6
    .line 7
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    :try_start_0
    const-string/jumbo v3, "window"

    .line 15
    .line 16
    .line 17
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    invoke-virtual {v4, v5}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    new-instance v6, Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v7, "hashCode"

    .line 38
    .line 39
    invoke-virtual {v6, v7, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    new-instance p2, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    .line 43
    .line 44
    const/4 v7, 0x5

    .line 45
    invoke-direct {p2, v4, v7, v5, v6}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;-><init>(IIILandroid/os/Parcelable;)V

    .line 46
    .line 47
    .line 48
    iget v5, p1, Landroid/graphics/Rect;->left:I

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    div-int/lit8 v6, v6, 0x2

    .line 55
    .line 56
    add-int/2addr v5, v6

    .line 57
    iget v6, p1, Landroid/graphics/Rect;->top:I

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    div-int/lit8 p1, p1, 0x2

    .line 64
    .line 65
    add-int/2addr v6, p1

    .line 66
    invoke-interface {v3, v5, v6, p2, p3}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    .line 70
    .line 71
    invoke-virtual {p0, v4}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(I)Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    if-eqz p0, :cond_0

    .line 76
    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p2, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    .line 95
    .line 96
    check-cast p0, Landroid/os/Bundle;

    .line 97
    .line 98
    return-object p0

    .line 99
    :catch_0
    move-exception p0

    .line 100
    goto :goto_0

    .line 101
    :cond_0
    const-string p0, "getScrollableViewInfo : Result is null!!"

    .line 102
    .line 103
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    return-object v2

    .line 107
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string p2, "getScrollableViewInfo : Exception thrown! e = "

    .line 110
    .line 111
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .line 127
    .line 128
    return-object v2
.end method

.method public final getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;II)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .locals 7

    .line 1
    const-string v0, "getSmartClipDataByScreenRect : wait is unlocked. Repository = "

    .line 2
    .line 3
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    :try_start_1
    new-instance p1, Landroid/util/DisplayMetrics;

    .line 13
    .line 14
    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 15
    .line 16
    .line 17
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    const-string/jumbo v4, "window"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Landroid/view/WindowManager;

    .line 27
    .line 28
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 33
    .line 34
    .line 35
    new-instance v3, Landroid/graphics/Rect;

    .line 36
    .line 37
    iget v4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 38
    .line 39
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 44
    .line 45
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    const/4 v5, 0x0

    .line 50
    invoke-direct {v3, v5, v5, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 51
    .line 52
    .line 53
    move-object p1, v3

    .line 54
    :cond_0
    const-string/jumbo v3, "window"

    .line 55
    .line 56
    .line 57
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    iget-object v4, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    .line 66
    .line 67
    const/4 v5, 0x1

    .line 68
    invoke-virtual {v4, v5}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    new-instance v6, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    .line 73
    .line 74
    invoke-direct {v6, v4, p1, p3}, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;-><init>(ILandroid/graphics/Rect;I)V

    .line 75
    .line 76
    .line 77
    new-instance p3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    .line 78
    .line 79
    invoke-direct {p3, v4, v5, p4, v6}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;-><init>(IIILandroid/os/Parcelable;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    .line 83
    .line 84
    .line 85
    move-result p4

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    invoke-interface {v3, p4, p1, p3, p2}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    .line 91
    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    .line 94
    .line 95
    invoke-virtual {p0, v4}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(I)Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    if-eqz p0, :cond_3

    .line 100
    .line 101
    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    .line 102
    .line 103
    check-cast p0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;

    .line 104
    .line 105
    if-eqz p0, :cond_1

    .line 106
    .line 107
    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;->mRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    .line 108
    .line 109
    if-nez p0, :cond_2

    .line 110
    .line 111
    const-string p1, "SpenGestureManagerService"

    .line 112
    .line 113
    const-string/jumbo p2, "moveMetaFilesToLocalStorage : Empty repository!"

    .line 114
    .line 115
    .line 116
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :catchall_0
    move-exception p0

    .line 121
    goto :goto_1

    .line 122
    :cond_1
    move-object p0, v1

    .line 123
    :cond_2
    :goto_0
    const-string p1, "SpenGestureManagerService"

    .line 124
    .line 125
    new-instance p2, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    monitor-exit v2

    .line 141
    return-object p0

    .line 142
    :cond_3
    const-string p0, "SpenGestureManagerService"

    .line 143
    .line 144
    const-string p1, "getSmartClipDataByScreenRect : result is null!!"

    .line 145
    .line 146
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    monitor-exit v2

    .line 150
    return-object v1

    .line 151
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 153
    :catch_0
    move-exception p0

    .line 154
    const-string p1, "SpenGestureManagerService"

    .line 155
    .line 156
    new-instance p2, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string p3, "getSmartClipDataByScreenRect : Exception thrown! e = "

    .line 159
    .line 160
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p3

    .line 167
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    .line 176
    .line 177
    return-object v1
.end method

.method public final injectInputEvent(II[Landroid/view/InputEvent;ZLandroid/os/IBinder;)V
    .locals 7

    .line 1
    const-string v0, "injectInputEvent : Result="

    .line 2
    .line 3
    const-string v1, "android.permission.INJECT_EVENTS"

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkPermission(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mDataExtractionSync:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :try_start_1
    const-string/jumbo v2, "window"

    .line 12
    .line 13
    .line 14
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-object v3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    .line 23
    .line 24
    invoke-virtual {v3, p4}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->allocateNewRequestId(Z)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    new-instance v4, Landroid/os/Bundle;

    .line 29
    .line 30
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v5, "events"

    .line 34
    .line 35
    invoke-virtual {v4, v5, p3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 36
    .line 37
    .line 38
    const-string/jumbo p3, "waitUntilConsume"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, p3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    new-instance p3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;

    .line 45
    .line 46
    const/4 v5, 0x3

    .line 47
    const/4 v6, 0x1

    .line 48
    invoke-direct {p3, v3, v5, v6, v4}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;-><init>(IIILandroid/os/Parcelable;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v2, p1, p2, p3, p5}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/content/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V

    .line 52
    .line 53
    .line 54
    if-ne p4, v6, :cond_1

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    .line 57
    .line 58
    invoke-virtual {p0, v3}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->waitResult(I)Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    if-eqz p0, :cond_0

    .line 63
    .line 64
    const-string p1, "SpenGestureManagerService"

    .line 65
    .line 66
    new-instance p2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mResultData:Landroid/os/Parcelable;

    .line 72
    .line 73
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catchall_0
    move-exception p0

    .line 85
    goto :goto_1

    .line 86
    :cond_0
    const-string p0, "SpenGestureManagerService"

    .line 87
    .line 88
    const-string p1, "injectInputEvent : Result is null!!"

    .line 89
    .line 90
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    :cond_1
    :goto_0
    monitor-exit v1

    .line 94
    goto :goto_2

    .line 95
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 97
    :catch_0
    move-exception p0

    .line 98
    const-string p1, "SpenGestureManagerService"

    .line 99
    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string p3, "injectInputEvent : Exception thrown! e = "

    .line 103
    .line 104
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    .line 120
    .line 121
    :goto_2
    return-void
.end method

.method public final isSpenInserted()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final isSpenReversed()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenReversed:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final isSupportBleSpen()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const-string v0, "isSupportBleSpen : "

    .line 8
    .line 9
    const-string v1, "SpenGestureManagerService"

    .line 10
    .line 11
    invoke-static {v0, v1, p0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    return p0
.end method

.method public final notifyAirGesture(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "SpenGestureManagerService"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo p1, "no permission to use notifyAirGesture() : "

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string/jumbo v3, "notifyAirGesture :  i: "

    .line 44
    .line 45
    .line 46
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v3, "  / "

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :catch_0
    :goto_0
    if-lez v0, :cond_2

    .line 68
    .line 69
    add-int/lit8 v0, v0, -0x1

    .line 70
    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lcom/samsung/android/content/smartclip/IAirGestureListener;

    .line 78
    .line 79
    invoke-interface {v1, p1}, Lcom/samsung/android/content/smartclip/IAirGestureListener;->onGesture(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final notifyBleSpenChargeLockState(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "notifyBleSpenChargeLockState : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "SpenGestureManagerService"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    :catch_0
    :goto_0
    if-lez v0, :cond_1

    .line 34
    .line 35
    add-int/lit8 v0, v0, -0x1

    .line 36
    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;

    .line 44
    .line 45
    invoke-interface {v1, p1}, Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;->onChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 52
    .line 53
    .line 54
    :goto_1
    return-void
.end method

.method public final notifyKeyboardClosed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/smartclip/SpenGestureManagerService$9;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$9;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final registerAirGestureListener(Lcom/samsung/android/content/smartclip/IAirGestureListener;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "SpenGestureManagerService"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo p1, "no permission to use registerAirGestureListener() : "

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const-string/jumbo v0, "registerAirGestureListener"

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 43
    .line 44
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    .line 48
    .line 49
    :cond_1
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final registerBleSpenChargeLockStateChangedListener(Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final registerHoverListener(Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final registerInputMethodInfoChangeListener(Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo p1, "no permission to use registerInputMethodInfoChangeListener() : "

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "SpenGestureManagerService"

    .line 27
    .line 28
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    .line 42
    .line 43
    :cond_1
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final resetPenAttachSound(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkChangeSpenThemePermission()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0, p1, v0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenAttachSound(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public final resetPenDetachSound(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkChangeSpenThemePermission()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0, p1, v0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenDetachSound(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public final resetPenHoverIcon(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkChangeSpenThemePermission()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/server/smartclip/SpenThemeManager;->setPenHoverIcon(Ljava/lang/String;Ljava/io/FileDescriptor;FF)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final saveBleSpenLogFile([B)V
    .locals 5

    .line 1
    const-string v0, "SpenGestureManagerService"

    .line 2
    .line 3
    const-string/jumbo v1, "saveBleSpenLogFile"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    .line 13
    .line 14
    const-string/jumbo v0, "saveBleSpenLogFile fail : "

    .line 15
    .line 16
    .line 17
    const-string/jumbo v1, "saveBleSpenLogFile : "

    .line 18
    .line 19
    .line 20
    const-string/jumbo v2, "saveBleSpenLogFile : length="

    .line 21
    .line 22
    .line 23
    monitor-enter p0

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    :try_start_0
    const-string v3, "BleSpenManager"

    .line 27
    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    array-length v2, p1

    .line 34
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    new-instance v2, Ljava/io/File;

    .line 45
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v4, "/log/spen"

    .line 59
    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-nez v3, :cond_0

    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_0

    .line 81
    .line 82
    const-string v3, "BleSpenManager"

    .line 83
    .line 84
    const-string/jumbo v4, "saveBleSpenLogFile : failed to make dirs"

    .line 85
    .line 86
    .line 87
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p1

    .line 92
    goto :goto_5

    .line 93
    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/android/server/smartclip/BleSpenManager;->makeFilePublic(Ljava/io/File;)V

    .line 94
    .line 95
    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v2, "Spen_dumpState.log"

    .line 110
    .line 111
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    new-instance v3, Ljava/io/File;

    .line 119
    .line 120
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    .line 123
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    .line 124
    .line 125
    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    .line 127
    .line 128
    :try_start_2
    invoke-virtual {v4, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 129
    .line 130
    .line 131
    invoke-static {v3}, Lcom/android/server/smartclip/BleSpenManager;->makeFilePublic(Ljava/io/File;)V

    .line 132
    .line 133
    .line 134
    const-string p1, "BleSpenManager"

    .line 135
    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 149
    .line 150
    .line 151
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :catchall_1
    move-exception p1

    .line 156
    goto :goto_2

    .line 157
    :catchall_2
    move-exception p1

    .line 158
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :catchall_3
    move-exception v1

    .line 163
    :try_start_5
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    :goto_1
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 167
    :goto_2
    :try_start_6
    const-string v1, "BleSpenManager"

    .line 168
    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 186
    .line 187
    .line 188
    :goto_3
    monitor-exit p0

    .line 189
    goto :goto_4

    .line 190
    :cond_1
    :try_start_7
    const-string p1, "BleSpenManager"

    .line 191
    .line 192
    const-string/jumbo v0, "saveBleSpenLogFile : no buffer"

    .line 193
    .line 194
    .line 195
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 196
    .line 197
    .line 198
    monitor-exit p0

    .line 199
    :goto_4
    return-void

    .line 200
    :goto_5
    monitor-exit p0

    .line 201
    throw p1
.end method

.method public final screenshot(IIZLandroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;
    .locals 10

    .line 1
    const-string v0, "SpenGestureManagerService"

    .line 2
    .line 3
    const-string/jumbo v1, "screenshot()"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$FutureScreenShot;

    .line 13
    .line 14
    new-instance v9, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;

    .line 15
    .line 16
    move-object v1, v9

    .line 17
    move v2, p1

    .line 18
    move v3, p2

    .line 19
    move v4, p3

    .line 20
    move-object v5, p4

    .line 21
    move v6, p5

    .line 22
    move/from16 v7, p6

    .line 23
    .line 24
    move/from16 v8, p7

    .line 25
    .line 26
    invoke-direct/range {v1 .. v8}, Lcom/android/server/smartclip/SpenGestureScreenShotManager$Host$1;-><init>(IIZLandroid/graphics/Rect;IIZ)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v9}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Ljava/lang/Thread;

    .line 33
    .line 34
    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 38
    .line 39
    .line 40
    const-string v1, "FutureScreenShot"

    .line 41
    .line 42
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureScreenShotManager$RealScreenShot;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :catch_0
    move-exception v0

    .line 52
    goto :goto_0

    .line 53
    :catch_1
    move-exception v0

    .line 54
    goto :goto_1

    .line 55
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :goto_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :goto_2
    const/4 v0, 0x0

    .line 71
    :goto_3
    return-object v0
.end method

.method public final sendSmartClipRemoteRequestResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const-string v0, "SpenGestureManagerService"

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v2, "sendSmartClipRemoteRequestResult : requestId="

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mRequestId:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, " requestType="

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget v2, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mRequestType:I

    .line 24
    .line 25
    invoke-static {v1, v2, v0}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSmartClipRemoteRequestSyncManager:Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget v0, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mRequestId:I

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->getRequestItem(I)Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-nez p0, :cond_0

    .line 40
    .line 41
    sget-object p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager;->TAG:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string/jumbo v1, "notifyResult : Could not find request information. id="

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget p1, p1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;->mRequestId:I

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    .line 65
    .line 66
    monitor-enter v0

    .line 67
    :try_start_0
    iput-object p1, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResultData:Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    .line 68
    .line 69
    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mResponseArrived:Z

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/smartclip/SmartClipRemoteRequestSyncManager$RequestInfo;->mWaitObj:Ljava/lang/Object;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 75
    .line 76
    .line 77
    monitor-exit v0

    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p0

    .line 82
    :cond_1
    const-string p0, "SpenGestureManagerService"

    .line 83
    .line 84
    const-string/jumbo p1, "sendSmartClipRemoteRequestResult : result is null!"

    .line 85
    .line 86
    .line 87
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :goto_0
    return-void
.end method

.method public final setBleSpenAddress(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "SpenGestureManagerService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "setBleSpenAddress : "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    .line 25
    .line 26
    monitor-enter p0

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const-string p1, "BleSpenManager"

    .line 34
    .line 35
    const-string/jumbo v0, "setBleSpenAddress : BLE Spen is not supported"

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    monitor-exit p0

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :try_start_1
    const-string v0, "/efs/spen/blespen_addr"

    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/android/server/smartclip/BleSpenManager;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    monitor-exit p0

    .line 51
    :goto_0
    return-void

    .line 52
    :goto_1
    monitor-exit p0

    .line 53
    throw p1
.end method

.method public final setBleSpenCmfCode(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "SpenGestureManagerService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "setBleSpenCmfCode : "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    .line 25
    .line 26
    monitor-enter p0

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const-string p1, "BleSpenManager"

    .line 34
    .line 35
    const-string/jumbo v0, "setBleSpenCmfCode : BLE Spen is not supported"

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    monitor-exit p0

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :try_start_1
    const-string v0, "/efs/spen/blespen_cmf"

    .line 46
    .line 47
    invoke-static {v0, p1}, Lcom/android/server/smartclip/BleSpenManager;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    monitor-exit p0

    .line 51
    :goto_0
    return-void

    .line 52
    :goto_1
    monitor-exit p0

    .line 53
    throw p1
.end method

.method public final setCurrentInputInfo(Lcom/android/internal/inputmethod/IRemoteInputConnection;Landroid/view/inputmethod/EditorInfo;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo p1, "no permission to use setCurrentInputInfo() : "

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "SpenGestureManagerService"

    .line 27
    .line 28
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 35
    .line 36
    iput p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mMissingMethodFlags:I

    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    .line 39
    .line 40
    new-instance p2, Lcom/android/server/smartclip/SpenGestureManagerService$8;

    .line 41
    .line 42
    invoke-direct {p2, p0}, Lcom/android/server/smartclip/SpenGestureManagerService$8;-><init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final setHoverStayDetectEnabled(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final setHoverStayValues(III)V
    .locals 0

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    iput p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_X:I

    .line 4
    .line 5
    :cond_0
    if-lez p2, :cond_1

    .line 6
    .line 7
    iput p2, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_RANGE_Y:I

    .line 8
    .line 9
    :cond_1
    if-lez p3, :cond_2

    .line 10
    .line 11
    iput p3, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->ALLOWANCE_HOVER_TIME:I

    .line 12
    .line 13
    :cond_2
    return-void
.end method

.method public final setPenAttachSound(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkChangeSpenThemePermission()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenAttachSound(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final setPenDetachSound(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkChangeSpenThemePermission()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenDetachSound(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final setPenHoverIcon(Ljava/lang/String;Ljava/io/FileDescriptor;FF)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkChangeSpenThemePermission()V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mThemeManager:Lcom/android/server/smartclip/SpenThemeManager;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/smartclip/SpenThemeManager;->setPenHoverIcon(Ljava/lang/String;Ljava/io/FileDescriptor;FF)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public final setScreenOffDoubleTabTime()V
    .locals 2

    .line 1
    const-string v0, "SpenGestureManagerService"

    .line 2
    .line 3
    const-string/jumbo v1, "setScreenOffDoubleTabTime"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mLastScreenOffDoubleTapTime:J

    .line 14
    .line 15
    return-void
.end method

.method public final setScreenOffReason(I)V
    .locals 2

    .line 1
    const-string/jumbo v0, "setScreenOffReason : "

    .line 2
    .line 3
    .line 4
    const-string v1, "SpenGestureManagerService"

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mScreenOffReason:I

    .line 10
    .line 11
    return-void
.end method

.method public final setSpenInsertionState(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setSpenInsertionState : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "SpenGestureManagerService"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Ljava/lang/Boolean;

    .line 26
    .line 27
    return-void
.end method

.method public final setSpenPdctLowSensitivityEnable()V
    .locals 4

    .line 1
    const-string v0, "SpenGestureManagerService"

    .line 2
    .line 3
    const-string/jumbo v1, "setSpenPdctLowSensitivityEnable"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    .line 13
    .line 14
    const-string/jumbo v0, "mSemInputDeviceManager.setSpenPdctLowSensitivityEnable: Exception:"

    .line 15
    .line 16
    .line 17
    monitor-enter p0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/smartclip/BleSpenManager;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSpenPdctLowSensitivityEnable(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :catch_0
    move-exception v1

    .line 28
    :try_start_1
    const-string v2, "BleSpenManager"

    .line 29
    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    :goto_0
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :goto_1
    monitor-exit p0

    .line 48
    throw v0
.end method

.method public final setSpenPowerSavingModeEnabled(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSpenPowerSavingMode(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    const-string/jumbo p1, "mSemInputDeviceManager.setSpenPowerSavingMode: Exception: "

    .line 9
    .line 10
    .line 11
    const-string v0, "SpenGestureManagerService"

    .line 12
    .line 13
    invoke-static {p0, p1, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public final showTouchPointer(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "showTouchPointer : "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "SpenGestureManagerService"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHandler:Lcom/android/server/smartclip/SpenGestureManagerService$5;

    .line 25
    .line 26
    new-instance v0, Lcom/android/server/smartclip/SpenGestureManagerService$7;

    .line 27
    .line 28
    invoke-direct {v0, p1}, Lcom/android/server/smartclip/SpenGestureManagerService$7;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final startAirCommandSpenTriggerService(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "SpenGestureManagerService"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->canStartAirCommand()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    new-instance p0, Landroid/content/Intent;

    .line 11
    .line 12
    const-string v1, "com.samsung.android.service.aircommand.action.SPEN_TRIGGER_SERVICE"

    .line 13
    .line 14
    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "com.samsung.android.service.aircommand"

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 28
    .line 29
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 30
    .line 31
    .line 32
    const-string/jumbo p0, "start start spentrigger service."

    .line 33
    .line 34
    .line 35
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v1, "Failed to start Spen trigger AirCommand. e = "

    .line 43
    .line 44
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public final startAirCommandUiService(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    const-string v0, "SpenGestureManagerService"

    .line 2
    .line 3
    const-string v1, "bindService.isBound : "

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->canStartAirCommand()Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Lcom/android/server/smartclip/SpenGarageSpecManager;->getInstance()Lcom/android/server/smartclip/SpenGarageSpecManager;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-boolean v2, v2, Lcom/android/server/smartclip/SpenGarageSpecManager;->mIsBundledSpenSupported:Z

    .line 17
    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    new-instance v2, Landroid/os/Bundle;

    .line 21
    .line 22
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "action"

    .line 26
    .line 27
    const-string/jumbo v4, "start_remote_spen_service"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandSpenTriggerService(Landroid/os/Bundle;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    .line 37
    .line 38
    const-string v3, "com.samsung.android.service.aircommand.action.AIR_COMMAND_SERVICE"

    .line 39
    .line 40
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v3, "com.samsung.android.service.aircommand"

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 54
    .line 55
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 56
    .line 57
    .line 58
    const-string/jumbo p1, "startAirCommandUiService"

    .line 59
    .line 60
    .line 61
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    iget-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcAutoFloatingIconMode:Z

    .line 65
    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    iget-boolean p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    if-nez p1, :cond_2

    .line 72
    .line 73
    sget-object p1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 74
    .line 75
    iget-object v5, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcServiceConnection:Lcom/android/server/smartclip/SpenGestureManagerService$6;

    .line 76
    .line 77
    invoke-virtual {p1, v2, v5, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    goto :goto_0

    .line 82
    :catch_0
    move-exception p0

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-boolean p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsBound:Z

    .line 90
    .line 91
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string p0, ".ret : "

    .line 95
    .line 96
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v1, "Failed to start AirCommandUiService. "

    .line 113
    .line 114
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    :cond_3
    :goto_2
    return-void
.end method

.method public final unregisterAirGestureListener(Lcom/samsung/android/content/smartclip/IAirGestureListener;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "SpenGestureManagerService"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo p1, "no permission to use unregisterAirGestureListener() : "

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    const-string/jumbo v0, "unregisterAirGestureListener"

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAirGestureListener:Landroid/os/RemoteCallbackList;

    .line 39
    .line 40
    if-eqz p0, :cond_1

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public final unregisterBleSpenChargeLockStateChangedListener(Lcom/samsung/android/content/smartclip/IBleSpenChargeLockStateChangedListener;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenChargeLockStateChangedListeners:Landroid/os/RemoteCallbackList;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final unregisterHoverListener(Lcom/samsung/android/content/smartclip/ISpenGestureHoverListener;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mHoverListeners:Landroid/os/RemoteCallbackList;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final unregisterInputMethodInfoChangeListener(Lcom/samsung/android/content/smartclip/IInputMethodInfoChangeListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->isUidSignature()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo p1, "no permission to use unregisterInputMethodInfoChangeListener() : "

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string p1, "SpenGestureManagerService"

    .line 27
    .line 28
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mInputInfoChangeListeners:Landroid/os/RemoteCallbackList;

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public final writeBleSpenCommand(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "SpenGestureManagerService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "writeBleSpenCommand : "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->checkSmartClipMetaExtractionPermission()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    .line 25
    .line 26
    const-string/jumbo v0, "mSemInputDeviceManager.setSpenBleChargeMode: Exception:"

    .line 27
    .line 28
    .line 29
    monitor-enter p0

    .line 30
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    const-string p1, "BleSpenManager"

    .line 37
    .line 38
    const-string/jumbo v0, "writeBleSpenCommand : BLE Spen is not supported"

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    monitor-exit p0

    .line 45
    goto :goto_1

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_2

    .line 48
    :cond_0
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iget-object v1, p0, Lcom/android/server/smartclip/BleSpenManager;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 53
    .line 54
    invoke-virtual {v1, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSpenBleChargeMode(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    :try_start_2
    const-string v1, "BleSpenManager"

    .line 60
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    .line 75
    .line 76
    :goto_0
    monitor-exit p0

    .line 77
    :goto_1
    return-void

    .line 78
    :goto_2
    monitor-exit p0

    .line 79
    throw p1
.end method

.method public final declared-synchronized writeDigitizerOnOffCommand(Z)V
    .locals 4

    .line 1
    const-string/jumbo v0, "mSemInputDeviceManager.setSpenPower: Exception: "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "writeDigitizerOnOffCommand = "

    .line 5
    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    const-string v2, "SpenGestureManagerService"

    .line 9
    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    :try_start_1
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService;->mSemInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setSpenPower(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :catch_0
    move-exception p1

    .line 34
    :try_start_2
    const-string v1, "SpenGestureManagerService"

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    .line 50
    .line 51
    :goto_0
    monitor-exit p0

    .line 52
    return-void

    .line 53
    :goto_1
    monitor-exit p0

    .line 54
    throw p1
.end method
