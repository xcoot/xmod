.class public final Lcom/android/server/inputmethod/InputMethodManagerService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/inputmethod/IInputMethodManagerImpl$Callback;
.implements Lcom/android/server/inputmethod/ZeroJankProxy$Callback;
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final DEBUG_SEP:Z

.field public static final DEX_CONTENT_URI:Landroid/net/Uri;

.field public static final DICTATION:Landroid/net/Uri;

.field public static final FEATURE_CONFIG_SIP:Ljava/lang/String;

.field public static mCurInputConnectionForKnox:Lcom/android/internal/inputmethod/IRemoteInputConnection;

.field public static mDefaultSIP:Ljava/lang/String;

.field public static mInputMethodSwitchDisable:Z


# instance fields
.field public mAccessControlEnable:Z

.field public final mAccessControlEnableChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

.field public mAccessControlKeyboardBlockEnable:Z

.field public final mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field public mBackDisposition:I

.field public mBoundToAccessibility:Z

.field public mBoundToMethod:Z

.field public final mClientController:Lcom/android/server/inputmethod/ClientController;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mCurClient:Lcom/android/server/inputmethod/ClientState;

.field public mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field public mCurImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

.field public mCurInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

.field public mCurRemoteAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

.field public mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

.field public mCurrentDisplayId:I

.field public mCurrentShowAuxSubtypes:Z

.field public mCurrentUserId:I

.field public final mDeXDualViewChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

.field public final mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public final mDexOnPCStateChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

.field public final mDumper:Lcom/android/server/inputmethod/InputMethodManagerService$1;

.field public mEnabledAccessibilitySessions:Landroid/util/SparseArray;

.field public mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

.field public final mExperimentalConcurrentMultiUserModeEnabled:Z

.field public mFocusedDisplayId:I

.field public final mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

.field public final mHandler:Landroid/os/Handler;

.field public mHardwareKeyboardShortcutController:Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;

.field public final mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

.field public mIDisplayManager:Landroid/hardware/display/IDisplayManager;

.field public mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

.field public mImeDrawsImeNavBarRes:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

.field public mImeDrawsImeNavBarResLazyInitFuture:Ljava/util/concurrent/Future;

.field public final mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

.field public final mImeSelectedOnBoot:Z

.field public final mImeTargetWindowMap:Ljava/util/WeakHashMap;

.field public final mImeTrackerService:Lcom/android/server/inputmethod/ImeTrackerService;

.field public mImeWindowVis:I

.field public mInFullscreenMode:Z

.field public mInitialUserSwitch:Z

.field public mInputManager:Landroid/hardware/input/InputManager;

.field public final mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

.field public final mInputMethodDeviceConfigs:Lcom/android/server/inputmethod/InputMethodDeviceConfigs;

.field public final mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mIoHandler:Landroid/os/Handler;

.field public mIsInteractive:Z

.field public mIsNeedUpdateSubtypeForLocaleChanged:Z

.field public mKeyboardTypeMouseIdList:Ljava/util/List;

.field public mLastImeTargetWindow:Landroid/os/IBinder;

.field public final mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

.field public mMinRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

.field public final mMinRefreshRateTokenRelease:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda1;

.field public final mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

.field public final mNonPreemptibleInputMethods:[Ljava/lang/String;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPointerEventListener:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda0;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

.field public final mPreventImeStartupUnlessTextEditor:Z

.field public final mPriorityDumper:Lcom/android/server/inputmethod/InputMethodManagerService$5;

.field public final mRefreshRateToken:Landroid/os/IBinder;

.field public final mRes:Landroid/content/res/Resources;

.field public mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

.field public final mSemImmsUtil:Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;

.field public final mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

.field public mShowOngoingImeSwitcherForPhones:Z

.field public final mSlotIme:Ljava/lang/String;

.field public final mSoftInputShowHideHistory:Lcom/android/server/inputmethod/SoftInputShowHideHistory;

.field public final mStartInputHistory:Lcom/android/server/inputmethod/StartInputHistory;

.field public mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field public mStylusIds:Landroid/util/IntArray;

.field public mSubTypeIntentReceived:Z

.field public mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

.field public mSystemReady:Z

.field public final mUniversalSwitchChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

.field public final mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

.field public mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field public final mVirtualDeviceMethodMap:Landroid/util/SparseArray;

.field public final mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

.field public final mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

.field public final mWMS:Lcom/android/server/wm/WindowManagerService;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field public misSecurefolderIdOrDualAppId:Z


# direct methods
.method public static -$$Nest$mcreateInputContentUriToken(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/server/inputmethod/InputContentUriTokenHandler;
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "Ignoring createInputContentUriToken mCurEditorInfo.packageName="

    .line 5
    .line 6
    const-string v1, "Ignoring createInputContentUriToken mCurToken="

    .line 7
    .line 8
    const-string v2, "Ignoring createInputContentUriToken due to user ID mismatch. imeUserId="

    .line 9
    .line 10
    if-eqz p1, :cond_8

    .line 11
    .line 12
    if-eqz p3, :cond_7

    .line 13
    .line 14
    if-eqz p2, :cond_6

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string/jumbo v4, "content"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_5

    .line 28
    .line 29
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    .line 30
    .line 31
    monitor-enter v3

    .line 32
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    iget v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 41
    .line 42
    const/4 v7, 0x0

    .line 43
    if-eq v4, v6, :cond_0

    .line 44
    .line 45
    const-string p1, "InputMethodManagerService"

    .line 46
    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p3, " mCurrentUserId="

    .line 56
    .line 57
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 61
    .line 62
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    monitor-exit v3

    .line 73
    goto/16 :goto_1

    .line 74
    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto/16 :goto_2

    .line 77
    .line 78
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iget-object v6, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    .line 83
    .line 84
    if-nez v6, :cond_1

    .line 85
    .line 86
    monitor-exit v3

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    iget-object v6, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    .line 89
    .line 90
    if-eq v6, p1, :cond_2

    .line 91
    .line 92
    const-string p0, "InputMethodManagerService"

    .line 93
    .line 94
    new-instance p2, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object p3, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    .line 100
    .line 101
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p3, " token="

    .line 105
    .line 106
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    monitor-exit v3

    .line 120
    goto :goto_1

    .line 121
    :cond_2
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 122
    .line 123
    if-eqz p1, :cond_3

    .line 124
    .line 125
    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    move-object p1, v7

    .line 129
    :goto_0
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-nez v1, :cond_4

    .line 134
    .line 135
    const-string p0, "InputMethodManagerService"

    .line 136
    .line 137
    new-instance p2, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string p1, " packageName="

    .line 146
    .line 147
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    monitor-exit v3

    .line 161
    goto :goto_1

    .line 162
    :cond_4
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 163
    .line 164
    iget p0, p0, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 165
    .line 166
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 167
    .line 168
    .line 169
    move-result v9

    .line 170
    invoke-static {p2, v4}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    .line 171
    .line 172
    .line 173
    move-result v8

    .line 174
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    new-instance p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;

    .line 179
    .line 180
    move-object v4, p0

    .line 181
    move-object v6, p3

    .line 182
    invoke-direct/range {v4 .. v9}, Lcom/android/server/inputmethod/InputContentUriTokenHandler;-><init>(ILjava/lang/String;Landroid/net/Uri;II)V

    .line 183
    .line 184
    .line 185
    monitor-exit v3

    .line 186
    move-object v7, p0

    .line 187
    :goto_1
    return-object v7

    .line 188
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    throw p0

    .line 190
    :cond_5
    new-instance p0, Ljava/security/InvalidParameterException;

    .line 191
    .line 192
    const-string/jumbo p1, "contentUri must have content scheme"

    .line 193
    .line 194
    .line 195
    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    throw p0

    .line 199
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    .line 200
    .line 201
    const-string/jumbo p1, "contentUri"

    .line 202
    .line 203
    .line 204
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw p0

    .line 208
    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    .line 209
    .line 210
    const-string/jumbo p1, "packageName"

    .line 211
    .line 212
    .line 213
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw p0

    .line 217
    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    .line 218
    .line 219
    const-string/jumbo p1, "token"

    .line 220
    .line 221
    .line 222
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw p0
.end method

.method public static -$$Nest$mdumpAsStringNoCheck(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "  mImeWindowVis="

    .line 5
    .line 6
    new-instance v1, Landroid/util/PrintWriterPrinter;

    .line 7
    .line 8
    invoke-direct {v1, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 9
    .line 10
    .line 11
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 15
    .line 16
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    const-string v4, "Current SEP Input Method Manager Service state:"

    .line 21
    .line 22
    invoke-virtual {v1, v4}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 31
    .line 32
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v1, v0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v0, "Current Input Method Manager state:"

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v3, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodList:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    const-string v4, "  Input Methods:"

    .line 54
    .line 55
    invoke-virtual {v1, v4}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    move v5, v4

    .line 60
    :goto_0
    if-ge v5, v3, :cond_0

    .line 61
    .line 62
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    check-cast v6, Landroid/view/inputmethod/InputMethodInfo;

    .line 67
    .line 68
    new-instance v7, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v8, "  InputMethod #"

    .line 74
    .line 75
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v8, ":"

    .line 82
    .line 83
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-virtual {v1, v7}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v7, "    "

    .line 94
    .line 95
    invoke-virtual {v6, v1, v7}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    add-int/lit8 v5, v5, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catchall_0
    move-exception p0

    .line 102
    goto/16 :goto_6

    .line 103
    .line 104
    :cond_0
    const-string v0, "  ClientStates:"

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda19;

    .line 110
    .line 111
    const/4 v3, 0x1

    .line 112
    invoke-direct {v0, v3, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda19;-><init>(ILjava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    .line 116
    .line 117
    invoke-virtual {v3, v0}, Lcom/android/server/inputmethod/ClientController;->forAllClients(Ljava/util/function/Consumer;)V

    .line 118
    .line 119
    .line 120
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 121
    .line 122
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v5, "  mCurrentUserId="

    .line 132
    .line 133
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 137
    .line 138
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v1, v3}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v5, "  mCurMethodId="

    .line 154
    .line 155
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v5

    .line 162
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v1, v3}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 173
    .line 174
    new-instance v5, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v6, "  mCurClient="

    .line 180
    .line 181
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v6, " mCurSeq="

    .line 188
    .line 189
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    iget v6, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    .line 193
    .line 194
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-virtual {v1, v5}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    new-instance v5, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string v6, "  mFocusedWindowPerceptible="

    .line 210
    .line 211
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    .line 215
    .line 216
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-virtual {v1, v5}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 227
    .line 228
    invoke-virtual {v5, v1}, Lcom/android/server/inputmethod/ImeBindingState;->dump(Landroid/util/Printer;)V

    .line 229
    .line 230
    .line 231
    new-instance v5, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    const-string v6, "  mCurId="

    .line 237
    .line 238
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v6, " mHaveConnection="

    .line 247
    .line 248
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    iget-boolean v6, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasMainConnection:Z

    .line 252
    .line 253
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v6, " mBoundToMethod="

    .line 257
    .line 258
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    iget-boolean v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    .line 262
    .line 263
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    const-string v6, " mVisibleBound="

    .line 267
    .line 268
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    iget-boolean v6, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    .line 272
    .line 273
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    invoke-virtual {v1, v5}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    const-string v5, "  mUserDataRepository="

    .line 284
    .line 285
    invoke-virtual {v1, v5}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    .line 289
    .line 290
    :goto_1
    iget-object v6, v5, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Landroid/util/SparseArray;

    .line 291
    .line 292
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    if-ge v4, v6, :cond_1

    .line 297
    .line 298
    iget-object v6, v5, Lcom/android/server/inputmethod/UserDataRepository;->mUserData:Landroid/util/SparseArray;

    .line 299
    .line 300
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    check-cast v6, Lcom/android/server/inputmethod/UserDataRepository$UserData;

    .line 305
    .line 306
    new-instance v7, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    const-string v8, "    mUserId="

    .line 309
    .line 310
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    iget v8, v6, Lcom/android/server/inputmethod/UserDataRepository$UserData;->mUserId:I

    .line 314
    .line 315
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v7

    .line 322
    invoke-virtual {v1, v7}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    new-instance v7, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    const-string v8, "      hasMainConnection="

    .line 328
    .line 329
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    iget-object v6, v6, Lcom/android/server/inputmethod/UserDataRepository$UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 333
    .line 334
    iget-boolean v8, v6, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasMainConnection:Z

    .line 335
    .line 336
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v7

    .line 343
    invoke-virtual {v1, v7}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    new-instance v7, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    const-string v8, "      isVisibleBound="

    .line 349
    .line 350
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    iget-boolean v6, v6, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    .line 354
    .line 355
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v6

    .line 362
    invoke-virtual {v1, v6}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    add-int/lit8 v4, v4, 0x1

    .line 366
    .line 367
    goto :goto_1

    .line 368
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 369
    .line 370
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    .line 372
    .line 373
    const-string v5, "  mCurToken="

    .line 374
    .line 375
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    iget v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 379
    .line 380
    invoke-virtual {p0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    .line 385
    .line 386
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    invoke-virtual {v1, v4}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    new-instance v4, Ljava/lang/StringBuilder;

    .line 397
    .line 398
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    .line 400
    .line 401
    const-string v5, "  mCurTokenDisplayId="

    .line 402
    .line 403
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenDisplayIdLocked()I

    .line 407
    .line 408
    .line 409
    move-result v5

    .line 410
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v4

    .line 417
    invoke-virtual {v1, v4}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    new-instance v4, Ljava/lang/StringBuilder;

    .line 421
    .line 422
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .line 424
    .line 425
    const-string v5, "  mCurHostInputToken="

    .line 426
    .line 427
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mAutofillController:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    .line 431
    .line 432
    iget-object v5, v5, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mCurHostInputToken:Landroid/os/IBinder;

    .line 433
    .line 434
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v4

    .line 441
    invoke-virtual {v1, v4}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    new-instance v4, Ljava/lang/StringBuilder;

    .line 445
    .line 446
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .line 448
    .line 449
    const-string v5, "  mCurIntent="

    .line 450
    .line 451
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    .line 455
    .line 456
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-virtual {v1, v0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    new-instance v4, Ljava/lang/StringBuilder;

    .line 471
    .line 472
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    .line 474
    .line 475
    const-string v5, "  mCurMethod="

    .line 476
    .line 477
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 481
    .line 482
    .line 483
    move-result-object v5

    .line 484
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v4

    .line 491
    invoke-virtual {v1, v4}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    new-instance v4, Ljava/lang/StringBuilder;

    .line 495
    .line 496
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    .line 498
    .line 499
    const-string v5, "  mEnabledSession="

    .line 500
    .line 501
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 505
    .line 506
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v4

    .line 513
    invoke-virtual {v1, v4}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 517
    .line 518
    invoke-virtual {v4, p2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->dump(Ljava/io/PrintWriter;)V

    .line 519
    .line 520
    .line 521
    new-instance v4, Ljava/lang/StringBuilder;

    .line 522
    .line 523
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 524
    .line 525
    .line 526
    const-string v5, "  mInFullscreenMode="

    .line 527
    .line 528
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    .line 532
    .line 533
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v4

    .line 540
    invoke-virtual {v1, v4}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    new-instance v4, Ljava/lang/StringBuilder;

    .line 544
    .line 545
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    .line 547
    .line 548
    const-string v5, "  mSystemReady="

    .line 549
    .line 550
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    .line 554
    .line 555
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    const-string v5, " mInteractive="

    .line 559
    .line 560
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    .line 564
    .line 565
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v4

    .line 572
    invoke-virtual {v1, v4}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    new-instance v4, Ljava/lang/StringBuilder;

    .line 576
    .line 577
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .line 579
    .line 580
    const-string v5, "  mExperimentalConcurrentMultiUserModeEnabled="

    .line 581
    .line 582
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    .line 584
    .line 585
    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mExperimentalConcurrentMultiUserModeEnabled:Z

    .line 586
    .line 587
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v4

    .line 594
    invoke-virtual {v1, v4}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    const-string v4, "  ENABLE_HIDE_IME_CAPTION_BAR=true"

    .line 598
    .line 599
    invoke-virtual {v1, v4}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    new-instance v4, Ljava/lang/StringBuilder;

    .line 603
    .line 604
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    .line 606
    .line 607
    const-string v5, "  mSettingsObserver="

    .line 608
    .line 609
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    .line 613
    .line 614
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v4

    .line 621
    invoke-virtual {v1, v4}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 622
    .line 623
    .line 624
    new-instance v4, Ljava/lang/StringBuilder;

    .line 625
    .line 626
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 627
    .line 628
    .line 629
    const-string v5, "  mStylusIds="

    .line 630
    .line 631
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    .line 635
    .line 636
    if-eqz v5, :cond_2

    .line 637
    .line 638
    invoke-virtual {v5}, Landroid/util/IntArray;->toArray()[I

    .line 639
    .line 640
    .line 641
    move-result-object v5

    .line 642
    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v5

    .line 646
    goto :goto_2

    .line 647
    :cond_2
    const-string v5, ""

    .line 648
    .line 649
    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v4

    .line 656
    invoke-virtual {v1, v4}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 657
    .line 658
    .line 659
    const-string v4, "  mSwitchingController:"

    .line 660
    .line 661
    invoke-virtual {v1, v4}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 665
    .line 666
    invoke-virtual {v4, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->dump(Landroid/util/Printer;)V

    .line 667
    .line 668
    .line 669
    const-string v4, "  mStartInputHistory:"

    .line 670
    .line 671
    invoke-virtual {v1, v4}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 672
    .line 673
    .line 674
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/StartInputHistory;

    .line 675
    .line 676
    invoke-virtual {v4, p2}, Lcom/android/server/inputmethod/StartInputHistory;->dump(Ljava/io/PrintWriter;)V

    .line 677
    .line 678
    .line 679
    const-string v4, "  mSoftInputShowHideHistory:"

    .line 680
    .line 681
    invoke-virtual {v1, v4}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/SoftInputShowHideHistory;

    .line 685
    .line 686
    invoke-virtual {v4, p2}, Lcom/android/server/inputmethod/SoftInputShowHideHistory;->dump(Ljava/io/PrintWriter;)V

    .line 687
    .line 688
    .line 689
    const-string v4, "  mImeTrackerService#History:"

    .line 690
    .line 691
    invoke-virtual {v1, v4}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTrackerService:Lcom/android/server/inputmethod/ImeTrackerService;

    .line 695
    .line 696
    iget-object v5, v4, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    .line 697
    .line 698
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 699
    :try_start_1
    iget-object v4, v4, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    .line 700
    .line 701
    invoke-static {v4, p2}, Lcom/android/server/inputmethod/ImeTrackerService$History;->-$$Nest$mdump(Lcom/android/server/inputmethod/ImeTrackerService$History;Ljava/io/PrintWriter;)V

    .line 702
    .line 703
    .line 704
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 705
    :try_start_2
    const-string v4, "  mSoftInputShowHideHistory End"

    .line 706
    .line 707
    invoke-virtual {v1, v4}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 711
    if-eqz p4, :cond_3

    .line 712
    .line 713
    goto/16 :goto_5

    .line 714
    .line 715
    :cond_3
    const-string p4, " "

    .line 716
    .line 717
    invoke-virtual {v1, p4}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    if-eqz v3, :cond_4

    .line 721
    .line 722
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 723
    .line 724
    .line 725
    :try_start_3
    iget-object p4, v3, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 726
    .line 727
    iget-object p4, p4, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 728
    .line 729
    invoke-interface {p4}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    .line 730
    .line 731
    .line 732
    move-result-object p4

    .line 733
    invoke-static {p4, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 734
    .line 735
    .line 736
    goto :goto_3

    .line 737
    :catch_0
    move-exception p4

    .line 738
    new-instance v2, Ljava/lang/StringBuilder;

    .line 739
    .line 740
    const-string v4, "Failed to dump input method client: "

    .line 741
    .line 742
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object p4

    .line 752
    invoke-virtual {v1, p4}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 753
    .line 754
    .line 755
    goto :goto_3

    .line 756
    :cond_4
    const-string p4, "No input method client."

    .line 757
    .line 758
    invoke-virtual {v1, p4}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    :goto_3
    iget-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 762
    .line 763
    iget-object p4, p4, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    .line 764
    .line 765
    if-eqz p4, :cond_5

    .line 766
    .line 767
    if-eq v3, p4, :cond_5

    .line 768
    .line 769
    const-string p4, " "

    .line 770
    .line 771
    invoke-virtual {v1, p4}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 772
    .line 773
    .line 774
    const-string p4, "Warning: Current input method client doesn\'t match the last focused. window."

    .line 775
    .line 776
    invoke-virtual {v1, p4}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 777
    .line 778
    .line 779
    const-string p4, "Dumping input method client in the last focused window just in case."

    .line 780
    .line 781
    invoke-virtual {v1, p4}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    const-string p4, " "

    .line 785
    .line 786
    invoke-virtual {v1, p4}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 787
    .line 788
    .line 789
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 790
    .line 791
    .line 792
    :try_start_4
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 793
    .line 794
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    .line 795
    .line 796
    iget-object p0, p0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 797
    .line 798
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 799
    .line 800
    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    .line 801
    .line 802
    .line 803
    move-result-object p0

    .line 804
    invoke-static {p0, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 805
    .line 806
    .line 807
    goto :goto_4

    .line 808
    :catch_1
    move-exception p0

    .line 809
    new-instance p4, Ljava/lang/StringBuilder;

    .line 810
    .line 811
    const-string v2, "Failed to dump input method client in focused window: "

    .line 812
    .line 813
    invoke-direct {p4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 814
    .line 815
    .line 816
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object p0

    .line 823
    invoke-virtual {v1, p0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 824
    .line 825
    .line 826
    :cond_5
    :goto_4
    const-string p0, " "

    .line 827
    .line 828
    invoke-virtual {v1, p0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    if-eqz v0, :cond_6

    .line 832
    .line 833
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 834
    .line 835
    .line 836
    :try_start_5
    iget-object p0, v0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 837
    .line 838
    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethod;->asBinder()Landroid/os/IBinder;

    .line 839
    .line 840
    .line 841
    move-result-object p0

    .line 842
    invoke-static {p0, p1, p3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 843
    .line 844
    .line 845
    goto :goto_5

    .line 846
    :catch_2
    move-exception p0

    .line 847
    new-instance p1, Ljava/lang/StringBuilder;

    .line 848
    .line 849
    const-string p2, "Failed to dump input method service: "

    .line 850
    .line 851
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 855
    .line 856
    .line 857
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object p0

    .line 861
    invoke-virtual {v1, p0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 862
    .line 863
    .line 864
    goto :goto_5

    .line 865
    :cond_6
    const-string p0, "No input method service."

    .line 866
    .line 867
    invoke-virtual {v1, p0}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 868
    .line 869
    .line 870
    :goto_5
    return-void

    .line 871
    :catchall_1
    move-exception p0

    .line 872
    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 873
    :try_start_7
    throw p0

    .line 874
    :goto_6
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 875
    throw p0
.end method

.method public static -$$Nest$mhandleShellCommandEnableDisableInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;Z)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const/4 v1, -0x2

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const-string v2, "-u"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    const-string v2, "--user"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 44
    .line 45
    .line 46
    move-result-object v8

    .line 47
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 48
    .line 49
    .line 50
    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    :try_start_1
    const-class v10, Lcom/android/server/inputmethod/ImfLock;

    .line 52
    .line 53
    monitor-enter v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 54
    :try_start_2
    iget v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 55
    .line 56
    invoke-virtual/range {p1 .. p1}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v1, v2, v3}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    array-length v12, v11

    .line 65
    const/4 v13, 0x0

    .line 66
    move v14, v13

    .line 67
    move v15, v14

    .line 68
    :goto_2
    if-ge v14, v12, :cond_3

    .line 69
    .line 70
    aget v2, v11, v14

    .line 71
    .line 72
    move-object/from16 v6, p1

    .line 73
    .line 74
    invoke-virtual {v0, v2, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILandroid/os/ShellCommand;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_2

    .line 79
    .line 80
    goto :goto_3

    .line 81
    :cond_2
    move-object/from16 v1, p0

    .line 82
    .line 83
    move-object v3, v7

    .line 84
    move/from16 v4, p2

    .line 85
    .line 86
    move-object v5, v8

    .line 87
    move-object v6, v9

    .line 88
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleShellCommandEnableDisableInputMethodInternalLocked(ILjava/lang/String;ZLjava/io/PrintWriter;Ljava/io/PrintWriter;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    xor-int/lit8 v1, v1, 0x1

    .line 93
    .line 94
    or-int/2addr v15, v1

    .line 95
    :goto_3
    add-int/lit8 v14, v14, 0x1

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    goto :goto_5

    .line 100
    :cond_3
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    if-eqz v9, :cond_4

    .line 102
    .line 103
    :try_start_3
    invoke-virtual {v9}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 104
    .line 105
    .line 106
    goto :goto_4

    .line 107
    :catchall_1
    move-exception v0

    .line 108
    move-object v1, v0

    .line 109
    goto :goto_7

    .line 110
    :cond_4
    :goto_4
    if-eqz v8, :cond_5

    .line 111
    .line 112
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V

    .line 113
    .line 114
    .line 115
    :cond_5
    if-eqz v15, :cond_6

    .line 116
    .line 117
    const/4 v13, -0x1

    .line 118
    :cond_6
    return v13

    .line 119
    :goto_5
    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 121
    :catchall_2
    move-exception v0

    .line 122
    move-object v1, v0

    .line 123
    if-eqz v9, :cond_7

    .line 124
    .line 125
    :try_start_6
    invoke-virtual {v9}, Ljava/io/PrintWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 126
    .line 127
    .line 128
    goto :goto_6

    .line 129
    :catchall_3
    move-exception v0

    .line 130
    move-object v2, v0

    .line 131
    :try_start_7
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    :cond_7
    :goto_6
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 135
    :goto_7
    if-eqz v8, :cond_8

    .line 136
    .line 137
    :try_start_8
    invoke-virtual {v8}, Ljava/io/PrintWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 138
    .line 139
    .line 140
    goto :goto_8

    .line 141
    :catchall_4
    move-exception v0

    .line 142
    move-object v2, v0

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 144
    .line 145
    .line 146
    :cond_8
    :goto_8
    throw v1
.end method

.method public static -$$Nest$mhandleShellCommandTraceInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/ShellCommand;)I
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "Unknown command: "

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const v3, -0x174ab7ac

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    const/4 v5, 0x1

    .line 23
    const/4 v6, -0x1

    .line 24
    const/4 v7, 0x0

    .line 25
    if-eq v2, v3, :cond_2

    .line 26
    .line 27
    const v3, 0x360802

    .line 28
    .line 29
    .line 30
    if-eq v2, v3, :cond_1

    .line 31
    .line 32
    const v3, 0x68ac462

    .line 33
    .line 34
    .line 35
    if-eq v2, v3, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string/jumbo v2, "start"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    move v2, v7

    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto/16 :goto_5

    .line 51
    .line 52
    :cond_1
    const-string/jumbo v2, "stop"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    move v2, v5

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    const-string/jumbo v2, "save-for-bugreport"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    move v2, v4

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    :goto_0
    move v2, v6

    .line 75
    :goto_1
    if-eqz v2, :cond_7

    .line 76
    .line 77
    if-eq v2, v5, :cond_6

    .line 78
    .line 79
    if-eq v2, v4, :cond_4

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    const-string p0, "Input method trace options:"

    .line 89
    .line 90
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string p0, "  start: Start tracing"

    .line 94
    .line 95
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string p0, "  stop: Stop tracing"

    .line 99
    .line 100
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    .line 104
    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/ImeTracing;->saveForBugreport(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .line 113
    .line 114
    if-eqz p1, :cond_5

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    .line 117
    .line 118
    .line 119
    :cond_5
    :goto_2
    move v6, v7

    .line 120
    goto :goto_4

    .line 121
    :cond_6
    :try_start_2
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/ImeTracing;->stopTrace(Ljava/io/PrintWriter;)V

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_7
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/ImeTracing;->startTrace(Ljava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    .line 135
    .line 136
    :goto_3
    if-eqz p1, :cond_8

    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    .line 139
    .line 140
    .line 141
    :cond_8
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 150
    .line 151
    monitor-enter v0

    .line 152
    :try_start_3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    .line 153
    .line 154
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$6;

    .line 155
    .line 156
    invoke-direct {v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$6;-><init>(Z)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/ClientController;->forAllClients(Ljava/util/function/Consumer;)V

    .line 160
    .line 161
    .line 162
    monitor-exit v0

    .line 163
    goto :goto_2

    .line 164
    :goto_4
    return v6

    .line 165
    :catchall_1
    move-exception p0

    .line 166
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 167
    throw p0

    .line 168
    :goto_5
    if-eqz p1, :cond_9

    .line 169
    .line 170
    :try_start_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 171
    .line 172
    .line 173
    goto :goto_6

    .line 174
    :catchall_2
    move-exception p1

    .line 175
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 176
    .line 177
    .line 178
    :cond_9
    :goto_6
    throw p0
.end method

.method public static -$$Nest$mhideMySoftInput(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;II)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string v0, "InputMethodManagerService"

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string/jumbo v2, "hideMySoftInput: flags="

    .line 9
    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    const-wide/16 v0, 0x20

    .line 25
    .line 26
    :try_start_0
    const-string v2, "IMMS.hideMySoftInput"

    .line 27
    .line 28
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    .line 32
    .line 33
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 34
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/16 v3, 0x2f

    .line 39
    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-interface {p0, p2, v3}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 47
    .line 48
    .line 49
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_4

    .line 56
    :cond_0
    :try_start_2
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-interface {p1, p2, v3}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 64
    .line 65
    .line 66
    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    :try_start_3
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_1

    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 76
    .line 77
    const/4 p2, 0x0

    .line 78
    invoke-virtual {p1, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeVisibility(Z)V

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 82
    .line 83
    if-eqz p0, :cond_2

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    .line 86
    .line 87
    if-eqz p0, :cond_2

    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 90
    .line 91
    if-eqz p0, :cond_2

    .line 92
    .line 93
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeVisibility(Z)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catchall_1
    move-exception p0

    .line 98
    goto :goto_3

    .line 99
    :cond_1
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    .line 100
    .line 101
    const/4 v9, 0x0

    .line 102
    move-object v5, p0

    .line 103
    move-object v7, p2

    .line 104
    move v8, p3

    .line 105
    move v10, p4

    .line 106
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    .line 108
    .line 109
    :cond_2
    :goto_1
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 110
    .line 111
    .line 112
    monitor-exit v2

    .line 113
    goto :goto_0

    .line 114
    :goto_2
    return-void

    .line 115
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    .line 117
    .line 118
    throw p0

    .line 119
    :goto_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 121
    :catchall_2
    move-exception p0

    .line 122
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 123
    .line 124
    .line 125
    throw p0
.end method

.method public static -$$Nest$msemComputeImeDisplayIdForDexTarget(Lcom/android/server/inputmethod/InputMethodManagerService;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDeskTopMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeKeyboardDefaultDisplayOnly()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentFocusDisplayID()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const-string/jumbo v0, "semComputeImeDisplayIdForTarget: displayId="

    .line 18
    .line 19
    .line 20
    const-string v1, "InputMethodManagerService"

    .line 21
    .line 22
    invoke-static {p0, v0, v1}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    return p0
.end method

.method public static -$$Nest$msetDefaultInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isSamsungDefaultMethodID()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isHoneyboardInstalled()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string/jumbo v1, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    :try_start_0
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 28
    .line 29
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception p0

    .line 43
    const-string v0, "InputMethodManagerService"

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void
.end method

.method public static -$$Nest$msetInputMethodAndSubtype(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "setInputMethodAndSubtype ignore id : "

    .line 5
    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    .line 16
    .line 17
    monitor-enter v3

    .line 18
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-nez v4, :cond_0

    .line 23
    .line 24
    monitor-exit v3

    .line 25
    goto :goto_1

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDeskTopMode()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    const-string/jumbo v4, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_1

    .line 42
    .line 43
    const-string p0, "InputMethodManagerService"

    .line 44
    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p2, " in dex mode"

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    monitor-exit v3

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 68
    .line 69
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 74
    .line 75
    invoke-virtual {v4, p2}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    if-eqz v4, :cond_3

    .line 80
    .line 81
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {p0, v5, v1, v2, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->canCallerAccessInputMethod(Ljava/lang/String;IILcom/android/server/inputmethod/InputMethodSettings;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_3

    .line 90
    .line 91
    if-eqz p3, :cond_2

    .line 92
    .line 93
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    .line 94
    .line 95
    .line 96
    move-result p3

    .line 97
    invoke-static {v4, p3}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    .line 98
    .line 99
    .line 100
    move-result p3

    .line 101
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :goto_0
    monitor-exit v3

    .line 109
    :goto_1
    return-void

    .line 110
    :cond_3
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getExceptionForUnknownImeId(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    throw p0

    .line 115
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    throw p0
.end method

.method public static -$$Nest$mshowMySoftInput(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;II)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v3, p2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "InputMethodManagerService"

    .line 7
    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v4, "showMySoftInput: flags="

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    move/from16 v4, p3

    .line 17
    .line 18
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const-wide/16 v8, 0x20

    .line 29
    .line 30
    :try_start_0
    const-string v1, "IMMS.showMySoftInput"

    .line 31
    .line 32
    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-class v10, Lcom/android/server/inputmethod/ImfLock;

    .line 36
    .line 37
    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 38
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/16 v2, 0x2f

    .line 43
    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0, p2, v2}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 51
    .line 52
    .line 53
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto :goto_4

    .line 60
    :cond_0
    :try_start_2
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-interface {v1, p2, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 68
    .line 69
    .line 70
    move-result-wide v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    :try_start_3
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_1

    .line 76
    .line 77
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 78
    .line 79
    iget-object v1, v1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 80
    .line 81
    const/4 v2, 0x0

    .line 82
    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeVisibility(Z)V

    .line 83
    .line 84
    .line 85
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    iget-object v0, v0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    .line 90
    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    iget-object v0, v0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 94
    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    const/4 v1, 0x1

    .line 98
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeVisibility(Z)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :catchall_1
    move-exception v0

    .line 103
    goto :goto_3

    .line 104
    :cond_1
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    .line 105
    .line 106
    const/4 v5, 0x0

    .line 107
    const/4 v6, 0x0

    .line 108
    move-object v1, p0

    .line 109
    move-object v3, p2

    .line 110
    move/from16 v4, p3

    .line 111
    .line 112
    move/from16 v7, p4

    .line 113
    .line 114
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 115
    .line 116
    .line 117
    :cond_2
    :goto_1
    :try_start_4
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    .line 119
    .line 120
    monitor-exit v10

    .line 121
    goto :goto_0

    .line 122
    :goto_2
    return-void

    .line 123
    :goto_3
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    .line 125
    .line 126
    throw v0

    .line 127
    :goto_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 128
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 129
    :catchall_2
    move-exception v0

    .line 130
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 131
    .line 132
    .line 133
    throw v0
.end method

.method public static -$$Nest$mstartInputUncheckedInnerLocked(ILcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget p0, v0, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setDisplayImePolicyDexDeskTopMode(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v1, "startInputUncheckedInnerLocked: mImeBindingState.mFocusedWindowClient = null, displayIdToShowIme="

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "InputMethodManagerService"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setDisplayImePolicyDexDeskTopMode(I)V

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-object p0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    .line 37
    .line 38
    iget p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/UserDataRepository;->getOrCreate(I)Lcom/android/server/inputmethod/UserDataRepository$UserData;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    iget-object p0, p0, Lcom/android/server/inputmethod/UserDataRepository$UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentMethod()Lcom/android/internal/inputmethod/InputBindResult;

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static -$$Nest$mswitchKeyboardLayoutLocked(ILcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 10

    .line 1
    iget v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto/16 :goto_5

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 26
    .line 27
    invoke-static {v2, v0}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v2, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHardwareKeyboardShortcutController:Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    const/4 v4, 0x0

    .line 35
    if-lez p0, :cond_1

    .line 36
    .line 37
    move p0, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move p0, v4

    .line 40
    :goto_0
    iget-object v2, v2, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;->mSubtypeHandles:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    move v6, v4

    .line 47
    :goto_1
    const/4 v7, 0x0

    .line 48
    const/4 v8, -0x1

    .line 49
    if-ge v6, v5, :cond_4

    .line 50
    .line 51
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v9

    .line 55
    invoke-static {v0, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v9

    .line 59
    if-eqz v9, :cond_3

    .line 60
    .line 61
    if-eqz p0, :cond_2

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    move v3, v8

    .line 65
    :goto_2
    add-int/2addr v6, v3

    .line 66
    add-int/2addr v6, v5

    .line 67
    rem-int/2addr v6, v5

    .line 68
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    goto :goto_3

    .line 73
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    move-object p0, v7

    .line 77
    :goto_3
    check-cast p0, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .line 78
    .line 79
    if-nez p0, :cond_5

    .line 80
    .line 81
    goto :goto_5

    .line 82
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->getImeId()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-nez v0, :cond_6

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_6
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_7

    .line 98
    .line 99
    invoke-static {v0, v7}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {p0, v1}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-eqz p0, :cond_9

    .line 108
    .line 109
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p1, v8, v4, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IILjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_7
    move v2, v4

    .line 118
    :goto_4
    if-ge v2, v1, :cond_9

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-static {v0, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {p0, v3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-eqz v3, :cond_8

    .line 133
    .line 134
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-virtual {p1, v2, v4, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IILjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_9
    :goto_5
    return-void
.end method

.method public static -$$Nest$mswitchToNextInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    goto :goto_1

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget v3, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    .line 25
    .line 26
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 41
    .line 42
    invoke-virtual {v4, p2, v3, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v1, p2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget p2, p2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    .line 56
    .line 57
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    :goto_0
    monitor-exit v0

    .line 62
    :goto_1
    return v2

    .line 63
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p0
.end method

.method public static -$$Nest$mswitchToPreviousInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z
    .locals 14

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    monitor-exit v0

    .line 15
    goto/16 :goto_8

    .line 16
    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto/16 :goto_9

    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 21
    .line 22
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-virtual {v1, v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getLastSubtypeForInputMethodInternal(Ljava/lang/String;)Landroid/util/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    if-eqz v5, :cond_1

    .line 36
    .line 37
    iget-object v6, v1, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 38
    .line 39
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v7, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v6, v7}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move-object v6, v4

    .line 49
    :goto_0
    iget-object v7, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 50
    .line 51
    const/4 v8, -0x1

    .line 52
    if-eqz v5, :cond_4

    .line 53
    .line 54
    if-eqz v6, :cond_4

    .line 55
    .line 56
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    iget-object v9, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v9, Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    if-nez v7, :cond_2

    .line 75
    .line 76
    move v10, v8

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    :goto_1
    if-eqz v3, :cond_3

    .line 83
    .line 84
    if-eq v9, v10, :cond_4

    .line 85
    .line 86
    :cond_3
    iget-object v3, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v3, Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v6, v9}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    goto :goto_2

    .line 95
    :cond_4
    move-object v3, v4

    .line 96
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    const/4 v6, 0x1

    .line 101
    if-eqz v5, :cond_9

    .line 102
    .line 103
    if-nez v7, :cond_5

    .line 104
    .line 105
    move v5, v6

    .line 106
    goto :goto_3

    .line 107
    :cond_5
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    xor-int/2addr v5, v6

    .line 112
    :goto_3
    if-nez v5, :cond_9

    .line 113
    .line 114
    invoke-virtual {v1, v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v7, :cond_6

    .line 123
    .line 124
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-nez v5, :cond_6

    .line 133
    .line 134
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    goto :goto_4

    .line 139
    :cond_6
    invoke-static {}, Lcom/android/server/inputmethod/SystemLocaleWrapper;->get()Landroid/os/LocaleList;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {v5, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 144
    .line 145
    .line 146
    move-result-object v5

    .line 147
    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    :goto_4
    move v7, v2

    .line 152
    :goto_5
    if-ge v7, v4, :cond_9

    .line 153
    .line 154
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    .line 159
    .line 160
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    .line 161
    .line 162
    .line 163
    move-result v10

    .line 164
    if-lez v10, :cond_8

    .line 165
    .line 166
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    .line 167
    .line 168
    .line 169
    move-result v10

    .line 170
    if-eqz v10, :cond_8

    .line 171
    .line 172
    new-instance v10, Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    .line 178
    .line 179
    .line 180
    move-result v11

    .line 181
    move v12, v2

    .line 182
    :goto_6
    if-ge v12, v11, :cond_7

    .line 183
    .line 184
    invoke-virtual {v9, v12}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    .line 185
    .line 186
    .line 187
    move-result-object v13

    .line 188
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    add-int/lit8 v12, v12, 0x1

    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_7
    const-string/jumbo v11, "keyboard"

    .line 195
    .line 196
    .line 197
    invoke-static {v11, v5, v10}, Lcom/android/server/inputmethod/SubtypeUtils;->findLastResortApplicableSubtype(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/view/inputmethod/InputMethodSubtype;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    if-eqz v10, :cond_8

    .line 202
    .line 203
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    invoke-static {v9, v8}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    .line 212
    .line 213
    .line 214
    move-result v8

    .line 215
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v9

    .line 219
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v9

    .line 223
    if-eqz v9, :cond_8

    .line 224
    .line 225
    goto :goto_7

    .line 226
    :cond_8
    add-int/lit8 v7, v7, 0x1

    .line 227
    .line 228
    goto :goto_5

    .line 229
    :cond_9
    :goto_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-nez v1, :cond_a

    .line 234
    .line 235
    invoke-virtual {p0, v8, p1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    monitor-exit v0

    .line 239
    move v2, v6

    .line 240
    goto :goto_8

    .line 241
    :cond_a
    monitor-exit v0

    .line 242
    :goto_8
    return v2

    .line 243
    :goto_9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    throw p0
.end method

.method public static -$$Nest$mswitchUserOnHandlerLocked(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUnbindCurrentMethodByReset()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x6

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->maybeInitImeNavbarConfigLocked(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->registerContentObserverLocked(I)V

    .line 23
    .line 24
    .line 25
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 26
    .line 27
    const-string/jumbo v0, "default_input_method"

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_0

    .line 55
    .line 56
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    const/4 v3, 0x1

    .line 62
    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 63
    .line 64
    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    invoke-static {v4, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v2, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {p1, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    .line 81
    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    if-eqz p2, :cond_4

    .line 85
    .line 86
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    .line 87
    .line 88
    iget-object p2, p2, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 89
    .line 90
    invoke-interface {p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p1, p2}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-nez p1, :cond_2

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_2
    iget-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    .line 102
    .line 103
    iget-object p1, p1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 104
    .line 105
    iget-boolean v1, p1, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    .line 106
    .line 107
    if-eqz v1, :cond_3

    .line 108
    .line 109
    :try_start_0
    iget-object p1, p1, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 110
    .line 111
    invoke-interface {p1, p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->scheduleStartInputIfNecessary(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catch_0
    move-exception p1

    .line 116
    invoke-static {p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    new-instance v1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;

    .line 121
    .line 122
    const/4 v4, 0x2

    .line 123
    invoke-direct {v1, p1, p2, v4}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZI)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p1, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    .line 127
    .line 128
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 129
    .line 130
    .line 131
    :cond_4
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInitialUserSwitch:Z

    .line 132
    .line 133
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    const-string p2, "access_control_enabled"

    .line 140
    .line 141
    const/4 v0, 0x0

    .line 142
    iget v1, v2, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 143
    .line 144
    invoke-static {p1, p2, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_5

    .line 149
    .line 150
    move p1, v3

    .line 151
    goto :goto_1

    .line 152
    :cond_5
    move p1, v0

    .line 153
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlEnable:Z

    .line 154
    .line 155
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 156
    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    const-string p2, "access_control_keyboard_block"

    .line 162
    .line 163
    invoke-static {p1, p2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_6

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_6
    move v3, v0

    .line 171
    :goto_2
    iput-boolean v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    .line 172
    .line 173
    :goto_3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    .line 6
    .line 7
    const-string/jumbo v0, "content://0@com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEX_CONTENT_URI:Landroid/net/Uri;

    .line 15
    .line 16
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "SEC_FLOATING_FEATURE_SIP_CONFIG_PACKAGE_NAME"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/android/server/inputmethod/InputMethodManagerService;->FEATURE_CONFIG_SIP:Ljava/lang/String;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    sput-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodSwitchDisable:Z

    .line 30
    .line 31
    const-string/jumbo v0, "content://com.samsung.android.honeyboard.DictationProvider"

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DICTATION:Landroid/net/Uri;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    sput-object v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputConnectionForKnox:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 42
    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/android/server/ServiceThread;Lcom/android/server/ServiceThread;Ljava/util/function/IntFunction;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedDisplayId:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlEnable:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPrevInputMethodForUniversalSwitch:Ljava/lang/String;

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsNeedUpdateSubtypeForLocaleChanged:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSubTypeIntentReceived:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentShowAuxSubtypes:Z

    .line 20
    .line 21
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentDisplayId:I

    .line 22
    .line 23
    new-instance v2, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyboardTypeMouseIdList:Ljava/util/List;

    .line 29
    .line 30
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    invoke-direct {v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPointerEventListener:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->misSecurefolderIdOrDualAppId:Z

    .line 38
    .line 39
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 42
    .line 43
    new-instance v2, Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDeviceMethodMap:Landroid/util/SparseArray;

    .line 49
    .line 50
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$1;

    .line 51
    .line 52
    invoke-direct {v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$1;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 53
    .line 54
    .line 55
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/server/inputmethod/InputMethodManagerService$1;

    .line 56
    .line 57
    new-instance v2, Ljava/util/WeakHashMap;

    .line 58
    .line 59
    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    .line 60
    .line 61
    .line 62
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    .line 63
    .line 64
    new-instance v2, Landroid/util/SparseArray;

    .line 65
    .line 66
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    .line 73
    .line 74
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 75
    .line 76
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    .line 77
    .line 78
    invoke-direct {v3, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 79
    .line 80
    .line 81
    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMyPackageMonitor:Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;

    .line 82
    .line 83
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 84
    .line 85
    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 86
    .line 87
    .line 88
    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 89
    .line 90
    new-instance v3, Ljava/util/WeakHashMap;

    .line 91
    .line 92
    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    .line 96
    .line 97
    new-instance v3, Lcom/android/server/inputmethod/StartInputHistory;

    .line 98
    .line 99
    invoke-direct {v3}, Lcom/android/server/inputmethod/StartInputHistory;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/StartInputHistory;

    .line 103
    .line 104
    new-instance v3, Lcom/android/server/inputmethod/SoftInputShowHideHistory;

    .line 105
    .line 106
    invoke-direct {v3}, Lcom/android/server/inputmethod/SoftInputShowHideHistory;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/SoftInputShowHideHistory;

    .line 110
    .line 111
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$5;

    .line 112
    .line 113
    invoke-direct {v3, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$5;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 114
    .line 115
    .line 116
    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPriorityDumper:Lcom/android/server/inputmethod/InputMethodManagerService$5;

    .line 117
    .line 118
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

    .line 119
    .line 120
    invoke-direct {v3, v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 121
    .line 122
    .line 123
    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDexOnPCStateChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

    .line 124
    .line 125
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

    .line 126
    .line 127
    const/4 v4, 0x4

    .line 128
    invoke-direct {v3, v4, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 129
    .line 130
    .line 131
    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUniversalSwitchChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

    .line 132
    .line 133
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

    .line 134
    .line 135
    invoke-direct {v3, v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 136
    .line 137
    .line 138
    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlEnableChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

    .line 139
    .line 140
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

    .line 141
    .line 142
    const/4 v4, 0x2

    .line 143
    invoke-direct {v3, v4, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 144
    .line 145
    .line 146
    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

    .line 147
    .line 148
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

    .line 149
    .line 150
    const/4 v4, 0x3

    .line 151
    invoke-direct {v3, v4, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 152
    .line 153
    .line 154
    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDeXDualViewChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

    .line 155
    .line 156
    new-instance v3, Landroid/os/Binder;

    .line 157
    .line 158
    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    .line 159
    .line 160
    .line 161
    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRefreshRateToken:Landroid/os/IBinder;

    .line 162
    .line 163
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda1;

    .line 164
    .line 165
    invoke-direct {v3, v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda1;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 166
    .line 167
    .line 168
    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMinRefreshRateTokenRelease:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda1;

    .line 169
    .line 170
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    .line 171
    .line 172
    monitor-enter v3

    .line 173
    :try_start_0
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mExperimentalConcurrentMultiUserModeEnabled:Z

    .line 174
    .line 175
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 176
    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 182
    .line 183
    invoke-static {p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->onStart(Landroid/content/Context;)V

    .line 184
    .line 185
    .line 186
    const/4 p2, -0x2

    .line 187
    if-eqz p3, :cond_0

    .line 188
    .line 189
    move-object v4, p3

    .line 190
    goto :goto_0

    .line 191
    :cond_0
    new-instance v4, Lcom/android/server/ServiceThread;

    .line 192
    .line 193
    const-string v5, "android.imms"

    .line 194
    .line 195
    invoke-direct {v4, p2, v5, v2}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 196
    .line 197
    .line 198
    :goto_0
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-static {v5, p0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    iput-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 210
    .line 211
    if-eqz p4, :cond_1

    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_1
    new-instance p4, Lcom/android/server/ServiceThread;

    .line 215
    .line 216
    const-string v6, "android.imms2"

    .line 217
    .line 218
    invoke-direct {p4, p2, v6, v2}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 219
    .line 220
    .line 221
    :goto_1
    invoke-virtual {p4}, Landroid/os/HandlerThread;->start()V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 225
    .line 226
    .line 227
    move-result-object p2

    .line 228
    invoke-static {p2}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIoHandler:Landroid/os/Handler;

    .line 233
    .line 234
    new-instance p2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;

    .line 235
    .line 236
    invoke-direct {p2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 237
    .line 238
    .line 239
    sget-object p4, Lcom/android/server/inputmethod/SystemLocaleWrapper;->sSystemLocale:Ljava/util/concurrent/atomic/AtomicReference;

    .line 240
    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    invoke-virtual {p4, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 254
    .line 255
    .line 256
    new-instance p4, Lcom/android/server/inputmethod/SystemLocaleWrapper$LocaleChangeListener;

    .line 257
    .line 258
    invoke-direct {p4, p1, p2}, Lcom/android/server/inputmethod/SystemLocaleWrapper$LocaleChangeListener;-><init>(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;)V

    .line 259
    .line 260
    .line 261
    new-instance p2, Landroid/content/IntentFilter;

    .line 262
    .line 263
    const-string v6, "android.intent.action.LOCALE_CHANGED"

    .line 264
    .line 265
    invoke-direct {p2, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1, p4, p2, v1, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 269
    .line 270
    .line 271
    new-instance p2, Lcom/android/server/inputmethod/ImeTrackerService;

    .line 272
    .line 273
    if-eqz p3, :cond_2

    .line 274
    .line 275
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 276
    .line 277
    .line 278
    move-result-object p3

    .line 279
    goto :goto_2

    .line 280
    :catchall_0
    move-exception p0

    .line 281
    goto/16 :goto_7

    .line 282
    .line 283
    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 284
    .line 285
    .line 286
    move-result-object p3

    .line 287
    :goto_2
    invoke-direct {p2, p3}, Lcom/android/server/inputmethod/ImeTrackerService;-><init>(Landroid/os/Looper;)V

    .line 288
    .line 289
    .line 290
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTrackerService:Lcom/android/server/inputmethod/ImeTrackerService;

    .line 291
    .line 292
    new-instance p2, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    .line 293
    .line 294
    invoke-direct {p2, p0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/Handler;)V

    .line 295
    .line 296
    .line 297
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    .line 298
    .line 299
    const-class p2, Lcom/android/server/wm/WindowManagerInternal;

    .line 300
    .line 301
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object p2

    .line 305
    check-cast p2, Lcom/android/server/wm/WindowManagerInternal;

    .line 306
    .line 307
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 308
    .line 309
    const-class p2, Landroid/app/ActivityManagerInternal;

    .line 310
    .line 311
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object p2

    .line 315
    check-cast p2, Landroid/app/ActivityManagerInternal;

    .line 316
    .line 317
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 318
    .line 319
    const-class p3, Landroid/content/pm/PackageManagerInternal;

    .line 320
    .line 321
    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object p3

    .line 325
    check-cast p3, Landroid/content/pm/PackageManagerInternal;

    .line 326
    .line 327
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 328
    .line 329
    const-class p3, Lcom/android/server/input/InputManagerService$LocalService;

    .line 330
    .line 331
    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object p3

    .line 335
    check-cast p3, Lcom/android/server/input/InputManagerService$LocalService;

    .line 336
    .line 337
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 338
    .line 339
    new-instance p3, Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    .line 340
    .line 341
    invoke-direct {p3}, Lcom/android/server/inputmethod/ImePlatformCompatUtils;-><init>()V

    .line 342
    .line 343
    .line 344
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    .line 345
    .line 346
    new-instance p3, Lcom/android/server/inputmethod/InputMethodDeviceConfigs;

    .line 347
    .line 348
    invoke-direct {p3}, Lcom/android/server/inputmethod/InputMethodDeviceConfigs;-><init>()V

    .line 349
    .line 350
    .line 351
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodDeviceConfigs:Lcom/android/server/inputmethod/InputMethodDeviceConfigs;

    .line 352
    .line 353
    const-class p3, Lcom/android/server/pm/UserManagerInternal;

    .line 354
    .line 355
    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object p3

    .line 359
    check-cast p3, Lcom/android/server/pm/UserManagerInternal;

    .line 360
    .line 361
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 362
    .line 363
    const p4, 0x1040ed5

    .line 364
    .line 365
    .line 366
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object p4

    .line 370
    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    .line 371
    .line 372
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 373
    .line 374
    sget-object p4, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->sPerUserMap:Landroid/util/SparseArray;

    .line 375
    .line 376
    const-class p4, Lcom/android/server/pm/UserManagerInternal;

    .line 377
    .line 378
    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object p4

    .line 382
    check-cast p4, Lcom/android/server/pm/UserManagerInternal;

    .line 383
    .line 384
    new-instance v6, Lcom/android/server/inputmethod/InputMethodSettingsRepository$$ExternalSyntheticLambda0;

    .line 385
    .line 386
    invoke-direct {v6, p4, v5, p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserManagerInternal;Landroid/os/Handler;Landroid/content/Context;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 390
    .line 391
    .line 392
    sget-object p4, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->sPerUserMap:Landroid/util/SparseArray;

    .line 393
    .line 394
    const-class p4, Lcom/android/server/pm/UserManagerInternal;

    .line 395
    .line 396
    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object p4

    .line 400
    check-cast p4, Lcom/android/server/pm/UserManagerInternal;

    .line 401
    .line 402
    new-instance v6, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$$ExternalSyntheticLambda0;

    .line 403
    .line 404
    invoke-direct {v6, p4, v5, p1}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/UserManagerInternal;Landroid/os/Handler;Landroid/content/Context;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    .line 409
    .line 410
    invoke-virtual {p2}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 411
    .line 412
    .line 413
    move-result p2

    .line 414
    iput p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 415
    .line 416
    new-instance p2, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda3;

    .line 417
    .line 418
    invoke-direct {p2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 419
    .line 420
    .line 421
    new-instance p4, Lcom/android/server/inputmethod/UserDataRepository;

    .line 422
    .line 423
    if-eqz p5, :cond_3

    .line 424
    .line 425
    goto :goto_3

    .line 426
    :cond_3
    move-object p5, p2

    .line 427
    :goto_3
    invoke-direct {p4, v5, p3, p5}, Lcom/android/server/inputmethod/UserDataRepository;-><init>(Landroid/os/Handler;Lcom/android/server/pm/UserManagerInternal;Ljava/util/function/IntFunction;)V

    .line 428
    .line 429
    .line 430
    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    .line 431
    .line 432
    invoke-virtual {p3}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 433
    .line 434
    .line 435
    move-result-object p2

    .line 436
    array-length p3, p2

    .line 437
    move p4, v0

    .line 438
    :goto_4
    if-ge p4, p3, :cond_4

    .line 439
    .line 440
    aget p5, p2, p4

    .line 441
    .line 442
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    .line 443
    .line 444
    invoke-virtual {v5, p5}, Lcom/android/server/inputmethod/UserDataRepository;->getOrCreate(I)Lcom/android/server/inputmethod/UserDataRepository$UserData;

    .line 445
    .line 446
    .line 447
    add-int/2addr p4, v2

    .line 448
    goto :goto_4

    .line 449
    :cond_4
    iget p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 450
    .line 451
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 452
    .line 453
    .line 454
    move-result-object p2

    .line 455
    iget-object p3, p2, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 456
    .line 457
    iget p4, p2, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 458
    .line 459
    new-instance p5, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 460
    .line 461
    invoke-direct {p5, p1, p3, p4}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;-><init>(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodMap;I)V

    .line 462
    .line 463
    .line 464
    iput-object p5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 465
    .line 466
    new-instance p3, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;

    .line 467
    .line 468
    iget-object p4, p2, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 469
    .line 470
    iget p5, p2, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 471
    .line 472
    invoke-direct {p3, p4, p5}, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;-><init>(Lcom/android/server/inputmethod/InputMethodMap;I)V

    .line 473
    .line 474
    .line 475
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHardwareKeyboardShortcutController:Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;

    .line 476
    .line 477
    new-instance p3, Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 478
    .line 479
    invoke-direct {p3, p0}, Lcom/android/server/inputmethod/InputMethodMenuController;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 480
    .line 481
    .line 482
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 483
    .line 484
    new-instance p3, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 485
    .line 486
    const-class p4, Lcom/android/server/wm/WindowManagerInternal;

    .line 487
    .line 488
    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object p5

    .line 492
    check-cast p5, Lcom/android/server/wm/WindowManagerInternal;

    .line 493
    .line 494
    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    move-result-object p4

    .line 498
    check-cast p4, Lcom/android/server/wm/WindowManagerInternal;

    .line 499
    .line 500
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    new-instance v5, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;

    .line 504
    .line 505
    invoke-direct {v5, p4}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowManagerInternal;)V

    .line 506
    .line 507
    .line 508
    new-instance p4, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    .line 509
    .line 510
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 511
    .line 512
    .line 513
    invoke-direct {p3, p0, p5, v5, p4}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;)V

    .line 514
    .line 515
    .line 516
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 517
    .line 518
    new-instance p3, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    .line 519
    .line 520
    invoke-direct {p3, p0}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 521
    .line 522
    .line 523
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    .line 524
    .line 525
    new-instance p3, Lcom/android/server/inputmethod/ClientController;

    .line 526
    .line 527
    iget-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 528
    .line 529
    invoke-direct {p3, p4}, Lcom/android/server/inputmethod/ClientController;-><init>(Landroid/content/pm/PackageManagerInternal;)V

    .line 530
    .line 531
    .line 532
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    .line 533
    .line 534
    new-instance p4, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;

    .line 535
    .line 536
    invoke-direct {p4, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 537
    .line 538
    .line 539
    iget-object p3, p3, Lcom/android/server/inputmethod/ClientController;->mCallbacks:Ljava/util/List;

    .line 540
    .line 541
    check-cast p3, Ljava/util/ArrayList;

    .line 542
    .line 543
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    new-instance p3, Lcom/android/server/inputmethod/ImeBindingState;

    .line 547
    .line 548
    invoke-direct {p3, v1, v0, v1, v1}, Lcom/android/server/inputmethod/ImeBindingState;-><init>(Landroid/os/IBinder;ILcom/android/server/inputmethod/ClientState;Landroid/view/inputmethod/EditorInfo;)V

    .line 549
    .line 550
    .line 551
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 552
    .line 553
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 554
    .line 555
    const p4, 0x1110007

    .line 556
    .line 557
    .line 558
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 559
    .line 560
    .line 561
    move-result p3

    .line 562
    iput-boolean p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPreventImeStartupUnlessTextEditor:Z

    .line 563
    .line 564
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 565
    .line 566
    const p4, 0x107012d

    .line 567
    .line 568
    .line 569
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object p3

    .line 573
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNonPreemptibleInputMethods:[Ljava/lang/String;

    .line 574
    .line 575
    new-instance p3, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda1;

    .line 576
    .line 577
    invoke-direct {p3, v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda1;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 578
    .line 579
    .line 580
    new-instance p4, Lcom/android/server/inputmethod/HandwritingModeController;

    .line 581
    .line 582
    iget-object p5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 583
    .line 584
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 585
    .line 586
    .line 587
    move-result-object v4

    .line 588
    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;

    .line 589
    .line 590
    invoke-direct {v5, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 591
    .line 592
    .line 593
    invoke-direct {p4, p5, v4, v5, p3}, Lcom/android/server/inputmethod/HandwritingModeController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda1;)V

    .line 594
    .line 595
    .line 596
    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 597
    .line 598
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->registerDeviceListenerAndCheckStylusSupport()V

    .line 599
    .line 600
    .line 601
    new-instance p3, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;

    .line 602
    .line 603
    invoke-direct {p3, p1, p0}, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;-><init>(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 604
    .line 605
    .line 606
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSemImmsUtil:Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;

    .line 607
    .line 608
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildKeyboardTypeMouseList(Landroid/content/Context;)V

    .line 609
    .line 610
    .line 611
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInitialUserSwitch:Z

    .line 612
    .line 613
    const-string/jumbo p3, "window"

    .line 614
    .line 615
    .line 616
    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 617
    .line 618
    .line 619
    move-result-object p3

    .line 620
    invoke-static {p3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    .line 621
    .line 622
    .line 623
    move-result-object p3

    .line 624
    check-cast p3, Lcom/android/server/wm/WindowManagerService;

    .line 625
    .line 626
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWMS:Lcom/android/server/wm/WindowManagerService;

    .line 627
    .line 628
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 629
    .line 630
    .line 631
    move-result-object p4

    .line 632
    const-string/jumbo p5, "com.sec.feature.folder_type"

    .line 633
    .line 634
    .line 635
    invoke-virtual {p4, p5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 636
    .line 637
    .line 638
    iget-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 639
    .line 640
    const-string/jumbo p5, "desktopmode"

    .line 641
    .line 642
    .line 643
    invoke-virtual {p4, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    move-result-object p4

    .line 647
    check-cast p4, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 648
    .line 649
    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 650
    .line 651
    iget-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 652
    .line 653
    const-string/jumbo p5, "power"

    .line 654
    .line 655
    .line 656
    invoke-virtual {p4, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 657
    .line 658
    .line 659
    move-result-object p4

    .line 660
    check-cast p4, Landroid/os/PowerManager;

    .line 661
    .line 662
    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 663
    .line 664
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 665
    .line 666
    .line 667
    move-result-object p1

    .line 668
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 669
    .line 670
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->registerSamsungAdditionalReceivers()V

    .line 671
    .line 672
    .line 673
    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object p1

    .line 677
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 678
    .line 679
    .line 680
    move-result p4

    .line 681
    xor-int/2addr p4, v2

    .line 682
    iput-boolean p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSelectedOnBoot:Z

    .line 683
    .line 684
    const-string p5, "InputMethodManagerService"

    .line 685
    .line 686
    new-instance v4, Ljava/lang/StringBuilder;

    .line 687
    .line 688
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 689
    .line 690
    .line 691
    const-string v5, "Initial default ime = "

    .line 692
    .line 693
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    const-string v5, " mImeSelectedOnBoot :"

    .line 700
    .line 701
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 705
    .line 706
    .line 707
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object p4

    .line 711
    invoke-static {p5, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    .line 713
    .line 714
    sget-boolean p4, Lcom/samsung/android/rune/ViewRune;->SUPPORT_WRITING_TOOLKIT:Z

    .line 715
    .line 716
    if-eqz p4, :cond_5

    .line 717
    .line 718
    const-string/jumbo p4, "com.samsung.android.honeyboard/com.samsung.android.writingtoolkit.service.FakeHoneyBoardService"

    .line 719
    .line 720
    .line 721
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 722
    .line 723
    .line 724
    move-result p1

    .line 725
    if-eqz p1, :cond_5

    .line 726
    .line 727
    invoke-virtual {p2, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getLastSubtypeForInputMethodInternal(Ljava/lang/String;)Landroid/util/Pair;

    .line 728
    .line 729
    .line 730
    move-result-object p1

    .line 731
    if-eqz p1, :cond_5

    .line 732
    .line 733
    const-string p4, "InputMethodManagerService"

    .line 734
    .line 735
    new-instance p5, Ljava/lang/StringBuilder;

    .line 736
    .line 737
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 738
    .line 739
    .line 740
    const-string v1, "InputMethodManagerService: restore last ime before toolkitHbd="

    .line 741
    .line 742
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 746
    .line 747
    check-cast v1, Ljava/lang/String;

    .line 748
    .line 749
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object p5

    .line 756
    invoke-static {p4, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    .line 758
    .line 759
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 760
    .line 761
    check-cast p1, Ljava/lang/String;

    .line 762
    .line 763
    invoke-virtual {p2, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 764
    .line 765
    .line 766
    :cond_5
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 767
    .line 768
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 769
    .line 770
    .line 771
    move-result-object p1

    .line 772
    const-string p4, "access_control_keyboard_block"

    .line 773
    .line 774
    iget p2, p2, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 775
    .line 776
    invoke-static {p1, p4, v2, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 777
    .line 778
    .line 779
    move-result p1

    .line 780
    if-eqz p1, :cond_6

    .line 781
    .line 782
    goto :goto_5

    .line 783
    :cond_6
    move v2, v0

    .line 784
    :goto_5
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    .line 785
    .line 786
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 787
    .line 788
    .line 789
    move-result-object p1

    .line 790
    const-string p2, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_VERSION"

    .line 791
    .line 792
    invoke-virtual {p1, p2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    .line 793
    .line 794
    .line 795
    move-result p1

    .line 796
    if-gtz p1, :cond_7

    .line 797
    .line 798
    const-string p0, "InputMethodManagerService"

    .line 799
    .line 800
    const-string p1, "Spen input disable"

    .line 801
    .line 802
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    .line 804
    .line 805
    goto :goto_6

    .line 806
    :cond_7
    const-string p1, "InputMethodManagerService"

    .line 807
    .line 808
    const-string p2, "Spen input enable"

    .line 809
    .line 810
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    .line 812
    .line 813
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPointerEventListener:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda0;

    .line 814
    .line 815
    invoke-virtual {p3, p0, v0}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    .line 816
    .line 817
    .line 818
    :goto_6
    monitor-exit v3

    .line 819
    return-void

    .line 820
    :goto_7
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    throw p0
.end method

.method public static clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    .line 18
    .line 19
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 28
    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    .line 31
    .line 32
    return-void
.end method

.method public static createAccessibilityInputMethodSessions(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 4

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    .line 24
    .line 25
    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 26
    .line 27
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-object v0
.end method

.method public static experimentalInitializeVisibleBackgroundUserLocked(I)V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodList:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    filled-new-array {v2}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v0, v2}, Lcom/android/server/inputmethod/InputMethodUtils;->concatEnabledImeIds(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-nez v0, :cond_3

    .line 80
    .line 81
    return-void

    .line 82
    :cond_3
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_4
    return-void
.end method

.method public static finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V
    .locals 3

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;->finishSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    const-string v1, "InputMethodManagerService"

    .line 13
    .line 14
    const-string v2, "Session failed to close due to remote exception"

    .line 15
    .line 16
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    :goto_0
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public static getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string/jumbo p1, "default_input_method"

    .line 10
    .line 11
    .line 12
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static getDexSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v1, "key"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v1, "def"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :try_start_0
    sget-object v1, Lcom/android/server/inputmethod/InputMethodManagerService;->DEX_CONTENT_URI:Landroid/net/Uri;

    .line 20
    .line 21
    const-string/jumbo v2, "getSettings"

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-eqz p0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-object p0

    .line 36
    :catch_0
    const-string p0, "InputMethodManagerService"

    .line 37
    .line 38
    const-string p1, "Failed to get settings"

    .line 39
    .line 40
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :cond_0
    return-object p2
.end method

.method public static getExceptionForUnknownImeId(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    const-string v1, "Unknown id: "

    .line 4
    .line 5
    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne v0, p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :goto_0
    return-object p0
.end method

.method public static isStylusDevice(Landroid/view/InputDevice;)Z
    .locals 1

    .line 1
    const/16 v0, 0x4002

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->supportsSource(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const v0, 0xc002

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->supportsSource(I)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 22
    :goto_1
    return p0
.end method

.method public static queryInputMethodServicesInternal(Landroid/content/Context;ILcom/android/server/inputmethod/AdditionalSubtypeMap;I)Lcom/android/server/inputmethod/InputMethodSettings;
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-ne v0, p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :goto_0
    const/4 v0, 0x1

    .line 18
    const-string v2, "InputMethodManagerService"

    .line 19
    .line 20
    const/high16 v3, 0x10000000

    .line 21
    .line 22
    if-eqz p3, :cond_2

    .line 23
    .line 24
    if-eq p3, v0, :cond_1

    .line 25
    .line 26
    const-string v4, "Unknown directBootAwareness="

    .line 27
    .line 28
    const-string v5, ". Falling back to DirectBootAwareness.AUTO"

    .line 29
    .line 30
    invoke-static {p3, v4, v5, v2}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/high16 v3, 0xc0000

    .line 35
    .line 36
    :cond_2
    :goto_1
    const p3, 0x8080

    .line 37
    .line 38
    .line 39
    or-int/2addr p3, v3

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    new-instance v4, Landroid/content/Intent;

    .line 45
    .line 46
    const-string v5, "android.view.InputMethod"

    .line 47
    .line 48
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    int-to-long v5, p3

    .line 52
    invoke-static {v5, v6}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-virtual {v3, v4, p3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    const-string/jumbo v3, "enabled_input_methods"

    .line 61
    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    invoke-static {v3, v4, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v3}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    new-instance v4, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    new-instance v5, Lcom/android/server/inputmethod/InputMethodUtils$$ExternalSyntheticLambda0;

    .line 78
    .line 79
    invoke-direct {v5, v4}, Lcom/android/server/inputmethod/InputMethodUtils$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v3, v5}, Lcom/android/server/inputmethod/InputMethodUtils;->splitEnabledImeStr(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 83
    .line 84
    .line 85
    new-instance v3, Landroid/util/ArrayMap;

    .line 86
    .line 87
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 88
    .line 89
    .line 90
    new-instance v5, Landroid/util/ArrayMap;

    .line 91
    .line 92
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    invoke-direct {v5, v6}, Landroid/util/ArrayMap;-><init>(I)V

    .line 97
    .line 98
    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    :goto_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-ge v1, v7, :cond_7

    .line 108
    .line 109
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 114
    .line 115
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 116
    .line 117
    invoke-static {v7}, Landroid/view/inputmethod/InputMethodInfo;->computeId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    iget-object v10, v8, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 122
    .line 123
    const-string v11, "android.permission.BIND_INPUT_METHOD"

    .line 124
    .line 125
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v10

    .line 129
    if-nez v10, :cond_3

    .line 130
    .line 131
    const-string v7, "Skipping input method "

    .line 132
    .line 133
    const-string v8, ": it does not require the permission android.permission.BIND_INPUT_METHOD"

    .line 134
    .line 135
    invoke-static {v7, v9, v8, v2}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_5

    .line 139
    :cond_3
    :try_start_0
    new-instance v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 140
    .line 141
    iget-object v11, p2, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->mMap:Landroid/util/ArrayMap;

    .line 142
    .line 143
    invoke-virtual {v11, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v11

    .line 147
    check-cast v11, Ljava/util/List;

    .line 148
    .line 149
    invoke-direct {v10, p0, v7, v11}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Ljava/util/List;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->isVrOnly()Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    if-eqz v7, :cond_4

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_4
    iget-object v7, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 160
    .line 161
    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 162
    .line 163
    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 164
    .line 165
    .line 166
    move-result v8

    .line 167
    if-nez v8, :cond_5

    .line 168
    .line 169
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    if-nez v8, :cond_5

    .line 178
    .line 179
    invoke-virtual {v3, v7, v6}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    check-cast v8, Ljava/lang/Integer;

    .line 184
    .line 185
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 186
    .line 187
    .line 188
    move-result v8

    .line 189
    const/16 v11, 0x14

    .line 190
    .line 191
    if-ge v8, v11, :cond_6

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :catch_0
    move-exception v7

    .line 195
    goto :goto_4

    .line 196
    :cond_5
    :goto_3
    invoke-virtual {v3, v7, v6}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    check-cast v8, Ljava/lang/Integer;

    .line 201
    .line 202
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 203
    .line 204
    .line 205
    move-result v8

    .line 206
    add-int/2addr v8, v0

    .line 207
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    invoke-virtual {v3, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    invoke-virtual {v5, v7, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .line 220
    .line 221
    goto :goto_5

    .line 222
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string v10, "Unable to load input method "

    .line 225
    .line 226
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v8

    .line 236
    invoke-static {v2, v8, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    .line 238
    .line 239
    :cond_6
    :goto_5
    add-int/lit8 v1, v1, 0x1

    .line 240
    .line 241
    goto/16 :goto_2

    .line 242
    .line 243
    :cond_7
    new-instance p0, Lcom/android/server/inputmethod/InputMethodMap;

    .line 244
    .line 245
    invoke-direct {p0, v5}, Lcom/android/server/inputmethod/InputMethodMap;-><init>(Landroid/util/ArrayMap;)V

    .line 246
    .line 247
    .line 248
    new-instance p2, Lcom/android/server/inputmethod/InputMethodSettings;

    .line 249
    .line 250
    invoke-direct {p2, p0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;-><init>(Lcom/android/server/inputmethod/InputMethodMap;I)V

    .line 251
    .line 252
    .line 253
    return-object p2
.end method

.method public static requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    .line 7
    .line 8
    new-instance v0, Landroid/util/ArraySet;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/server/AccessibilityManagerInternal;->createImeSession(Landroid/util/ArraySet;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public static setDexSettings(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "setDexSettings of keyboard_dex "

    .line 2
    .line 3
    .line 4
    const-string v1, "InputMethodManagerService"

    .line 5
    .line 6
    new-instance v2, Landroid/os/Bundle;

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v3, "key"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v4, "keyboard_dex"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string/jumbo v3, "val"

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    sget-object p1, Lcom/android/server/inputmethod/InputMethodManagerService;->DEX_CONTENT_URI:Landroid/net/Uri;

    .line 35
    .line 36
    const-string/jumbo v0, "setSettings"

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-virtual {p0, p1, v0, v3, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    const-string p0, "Failed to set settings"

    .line 45
    .line 46
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method


# virtual methods
.method public final acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusHandwritingEnabled(Landroid/content/Context;I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string p0, "InputMethodManagerService"

    .line 11
    .line 12
    const-string p1, "Can not accept stylus handwriting delegation. Stylus handwriting pref is disabled for user: "

    .line 13
    .line 14
    invoke-static {p2, p1, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    const-class p2, Lcom/android/server/inputmethod/ImfLock;

    .line 19
    .line 20
    monitor-enter p2

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    .line 22
    .line 23
    invoke-virtual {v0, p1, p3}, Lcom/android/server/inputmethod/ClientController;->verifyClientAndPackageMatch(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const-string p0, "InputMethodManagerService"

    .line 30
    .line 31
    const-string p1, "Delegate package does not belong to the same user. Ignoring startStylusHandwriting"

    .line 32
    .line 33
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    monitor-exit p2

    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto/16 :goto_5

    .line 40
    .line 41
    :cond_1
    const/4 v6, 0x1

    .line 42
    and-int/2addr p5, v6

    .line 43
    if-eqz p5, :cond_2

    .line 44
    .line 45
    move p5, v6

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    move p5, v1

    .line 48
    :goto_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorPackageName:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p4

    .line 56
    if-nez p4, :cond_4

    .line 57
    .line 58
    if-eqz p5, :cond_3

    .line 59
    .line 60
    iget-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 61
    .line 62
    iget-boolean p4, p4, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatorFromDefaultHomePackage:Z

    .line 63
    .line 64
    if-nez p4, :cond_4

    .line 65
    .line 66
    :cond_3
    const-string p0, "InputMethodManagerService"

    .line 67
    .line 68
    const-string p1, "Delegator package does not match. Ignoring startStylusHandwriting"

    .line 69
    .line 70
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    monitor-exit p2

    .line 74
    goto :goto_1

    .line 75
    :cond_4
    iget-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 76
    .line 77
    iget-object p4, p4, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegatePackageName:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p3

    .line 83
    if-nez p3, :cond_5

    .line 84
    .line 85
    const-string p0, "InputMethodManagerService"

    .line 86
    .line 87
    const-string p1, "Delegate package does not match. Ignoring startStylusHandwriting"

    .line 88
    .line 89
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    monitor-exit p2

    .line 93
    :goto_1
    return v1

    .line 94
    :cond_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    const-class p3, Lcom/android/server/inputmethod/ImfLock;

    .line 96
    .line 97
    monitor-enter p3

    .line 98
    :try_start_1
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 99
    .line 100
    iget-boolean p2, p2, Lcom/android/server/inputmethod/HandwritingModeController;->mDelegationConnectionlessFlow:Z

    .line 101
    .line 102
    if-eqz p2, :cond_7

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-nez p1, :cond_6

    .line 109
    .line 110
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    return v1

    .line 112
    :catchall_1
    move-exception p0

    .line 113
    goto :goto_4

    .line 114
    :cond_6
    :try_start_2
    iget-object p1, p1, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 115
    .line 116
    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethod;->commitHandwritingDelegationTextIfAvailable()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :catch_0
    move-exception p1

    .line 121
    :try_start_3
    invoke-static {p1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 122
    .line 123
    .line 124
    :goto_2
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/android/server/inputmethod/HandwritingModeController;->clearPendingHandwritingDelegation()V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_7
    const/4 v3, 0x0

    .line 131
    const/4 v4, 0x0

    .line 132
    const/4 v5, 0x0

    .line 133
    move-object v0, p0

    .line 134
    move-object v1, p1

    .line 135
    move v2, v6

    .line 136
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ZLcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)Z

    .line 137
    .line 138
    .line 139
    :goto_3
    monitor-exit p3

    .line 140
    return v6

    .line 141
    :goto_4
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 142
    throw p0

    .line 143
    :goto_5
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 144
    throw p0
.end method

.method public final acceptStylusHandwritingDelegationAsync(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/inputmethod/IBooleanListener;)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/inputmethod/InputMethodManagerService;->acceptStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;I)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    :try_start_0
    invoke-interface {p6, p0}, Lcom/android/internal/inputmethod/IBooleanListener;->onResult(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string p3, "Failed to report result="

    .line 13
    .line 14
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string p2, "InputMethodManagerService"

    .line 25
    .line 26
    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public final addClient(Lcom/android/internal/inputmethod/IInputMethodClient;Lcom/android/internal/inputmethod/IRemoteInputConnection;I)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v4

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v5

    .line 9
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p1}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    new-instance v3, Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    move-object v0, v1

    .line 24
    :cond_1
    invoke-direct {v3, p1, v2, v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;-><init>(Lcom/android/internal/inputmethod/IInputMethodClient;ZLandroid/os/Handler;)V

    .line 25
    .line 26
    .line 27
    move-object v1, v3

    .line 28
    :goto_0
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    .line 29
    .line 30
    monitor-enter p1

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    .line 32
    .line 33
    move-object v2, p2

    .line 34
    move v3, p3

    .line 35
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/ClientController;->addClient(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/IRemoteInputConnection;III)V

    .line 36
    .line 37
    .line 38
    monitor-exit p1

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public final addStylusDeviceIdLocked(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/util/IntArray;

    .line 6
    .line 7
    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, -0x1

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    :goto_0
    const-string v0, "New Stylus deviceId"

    .line 22
    .line 23
    const-string v1, " added."

    .line 24
    .line 25
    const-string v2, "InputMethodManagerService"

    .line 26
    .line 27
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 33
    .line 34
    .line 35
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    iget-boolean p1, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 58
    .line 59
    const/16 p1, 0x442

    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 66
    .line 67
    .line 68
    :cond_2
    return-void
.end method

.method public final addVirtualStylusIdForTestSession(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    const-string v2, "addVirtualStylusIdForTestSession"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    monitor-exit v1

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    const p1, 0xf423f

    .line 26
    .line 27
    .line 28
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->addStylusDeviceIdLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    .line 30
    .line 31
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    .line 33
    .line 34
    monitor-exit v1

    .line 35
    return-void

    .line 36
    :catchall_1
    move-exception p0

    .line 37
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    .line 39
    .line 40
    throw p0

    .line 41
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    throw p0
.end method

.method public final attachNewAccessibilityLocked(IZ)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToAccessibility:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/android/server/AccessibilityManagerInternal;->bindInput()V

    .line 11
    .line 12
    .line 13
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToAccessibility:Z

    .line 14
    .line 15
    :cond_0
    const/16 v0, 0xb

    .line 16
    .line 17
    if-eq p1, v0, :cond_7

    .line 18
    .line 19
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    .line 22
    .line 23
    new-instance v0, Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    move v3, v2

    .line 30
    :goto_0
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-ge v3, v4, :cond_2

    .line 37
    .line 38
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->contains(I)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    .line 51
    .line 52
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    .line 57
    .line 58
    if-eqz v4, :cond_1

    .line 59
    .line 60
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    .line 61
    .line 62
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 67
    .line 68
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-lez v3, :cond_3

    .line 79
    .line 80
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3, v0, v2}, Lcom/android/server/AccessibilityManagerInternal;->setImeSessionEnabled(Landroid/util/SparseArray;Z)V

    .line 85
    .line 86
    .line 87
    :cond_3
    new-instance v0, Landroid/util/SparseArray;

    .line 88
    .line 89
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 90
    .line 91
    .line 92
    :goto_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-ge v2, v3, :cond_5

    .line 97
    .line 98
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    .line 99
    .line 100
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->contains(I)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-nez v3, :cond_4

    .line 109
    .line 110
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    .line 115
    .line 116
    if-eqz v3, :cond_4

    .line 117
    .line 118
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    .line 123
    .line 124
    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_5
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-lez v2, :cond_6

    .line 135
    .line 136
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v2, v0, v1}, Lcom/android/server/AccessibilityManagerInternal;->setImeSessionEnabled(Landroid/util/SparseArray;Z)V

    .line 141
    .line 142
    .line 143
    :cond_6
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    .line 144
    .line 145
    invoke-static {}, Lcom/android/server/AccessibilityManagerInternal;->get()Lcom/android/server/AccessibilityManagerInternal;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurRemoteAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 150
    .line 151
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 152
    .line 153
    xor-int/2addr p2, v1

    .line 154
    invoke-virtual {p1, v0, p0, p2}, Lcom/android/server/AccessibilityManagerInternal;->startInput(Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 155
    .line 156
    .line 157
    :cond_7
    return-void
.end method

.method public final attachNewInputLocked(IZ)Lcom/android/internal/inputmethod/InputBindResult;
    .locals 25

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    iget v9, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 4
    .line 5
    invoke-virtual {v8, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 6
    .line 7
    .line 8
    move-result-object v10

    .line 9
    iget-boolean v0, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    .line 10
    .line 11
    const/4 v11, 0x1

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, v10, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 15
    .line 16
    iget-object v1, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/inputmethod/ClientState;->mBinding:Landroid/view/inputmethod/InputBinding;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    :try_start_0
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 24
    .line 25
    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IInputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iput-boolean v11, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    .line 34
    .line 35
    :cond_0
    xor-int/lit8 v7, p2, 0x1

    .line 36
    .line 37
    new-instance v6, Landroid/os/Binder;

    .line 38
    .line 39
    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    .line 40
    .line 41
    .line 42
    new-instance v0, Lcom/android/server/inputmethod/StartInputInfo;

    .line 43
    .line 44
    iget v13, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 45
    .line 46
    iget-object v14, v10, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    .line 47
    .line 48
    iget v15, v10, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    .line 49
    .line 50
    iget-object v1, v10, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v2, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 53
    .line 54
    iget v2, v2, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 55
    .line 56
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 57
    .line 58
    .line 59
    move-result v19

    .line 60
    iget-object v2, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 61
    .line 62
    iget v2, v2, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    .line 63
    .line 64
    iget-object v3, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 65
    .line 66
    iget-object v4, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 67
    .line 68
    iget-object v5, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 69
    .line 70
    iget v12, v10, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    .line 71
    .line 72
    iget v3, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    .line 73
    .line 74
    move/from16 v24, v12

    .line 75
    .line 76
    move-object v12, v0

    .line 77
    move-object/from16 v16, v1

    .line 78
    .line 79
    move/from16 v17, p1

    .line 80
    .line 81
    move/from16 v18, v7

    .line 82
    .line 83
    move/from16 v20, v2

    .line 84
    .line 85
    move-object/from16 v21, v4

    .line 86
    .line 87
    move-object/from16 v22, v5

    .line 88
    .line 89
    move/from16 v23, v3

    .line 90
    .line 91
    invoke-direct/range {v12 .. v24}, Lcom/android/server/inputmethod/StartInputInfo;-><init>(ILandroid/os/IBinder;ILjava/lang/String;IZIILandroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;II)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTargetWindowMap:Ljava/util/WeakHashMap;

    .line 95
    .line 96
    iget-object v2, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 97
    .line 98
    iget-object v2, v2, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 99
    .line 100
    invoke-virtual {v1, v6, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    iget-object v1, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mStartInputHistory:Lcom/android/server/inputmethod/StartInputHistory;

    .line 104
    .line 105
    iget v2, v1, Lcom/android/server/inputmethod/StartInputHistory;->mNextIndex:I

    .line 106
    .line 107
    iget-object v3, v1, Lcom/android/server/inputmethod/StartInputHistory;->mEntries:[Lcom/android/server/inputmethod/StartInputHistory$Entry;

    .line 108
    .line 109
    aget-object v4, v3, v2

    .line 110
    .line 111
    if-nez v4, :cond_1

    .line 112
    .line 113
    new-instance v4, Lcom/android/server/inputmethod/StartInputHistory$Entry;

    .line 114
    .line 115
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, v0}, Lcom/android/server/inputmethod/StartInputHistory$Entry;->set(Lcom/android/server/inputmethod/StartInputInfo;)V

    .line 119
    .line 120
    .line 121
    aput-object v4, v3, v2

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_1
    invoke-virtual {v4, v0}, Lcom/android/server/inputmethod/StartInputHistory$Entry;->set(Lcom/android/server/inputmethod/StartInputInfo;)V

    .line 125
    .line 126
    .line 127
    :goto_1
    iget v0, v1, Lcom/android/server/inputmethod/StartInputHistory;->mNextIndex:I

    .line 128
    .line 129
    add-int/2addr v0, v11

    .line 130
    array-length v2, v3

    .line 131
    rem-int/2addr v0, v2

    .line 132
    iput v0, v1, Lcom/android/server/inputmethod/StartInputHistory;->mNextIndex:I

    .line 133
    .line 134
    iget-object v0, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 135
    .line 136
    iget v0, v0, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 137
    .line 138
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-ne v9, v0, :cond_2

    .line 143
    .line 144
    iget-object v0, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 145
    .line 146
    iget v1, v10, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    .line 147
    .line 148
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    iget-object v1, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 153
    .line 154
    iget v5, v1, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 155
    .line 156
    move-object v1, v0

    .line 157
    check-cast v1, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 158
    .line 159
    const/4 v3, 0x0

    .line 160
    const/4 v0, 0x1

    .line 161
    const/4 v12, 0x0

    .line 162
    move v2, v9

    .line 163
    move-object v13, v6

    .line 164
    move v6, v0

    .line 165
    move v14, v7

    .line 166
    move v7, v12

    .line 167
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->grantImplicitAccess(ILandroid/content/Intent;IIZZ)V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_2
    move-object v13, v6

    .line 172
    move v14, v7

    .line 173
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodNavButtonFlagsLocked()I

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    iget-object v0, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 178
    .line 179
    iget-object v12, v0, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 180
    .line 181
    iget-object v0, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 182
    .line 183
    const/4 v15, 0x0

    .line 184
    if-eq v0, v12, :cond_4

    .line 185
    .line 186
    if-eqz v0, :cond_3

    .line 187
    .line 188
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 189
    .line 190
    if-eqz v2, :cond_3

    .line 191
    .line 192
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 193
    .line 194
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 195
    .line 196
    .line 197
    :try_start_1
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 198
    .line 199
    invoke-interface {v0, v2, v15}, Lcom/android/internal/inputmethod/IInputMethod;->setSessionEnabled(Lcom/android/internal/inputmethod/IInputMethodSession;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :catch_1
    move-exception v0

    .line 204
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 205
    .line 206
    .line 207
    :cond_3
    :goto_3
    iput-object v12, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 208
    .line 209
    if-eqz v12, :cond_4

    .line 210
    .line 211
    iget-object v0, v12, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 212
    .line 213
    if-eqz v0, :cond_4

    .line 214
    .line 215
    iget-object v2, v12, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 216
    .line 217
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    :try_start_2
    iget-object v2, v2, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 221
    .line 222
    invoke-interface {v2, v0, v11}, Lcom/android/internal/inputmethod/IInputMethod;->setSessionEnabled(Lcom/android/internal/inputmethod/IInputMethodSession;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 223
    .line 224
    .line 225
    goto :goto_4

    .line 226
    :catch_2
    move-exception v0

    .line 227
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 228
    .line 229
    .line 230
    :cond_4
    :goto_4
    if-eqz v12, :cond_5

    .line 231
    .line 232
    iget-object v0, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 233
    .line 234
    iget-object v2, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 235
    .line 236
    iget-object v3, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 237
    .line 238
    iget-object v4, v12, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 239
    .line 240
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    new-instance v5, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;

    .line 244
    .line 245
    invoke-direct {v5}, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;-><init>()V

    .line 246
    .line 247
    .line 248
    iput-object v13, v5, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->startInputToken:Landroid/os/IBinder;

    .line 249
    .line 250
    iput-object v0, v5, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->remoteInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 251
    .line 252
    iput-object v2, v5, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->editorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 253
    .line 254
    iput-boolean v14, v5, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->restarting:Z

    .line 255
    .line 256
    iput v1, v5, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->navigationBarFlags:I

    .line 257
    .line 258
    iput-object v3, v5, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->imeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 259
    .line 260
    :try_start_3
    iget-object v0, v4, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 261
    .line 262
    invoke-interface {v0, v5}, Lcom/android/internal/inputmethod/IInputMethod;->startInput(Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 263
    .line 264
    .line 265
    goto :goto_5

    .line 266
    :catch_3
    move-exception v0

    .line 267
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 268
    .line 269
    .line 270
    :cond_5
    :goto_5
    iget-object v0, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 271
    .line 272
    if-eqz v0, :cond_6

    .line 273
    .line 274
    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 275
    .line 276
    if-eqz v0, :cond_6

    .line 277
    .line 278
    const-string/jumbo v1, "displayId"

    .line 279
    .line 280
    .line 281
    const/4 v2, -0x2

    .line 282
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    const-string/jumbo v1, "checkDisplayOfStartInputAndUpdateKeyboard: displayId="

    .line 287
    .line 288
    .line 289
    const-string v3, ", mFocusedDisplayId="

    .line 290
    .line 291
    invoke-static {v0, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    iget v3, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedDisplayId:I

    .line 296
    .line 297
    const-string v4, "InputMethodManagerService"

    .line 298
    .line 299
    invoke-static {v1, v3, v4}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 300
    .line 301
    .line 302
    iget v1, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedDisplayId:I

    .line 303
    .line 304
    if-eq v1, v0, :cond_6

    .line 305
    .line 306
    if-eq v0, v2, :cond_6

    .line 307
    .line 308
    iput v0, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedDisplayId:I

    .line 309
    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDeskTopMode()Z

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    if-eqz v0, :cond_6

    .line 315
    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeKeyboardDefaultDisplayOnly()Z

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    if-nez v0, :cond_6

    .line 321
    .line 322
    iget-object v0, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mDeXDualViewChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

    .line 323
    .line 324
    invoke-virtual {v0, v11}, Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;->onChange(Z)V

    .line 325
    .line 326
    .line 327
    :cond_6
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    const/4 v13, 0x0

    .line 332
    if-eqz v0, :cond_7

    .line 333
    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isShowRequestedForCurrentWindow()Z

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    if-eqz v0, :cond_b

    .line 339
    .line 340
    iget-object v0, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 341
    .line 342
    if-eqz v0, :cond_b

    .line 343
    .line 344
    iget-object v0, v0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 345
    .line 346
    if-eqz v0, :cond_b

    .line 347
    .line 348
    invoke-virtual {v8, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->showSoftInputInternal(Landroid/os/IBinder;)V

    .line 349
    .line 350
    .line 351
    goto :goto_9

    .line 352
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isShowRequestedForCurrentWindow()Z

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-eqz v0, :cond_b

    .line 357
    .line 358
    iget-object v0, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 359
    .line 360
    const/4 v1, 0x2

    .line 361
    if-eqz v0, :cond_8

    .line 362
    .line 363
    :goto_6
    move-object v3, v0

    .line 364
    goto :goto_7

    .line 365
    :cond_8
    invoke-virtual {v8, v1, v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(IZ)Landroid/view/inputmethod/ImeTracker$Token;

    .line 366
    .line 367
    .line 368
    move-result-object v0

    .line 369
    goto :goto_6

    .line 370
    :goto_7
    iput-object v13, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 371
    .line 372
    iget-object v0, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 373
    .line 374
    iget-object v2, v0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 375
    .line 376
    iget-object v0, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 377
    .line 378
    iget-boolean v4, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    .line 379
    .line 380
    if-eqz v4, :cond_9

    .line 381
    .line 382
    move v4, v1

    .line 383
    goto :goto_8

    .line 384
    :cond_9
    iget-boolean v0, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedShowExplicitly:Z

    .line 385
    .line 386
    if-nez v0, :cond_a

    .line 387
    .line 388
    move v4, v11

    .line 389
    goto :goto_8

    .line 390
    :cond_a
    move v4, v15

    .line 391
    :goto_8
    const/4 v7, 0x2

    .line 392
    const/4 v5, 0x0

    .line 393
    const/4 v6, 0x0

    .line 394
    move-object/from16 v1, p0

    .line 395
    .line 396
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;I)Z

    .line 397
    .line 398
    .line 399
    :cond_b
    :goto_9
    iget-object v0, v10, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    .line 400
    .line 401
    invoke-static {v9}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 406
    .line 407
    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    if-eqz v1, :cond_c

    .line 412
    .line 413
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->suppressesSpellChecker()Z

    .line 414
    .line 415
    .line 416
    move-result v1

    .line 417
    if-eqz v1, :cond_c

    .line 418
    .line 419
    move/from16 v23, v11

    .line 420
    .line 421
    goto :goto_a

    .line 422
    :cond_c
    move/from16 v23, v15

    .line 423
    .line 424
    :goto_a
    iget-object v1, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 425
    .line 426
    iget-object v1, v1, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    .line 427
    .line 428
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->createAccessibilityInputMethodSessions(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 429
    .line 430
    .line 431
    move-result-object v19

    .line 432
    iget-boolean v1, v10, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    .line 433
    .line 434
    if-eqz v1, :cond_d

    .line 435
    .line 436
    iget-object v1, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    .line 437
    .line 438
    if-eqz v1, :cond_d

    .line 439
    .line 440
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    if-eqz v1, :cond_d

    .line 445
    .line 446
    iget-object v1, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 447
    .line 448
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;

    .line 449
    .line 450
    invoke-direct {v2, v8}, Lcom/android/server/inputmethod/InputMethodManagerService$InkWindowInitializer;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 451
    .line 452
    .line 453
    iput-object v2, v1, Lcom/android/server/inputmethod/HandwritingModeController;->mInkWindowInitRunnable:Ljava/lang/Runnable;

    .line 454
    .line 455
    :cond_d
    new-instance v1, Lcom/android/internal/inputmethod/InputBindResult;

    .line 456
    .line 457
    iget-object v2, v12, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 458
    .line 459
    iget-object v3, v12, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mChannel:Landroid/view/InputChannel;

    .line 460
    .line 461
    if-eqz v3, :cond_e

    .line 462
    .line 463
    invoke-virtual {v3}, Landroid/view/InputChannel;->dup()Landroid/view/InputChannel;

    .line 464
    .line 465
    .line 466
    move-result-object v13

    .line 467
    :cond_e
    move-object/from16 v20, v13

    .line 468
    .line 469
    iget v3, v10, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    .line 470
    .line 471
    const/16 v17, 0x0

    .line 472
    .line 473
    move-object/from16 v16, v1

    .line 474
    .line 475
    move-object/from16 v18, v2

    .line 476
    .line 477
    move-object/from16 v21, v0

    .line 478
    .line 479
    move/from16 v22, v3

    .line 480
    .line 481
    invoke-direct/range {v16 .. v23}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    .line 482
    .line 483
    .line 484
    return-object v1
.end method

.method public final buildKeyboardTypeMouseList(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "sip_keyboard_type_mouse_id_list"

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "1133:45077,1133:45072,1133:45091,1133:45083,1133:45082,1133:45076,9390:8195"

    .line 25
    .line 26
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    :cond_1
    const-string p1, ","

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/util/List;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyboardTypeMouseIdList:Ljava/util/List;

    .line 50
    .line 51
    sget-boolean p1, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string/jumbo v0, "buildKeyboardTypeMouseList: mKeyboardTypeMouseIdList="

    .line 58
    .line 59
    .line 60
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyboardTypeMouseIdList:Ljava/util/List;

    .line 64
    .line 65
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    const-string p1, "InputMethodManagerService"

    .line 73
    .line 74
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void
.end method

.method public final calledFromValidUserLocked()Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 10
    .line 11
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/16 v3, 0x3e8

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    if-ne v0, v3, :cond_0

    .line 19
    .line 20
    return v4

    .line 21
    :cond_0
    iget v0, v2, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 22
    .line 23
    if-ne v1, v0, :cond_1

    .line 24
    .line 25
    return v4

    .line 26
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->misSecurefolderIdOrDualAppId:Z

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    return v4

    .line 31
    :cond_2
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_3

    .line 40
    .line 41
    return v4

    .line 42
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v0, "--- IPC called from background users. Ignore. callers="

    .line 45
    .line 46
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/16 v0, 0xa

    .line 50
    .line 51
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string v0, "InputMethodManagerService"

    .line 63
    .line 64
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    const/4 p0, 0x0

    .line 68
    return p0
.end method

.method public final calledWithValidTokenLocked(Landroid/os/IBinder;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    .line 10
    .line 11
    if-eq p1, p0, :cond_0

    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v0, "Ignoring "

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v0, " due to an invalid token. uid:"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, " token:"

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string p1, "InputMethodManagerService"

    .line 52
    .line 53
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    return p0

    .line 58
    :cond_0
    const/4 p0, 0x1

    .line 59
    return p0

    .line 60
    :cond_1
    new-instance p0, Ljava/security/InvalidParameterException;

    .line 61
    .line 62
    const-string/jumbo p1, "token must not be null."

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public final canCallerAccessInputMethod(Ljava/lang/String;IILcom/android/server/inputmethod/InputMethodSettings;)Z
    .locals 1

    .line 1
    invoke-virtual {p4}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    invoke-static {p4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p4, 0x0

    .line 13
    :goto_0
    const/4 v0, 0x1

    .line 14
    if-eqz p4, :cond_1

    .line 15
    .line 16
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p4

    .line 20
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p4

    .line 24
    if-eqz p4, :cond_1

    .line 25
    .line 26
    return v0

    .line 27
    :cond_1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 28
    .line 29
    invoke-virtual {p0, p2, p3, p1, v0}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(IILjava/lang/String;Z)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    xor-int/2addr p0, v0

    .line 34
    return p0
.end method

.method public final canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    .line 22
    .line 23
    invoke-interface {p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x2

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v2, p4, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 46
    .line 47
    iget v2, v0, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    .line 48
    .line 49
    iget v3, v0, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 50
    .line 51
    iget v0, v0, Lcom/android/server/inputmethod/ClientState;->mPid:I

    .line 52
    .line 53
    invoke-virtual {p0, v1, v3, v0, v2}, Lcom/android/server/wm/WindowManagerInternal;->hasInputMethodClientFocus(Landroid/os/IBinder;III)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_2

    .line 58
    .line 59
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const/4 p1, 0x3

    .line 64
    invoke-interface {p0, p4, p1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 65
    .line 66
    .line 67
    const/4 p0, 0x1

    .line 68
    return p0

    .line 69
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    filled-new-array {p3, p0, p2}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string p1, "Ignoring %s of uid %d : %s"

    .line 78
    .line 79
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    const-string p1, "InputMethodManagerService"

    .line 84
    .line 85
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    const/4 p0, 0x0

    .line 89
    return p0

    .line 90
    :cond_3
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-interface {p0, p4, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 95
    .line 96
    .line 97
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string/jumbo p3, "unknown client "

    .line 102
    .line 103
    .line 104
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-interface {p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0
.end method

.method public final canShowInputMethodPickerLocked(Lcom/android/internal/inputmethod/IInputMethodClient;)Z
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    .line 8
    .line 9
    const/4 v6, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object v0, v0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-ne v0, p1, :cond_0

    .line 27
    .line 28
    return v6

    .line 29
    :cond_0
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 30
    .line 31
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v7, 0x0

    .line 36
    if-eq p1, v0, :cond_1

    .line 37
    .line 38
    return v7

    .line 39
    :cond_1
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    const-wide/16 v3, 0x0

    .line 60
    .line 61
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->isSameApp(IIJLjava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-eqz p0, :cond_2

    .line 70
    .line 71
    return v6

    .line 72
    :cond_2
    return v7
.end method

.method public final checkBlocklistUsbKeyboardConnected()I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string/jumbo v1, "input"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/hardware/input/InputManager;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    array-length v1, v0

    .line 25
    const/4 v2, 0x0

    .line 26
    move v3, v2

    .line 27
    :goto_0
    if-ge v3, v1, :cond_5

    .line 28
    .line 29
    aget v4, v0, v3

    .line 30
    .line 31
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManager:Landroid/hardware/input/InputManager;

    .line 32
    .line 33
    invoke-virtual {v5, v4}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x1

    .line 38
    if-nez v4, :cond_1

    .line 39
    .line 40
    :goto_1
    move v6, v2

    .line 41
    goto :goto_3

    .line 42
    :cond_1
    invoke-virtual {v4}, Landroid/view/InputDevice;->isVirtual()Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-nez v6, :cond_2

    .line 47
    .line 48
    invoke-virtual {v4}, Landroid/view/InputDevice;->getKeyboardType()I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    const/4 v7, 0x2

    .line 53
    if-ne v6, v7, :cond_2

    .line 54
    .line 55
    move v6, v5

    .line 56
    goto :goto_2

    .line 57
    :cond_2
    move v6, v2

    .line 58
    :goto_2
    if-eqz v6, :cond_3

    .line 59
    .line 60
    const/16 v7, 0x2002

    .line 61
    .line 62
    invoke-virtual {v4, v7}, Landroid/view/InputDevice;->supportsSource(I)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-eqz v7, :cond_3

    .line 67
    .line 68
    new-instance v7, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Landroid/view/InputDevice;->getVendorId()I

    .line 74
    .line 75
    .line 76
    move-result v8

    .line 77
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v8, ":"

    .line 81
    .line 82
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Landroid/view/InputDevice;->getProductId()I

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mKeyboardTypeMouseIdList:Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {v8, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-ltz v7, :cond_3

    .line 103
    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string/jumbo v7, "isQwertyKeyboard: name="

    .line 107
    .line 108
    .line 109
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v7, " vendorId="

    .line 120
    .line 121
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Landroid/view/InputDevice;->getVendorId()I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v7, " productId="

    .line 132
    .line 133
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4}, Landroid/view/InputDevice;->getProductId()I

    .line 137
    .line 138
    .line 139
    move-result v4

    .line 140
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    const-string v6, "InputMethodManagerService"

    .line 148
    .line 149
    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_3
    :goto_3
    if-eqz v6, :cond_4

    .line 154
    .line 155
    return v5

    .line 156
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :cond_5
    return v2
.end method

.method public final chooseNewDefaultIMELocked()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public final createStatsTokenForFocusedClient(IZ)Landroid/view/inputmethod/ImeTracker$Token;
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, v0, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 8
    .line 9
    :goto_0
    move v3, v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const/4 v0, -0x1

    .line 12
    goto :goto_0

    .line 13
    :goto_1
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 18
    .line 19
    :goto_2
    move-object v2, p0

    .line 20
    goto :goto_3

    .line 21
    :cond_1
    const-string/jumbo p0, "uid("

    .line 22
    .line 23
    .line 24
    const-string v0, ")"

    .line 25
    .line 26
    invoke-static {v3, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    goto :goto_2

    .line 31
    :goto_3
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz p2, :cond_2

    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    :goto_4
    move v4, p0

    .line 39
    goto :goto_5

    .line 40
    :cond_2
    const/4 p0, 0x2

    .line 41
    goto :goto_4

    .line 42
    :goto_5
    const/4 v5, 0x6

    .line 43
    const/4 v7, 0x0

    .line 44
    move v6, p1

    .line 45
    invoke-interface/range {v1 .. v7}, Landroid/view/inputmethod/ImeTracker;->onStart(Ljava/lang/String;IIIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public final dismissAndShowAgainInputMethodPicker()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "InputMethodManagerService"

    .line 9
    .line 10
    const-string/jumbo v1, "showAgainInputMehtodPicker"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 17
    .line 18
    const/16 v0, 0x3ff

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "InputMethodManagerService"

    .line 4
    .line 5
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPriorityDumper:Lcom/android/server/inputmethod/InputMethodManagerService$5;

    .line 13
    .line 14
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/utils/PriorityDump;->dump(Lcom/android/server/utils/PriorityDump$PriorityDumper;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 9

    .line 1
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-wide v2, 0x10b00000003L

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const-wide v5, 0x10900000001L

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget v4, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    .line 32
    .line 33
    const-wide v5, 0x10500000002L

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 39
    .line 40
    .line 41
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 42
    .line 43
    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const-wide v5, 0x10900000003L

    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 56
    .line 57
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 58
    .line 59
    iget-object v6, v4, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 60
    .line 61
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerInternal;->getWindowName(Landroid/os/IBinder;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    const-wide v6, 0x10900000004L

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget v4, v4, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    .line 74
    .line 75
    invoke-static {v4}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    const-wide v5, 0x10900000006L

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 88
    .line 89
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    .line 90
    .line 91
    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowManagerInternal;->getWindowName(Landroid/os/IBinder;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    const-wide v7, 0x10900000005L

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 104
    .line 105
    iget v4, v4, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    .line 106
    .line 107
    invoke-static {v4}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 115
    .line 116
    if-eqz v4, :cond_0

    .line 117
    .line 118
    const-wide v5, 0x10b00000007L

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, p1, v5, v6}, Landroid/view/inputmethod/EditorInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catchall_0
    move-exception p0

    .line 128
    goto/16 :goto_1

    .line 129
    .line 130
    :cond_0
    :goto_0
    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    .line 131
    .line 132
    const-wide v5, 0x10900000008L

    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 141
    .line 142
    iget-boolean v5, v4, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedShowExplicitly:Z

    .line 143
    .line 144
    const-wide v6, 0x1080000000aL

    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 150
    .line 151
    .line 152
    iget-boolean v5, v4, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    .line 153
    .line 154
    const-wide v6, 0x1080000000bL

    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 160
    .line 161
    .line 162
    iget-object v5, v4, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    .line 163
    .line 164
    iget-boolean v5, v5, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mA11yRequestingNoSoftKeyboard:Z

    .line 165
    .line 166
    const-wide v6, 0x10800000018L

    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 172
    .line 173
    .line 174
    iget-boolean v4, v4, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    .line 175
    .line 176
    const-wide v5, 0x1080000000cL

    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 182
    .line 183
    .line 184
    iget-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    .line 185
    .line 186
    const-wide v5, 0x1080000000dL

    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 192
    .line 193
    .line 194
    iget v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 195
    .line 196
    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    .line 201
    .line 202
    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    const-wide v5, 0x1090000000eL

    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenDisplayIdLocked()I

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    const-wide v5, 0x1050000000fL

    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 224
    .line 225
    .line 226
    iget-boolean v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    .line 227
    .line 228
    const-wide v5, 0x10800000010L

    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 234
    .line 235
    .line 236
    iget-boolean v1, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasMainConnection:Z

    .line 237
    .line 238
    const-wide v4, 0x10800000012L

    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 244
    .line 245
    .line 246
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    .line 247
    .line 248
    const-wide v4, 0x10800000013L

    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 254
    .line 255
    .line 256
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    .line 257
    .line 258
    const-wide v4, 0x10800000014L

    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    invoke-virtual {p1, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 264
    .line 265
    .line 266
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 267
    .line 268
    const-wide v4, 0x10500000015L

    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    invoke-virtual {p1, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 274
    .line 275
    .line 276
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 277
    .line 278
    const-wide v4, 0x10500000016L

    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    invoke-virtual {p1, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 284
    .line 285
    .line 286
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 287
    .line 288
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mShowImeWithHardKeyboard:Z

    .line 289
    .line 290
    const-wide v4, 0x10800000017L

    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, v4, v5, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 299
    .line 300
    .line 301
    monitor-exit v0

    .line 302
    return-void

    .line 303
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    throw p0
.end method

.method public final finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputMethodSession;->finishSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    const-string v2, "InputMethodManagerService"

    .line 14
    .line 15
    const-string v3, "Session failed to close due to remote exception"

    .line 16
    .line 17
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 22
    .line 23
    invoke-virtual {p0, v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 24
    .line 25
    .line 26
    :goto_0
    iput-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 27
    .line 28
    :cond_0
    iget-object p0, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mChannel:Landroid/view/InputChannel;

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/InputChannel;->dispose()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mChannel:Landroid/view/InputChannel;

    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method public final getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getCurTokenDisplayId()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "getCurTokenDisplayId : mCurTokenDisplayId="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenDisplayIdLocked()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "InputMethodManagerService"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenDisplayIdLocked()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method public final getCurTokenDisplayIdLocked()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    .line 8
    .line 9
    return p0
.end method

.method public final getCurrentFocusDisplayID()I
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "getCurrentFocusDisplayID : mFocusedDisplayId"

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedDisplayId:I

    .line 10
    .line 11
    const-string v2, "InputMethodManagerService"

    .line 12
    .line 13
    invoke-static {v0, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedDisplayId:I

    .line 17
    .line 18
    return p0
.end method

.method public final getCurrentInputMethodInfoAsUser(I)Landroid/view/inputmethod/InputMethodInfo;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    :cond_2
    const-class p0, Lcom/android/server/inputmethod/ImfLock;

    .line 29
    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    monitor-exit p0

    .line 46
    return-object p1

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p1
.end method

.method public final getCurrentInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    :cond_2
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 32
    .line 33
    if-ne v1, p1, :cond_3

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    monitor-exit v0

    .line 40
    return-object p0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_0

    .line 43
    :cond_3
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getCurrentInputMethodSubtypeForNonCurrentUsers()Landroid/view/inputmethod/InputMethodSubtype;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    monitor-exit v0

    .line 52
    return-object p0

    .line 53
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-object v2

    .line 13
    :cond_0
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v4, v3, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 18
    .line 19
    invoke-virtual {v4, v1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_7

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 37
    .line 38
    const-string/jumbo v4, "selected_input_method_subtype"

    .line 39
    .line 40
    .line 41
    iget v5, v3, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 42
    .line 43
    const/4 v6, -0x1

    .line 44
    invoke-static {v6, v5, v4}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getInt(IILjava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eq v4, v6, :cond_2

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-static {v1, v4}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eq v4, v6, :cond_2

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v3, v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eq v4, v6, :cond_3

    .line 72
    .line 73
    invoke-virtual {v1, v4}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    const/4 v4, 0x1

    .line 79
    invoke-virtual {v3, v1, v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_4

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    const/4 v3, 0x0

    .line 95
    if-ne v0, v4, :cond_5

    .line 96
    .line 97
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    invoke-static {}, Lcom/android/server/inputmethod/SystemLocaleWrapper;->get()Landroid/os/LocaleList;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-string/jumbo v3, "keyboard"

    .line 117
    .line 118
    .line 119
    invoke-static {v3, v0, v1}, Lcom/android/server/inputmethod/SubtypeUtils;->findLastResortApplicableSubtype(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/view/inputmethod/InputMethodSubtype;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    if-eqz v3, :cond_6

    .line 124
    .line 125
    move-object v0, v3

    .line 126
    goto :goto_0

    .line 127
    :cond_6
    invoke-static {v2, v0, v1}, Lcom/android/server/inputmethod/SubtypeUtils;->findLastResortApplicableSubtype(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/view/inputmethod/InputMethodSubtype;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    :goto_0
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 132
    .line 133
    return-object v0

    .line 134
    :cond_7
    :goto_1
    return-object v2
.end method

.method public final getDexSettingsValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string/jumbo v0, "getDexSettingsValue: isDexDualModeEnable="

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getDexSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string/jumbo p2, "keyboard_dex"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    const-string p1, "1"

    .line 28
    .line 29
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    :goto_0
    const-string p1, "InputMethodManagerService"

    .line 45
    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    .line 63
    .line 64
    return p0

    .line 65
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public final getEnabledInputMethodList(I)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    :cond_1
    move p1, v2

    .line 29
    :cond_2
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 30
    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 33
    .line 34
    invoke-static {p1, v3, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    array-length v1, p1

    .line 39
    const/4 v3, 0x1

    .line 40
    if-eq v1, v3, :cond_3

    .line 41
    .line 42
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->empty()Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    monitor-exit v0

    .line 47
    return-object p0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 55
    .line 56
    .line 57
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    aget p1, p1, v2

    .line 59
    .line 60
    invoke-virtual {p0, p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListLocked(II)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->create(Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    .line 65
    .line 66
    .line 67
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    monitor-exit v0

    .line 72
    return-object p0

    .line 73
    :catchall_1
    move-exception p0

    .line 74
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    throw p0
.end method

.method public final getEnabledInputMethodListLegacy(I)Ljava/util/List;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    :cond_1
    move p1, v2

    .line 29
    :cond_2
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 30
    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 33
    .line 34
    invoke-static {p1, v3, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    array-length v1, p1

    .line 39
    const/4 v3, 0x1

    .line 40
    if-eq v1, v3, :cond_3

    .line 41
    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    monitor-exit v0

    .line 47
    return-object p0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 55
    .line 56
    .line 57
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    aget p1, p1, v2

    .line 59
    .line 60
    invoke-virtual {p0, p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListLocked(II)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getAuxilaryRemoveList(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 65
    .line 66
    .line 67
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    .line 69
    .line 70
    monitor-exit v0

    .line 71
    return-object p0

    .line 72
    :catchall_1
    move-exception p0

    .line 73
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    .line 75
    .line 76
    throw p0

    .line 77
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    throw p0
.end method

.method public final getEnabledInputMethodListLocked(II)Ljava/util/List;
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 2
    .line 3
    .line 4
    move-result-object v4

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {v4, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object v6

    .line 10
    new-instance v7, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda13;

    .line 11
    .line 12
    const/4 v5, 0x1

    .line 13
    move-object v0, v7

    .line 14
    move-object v1, p0

    .line 15
    move v2, p2

    .line 16
    move v3, p1

    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/InputMethodSettings;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 21
    .line 22
    .line 23
    invoke-static {v6}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getAuxilaryRemoveList(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    return-object v6
.end method

.method public final getEnabledInputMethodSubtypeList(Ljava/lang/String;ZI)Ljava/util/List;
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p3, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-static {p3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    :cond_1
    const/4 p3, 0x0

    .line 28
    :cond_2
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :try_start_1
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    iget-object v5, v4, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 44
    .line 45
    invoke-virtual {v5, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-nez p1, :cond_3

    .line 50
    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {p0, v5, v1, p3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->canCallerAccessInputMethod(Ljava/lang/String;IILcom/android/server/inputmethod/InputMethodSettings;)Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    if-nez p0, :cond_4

    .line 65
    .line 66
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    goto :goto_0

    .line 71
    :cond_4
    invoke-virtual {v4, p1, p2}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    :goto_0
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    .line 77
    .line 78
    monitor-exit v0

    .line 79
    return-object p0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :catchall_1
    move-exception p0

    .line 83
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    throw p0
.end method

.method public final getImeTrackerService()Lcom/android/server/inputmethod/ImeTrackerService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTrackerService:Lcom/android/server/inputmethod/ImeTrackerService;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserDataRepository:Lcom/android/server/inputmethod/UserDataRepository;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/UserDataRepository;->getOrCreate(I)Lcom/android/server/inputmethod/UserDataRepository$UserData;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object p0, p0, Lcom/android/server/inputmethod/UserDataRepository$UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getInputMethodList(II)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    :cond_1
    move p1, v2

    .line 29
    :cond_2
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 30
    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 33
    .line 34
    invoke-static {p1, v3, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    array-length v1, p1

    .line 39
    const/4 v3, 0x1

    .line 40
    if-eq v1, v3, :cond_3

    .line 41
    .line 42
    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->empty()Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    monitor-exit v0

    .line 47
    return-object p0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 55
    .line 56
    .line 57
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    aget p1, p1, v2

    .line 59
    .line 60
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListLocked(III)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodInfoSafeList;->create(Ljava/util/List;)Lcom/android/internal/inputmethod/InputMethodInfoSafeList;

    .line 65
    .line 66
    .line 67
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 68
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    monitor-exit v0

    .line 72
    return-object p0

    .line 73
    :catchall_1
    move-exception p0

    .line 74
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    .line 76
    .line 77
    throw p0

    .line 78
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    throw p0
.end method

.method public final getInputMethodListLegacy(II)Ljava/util/List;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eq v0, p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    :cond_1
    move p1, v2

    .line 29
    :cond_2
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 30
    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 33
    .line 34
    invoke-static {p1, v3, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    array-length v1, p1

    .line 39
    const/4 v3, 0x1

    .line 40
    if-eq v1, v3, :cond_3

    .line 41
    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    monitor-exit v0

    .line 47
    return-object p0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_0

    .line 50
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 55
    .line 56
    .line 57
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    aget p1, p1, v2

    .line 59
    .line 60
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListLocked(III)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    monitor-exit v0

    .line 68
    return-object p0

    .line 69
    :catchall_1
    move-exception p0

    .line 70
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    .line 72
    .line 73
    throw p0

    .line 74
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    throw p0
.end method

.method public final getInputMethodListLocked(III)Ljava/util/List;
    .locals 7

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    :goto_0
    move-object v4, p2

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-static {p1}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {v1, p1, v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILcom/android/server/inputmethod/AdditionalSubtypeMap;I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    goto :goto_0

    .line 20
    :goto_1
    new-instance p2, Ljava/util/ArrayList;

    .line 21
    .line 22
    iget-object v0, v4, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodList:Ljava/util/List;

    .line 23
    .line 24
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    .line 26
    .line 27
    new-instance v6, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda13;

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    move-object v0, v6

    .line 31
    move-object v1, p0

    .line 32
    move v2, p3

    .line 33
    move v3, p1

    .line 34
    invoke-direct/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;IILcom/android/server/inputmethod/InputMethodSettings;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getAuxilaryRemoveList(Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    return-object p2
.end method

.method public final getInputMethodNavButtonFlagsLocked()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarResLazyInitFuture:Ljava/util/concurrent/Future;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "Waiting for the lazy init of mImeDrawsImeNavBarRes"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenDisplayIdLocked()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 15
    .line 16
    const/4 v2, -0x1

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eq v0, v2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v0, v3

    .line 22
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerInternal;->hasNavigationBar(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarRes:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;->mValueRef:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    move v0, v3

    .line 43
    :goto_1
    const/4 v1, 0x3

    .line 44
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 45
    .line 46
    invoke-virtual {p0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeSwitcherLocked(II)Z

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-eqz p0, :cond_3

    .line 51
    .line 52
    const/4 v3, 0x2

    .line 53
    :cond_3
    or-int p0, v0, v3

    .line 54
    .line 55
    return p0
.end method

.method public final getInputMethodWindowVisibleHeight(Lcom/android/internal/inputmethod/IInputMethodClient;)I
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda17;

    .line 6
    .line 7
    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/internal/inputmethod/IInputMethodClient;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/lang/Integer;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public final getLastInputMethodSubtype(I)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    :cond_2
    const-class p0, Lcom/android/server/inputmethod/ImfLock;

    .line 29
    .line 30
    monitor-enter p0

    .line 31
    :try_start_0
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    monitor-exit p0

    .line 40
    return-object p1

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p1
.end method

.method public final getSelectedMethodIdLocked()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getTargetInputMethodSubtypeId()I
    .locals 3

    .line 1
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 8
    .line 9
    const-string/jumbo v1, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getLastSubtypeForInputMethodInternal(Ljava/lang/String;)Landroid/util/Pair;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Ljava/lang/String;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    :goto_0
    if-eqz p0, :cond_1

    .line 37
    .line 38
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-static {v0, v1}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    .line 43
    .line 44
    .line 45
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const-string v1, "HashCode for subtype looks broken: "

    .line 49
    .line 50
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string v1, "InputMethodManagerService"

    .line 55
    .line 56
    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .line 58
    .line 59
    :cond_1
    const/4 p0, -0x1

    .line 60
    :goto_1
    return p0
.end method

.method public getVisibilityApplier()Lcom/android/server/inputmethod/ImeVisibilityApplier;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getWACOMPen()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSemImmsUtil:Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mSpenLastUsed:Z

    .line 4
    .line 5
    return p0
.end method

.method public final handleDictation(Z)Z
    .locals 3

    .line 1
    const-string/jumbo v0, "keyCode"

    .line 2
    .line 3
    .line 4
    const/16 v1, 0x44f

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/android/server/SystemUpdateManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/os/Bundle;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const-string/jumbo p1, "needRestoreIME"

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    const-string/jumbo p1, "editorInfo"

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 23
    .line 24
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    sget-object p1, Lcom/android/server/inputmethod/InputMethodManagerService;->DICTATION:Landroid/net/Uri;

    .line 34
    .line 35
    const-string/jumbo v1, "handle_dictation_for_hw_voice_key"

    .line 36
    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string/jumbo p1, "dictation_executed"

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "Show switching menu failed, imList is empty, showAuxSubtypes: "

    .line 6
    .line 7
    const-string v3, "MSG_SHOW_AGAIN_IM_PICKER, imList is empty, showAuxSubtypes: "

    .line 8
    .line 9
    const-string v4, "Failed to start handwriting session for requestId: "

    .line 10
    .line 11
    iget v5, v0, Landroid/os/Message;->what:I

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x1

    .line 15
    sparse-switch v5, :sswitch_data_0

    .line 16
    .line 17
    .line 18
    return v6

    .line 19
    :sswitch_0
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 20
    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    const-class v2, Landroid/media/AudioManagerInternal;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/media/AudioManagerInternal;

    .line 30
    .line 31
    iput-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 32
    .line 33
    :cond_0
    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroid/media/AudioManagerInternal;->setInputMethodServiceUid(I)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return v7

    .line 43
    :sswitch_1
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Ljava/util/List;

    .line 46
    .line 47
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodListListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 48
    .line 49
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda8;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-direct {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 56
    .line 57
    .line 58
    return v7

    .line 59
    :sswitch_2
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 60
    .line 61
    const-string/jumbo v2, "onUnlockUser : mImeSelectedOnBoot="

    .line 62
    .line 63
    .line 64
    const-string/jumbo v3, "onUnlockUser: restore last ime before toolkitHbd="

    .line 65
    .line 66
    .line 67
    const-class v4, Lcom/android/server/inputmethod/ImfLock;

    .line 68
    .line 69
    monitor-enter v4

    .line 70
    :try_start_0
    iget-boolean v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    .line 71
    .line 72
    if-nez v5, :cond_2

    .line 73
    .line 74
    monitor-exit v4

    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :catchall_0
    move-exception v0

    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :cond_2
    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-static {v5, v0, v8, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILcom/android/server/inputmethod/AdditionalSubtypeMap;I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-static {v0, v5}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->put(ILcom/android/server/inputmethod/InputMethodSettings;)V

    .line 91
    .line 92
    .line 93
    iget v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 94
    .line 95
    if-ne v5, v0, :cond_4

    .line 96
    .line 97
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->SUPPORT_WRITING_TOOLKIT:Z

    .line 98
    .line 99
    if-eqz v0, :cond_3

    .line 100
    .line 101
    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    const-string/jumbo v8, "com.samsung.android.honeyboard/com.samsung.android.writingtoolkit.service.FakeHoneyBoardService"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    if-eqz v5, :cond_3

    .line 117
    .line 118
    const/4 v5, 0x0

    .line 119
    invoke-virtual {v0, v5}, Lcom/android/server/inputmethod/InputMethodSettings;->getLastSubtypeForInputMethodInternal(Ljava/lang/String;)Landroid/util/Pair;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    if-eqz v5, :cond_3

    .line 124
    .line 125
    const-string v8, "InputMethodManagerService"

    .line 126
    .line 127
    new-instance v9, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iget-object v3, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v3, Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-static {v8, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    iget-object v3, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v3, Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v0, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_3
    invoke-virtual {v1, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(Z)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_4
    iget-boolean v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mExperimentalConcurrentMultiUserModeEnabled:Z

    .line 161
    .line 162
    if-eqz v3, :cond_5

    .line 163
    .line 164
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->experimentalInitializeVisibleBackgroundUserLocked(I)V

    .line 165
    .line 166
    .line 167
    :cond_5
    :goto_0
    const-string v0, "InputMethodManagerService"

    .line 168
    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-boolean v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSelectedOnBoot:Z

    .line 175
    .line 176
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v2, " mInitialUserSwitch="

    .line 180
    .line 181
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    iget-boolean v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mInitialUserSwitch:Z

    .line 185
    .line 186
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    iget-boolean v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeSelectedOnBoot:Z

    .line 197
    .line 198
    if-eqz v0, :cond_6

    .line 199
    .line 200
    iget-boolean v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mInitialUserSwitch:Z

    .line 201
    .line 202
    if-eqz v0, :cond_7

    .line 203
    .line 204
    :cond_6
    move v6, v7

    .line 205
    :cond_7
    invoke-virtual {v1, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(Z)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 209
    .line 210
    .line 211
    monitor-exit v4

    .line 212
    :goto_1
    return v7

    .line 213
    :goto_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    throw v0

    .line 215
    :sswitch_3
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 216
    .line 217
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 218
    .line 219
    if-ne v0, v7, :cond_8

    .line 220
    .line 221
    move v0, v7

    .line 222
    goto :goto_3

    .line 223
    :cond_8
    move v0, v6

    .line 224
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    .line 226
    .line 227
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    .line 228
    .line 229
    monitor-enter v3

    .line 230
    :try_start_1
    iget-object v4, v2, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 231
    .line 232
    if-eqz v4, :cond_a

    .line 233
    .line 234
    iget-object v5, v2, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchInSelectDialogView:Landroid/view/View;

    .line 235
    .line 236
    if-eqz v5, :cond_a

    .line 237
    .line 238
    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    if-eqz v4, :cond_a

    .line 243
    .line 244
    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchInSelectDialogView:Landroid/view/View;

    .line 245
    .line 246
    const v4, 0x1020340

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    if-eqz v0, :cond_9

    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_9
    const/16 v6, 0x8

    .line 257
    .line 258
    :goto_4
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 259
    .line 260
    .line 261
    goto :goto_5

    .line 262
    :catchall_1
    move-exception v0

    .line 263
    goto :goto_6

    .line 264
    :cond_a
    :goto_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 265
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    .line 266
    .line 267
    monitor-enter v2

    .line 268
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked()V

    .line 269
    .line 270
    .line 271
    monitor-exit v2

    .line 272
    return v7

    .line 273
    :catchall_2
    move-exception v0

    .line 274
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 275
    throw v0

    .line 276
    :goto_6
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 277
    throw v0

    .line 278
    :sswitch_4
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 279
    .line 280
    if-eqz v0, :cond_b

    .line 281
    .line 282
    move v0, v7

    .line 283
    goto :goto_7

    .line 284
    :cond_b
    move v0, v6

    .line 285
    :goto_7
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    .line 286
    .line 287
    monitor-enter v2

    .line 288
    :try_start_4
    iput-boolean v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    .line 289
    .line 290
    if-eqz v0, :cond_c

    .line 291
    .line 292
    iget v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 293
    .line 294
    goto :goto_8

    .line 295
    :catchall_3
    move-exception v0

    .line 296
    goto/16 :goto_c

    .line 297
    .line 298
    :cond_c
    move v3, v6

    .line 299
    :goto_8
    iget v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 300
    .line 301
    invoke-virtual {v1, v3, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 302
    .line 303
    .line 304
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 305
    .line 306
    if-eqz v3, :cond_11

    .line 307
    .line 308
    iget-object v3, v3, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 309
    .line 310
    if-nez v3, :cond_d

    .line 311
    .line 312
    goto :goto_a

    .line 313
    :cond_d
    iget v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 314
    .line 315
    invoke-virtual {v1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    .line 320
    .line 321
    iget v3, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    .line 322
    .line 323
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 324
    .line 325
    .line 326
    :try_start_5
    iget-object v4, v4, Lcom/android/server/inputmethod/ImePlatformCompatUtils;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 327
    .line 328
    const-wide/32 v8, 0x94fa793

    .line 329
    .line 330
    .line 331
    invoke-interface {v4, v8, v9, v3}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByUid(JI)Z

    .line 332
    .line 333
    .line 334
    move-result v6
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 335
    :catch_0
    if-eqz v6, :cond_10

    .line 336
    .line 337
    :try_start_6
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 338
    .line 339
    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 340
    .line 341
    iget-object v4, v4, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 342
    .line 343
    invoke-virtual {v3, v4, v0}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->onInteractiveChanged(Landroid/os/IBinder;Z)Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    if-eqz v0, :cond_e

    .line 348
    .line 349
    iget-object v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    .line 350
    .line 351
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 352
    .line 353
    iget-object v9, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 354
    .line 355
    iget v11, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->mState:I

    .line 356
    .line 357
    iget v12, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->mReason:I

    .line 358
    .line 359
    iget v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 360
    .line 361
    const/4 v10, 0x0

    .line 362
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->applyImeVisibility(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;III)V

    .line 363
    .line 364
    .line 365
    :cond_e
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 366
    .line 367
    iget-object v0, v0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 368
    .line 369
    iget-boolean v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    .line 370
    .line 371
    iget-boolean v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    .line 372
    .line 373
    iget-boolean v4, v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 374
    .line 375
    if-eqz v4, :cond_f

    .line 376
    .line 377
    :try_start_7
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 378
    .line 379
    invoke-interface {v0, v3, v1}, Lcom/android/internal/inputmethod/IInputMethodClient;->setInteractive(ZZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 380
    .line 381
    .line 382
    goto :goto_9

    .line 383
    :catch_1
    move-exception v0

    .line 384
    :try_start_8
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 385
    .line 386
    .line 387
    goto :goto_9

    .line 388
    :cond_f
    new-instance v4, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;

    .line 389
    .line 390
    const/4 v5, 0x0

    .line 391
    invoke-direct {v4, v0, v3, v1, v5}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;ZZI)V

    .line 392
    .line 393
    .line 394
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    .line 395
    .line 396
    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 397
    .line 398
    .line 399
    goto :goto_9

    .line 400
    :cond_10
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 401
    .line 402
    iget-object v0, v0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 403
    .line 404
    iget-boolean v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    .line 405
    .line 406
    iget-boolean v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    .line 407
    .line 408
    invoke-virtual {v0, v3, v1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setActive(ZZ)V

    .line 409
    .line 410
    .line 411
    :goto_9
    monitor-exit v2

    .line 412
    goto :goto_b

    .line 413
    :cond_11
    :goto_a
    monitor-exit v2

    .line 414
    :goto_b
    return v7

    .line 415
    :goto_c
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 416
    throw v0

    .line 417
    :sswitch_5
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    .line 418
    .line 419
    monitor-enter v2

    .line 420
    :try_start_9
    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 421
    .line 422
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 423
    .line 424
    move-object v4, v0

    .line 425
    check-cast v4, Landroid/util/Pair;

    .line 426
    .line 427
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 428
    .line 429
    check-cast v4, Ljava/lang/String;

    .line 430
    .line 431
    check-cast v0, Landroid/util/Pair;

    .line 432
    .line 433
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 434
    .line 435
    check-cast v0, Ljava/lang/String;

    .line 436
    .line 437
    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 438
    .line 439
    invoke-virtual {v1, v3, v4, v0, v6}, Lcom/android/server/inputmethod/HandwritingModeController;->prepareStylusHandwritingDelegation(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 440
    .line 441
    .line 442
    monitor-exit v2

    .line 443
    return v7

    .line 444
    :catchall_4
    move-exception v0

    .line 445
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 446
    throw v0

    .line 447
    :sswitch_6
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    .line 448
    .line 449
    monitor-enter v2

    .line 450
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 451
    .line 452
    .line 453
    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 454
    if-eqz v0, :cond_12

    .line 455
    .line 456
    :try_start_b
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 457
    .line 458
    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputMethod;->removeStylusHandwritingWindow()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 459
    .line 460
    .line 461
    goto :goto_d

    .line 462
    :catch_2
    move-exception v0

    .line 463
    :try_start_c
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 464
    .line 465
    .line 466
    :cond_12
    :goto_d
    monitor-exit v2

    .line 467
    return v7

    .line 468
    :catchall_5
    move-exception v0

    .line 469
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 470
    throw v0

    .line 471
    :sswitch_7
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    .line 472
    .line 473
    monitor-enter v2

    .line 474
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    if-eqz v0, :cond_13

    .line 479
    .line 480
    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 481
    .line 482
    invoke-virtual {v1}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    .line 483
    .line 484
    .line 485
    move-result-object v1

    .line 486
    invoke-virtual {v1}, Ljava/util/OptionalInt;->isPresent()Z

    .line 487
    .line 488
    .line 489
    move-result v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 490
    if-eqz v1, :cond_13

    .line 491
    .line 492
    :try_start_e
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 493
    .line 494
    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputMethod;->finishStylusHandwriting()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 495
    .line 496
    .line 497
    goto :goto_e

    .line 498
    :catch_3
    move-exception v0

    .line 499
    :try_start_f
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 500
    .line 501
    .line 502
    goto :goto_e

    .line 503
    :catchall_6
    move-exception v0

    .line 504
    goto :goto_f

    .line 505
    :cond_13
    :goto_e
    monitor-exit v2

    .line 506
    return v7

    .line 507
    :goto_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 508
    throw v0

    .line 509
    :sswitch_8
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    .line 510
    .line 511
    monitor-enter v2

    .line 512
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 513
    .line 514
    .line 515
    move-result-object v3

    .line 516
    if-eqz v3, :cond_16

    .line 517
    .line 518
    iget-object v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 519
    .line 520
    iget-object v5, v5, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 521
    .line 522
    if-nez v5, :cond_14

    .line 523
    .line 524
    goto :goto_11

    .line 525
    :cond_14
    iget v5, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 526
    .line 527
    invoke-virtual {v1, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 528
    .line 529
    .line 530
    move-result-object v5

    .line 531
    iget-object v6, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 532
    .line 533
    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 534
    .line 535
    iget v9, v0, Landroid/os/Message;->arg2:I

    .line 536
    .line 537
    iget v5, v5, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    .line 538
    .line 539
    iget-object v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 540
    .line 541
    iget-object v10, v10, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 542
    .line 543
    invoke-virtual {v6, v8, v9, v5, v10}, Lcom/android/server/inputmethod/HandwritingModeController;->startHandwritingSession(IIILandroid/os/IBinder;)Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;

    .line 544
    .line 545
    .line 546
    move-result-object v5

    .line 547
    if-nez v5, :cond_15

    .line 548
    .line 549
    const-string v1, "InputMethodManagerService"

    .line 550
    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    .line 552
    .line 553
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 557
    .line 558
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    .line 567
    .line 568
    monitor-exit v2

    .line 569
    return v7

    .line 570
    :catchall_7
    move-exception v0

    .line 571
    goto :goto_12

    .line 572
    :cond_15
    iget v0, v5, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mRequestId:I

    .line 573
    .line 574
    iget-object v4, v5, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mHandwritingChannel:Landroid/view/InputChannel;

    .line 575
    .line 576
    iget-object v5, v5, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mRecordedEvents:Ljava/util/List;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 577
    .line 578
    :try_start_11
    iget-object v3, v3, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 579
    .line 580
    invoke-interface {v3, v0, v4, v5}, Lcom/android/internal/inputmethod/IInputMethod;->startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 581
    .line 582
    .line 583
    goto :goto_10

    .line 584
    :catch_4
    move-exception v0

    .line 585
    :try_start_12
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 586
    .line 587
    .line 588
    const-string v0, "InputMethodManagerService"

    .line 589
    .line 590
    const-string v3, "Resetting handwriting mode."

    .line 591
    .line 592
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    .line 594
    .line 595
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 596
    .line 597
    const/16 v1, 0x442

    .line 598
    .line 599
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 600
    .line 601
    .line 602
    move-result-object v0

    .line 603
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 604
    .line 605
    .line 606
    :goto_10
    monitor-exit v2

    .line 607
    return v7

    .line 608
    :cond_16
    :goto_11
    monitor-exit v2

    .line 609
    return v7

    .line 610
    :goto_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 611
    throw v0

    .line 612
    :sswitch_9
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    .line 613
    .line 614
    monitor-enter v2

    .line 615
    :try_start_13
    iget v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 616
    .line 617
    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    iget-boolean v0, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    .line 622
    .line 623
    if-eqz v0, :cond_18

    .line 624
    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    if-eqz v0, :cond_18

    .line 630
    .line 631
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    .line 632
    .line 633
    if-eqz v0, :cond_17

    .line 634
    .line 635
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    .line 636
    .line 637
    .line 638
    move-result v0

    .line 639
    if-eqz v0, :cond_17

    .line 640
    .line 641
    move v0, v7

    .line 642
    goto :goto_13

    .line 643
    :cond_17
    move v0, v6

    .line 644
    :goto_13
    if-eqz v0, :cond_18

    .line 645
    .line 646
    const-string v0, "InputMethodManagerService"

    .line 647
    .line 648
    const-string v3, "Initializing Handwriting Spy"

    .line 649
    .line 650
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    .line 652
    .line 653
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 654
    .line 655
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenDisplayIdLocked()I

    .line 656
    .line 657
    .line 658
    move-result v1

    .line 659
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/HandwritingModeController;->initializeHandwritingSpy(I)V

    .line 660
    .line 661
    .line 662
    goto :goto_14

    .line 663
    :catchall_8
    move-exception v0

    .line 664
    goto :goto_15

    .line 665
    :cond_18
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 666
    .line 667
    invoke-virtual {v0, v6}, Lcom/android/server/inputmethod/HandwritingModeController;->reset(Z)V

    .line 668
    .line 669
    .line 670
    :goto_14
    monitor-exit v2

    .line 671
    return v7

    .line 672
    :goto_15
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 673
    throw v0

    .line 674
    :sswitch_a
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 675
    .line 676
    if-ne v0, v7, :cond_19

    .line 677
    .line 678
    move v0, v7

    .line 679
    goto :goto_16

    .line 680
    :cond_19
    move v0, v6

    .line 681
    :goto_16
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    .line 682
    .line 683
    monitor-enter v2

    .line 684
    if-eqz v0, :cond_1a

    .line 685
    .line 686
    :try_start_14
    iget v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 687
    .line 688
    invoke-virtual {v1, v6, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 689
    .line 690
    .line 691
    const-string/jumbo v0, "disableImeIcon"

    .line 692
    .line 693
    .line 694
    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateImeSwitchStatus(Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    goto :goto_17

    .line 698
    :catchall_9
    move-exception v0

    .line 699
    goto :goto_18

    .line 700
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked$1()V

    .line 701
    .line 702
    .line 703
    const-string/jumbo v0, "enableImeIcon"

    .line 704
    .line 705
    .line 706
    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateImeSwitchStatus(Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    :goto_17
    monitor-exit v2

    .line 710
    return v7

    .line 711
    :goto_18
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    .line 712
    throw v0

    .line 713
    :sswitch_b
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 714
    .line 715
    check-cast v0, Landroid/os/IBinder;

    .line 716
    .line 717
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    .line 718
    .line 719
    monitor-enter v2

    .line 720
    :try_start_15
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 721
    .line 722
    iget-object v3, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 723
    .line 724
    if-ne v0, v3, :cond_1b

    .line 725
    .line 726
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 727
    .line 728
    if-eqz v0, :cond_1b

    .line 729
    .line 730
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 731
    .line 732
    if-eqz v0, :cond_1b

    .line 733
    .line 734
    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputMethodSession;->removeImeSurface()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    .line 735
    .line 736
    .line 737
    goto :goto_19

    .line 738
    :catchall_a
    move-exception v0

    .line 739
    goto :goto_1a

    .line 740
    :catch_5
    :cond_1b
    :goto_19
    :try_start_16
    monitor-exit v2

    .line 741
    return v7

    .line 742
    :goto_1a
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    .line 743
    throw v0

    .line 744
    :sswitch_c
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    .line 745
    .line 746
    monitor-enter v2

    .line 747
    :try_start_17
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 748
    .line 749
    if-eqz v0, :cond_1c

    .line 750
    .line 751
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 752
    .line 753
    if-eqz v0, :cond_1c

    .line 754
    .line 755
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isShowRequestedForCurrentWindow()Z

    .line 756
    .line 757
    .line 758
    move-result v0

    .line 759
    if-nez v0, :cond_1c

    .line 760
    .line 761
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 762
    .line 763
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 764
    .line 765
    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputMethodSession;->removeImeSurface()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    .line 766
    .line 767
    .line 768
    goto :goto_1b

    .line 769
    :catchall_b
    move-exception v0

    .line 770
    goto :goto_1c

    .line 771
    :catch_6
    :cond_1c
    :goto_1b
    :try_start_18
    monitor-exit v2

    .line 772
    return v7

    .line 773
    :goto_1c
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_b

    .line 774
    throw v0

    .line 775
    :sswitch_d
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    .line 776
    .line 777
    monitor-enter v2

    .line 778
    :try_start_19
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 779
    .line 780
    .line 781
    move-result v3

    .line 782
    if-eqz v3, :cond_1d

    .line 783
    .line 784
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 785
    .line 786
    if-eqz v0, :cond_1e

    .line 787
    .line 788
    iget-object v0, v0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    .line 789
    .line 790
    if-eqz v0, :cond_1e

    .line 791
    .line 792
    iget-object v0, v0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 793
    .line 794
    if-eqz v0, :cond_1e

    .line 795
    .line 796
    invoke-virtual {v0, v6}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeVisibility(Z)V

    .line 797
    .line 798
    .line 799
    goto :goto_1d

    .line 800
    :catchall_c
    move-exception v0

    .line 801
    goto :goto_1e

    .line 802
    :cond_1d
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 803
    .line 804
    check-cast v0, Ljava/lang/Integer;

    .line 805
    .line 806
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 807
    .line 808
    .line 809
    move-result v0

    .line 810
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 811
    .line 812
    iget-object v3, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 813
    .line 814
    invoke-virtual {v1, v0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/IBinder;)Z

    .line 815
    .line 816
    .line 817
    :cond_1e
    :goto_1d
    monitor-exit v2

    .line 818
    return v7

    .line 819
    :goto_1e
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_c

    .line 820
    throw v0

    .line 821
    :sswitch_e
    iget v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 822
    .line 823
    iget v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 824
    .line 825
    invoke-virtual {v1, v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 826
    .line 827
    .line 828
    return v7

    .line 829
    :sswitch_f
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 830
    .line 831
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 832
    .line 833
    if-eqz v0, :cond_22

    .line 834
    .line 835
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    .line 836
    .line 837
    .line 838
    move-result v0

    .line 839
    if-eqz v0, :cond_22

    .line 840
    .line 841
    const-string v0, "InputMethodManagerService"

    .line 842
    .line 843
    const-string v2, "MSG_SHOW_AGAIN_IM_PICKER"

    .line 844
    .line 845
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    .line 847
    .line 848
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 849
    .line 850
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 851
    .line 852
    if-eqz v0, :cond_1f

    .line 853
    .line 854
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 855
    .line 856
    .line 857
    :cond_1f
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    .line 858
    .line 859
    monitor-enter v2

    .line 860
    :try_start_1a
    iget v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 861
    .line 862
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 863
    .line 864
    .line 865
    move-result-object v0

    .line 866
    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 867
    .line 868
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardLocked()Z

    .line 869
    .line 870
    .line 871
    move-result v4

    .line 872
    if-eqz v4, :cond_20

    .line 873
    .line 874
    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 875
    .line 876
    iget v5, v0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 877
    .line 878
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardSecure(I)Z

    .line 879
    .line 880
    .line 881
    move-result v4

    .line 882
    if-eqz v4, :cond_20

    .line 883
    .line 884
    move v4, v7

    .line 885
    goto :goto_1f

    .line 886
    :catchall_d
    move-exception v0

    .line 887
    goto :goto_20

    .line 888
    :cond_20
    move v4, v6

    .line 889
    :goto_1f
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v5

    .line 893
    invoke-virtual {v0, v5}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    .line 894
    .line 895
    .line 896
    move-result v14

    .line 897
    iget-boolean v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentShowAuxSubtypes:Z

    .line 898
    .line 899
    iget-object v11, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 900
    .line 901
    iget-object v12, v0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 902
    .line 903
    iget v13, v0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 904
    .line 905
    const/4 v10, 0x1

    .line 906
    move v9, v4

    .line 907
    invoke-static/range {v8 .. v13}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeList(ZZZLandroid/content/Context;Lcom/android/server/inputmethod/InputMethodMap;I)Ljava/util/List;

    .line 908
    .line 909
    .line 910
    move-result-object v8

    .line 911
    move-object v9, v8

    .line 912
    check-cast v9, Ljava/util/ArrayList;

    .line 913
    .line 914
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 915
    .line 916
    .line 917
    move-result v9

    .line 918
    if-eqz v9, :cond_21

    .line 919
    .line 920
    const-string v5, "InputMethodManagerService"

    .line 921
    .line 922
    new-instance v7, Ljava/lang/StringBuilder;

    .line 923
    .line 924
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 925
    .line 926
    .line 927
    iget-boolean v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentShowAuxSubtypes:Z

    .line 928
    .line 929
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 930
    .line 931
    .line 932
    const-string v1, " isScreenLocked: "

    .line 933
    .line 934
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    .line 936
    .line 937
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 938
    .line 939
    .line 940
    const-string v1, " userId: "

    .line 941
    .line 942
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    .line 944
    .line 945
    iget v0, v0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 946
    .line 947
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 948
    .line 949
    .line 950
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 951
    .line 952
    .line 953
    move-result-object v0

    .line 954
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    .line 956
    .line 957
    monitor-exit v2

    .line 958
    return v6

    .line 959
    :cond_21
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 960
    .line 961
    iget v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentDisplayId:I

    .line 962
    .line 963
    invoke-virtual {v0, v1, v5, v14, v8}, Lcom/android/server/inputmethod/InputMethodMenuController;->showInputMethodMenuLocked(ILjava/lang/String;ILjava/util/List;)V

    .line 964
    .line 965
    .line 966
    monitor-exit v2

    .line 967
    goto :goto_21

    .line 968
    :goto_20
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_d

    .line 969
    throw v0

    .line 970
    :cond_22
    :goto_21
    return v7

    .line 971
    :sswitch_10
    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 972
    .line 973
    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 974
    .line 975
    if-eqz v4, :cond_25

    .line 976
    .line 977
    if-eq v4, v7, :cond_24

    .line 978
    .line 979
    const/4 v5, 0x2

    .line 980
    if-eq v4, v5, :cond_23

    .line 981
    .line 982
    const-string v1, "InputMethodManagerService"

    .line 983
    .line 984
    new-instance v2, Ljava/lang/StringBuilder;

    .line 985
    .line 986
    const-string v3, "Unknown subtype picker mode = "

    .line 987
    .line 988
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 989
    .line 990
    .line 991
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 992
    .line 993
    invoke-static {v2, v0, v1}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 994
    .line 995
    .line 996
    return v6

    .line 997
    :cond_23
    move v0, v6

    .line 998
    goto :goto_22

    .line 999
    :cond_24
    move v0, v7

    .line 1000
    goto :goto_22

    .line 1001
    :cond_25
    const-class v4, Lcom/android/server/inputmethod/ImfLock;

    .line 1002
    .line 1003
    monitor-enter v4

    .line 1004
    :try_start_1b
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 1005
    .line 1006
    iget-boolean v0, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    .line 1007
    .line 1008
    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_f

    .line 1009
    :goto_22
    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSemImmsUtil:Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;

    .line 1010
    .line 1011
    iget-object v4, v4, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 1012
    .line 1013
    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 1014
    .line 1015
    if-eqz v4, :cond_29

    .line 1016
    .line 1017
    iget-object v5, v4, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 1018
    .line 1019
    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1020
    .line 1021
    if-eqz v5, :cond_26

    .line 1022
    .line 1023
    const-string/jumbo v8, "nm"

    .line 1024
    .line 1025
    .line 1026
    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1027
    .line 1028
    .line 1029
    move-result v8

    .line 1030
    if-nez v8, :cond_28

    .line 1031
    .line 1032
    const-string/jumbo v8, "noMicrophoneKey"

    .line 1033
    .line 1034
    .line 1035
    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1036
    .line 1037
    .line 1038
    move-result v5

    .line 1039
    if-nez v5, :cond_28

    .line 1040
    .line 1041
    :cond_26
    and-int/lit16 v4, v4, 0xfff

    .line 1042
    .line 1043
    const/16 v5, 0x81

    .line 1044
    .line 1045
    if-eq v4, v5, :cond_28

    .line 1046
    .line 1047
    const/16 v5, 0xe1

    .line 1048
    .line 1049
    if-eq v4, v5, :cond_28

    .line 1050
    .line 1051
    const/16 v5, 0x12

    .line 1052
    .line 1053
    if-ne v4, v5, :cond_27

    .line 1054
    .line 1055
    goto :goto_23

    .line 1056
    :cond_27
    move v4, v6

    .line 1057
    goto :goto_24

    .line 1058
    :cond_28
    :goto_23
    move v4, v7

    .line 1059
    :goto_24
    const-string v5, "Check voice input Disable : "

    .line 1060
    .line 1061
    const-string v8, "SemInputMethodManagerServiceUtil"

    .line 1062
    .line 1063
    invoke-static {v5, v8, v4}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1064
    .line 1065
    .line 1066
    goto :goto_25

    .line 1067
    :cond_29
    move v4, v6

    .line 1068
    :goto_25
    if-eqz v4, :cond_2a

    .line 1069
    .line 1070
    move v0, v6

    .line 1071
    :cond_2a
    iput-boolean v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentShowAuxSubtypes:Z

    .line 1072
    .line 1073
    iput v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentDisplayId:I

    .line 1074
    .line 1075
    const-class v5, Lcom/android/server/inputmethod/ImfLock;

    .line 1076
    .line 1077
    monitor-enter v5

    .line 1078
    :try_start_1c
    iget v4, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 1079
    .line 1080
    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v4

    .line 1084
    iget-object v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1085
    .line 1086
    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardLocked()Z

    .line 1087
    .line 1088
    .line 1089
    move-result v8

    .line 1090
    if-eqz v8, :cond_2b

    .line 1091
    .line 1092
    iget-object v8, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1093
    .line 1094
    iget v9, v4, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 1095
    .line 1096
    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardSecure(I)Z

    .line 1097
    .line 1098
    .line 1099
    move-result v8

    .line 1100
    if-eqz v8, :cond_2b

    .line 1101
    .line 1102
    move v14, v7

    .line 1103
    goto :goto_26

    .line 1104
    :catchall_e
    move-exception v0

    .line 1105
    goto :goto_27

    .line 1106
    :cond_2b
    move v14, v6

    .line 1107
    :goto_26
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v15

    .line 1111
    invoke-virtual {v4, v15}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    .line 1112
    .line 1113
    .line 1114
    move-result v13

    .line 1115
    iget-object v11, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 1116
    .line 1117
    iget-object v12, v4, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 1118
    .line 1119
    iget v10, v4, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 1120
    .line 1121
    const/16 v16, 0x1

    .line 1122
    .line 1123
    move v8, v0

    .line 1124
    move v9, v14

    .line 1125
    move/from16 v17, v10

    .line 1126
    .line 1127
    move/from16 v10, v16

    .line 1128
    .line 1129
    move v7, v13

    .line 1130
    move/from16 v13, v17

    .line 1131
    .line 1132
    invoke-static/range {v8 .. v13}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeList(ZZZLandroid/content/Context;Lcom/android/server/inputmethod/InputMethodMap;I)Ljava/util/List;

    .line 1133
    .line 1134
    .line 1135
    move-result-object v8

    .line 1136
    move-object v9, v8

    .line 1137
    check-cast v9, Ljava/util/ArrayList;

    .line 1138
    .line 1139
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1140
    .line 1141
    .line 1142
    move-result v9

    .line 1143
    if-eqz v9, :cond_2c

    .line 1144
    .line 1145
    const-string v1, "InputMethodManagerService"

    .line 1146
    .line 1147
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1148
    .line 1149
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1150
    .line 1151
    .line 1152
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1153
    .line 1154
    .line 1155
    const-string v0, " isScreenLocked: "

    .line 1156
    .line 1157
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    .line 1159
    .line 1160
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1161
    .line 1162
    .line 1163
    const-string v0, " userId: "

    .line 1164
    .line 1165
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    .line 1167
    .line 1168
    iget v0, v4, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 1169
    .line 1170
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1174
    .line 1175
    .line 1176
    move-result-object v0

    .line 1177
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    .line 1179
    .line 1180
    monitor-exit v5

    .line 1181
    return v6

    .line 1182
    :cond_2c
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 1183
    .line 1184
    invoke-virtual {v0, v3, v15, v7, v8}, Lcom/android/server/inputmethod/InputMethodMenuController;->showInputMethodMenuLocked(ILjava/lang/String;ILjava/util/List;)V

    .line 1185
    .line 1186
    .line 1187
    monitor-exit v5

    .line 1188
    const/4 v1, 0x1

    .line 1189
    return v1

    .line 1190
    :goto_27
    monitor-exit v5
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    .line 1191
    throw v0

    .line 1192
    :catchall_f
    move-exception v0

    .line 1193
    :try_start_1d
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_f

    .line 1194
    throw v0

    .line 1195
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_10
        0x3ff -> :sswitch_f
        0x402 -> :sswitch_e
        0x40b -> :sswitch_d
        0x424 -> :sswitch_c
        0x425 -> :sswitch_b
        0x42e -> :sswitch_a
        0x442 -> :sswitch_9
        0x44c -> :sswitch_8
        0x456 -> :sswitch_7
        0x460 -> :sswitch_6
        0x46a -> :sswitch_5
        0xbd6 -> :sswitch_4
        0xfa0 -> :sswitch_3
        0x1388 -> :sswitch_2
        0x1392 -> :sswitch_1
        0x1b58 -> :sswitch_0
    .end sparse-switch
.end method

.method public final handleShellCommandEnableDisableInputMethodInternalLocked(ILjava/lang/String;ZLjava/io/PrintWriter;Ljava/io/PrintWriter;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 10
    .line 11
    if-ne p1, v1, :cond_2

    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    iget-object v0, v4, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    :goto_0
    move v0, v2

    .line 24
    move p0, v3

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    :cond_1
    :goto_1
    move v0, v3

    .line 31
    goto :goto_2

    .line 32
    :cond_2
    if-eqz p3, :cond_4

    .line 33
    .line 34
    iget-object p0, v4, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-nez p0, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    filled-new-array {p2}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {p0, v1}, Lcom/android/server/inputmethod/InputMethodUtils;->concatEnabledImeIds(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsAndSubtypeList()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, p0, v1, p2}, Lcom/android/server/inputmethod/InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingId(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    goto :goto_1

    .line 79
    :goto_2
    if-eqz v0, :cond_5

    .line 80
    .line 81
    const-string p0, "Unknown input method "

    .line 82
    .line 83
    invoke-virtual {p5, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p5, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance p0, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    const-string p3, " cannot be enabled for user #"

    .line 92
    .line 93
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-virtual {p5, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string p0, "\"ime enable "

    .line 107
    .line 108
    const-string p3, "\" for user #"

    .line 109
    .line 110
    const-string p4, " failed due to its unrecognized IME ID."

    .line 111
    .line 112
    invoke-static {p1, p0, p2, p3, p4}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    const-string p1, "InputMethodManagerService"

    .line 117
    .line 118
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    return v3

    .line 122
    :cond_5
    const-string p5, "Input method "

    .line 123
    .line 124
    invoke-virtual {p4, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string p2, ": "

    .line 131
    .line 132
    invoke-virtual {p4, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    if-ne p3, p0, :cond_6

    .line 136
    .line 137
    const-string p0, "already "

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_6
    const-string/jumbo p0, "now "

    .line 141
    .line 142
    .line 143
    :goto_3
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    if-eqz p3, :cond_7

    .line 147
    .line 148
    const-string/jumbo p0, "enabled"

    .line 149
    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_7
    const-string/jumbo p0, "disabled"

    .line 153
    .line 154
    .line 155
    :goto_4
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const-string p0, " for user #"

    .line 159
    .line 160
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p4, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 164
    .line 165
    .line 166
    return v2
.end method

.method public final handleVoiceHWKey()V
    .locals 12

    .line 1
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 9
    .line 10
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 21
    .line 22
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    const-string p0, "InputMethodManagerService"

    .line 29
    .line 30
    const-string/jumbo v3, "handleVoiceHWKey: show ime with hard keyboard disable, skip"

    .line 31
    .line 32
    .line 33
    invoke-static {p0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    .line 35
    .line 36
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    .line 38
    .line 39
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_4

    .line 43
    :catchall_1
    move-exception p0

    .line 44
    goto :goto_3

    .line 45
    :catch_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isCurrentInputMethodAsSamsungKeyboard()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    xor-int/lit8 v4, v3, 0x1

    .line 52
    .line 53
    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleDictation(Z)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_1

    .line 58
    .line 59
    const-string p0, "InputMethodManagerService"

    .line 60
    .line 61
    const-string/jumbo v3, "handleVoiceHWKey: voice input disable or need close voice"

    .line 62
    .line 63
    .line 64
    invoke-static {p0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    .line 66
    .line 67
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    .line 69
    .line 70
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 71
    return-void

    .line 72
    :cond_1
    if-nez v3, :cond_2

    .line 73
    .line 74
    :try_start_5
    const-string/jumbo v4, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getTargetInputMethodSubtypeId()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    const/4 v6, 0x0

    .line 82
    invoke-virtual {p0, v5, v6, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isInputMethodShown()Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-nez v4, :cond_4

    .line 90
    .line 91
    const/4 v4, 0x1

    .line 92
    if-eqz v3, :cond_3

    .line 93
    .line 94
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 95
    .line 96
    iget-object v6, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 97
    .line 98
    const/16 v11, 0x17

    .line 99
    .line 100
    invoke-virtual {p0, v11, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(IZ)Landroid/view/inputmethod/ImeTracker$Token;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    const/4 v10, 0x0

    .line 105
    const/4 v8, 0x1

    .line 106
    const/4 v9, 0x0

    .line 107
    move-object v5, p0

    .line 108
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;I)Z

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 117
    .line 118
    invoke-virtual {v3, p0, v4}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->requestImeVisibility(Landroid/os/IBinder;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 119
    .line 120
    .line 121
    :cond_4
    :goto_0
    :try_start_6
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :goto_1
    :try_start_7
    const-string v3, "InputMethodManagerService"

    .line 126
    .line 127
    const-string/jumbo v4, "handleVoiceHWKey: exception:"

    .line 128
    .line 129
    .line 130
    invoke-static {v3, v4, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :goto_2
    :try_start_8
    monitor-exit v0

    .line 135
    return-void

    .line 136
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    .line 138
    .line 139
    throw p0

    .line 140
    :goto_4
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 141
    throw p0
.end method

.method public final hideCurrentInputLocked(ILandroid/os/IBinder;)Z
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(IZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p2

    move v6, p1

    .line 2
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    move-result p0

    return p0
.end method

.method public final hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x0

    .line 4
    const-string v3, "InputMethodManagerService"

    if-eqz v1, :cond_1

    .line 5
    iget-boolean v1, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedShowExplicitly:Z

    if-nez v1, :cond_0

    .line 6
    iget-boolean v1, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    if-eqz v1, :cond_1

    .line 7
    :cond_0
    const-string p0, "Not hiding: explicit show not cancelled by non-explicit hide"

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    const/4 p1, 0x6

    invoke-interface {p0, p2, p1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-boolean v0, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    const/4 v1, 0x7

    if-eqz v0, :cond_2

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_2

    .line 10
    const-string p0, "Not hiding: forced show not cancelled by not-always hide"

    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :goto_0
    return v2

    .line 12
    :cond_2
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p3

    invoke-interface {p3, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 13
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 14
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 15
    iget-boolean p3, p3, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    const/4 v0, 0x1

    if-nez p3, :cond_4

    .line 16
    iget p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    and-int/2addr p3, v0

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    .line 17
    :cond_4
    :goto_1
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    invoke-virtual {p3, p1, v2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->requestImeVisibility(Landroid/os/IBinder;Z)V

    const/16 p3, 0xa

    if-eqz v0, :cond_7

    .line 18
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 19
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    .line 20
    iget-object p3, p3, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 21
    invoke-virtual {p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Calling "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ".hideSoftInput(0, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ") for reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-static {p5}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :try_start_0
    iget-object v1, v1, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {v1, p1, p2, v2, p4}, Lcom/android/internal/inputmethod/IInputMethod;->hideSoftInput(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    sget-boolean p4, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    if-eqz p4, :cond_6

    if-eqz p2, :cond_5

    .line 27
    invoke-virtual {p2}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    move-result-object p4

    goto :goto_2

    :cond_5
    const-string p4, "TOKEN_NONE"

    :goto_2
    iget-object v1, p3, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 28
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {p5}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p3, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    iget v4, v4, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    .line 30
    invoke-static {v4}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {p4, v1, v3, v4}, [Ljava/lang/Object;

    move-result-object p4

    const/16 v1, 0x7d02

    .line 31
    invoke-static {v1, p4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 32
    :cond_6
    invoke-virtual {p3, v2, p1, p5, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->onShowHideSoftInputRequested(ZLandroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_3

    :catch_0
    move-exception p1

    .line 33
    invoke-static {p1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    goto :goto_3

    .line 34
    :cond_7
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "hideCurrentInputLocked : canceled, shouldHideSoftInput="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mInputShown="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 37
    iget-boolean p2, p2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mImeWindowVis="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 39
    invoke-static {p1, p2, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 40
    :cond_8
    :goto_3
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p1

    .line 41
    iget-boolean p2, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    if-eqz p2, :cond_9

    .line 42
    iget-object p2, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    iget-object p3, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleConnection:Lcom/android/server/inputmethod/InputMethodBindingController$1;

    invoke-virtual {p2, p3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 43
    iput-boolean v2, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    .line 44
    :cond_9
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 45
    iput-boolean v2, p1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedShowExplicitly:Z

    .line 46
    iput-boolean v2, p1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    .line 47
    iput-boolean v2, p1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    .line 48
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/16 p3, 0x8

    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return v0
.end method

.method public final hideSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;IZ)Z
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object/from16 v3, p3

    .line 4
    .line 5
    move-object/from16 v5, p5

    .line 6
    .line 7
    const-string/jumbo v2, "hideSoftInput : Ignoring, called from invalid user, mInputShown="

    .line 8
    .line 9
    .line 10
    const-string v4, "InputMethodManagerService"

    .line 11
    .line 12
    const-string/jumbo v6, "hideSoftInput"

    .line 13
    .line 14
    .line 15
    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    const-string v7, "InputMethodManagerService#hideSoftInput"

    .line 27
    .line 28
    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/server/inputmethod/InputMethodManagerService$1;

    .line 29
    .line 30
    invoke-virtual {v6, v7, v8}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    .line 31
    .line 32
    .line 33
    const-class v7, Lcom/android/server/inputmethod/ImfLock;

    .line 34
    .line 35
    monitor-enter v7

    .line 36
    :try_start_0
    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 37
    .line 38
    const-wide/16 v8, 0x20

    .line 39
    .line 40
    if-eqz v6, :cond_1

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    iget-object v6, v6, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 45
    .line 46
    iget-object v6, v6, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 47
    .line 48
    invoke-interface {v6}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    .line 53
    .line 54
    .line 55
    move-result-object v10

    .line 56
    if-eq v6, v10, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move/from16 v10, p6

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto/16 :goto_6

    .line 64
    .line 65
    :cond_1
    :goto_0
    const/16 v6, 0x3c

    .line 66
    .line 67
    move/from16 v10, p6

    .line 68
    .line 69
    if-ne v10, v6, :cond_2

    .line 70
    .line 71
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 72
    .line 73
    .line 74
    move-result-wide v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :try_start_1
    const-string v1, "IMMS.hideSoftInput"

    .line 76
    .line 77
    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v1, "InputMethodManagerService"

    .line 81
    .line 82
    const-string v2, "Client requesting force input be hidden"

    .line 83
    .line 84
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 88
    .line 89
    iget-object v2, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 90
    .line 91
    move-object v1, p0

    .line 92
    move-object/from16 v3, p3

    .line 93
    .line 94
    move/from16 v4, p4

    .line 95
    .line 96
    move-object/from16 v5, p5

    .line 97
    .line 98
    move/from16 v6, p6

    .line 99
    .line 100
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    .line 101
    .line 102
    .line 103
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    :try_start_2
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    .line 106
    .line 107
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 108
    .line 109
    .line 110
    monitor-exit v7

    .line 111
    return v0

    .line 112
    :catchall_1
    move-exception v0

    .line 113
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    .line 115
    .line 116
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 117
    .line 118
    .line 119
    throw v0

    .line 120
    :cond_2
    :goto_1
    const-string/jumbo v6, "hideSoftInput"

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v4, p1, v6, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    const/4 v4, 0x0

    .line 128
    const/4 v6, 0x3

    .line 129
    if-nez v1, :cond_4

    .line 130
    .line 131
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 132
    .line 133
    iget-boolean v1, v1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    .line 134
    .line 135
    if-eqz v1, :cond_3

    .line 136
    .line 137
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-interface {v1, v3, v6}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_3
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-interface {v1, v3, v6}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 150
    .line 151
    .line 152
    :goto_2
    const-string v1, "InputMethodManagerService"

    .line 153
    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 160
    .line 161
    iget-boolean v0, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    .line 162
    .line 163
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    monitor-exit v7

    .line 174
    return v4

    .line 175
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 176
    .line 177
    .line 178
    move-result-wide v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    :try_start_3
    const-string v1, "IMMS.hideSoftInput"

    .line 180
    .line 181
    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_8

    .line 189
    .line 190
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 191
    .line 192
    if-eqz v1, :cond_7

    .line 193
    .line 194
    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    .line 195
    .line 196
    if-eqz v1, :cond_7

    .line 197
    .line 198
    iget-object v1, v1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 199
    .line 200
    if-eqz v1, :cond_7

    .line 201
    .line 202
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 203
    .line 204
    iget-boolean v0, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    .line 205
    .line 206
    invoke-virtual {v1, v4}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeVisibility(Z)V

    .line 207
    .line 208
    .line 209
    const/4 v1, 0x1

    .line 210
    if-eqz v5, :cond_6

    .line 211
    .line 212
    if-eqz v0, :cond_5

    .line 213
    .line 214
    goto :goto_3

    .line 215
    :cond_5
    move v6, v1

    .line 216
    :goto_3
    const/4 v0, 0x0

    .line 217
    invoke-virtual {v5, v6, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 218
    .line 219
    .line 220
    goto :goto_4

    .line 221
    :catchall_2
    move-exception v0

    .line 222
    goto :goto_5

    .line 223
    :cond_6
    :goto_4
    :try_start_4
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    .line 225
    .line 226
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 227
    .line 228
    .line 229
    monitor-exit v7

    .line 230
    return v1

    .line 231
    :cond_7
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 232
    .line 233
    .line 234
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 235
    .line 236
    .line 237
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 238
    return v4

    .line 239
    :cond_8
    :try_start_5
    const-string v1, "InputMethodManagerService"

    .line 240
    .line 241
    const-string v2, "Client requesting input be hidden"

    .line 242
    .line 243
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-object v1, p0

    .line 247
    move-object v2, p2

    .line 248
    move-object/from16 v3, p3

    .line 249
    .line 250
    move/from16 v4, p4

    .line 251
    .line 252
    move-object/from16 v5, p5

    .line 253
    .line 254
    move/from16 v6, p6

    .line 255
    .line 256
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;I)Z

    .line 257
    .line 258
    .line 259
    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 260
    :try_start_6
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    .line 262
    .line 263
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 264
    .line 265
    .line 266
    monitor-exit v7

    .line 267
    return v0

    .line 268
    :goto_5
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 269
    .line 270
    .line 271
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 272
    .line 273
    .line 274
    throw v0

    .line 275
    :goto_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 276
    throw v0
.end method

.method public final hideSoftInputFromServerForTest()V
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    invoke-virtual {p0, v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/IBinder;)Z

    .line 10
    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method

.method public final isAccessoryKeyboard()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    and-int/lit8 v4, v1, -0x49

    .line 10
    .line 11
    if-nez v4, :cond_0

    .line 12
    .line 13
    move v4, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v4, v2

    .line 16
    :goto_0
    const-string/jumbo v5, "isAccessoryKeyboard "

    .line 17
    .line 18
    .line 19
    const-string v6, "InputMethodManagerService"

    .line 20
    .line 21
    if-eqz v4, :cond_3

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->isPogoBackfolded()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 36
    .line 37
    if-ne v0, v3, :cond_3

    .line 38
    .line 39
    :cond_1
    const-string v0, ", PogoKeyboard connectedOnly="

    .line 40
    .line 41
    invoke-static {v1, v5, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 46
    .line 47
    iget v1, v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    and-int/lit8 v1, v1, -0x49

    .line 52
    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    move v3, v2

    .line 57
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, ", backfolded="

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->isPogoBackfolded()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", orientation="

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 86
    .line 87
    invoke-static {v0, p0, v6}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return v2

    .line 91
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 92
    .line 93
    .line 94
    move-result-wide v2

    .line 95
    if-nez v1, :cond_4

    .line 96
    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->checkBlocklistUsbKeyboardConnected()I

    .line 98
    .line 99
    .line 100
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    goto :goto_2

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :cond_4
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    .line 109
    .line 110
    new-instance p0, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    invoke-static {v6, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    return v1
.end method

.method public final isCurrentInputMethodAsSamsungKeyboard()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 4
    .line 5
    invoke-static {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodPackageName(Landroid/content/Context;Landroid/content/ContentResolver;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string/jumbo v0, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final isDEXStandAloneMode()Z
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "InputMethodManagerService"

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const-string/jumbo p0, "mDesktopModeManager null!"

    .line 9
    .line 10
    .line 11
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    return v0

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v4, "DESKTOP TYPE! : "

    .line 29
    .line 30
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    const/16 v2, 0x65

    .line 48
    .line 49
    if-ne p0, v2, :cond_2

    .line 50
    .line 51
    const-string p0, "IN KNOX DESKTOP MODE with STAND ALONE!"

    .line 52
    .line 53
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x1

    .line 57
    return p0

    .line 58
    :cond_2
    const-string p0, "NOT IN KNOX DESKTOP MODE with STAND ALONE!"

    .line 59
    .line 60
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    return v0
.end method

.method public final isDeskTopMode()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "InputMethodManagerService"

    .line 5
    .line 6
    if-eqz p0, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "DESKTOP MODE! : "

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget v3, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 20
    .line 21
    invoke-static {v2, v3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget p0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    if-eq p0, v2, :cond_1

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    if-ne p0, v2, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string p0, "NOT IN KNOX DESKTOP MODE!"

    .line 34
    .line 35
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return v0

    .line 39
    :cond_1
    :goto_0
    const-string p0, "IN KNOX DESKTOP MODE!"

    .line 40
    .line 41
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x1

    .line 45
    return p0

    .line 46
    :cond_2
    const-string/jumbo p0, "mDesktopModeManager null!"

    .line 47
    .line 48
    .line 49
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return v0
.end method

.method public final isDexSetting()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDeskTopMode()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedDisplayId:I

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDEXStandAloneMode()Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_2

    .line 16
    .line 17
    :cond_1
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public final isHoneyboardInstalled()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/inputmethod/InputMethodManagerService;->FEATURE_CONFIG_SIP:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "com.samsung.android.honeyboard"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const-string/jumbo v0, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isInstalledInputMethod(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 25
    :goto_1
    return p0
.end method

.method public final isImeTraceEnabled()Z
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isInputMethodPickerShownForTest()Z
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    :goto_0
    monitor-exit v0

    .line 17
    return p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final isInputMethodShown()Z
    .locals 2

    .line 1
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 2
    .line 3
    and-int/lit8 p0, p0, 0x2

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v1, "isInputMethodShown: isShown="

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "InputMethodManagerService"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    return p0
.end method

.method public final isInstalledInputMethod(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    move v2, v1

    .line 24
    :goto_0
    if-ge v2, v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return v1
.end method

.method public final isSamsungDefaultMethodID()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isHoneyboardInstalled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return p0
.end method

.method public final isShowRequestedForCurrentWindow()Z
    .locals 2

    .line 1
    const-string/jumbo v0, "com.samsung.android.honeyboard/com.samsung.android.writingtoolkit.service.FakeHoneyBoardService"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    .line 29
    .line 30
    if-eqz p0, :cond_1

    .line 31
    .line 32
    iget-boolean p0, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v1, 0x0

    .line 38
    :goto_0
    return v1
.end method

.method public final isStylusHandwritingAvailableAsUser(IZ)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {p0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusHandwritingEnabled(Landroid/content/Context;I)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    monitor-exit v0

    .line 28
    return v2

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-ne p1, v1, :cond_4

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    .line 41
    .line 42
    if-eqz p1, :cond_3

    .line 43
    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsConnectionlessStylusHw:Z

    .line 47
    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    :cond_2
    move v2, v3

    .line 51
    :cond_3
    monitor-exit v0

    .line 52
    return v2

    .line 53
    :cond_4
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p1, p0}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    if-eqz p0, :cond_6

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->supportsStylusHandwriting()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_6

    .line 74
    .line 75
    if-eqz p2, :cond_5

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->supportsConnectionlessStylusHandwriting()Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_6

    .line 82
    .line 83
    :cond_5
    move v2, v3

    .line 84
    :cond_6
    monitor-exit v0

    .line 85
    return v2

    .line 86
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw p0
.end method

.method public final isStylusHandwritingEnabled(Landroid/content/Context;I)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string/jumbo p2, "stylus_handwriting_enabled"

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    invoke-static {p1, p2, v0, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_0
    return v0
.end method

.method public final maybeInitImeNavbarConfigLocked(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarRes:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v1, v0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;->mUserId:I

    .line 12
    .line 13
    if-eq v1, p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;->close()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarRes:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarRes:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x0

    .line 32
    if-ne v0, p1, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    :goto_0
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 48
    .line 49
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda9;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-direct {v0, v2, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda9;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 53
    .line 54
    .line 55
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;->evaluate(Landroid/content/Context;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-direct {v8, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 62
    .line 63
    .line 64
    new-instance v9, Ljava/util/concurrent/atomic/AtomicReference;

    .line 65
    .line 66
    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 67
    .line 68
    .line 69
    new-instance v10, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-direct {v10, v2, v8, v9}, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;-><init>(ILjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 76
    .line 77
    .line 78
    new-instance v4, Landroid/content/IntentFilter;

    .line 79
    .line 80
    const-string v2, "android.intent.action.OVERLAY_CHANGED"

    .line 81
    .line 82
    invoke-direct {v4, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string/jumbo v2, "package"

    .line 86
    .line 87
    .line 88
    invoke-virtual {v4, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v2, "android"

    .line 92
    .line 93
    invoke-virtual {v4, v2, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 94
    .line 95
    .line 96
    new-instance v1, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$1;

    .line 97
    .line 98
    invoke-direct {v1, p1, v8, v0, v10}, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$1;-><init>(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda9;Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;)V

    .line 99
    .line 100
    .line 101
    const/4 v5, 0x0

    .line 102
    const/4 v7, 0x4

    .line 103
    move-object v2, p1

    .line 104
    move-object v3, v1

    .line 105
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    new-instance v0, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$$ExternalSyntheticLambda0;

    .line 109
    .line 110
    invoke-direct {v0, p1, v1}, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper$1;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v9, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    invoke-static {p1}, Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;->evaluate(Landroid/content/Context;)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-virtual {v8, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 121
    .line 122
    .line 123
    iput-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeDrawsImeNavBarRes:Lcom/android/server/inputmethod/OverlayableSystemBooleanResourceWrapper;

    .line 124
    .line 125
    :cond_2
    return-void
.end method

.method public final minimizeSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 10
    .line 11
    invoke-interface {p0, p2}, Lcom/android/internal/inputmethod/IInputMethod;->minimizeSoftInput(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    const/4 p0, 0x1

    .line 20
    return p0
.end method

.method public final notifyInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/input/InputManagerService$LocalService;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/input/InputManagerService$LocalService;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->isSuitableForPhysicalKeyboardLayoutMapping()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p3, v0

    .line 22
    :goto_0
    if-eqz p3, :cond_1

    .line 23
    .line 24
    invoke-static {p2, p3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 29
    .line 30
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/input/InputManagerService$LocalService;->onInputMethodSubtypeChangedForKeyboardLayoutMapping(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    return-void
.end method

.method public final notifyInputMethodSubtypeChangedLocked(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "notifyInputMethodSubtypeChangedLocked: callers="

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    const-string v2, "InputMethodManagerService"

    .line 16
    .line 17
    invoke-static {v1, v0, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    if-eqz p3, :cond_1

    .line 22
    .line 23
    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->isSuitableForPhysicalKeyboardLayoutMapping()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object p3, v0

    .line 31
    :goto_0
    if-eqz p3, :cond_2

    .line 32
    .line 33
    invoke-static {p2, p3}, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;->of(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_2
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 38
    .line 39
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/input/InputManagerService$LocalService;->onInputMethodSubtypeChangedForKeyboardLayoutMapping(ILcom/android/internal/inputmethod/InputMethodSubtypeHandle;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final notifyUserActivity()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, v0, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v1

    .line 10
    :goto_0
    const-string v2, "InputMethodManagerService"

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const-string/jumbo p0, "notifyUserActivity: canceled, displayId="

    .line 15
    .line 16
    .line 17
    invoke-static {v0, p0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDeskTopMode()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeKeyboardDefaultDisplayOnly()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    const-string/jumbo v0, "notifyUserActivity: notified."

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v5

    .line 47
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 48
    .line 49
    invoke-virtual {v0, v5, v6}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 53
    .line 54
    const/16 v0, 0x1000

    .line 55
    .line 56
    invoke-virtual {p0, v5, v6, v1, v0}, Landroid/os/PowerManager;->userActivity(JII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    goto :goto_3

    .line 66
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_3
    :goto_3
    return-void
.end method

.method public final onSessionCreated(Lcom/android/server/inputmethod/IInputMethodInvoker;Lcom/android/internal/inputmethod/IInputMethodSession;Landroid/view/InputChannel;)V
    .locals 5

    .line 1
    const-string v0, "IMMS.onSessionCreated"

    .line 2
    .line 3
    const-wide/16 v1, 0x20

    .line 4
    .line 5
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 9
    .line 10
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V

    .line 16
    .line 17
    .line 18
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    if-eqz v3, :cond_3

    .line 30
    .line 31
    if-eqz p1, :cond_3

    .line 32
    .line 33
    iget-object v3, v3, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 34
    .line 35
    invoke-interface {v3}, Lcom/android/internal/inputmethod/IInputMethod;->asBinder()Landroid/os/IBinder;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget-object v4, p1, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 40
    .line 41
    invoke-interface {v4}, Lcom/android/internal/inputmethod/IInputMethod;->asBinder()Landroid/os/IBinder;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    if-ne v3, v4, :cond_3

    .line 46
    .line 47
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 48
    .line 49
    if-eqz v3, :cond_3

    .line 50
    .line 51
    iget-object v4, v3, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 52
    .line 53
    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    .line 54
    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    iput-object v4, v3, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 58
    .line 59
    const/4 v4, 0x0

    .line 60
    iput-boolean v4, v3, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    .line 61
    .line 62
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 63
    .line 64
    new-instance v4, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 65
    .line 66
    invoke-direct {v4, v3, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;-><init>(Lcom/android/server/inputmethod/ClientState;Lcom/android/server/inputmethod/IInputMethodInvoker;Lcom/android/internal/inputmethod/IInputMethodSession;Landroid/view/InputChannel;)V

    .line 67
    .line 68
    .line 69
    iput-object v4, v3, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 70
    .line 71
    const/4 p1, 0x1

    .line 72
    const/16 p2, 0xa

    .line 73
    .line 74
    invoke-virtual {p0, p2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewInputLocked(IZ)Lcom/android/internal/inputmethod/InputBindResult;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    invoke-virtual {p0, p2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewAccessibilityLocked(IZ)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p3, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 82
    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 88
    .line 89
    iget-boolean p1, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    .line 90
    .line 91
    if-eqz p1, :cond_1

    .line 92
    .line 93
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->onBindMethodInternal(Lcom/android/internal/inputmethod/InputBindResult;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    new-instance p1, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda1;

    .line 98
    .line 99
    invoke-direct {p1, p0, p3}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/InputBindResult;)V

    .line 100
    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    .line 106
    .line 107
    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    :cond_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    :try_start_4
    invoke-virtual {p3}, Landroid/view/InputChannel;->dispose()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 114
    .line 115
    .line 116
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :catchall_1
    move-exception p0

    .line 121
    goto :goto_2

    .line 122
    :goto_1
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 123
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 124
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 125
    .line 126
    .line 127
    throw p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;Landroid/os/Binder;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    const/16 v1, 0x7d0

    .line 8
    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    if-eqz p6, :cond_0

    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p6, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    const-string p0, "InputMethodManagerService does not support shell commands from non-shell users. callingUid="

    .line 19
    .line 20
    const-string p1, " args="

    .line 21
    .line 22
    invoke-static {v0, p0, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {v0}, Landroid/os/Process;->isCoreUid(I)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    const-string p1, "InputMethodManagerService"

    .line 44
    .line 45
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/SecurityException;

    .line 50
    .line 51
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 58
    .line 59
    .line 60
    move-object v1, p7

    .line 61
    move-object v2, p1

    .line 62
    move-object v3, p2

    .line 63
    move-object v4, p3

    .line 64
    move-object v5, p4

    .line 65
    move-object v6, p5

    .line 66
    move-object v7, p6

    .line 67
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final onShowHideSoftInputRequested(ZLandroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_DISCRETE:Z

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    const-string v2, "InputMethodManagerService"

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMinRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 11
    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const-string/jumbo v0, "display"

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 30
    .line 31
    :cond_0
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mIDisplayManager:Landroid/hardware/display/IDisplayManager;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    :try_start_0
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mRefreshRateToken:Landroid/os/IBinder;

    .line 36
    .line 37
    const/16 v4, 0x78

    .line 38
    .line 39
    invoke-interface {v0, v3, v4, v2}, Landroid/hardware/display/IDisplayManager;->acquireRefreshRateMinLimitToken(Landroid/os/IBinder;ILjava/lang/String;)Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMinRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMinRefreshRateToken:Lcom/samsung/android/hardware/display/IRefreshRateToken;

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 55
    .line 56
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMinRefreshRateTokenRelease:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda1;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 62
    .line 63
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMinRefreshRateTokenRelease:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda1;

    .line 64
    .line 65
    const-wide/16 v3, 0x5dc

    .line 66
    .line 67
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const-string v0, "acquireMinRefreshRateToken() failed"

    .line 72
    .line 73
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_1
    iget-object v0, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 77
    .line 78
    move-object/from16 v2, p2

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowTokenFrom(Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 85
    .line 86
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 87
    .line 88
    iget-object v3, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenDisplayIdLocked()I

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    move/from16 v5, p1

    .line 95
    .line 96
    invoke-virtual {v2, v5, v3, v0, v4}, Lcom/android/server/wm/WindowManagerInternal;->onToggleImeRequested(ZLandroid/os/IBinder;Landroid/os/IBinder;I)Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSoftInputShowHideHistory:Lcom/android/server/inputmethod/SoftInputShowHideHistory;

    .line 101
    .line 102
    new-instance v14, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;

    .line 103
    .line 104
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 105
    .line 106
    iget-object v4, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    .line 107
    .line 108
    iget-object v5, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 109
    .line 110
    iget-object v6, v0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->focusedWindowName:Ljava/lang/String;

    .line 111
    .line 112
    iget v7, v3, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    .line 113
    .line 114
    iget-boolean v9, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    .line 115
    .line 116
    iget-object v10, v0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->requestWindowName:Ljava/lang/String;

    .line 117
    .line 118
    iget-object v11, v0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->imeControlTargetName:Ljava/lang/String;

    .line 119
    .line 120
    iget-object v12, v0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->imeLayerTargetName:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v13, v0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->imeSurfaceParentName:Ljava/lang/String;

    .line 123
    .line 124
    move-object v3, v14

    .line 125
    move/from16 v8, p3

    .line 126
    .line 127
    invoke-direct/range {v3 .. v13}, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;-><init>(Lcom/android/server/inputmethod/ClientState;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget v3, v2, Lcom/android/server/inputmethod/SoftInputShowHideHistory;->mNextIndex:I

    .line 131
    .line 132
    iget-object v4, v2, Lcom/android/server/inputmethod/SoftInputShowHideHistory;->mEntries:[Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;

    .line 133
    .line 134
    aput-object v14, v4, v3

    .line 135
    .line 136
    add-int/lit8 v3, v3, 0x1

    .line 137
    .line 138
    array-length v4, v4

    .line 139
    rem-int/2addr v3, v4

    .line 140
    iput v3, v2, Lcom/android/server/inputmethod/SoftInputShowHideHistory;->mNextIndex:I

    .line 141
    .line 142
    if-eqz p4, :cond_4

    .line 143
    .line 144
    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeTrackerService:Lcom/android/server/inputmethod/ImeTrackerService;

    .line 145
    .line 146
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerInternal$ImeTargetInfo;->requestWindowName:Ljava/lang/String;

    .line 147
    .line 148
    iget-object v2, v1, Lcom/android/server/inputmethod/ImeTrackerService;->mLock:Ljava/lang/Object;

    .line 149
    .line 150
    monitor-enter v2

    .line 151
    :try_start_1
    iget-object v1, v1, Lcom/android/server/inputmethod/ImeTrackerService;->mHistory:Lcom/android/server/inputmethod/ImeTrackerService$History;

    .line 152
    .line 153
    invoke-virtual/range {p4 .. p4}, Landroid/view/inputmethod/ImeTracker$Token;->getBinder()Landroid/os/IBinder;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    iget-object v1, v1, Lcom/android/server/inputmethod/ImeTrackerService$History;->mLiveEntries:Ljava/util/WeakHashMap;

    .line 158
    .line 159
    invoke-virtual {v1, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    check-cast v1, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;

    .line 164
    .line 165
    if-nez v1, :cond_3

    .line 166
    .line 167
    monitor-exit v2

    .line 168
    goto :goto_3

    .line 169
    :catchall_0
    move-exception v0

    .line 170
    goto :goto_2

    .line 171
    :cond_3
    iput-object v0, v1, Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;->mRequestWindowName:Ljava/lang/String;

    .line 172
    .line 173
    monitor-exit v2

    .line 174
    goto :goto_3

    .line 175
    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    throw v0

    .line 177
    :cond_4
    :goto_3
    return-void
.end method

.method public final onUnbindCurrentMethodByReset()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-boolean v0, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 22
    .line 23
    iget-boolean v0, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    const/16 v1, 0x32

    .line 29
    .line 30
    invoke-virtual {p0, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(IZ)Landroid/view/inputmethod/ImeTracker$Token;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 37
    .line 38
    iget-object v3, v0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 39
    .line 40
    iget v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->applyImeVisibility(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;III)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public final onUpdateEditorToolType(I)V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    :try_start_1
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 11
    .line 12
    invoke-interface {p0, p1}, Lcom/android/internal/inputmethod/IInputMethod;->updateEditorToolType(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    :try_start_2
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    throw p0
.end method

.method public final postInputMethodSettingUpdatedLocked(Z)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-boolean v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    .line 5
    .line 6
    const-string v3, "InputMethodManagerService"

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    const-string/jumbo v0, "buildInputMethodListLocked is not allowed until system is ready"

    .line 11
    .line 12
    .line 13
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 18
    .line 19
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iget v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 24
    .line 25
    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 30
    .line 31
    iget-object v6, v5, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    .line 32
    .line 33
    const-string/jumbo v7, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-eqz v6, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0, v7, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    .line 46
    .line 47
    const-string/jumbo v6, "com.samsung.android.honeyboard/com.samsung.android.writingtoolkit.service.FakeHoneyBoardService"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    sget-boolean v5, Lcom/samsung/android/rune/ViewRune;->SUPPORT_WRITING_TOOLKIT:Z

    .line 57
    .line 58
    invoke-virtual {v0, v6, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 59
    .line 60
    .line 61
    :cond_2
    const-string v5, ""

    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    iget-object v15, v4, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 65
    .line 66
    if-nez p1, :cond_7

    .line 67
    .line 68
    invoke-virtual {v4, v6}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    const/4 v11, 0x0

    .line 77
    const/4 v12, 0x0

    .line 78
    :goto_0
    if-ge v11, v10, :cond_5

    .line 79
    .line 80
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v13

    .line 84
    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    .line 85
    .line 86
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v14

    .line 90
    iget-object v8, v15, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    .line 91
    .line 92
    invoke-virtual {v8, v14}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v8

    .line 96
    if-eqz v8, :cond_4

    .line 97
    .line 98
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-nez v8, :cond_3

    .line 103
    .line 104
    move v8, v1

    .line 105
    move v12, v8

    .line 106
    goto :goto_1

    .line 107
    :cond_3
    move v12, v1

    .line 108
    :cond_4
    add-int/2addr v11, v1

    .line 109
    goto :goto_0

    .line 110
    :cond_5
    const/4 v8, 0x0

    .line 111
    :goto_1
    if-nez v12, :cond_6

    .line 112
    .line 113
    invoke-virtual {v0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    move v8, v1

    .line 117
    :goto_2
    const/4 v9, 0x0

    .line 118
    goto :goto_3

    .line 119
    :cond_6
    if-nez v8, :cond_7

    .line 120
    .line 121
    move/from16 v8, p1

    .line 122
    .line 123
    move v9, v1

    .line 124
    goto :goto_3

    .line 125
    :cond_7
    move/from16 v8, p1

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :goto_3
    if-nez v8, :cond_8

    .line 129
    .line 130
    if-eqz v9, :cond_a

    .line 131
    .line 132
    :cond_8
    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 133
    .line 134
    iget-object v10, v4, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodList:Ljava/util/List;

    .line 135
    .line 136
    invoke-static {v8, v10, v9}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    const/4 v10, 0x0

    .line 145
    :goto_4
    if-ge v10, v9, :cond_a

    .line 146
    .line 147
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v11

    .line 151
    check-cast v11, Landroid/view/inputmethod/InputMethodInfo;

    .line 152
    .line 153
    new-instance v12, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v13, "--- enable ime = "

    .line 156
    .line 157
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v12

    .line 167
    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v6}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 171
    .line 172
    .line 173
    move-result-object v12

    .line 174
    invoke-static {v12}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    .line 175
    .line 176
    .line 177
    move-result-object v12

    .line 178
    if-eqz v12, :cond_9

    .line 179
    .line 180
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v12

    .line 184
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v12

    .line 188
    if-eqz v12, :cond_9

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_9
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v11

    .line 195
    invoke-virtual {v0, v11, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 196
    .line 197
    .line 198
    :goto_5
    add-int/2addr v10, v1

    .line 199
    goto :goto_4

    .line 200
    :cond_a
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    if-nez v8, :cond_c

    .line 209
    .line 210
    iget-object v8, v15, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    .line 211
    .line 212
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    if-nez v8, :cond_b

    .line 217
    .line 218
    const-string v7, "Default IME is uninstalled. Choose new default IME."

    .line 219
    .line 220
    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    .line 224
    .line 225
    .line 226
    move-result v3

    .line 227
    if-eqz v3, :cond_c

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 230
    .line 231
    .line 232
    goto :goto_6

    .line 233
    :cond_b
    invoke-virtual {v0, v7, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 234
    .line 235
    .line 236
    :cond_c
    :goto_6
    iget v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 237
    .line 238
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 243
    .line 244
    const v8, 0x104002e

    .line 245
    .line 246
    .line 247
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    iget v8, v3, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 252
    .line 253
    const-string/jumbo v9, "default_voice_input_method"

    .line 254
    .line 255
    .line 256
    invoke-static {v9, v6, v8}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v8

    .line 260
    sget-object v10, Lcom/android/server/inputmethod/InputMethodInfoUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    .line 261
    .line 262
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 263
    .line 264
    .line 265
    move-result v10

    .line 266
    if-eqz v10, :cond_d

    .line 267
    .line 268
    goto :goto_9

    .line 269
    :cond_d
    iget-object v10, v3, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 270
    .line 271
    invoke-virtual {v10, v8}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 272
    .line 273
    .line 274
    move-result-object v11

    .line 275
    if-eqz v11, :cond_e

    .line 276
    .line 277
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    .line 278
    .line 279
    .line 280
    move-result v12

    .line 281
    if-eqz v12, :cond_e

    .line 282
    .line 283
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v12

    .line 287
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v12

    .line 291
    if-eqz v12, :cond_e

    .line 292
    .line 293
    move-object v6, v11

    .line 294
    goto :goto_9

    .line 295
    :cond_e
    iget-object v11, v10, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    .line 296
    .line 297
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    .line 298
    .line 299
    .line 300
    move-result v11

    .line 301
    move-object v13, v6

    .line 302
    const/4 v12, 0x0

    .line 303
    :goto_7
    if-ge v12, v11, :cond_12

    .line 304
    .line 305
    iget-object v14, v10, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    .line 306
    .line 307
    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v14

    .line 311
    check-cast v14, Landroid/view/inputmethod/InputMethodInfo;

    .line 312
    .line 313
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    .line 314
    .line 315
    .line 316
    move-result v16

    .line 317
    if-nez v16, :cond_f

    .line 318
    .line 319
    goto :goto_8

    .line 320
    :cond_f
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v6

    .line 324
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 325
    .line 326
    .line 327
    move-result v6

    .line 328
    if-nez v6, :cond_10

    .line 329
    .line 330
    goto :goto_8

    .line 331
    :cond_10
    if-eqz v13, :cond_11

    .line 332
    .line 333
    new-instance v6, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    const-string v10, "At most one InputMethodService can be published in systemSpeechRecognizer: "

    .line 336
    .line 337
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    const-string v7, ". Ignoring all of them."

    .line 344
    .line 345
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v6

    .line 352
    const-string v7, "InputMethodInfoUtils"

    .line 353
    .line 354
    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    const/4 v6, 0x0

    .line 358
    goto :goto_9

    .line 359
    :cond_11
    move-object v13, v14

    .line 360
    :goto_8
    add-int/2addr v12, v1

    .line 361
    const/4 v6, 0x0

    .line 362
    goto :goto_7

    .line 363
    :cond_12
    move-object v6, v13

    .line 364
    :goto_9
    if-nez v6, :cond_13

    .line 365
    .line 366
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    if-nez v1, :cond_15

    .line 371
    .line 372
    invoke-virtual {v3, v9, v5}, Lcom/android/server/inputmethod/InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    goto :goto_a

    .line 376
    :cond_13
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v5

    .line 380
    invoke-static {v8, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    if-eqz v5, :cond_14

    .line 385
    .line 386
    goto :goto_a

    .line 387
    :cond_14
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v5

    .line 391
    invoke-virtual {v0, v5, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(Ljava/lang/String;Z)Z

    .line 392
    .line 393
    .line 394
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-virtual {v3, v9, v1}, Lcom/android/server/inputmethod/InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    :cond_15
    :goto_a
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 402
    .line 403
    iget v14, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mUserId:I

    .line 404
    .line 405
    if-ne v2, v14, :cond_16

    .line 406
    .line 407
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    .line 408
    .line 409
    iget-object v12, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mContext:Landroid/content/Context;

    .line 410
    .line 411
    const/4 v11, 0x0

    .line 412
    const/4 v9, 0x0

    .line 413
    const/4 v10, 0x0

    .line 414
    move-object v13, v15

    .line 415
    invoke-static/range {v9 .. v14}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeList(ZZZLandroid/content/Context;Lcom/android/server/inputmethod/InputMethodMap;I)Ljava/util/List;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    invoke-static {v3, v5}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->createFrom(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;Ljava/util/List;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    .line 420
    .line 421
    .line 422
    move-result-object v3

    .line 423
    iput-object v3, v1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    .line 424
    .line 425
    goto :goto_b

    .line 426
    :cond_16
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 427
    .line 428
    iget v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 429
    .line 430
    new-instance v5, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 431
    .line 432
    invoke-direct {v5, v1, v15, v3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;-><init>(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodMap;I)V

    .line 433
    .line 434
    .line 435
    iput-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 436
    .line 437
    :goto_b
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHardwareKeyboardShortcutController:Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;

    .line 438
    .line 439
    iget v3, v1, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;->mUserId:I

    .line 440
    .line 441
    if-ne v2, v3, :cond_17

    .line 442
    .line 443
    invoke-virtual {v1, v15}, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;->reset(Lcom/android/server/inputmethod/InputMethodMap;)V

    .line 444
    .line 445
    .line 446
    goto :goto_c

    .line 447
    :cond_17
    new-instance v1, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;

    .line 448
    .line 449
    invoke-direct {v1, v15, v2}, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;-><init>(Lcom/android/server/inputmethod/InputMethodMap;I)V

    .line 450
    .line 451
    .line 452
    iput-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHardwareKeyboardShortcutController:Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;

    .line 453
    .line 454
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked()V

    .line 455
    .line 456
    .line 457
    iget-object v1, v4, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodList:Ljava/util/List;

    .line 458
    .line 459
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 460
    .line 461
    const/16 v3, 0x1392

    .line 462
    .line 463
    const/4 v4, 0x0

    .line 464
    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 469
    .line 470
    .line 471
    return-void
.end method

.method public final prepareStylusHandwritingDelegation(Lcom/android/internal/inputmethod/IInputMethodClient;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusHandwritingEnabled(Landroid/content/Context;I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p0, "InputMethodManagerService"

    .line 10
    .line 11
    const-string p1, "Can not prepare stylus handwriting delegation. Stylus handwriting pref is disabled for user: "

    .line 12
    .line 13
    invoke-static {p2, p1, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    .line 21
    .line 22
    invoke-virtual {v1, p1, p4}, Lcom/android/server/inputmethod/ClientController;->verifyClientAndPackageMatch(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 30
    .line 31
    new-instance p1, Landroid/util/Pair;

    .line 32
    .line 33
    invoke-direct {p1, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/16 p3, 0x46a

    .line 37
    .line 38
    const/4 p4, 0x0

    .line 39
    invoke-virtual {p0, p3, p2, p4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    :try_start_1
    const-string p0, "InputMethodManagerService"

    .line 50
    .line 51
    const-string/jumbo p1, "prepareStylusHandwritingDelegation() fail"

    .line 52
    .line 53
    .line 54
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    const-string p1, "Delegator doesn\'t match Uid"

    .line 60
    .line 61
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    throw p0
.end method

.method public final registerDeviceListenerAndCheckStylusSupport()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v1, Landroid/hardware/input/InputManager;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/hardware/input/InputManager;

    .line 10
    .line 11
    new-instance v1, Landroid/util/IntArray;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    array-length v3, v2

    .line 21
    const/4 v4, 0x0

    .line 22
    :goto_0
    if-ge v4, v3, :cond_1

    .line 23
    .line 24
    aget v5, v2, v4

    .line 25
    .line 26
    invoke-virtual {v0, v5}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    if-eqz v6, :cond_0

    .line 31
    .line 32
    invoke-virtual {v6}, Landroid/view/InputDevice;->isEnabled()Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-eqz v7, :cond_0

    .line 37
    .line 38
    invoke-static {v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusDevice(Landroid/view/InputDevice;)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    if-eqz v6, :cond_0

    .line 43
    .line 44
    invoke-virtual {v1, v5}, Landroid/util/IntArray;->add(I)V

    .line 45
    .line 46
    .line 47
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-lez v2, :cond_2

    .line 55
    .line 56
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    .line 57
    .line 58
    monitor-enter v2

    .line 59
    :try_start_0
    new-instance v3, Landroid/util/IntArray;

    .line 60
    .line 61
    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    .line 62
    .line 63
    .line 64
    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    .line 65
    .line 66
    invoke-virtual {v3, v1}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V

    .line 67
    .line 68
    .line 69
    monitor-exit v2

    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p0

    .line 74
    :cond_2
    :goto_1
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$4;

    .line 75
    .line 76
    invoke-direct {v1, p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$4;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/hardware/input/InputManager;)V

    .line 77
    .line 78
    .line 79
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 80
    .line 81
    invoke-virtual {v0, v1, p0}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public final registerSamsungAdditionalReceivers()V
    .locals 11

    .line 1
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;

    .line 10
    .line 11
    const/4 v3, 0x5

    .line 12
    invoke-direct {v2, v3, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    sget-object v1, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_DESKTOP_MODE:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_DESKTOP_MODE:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;

    .line 36
    .line 37
    const/4 v3, 0x4

    .line 38
    invoke-direct {v2, v3, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    new-instance v6, Landroid/content/IntentFilter;

    .line 45
    .line 46
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string/jumbo v0, "com.sec.android.inputmethod.Subtype"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    new-instance v5, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;

    .line 58
    .line 59
    const/4 v0, 0x3

    .line 60
    invoke-direct {v5, v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 61
    .line 62
    .line 63
    const/4 v9, 0x2

    .line 64
    const-string v7, "android.permission.WRITE_SECURE_SETTINGS"

    .line 65
    .line 66
    const/4 v8, 0x0

    .line 67
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    const-string/jumbo v0, "com.samsung.sea.rm.DEMO_RESET_STARTED"

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;

    .line 80
    .line 81
    const/4 v3, 0x0

    .line 82
    invoke-direct {v2, v3, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    const-string/jumbo v0, "ro.csc.sales_code"

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const-string v2, "VZW"

    .line 96
    .line 97
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    const/4 v2, 0x0

    .line 102
    if-nez v1, :cond_0

    .line 103
    .line 104
    const-string v1, "VPP"

    .line 105
    .line 106
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_1

    .line 115
    .line 116
    :cond_0
    const-string/jumbo v0, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 117
    .line 118
    .line 119
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 124
    .line 125
    new-instance v3, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;

    .line 126
    .line 127
    const/4 v4, 0x6

    .line 128
    invoke-direct {v3, v4, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$DemoResetReceiver;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 129
    .line 130
    .line 131
    const-string/jumbo v4, "com.sec.android.settings.permission.SOFT_RESET"

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 135
    .line 136
    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const-string/jumbo v1, "universal_switch_enabled"

    .line 144
    .line 145
    .line 146
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUniversalSwitchChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

    .line 151
    .line 152
    const/4 v4, 0x0

    .line 153
    invoke-virtual {v0, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 157
    .line 158
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    const-string/jumbo v1, "dexonpc_connection_state"

    .line 163
    .line 164
    .line 165
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDexOnPCStateChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

    .line 170
    .line 171
    invoke-virtual {v0, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 172
    .line 173
    .line 174
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 175
    .line 176
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    const-string v1, "access_control_enabled"

    .line 181
    .line 182
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlEnableChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

    .line 187
    .line 188
    invoke-virtual {v0, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 192
    .line 193
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    const-string v1, "access_control_keyboard_block"

    .line 198
    .line 199
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlKeyboardEnableChangeObserver:Lcom/android/server/inputmethod/InputMethodManagerService$DexOnPCStateChangeObserver;

    .line 204
    .line 205
    invoke-virtual {v0, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 206
    .line 207
    .line 208
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;

    .line 209
    .line 210
    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 211
    .line 212
    .line 213
    new-instance v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 214
    .line 215
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 216
    .line 217
    .line 218
    iput v4, v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mBTKeyboardCount:I

    .line 219
    .line 220
    iput v4, v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCount:I

    .line 221
    .line 222
    iput v4, v1, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mUSBKeyboardCountOld:I

    .line 223
    .line 224
    iput-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 225
    .line 226
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 227
    .line 228
    const-string/jumbo v4, "com.sec.android.sidesync.action.PSS_KEYBOARD"

    .line 229
    .line 230
    .line 231
    invoke-static {v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    new-instance v6, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;

    .line 236
    .line 237
    const/4 v4, 0x1

    .line 238
    invoke-direct {v6, v1, v4}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    .line 239
    .line 240
    .line 241
    const-string/jumbo v8, "com.sec.android.permission.SIDESYNC_RECEIVER_PERMISSION"

    .line 242
    .line 243
    .line 244
    const/4 v9, 0x0

    .line 245
    const/4 v10, 0x2

    .line 246
    move-object v5, v3

    .line 247
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 248
    .line 249
    .line 250
    const-string/jumbo v4, "com.sec.android.sidesync.action.KMS_KEYBOARD"

    .line 251
    .line 252
    .line 253
    invoke-static {v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 254
    .line 255
    .line 256
    move-result-object v7

    .line 257
    new-instance v6, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;

    .line 258
    .line 259
    const/4 v4, 0x0

    .line 260
    invoke-direct {v6, v1, v4}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    .line 261
    .line 262
    .line 263
    const-string/jumbo v8, "com.sec.android.permission.SIDESYNC_RECEIVER_PERMISSION"

    .line 264
    .line 265
    .line 266
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 267
    .line 268
    .line 269
    const-string v4, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 270
    .line 271
    const-string v5, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 272
    .line 273
    invoke-static {v4, v5}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    new-instance v5, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;

    .line 278
    .line 279
    const/4 v6, 0x2

    .line 280
    invoke-direct {v5, v1, v6}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$KMSKeyboardReceiver;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;I)V

    .line 281
    .line 282
    .line 283
    const-string v6, "android.permission.MANAGE_USB"

    .line 284
    .line 285
    invoke-virtual {v3, v5, v4, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 286
    .line 287
    .line 288
    new-instance v2, Landroid/content/IntentFilter;

    .line 289
    .line 290
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 291
    .line 292
    .line 293
    const-string v4, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    .line 294
    .line 295
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 299
    .line 300
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    new-instance v4, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;

    .line 304
    .line 305
    invoke-direct {v4, v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$BTKeyboardReceiver;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 309
    .line 310
    .line 311
    new-instance v2, Landroid/content/IntentFilter;

    .line 312
    .line 313
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 314
    .line 315
    .line 316
    const-string/jumbo v4, "com.samsung.android.input.POGO_KEYBOARD_CHANGED"

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    new-instance v4, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;

    .line 323
    .line 324
    invoke-direct {v4, v1}, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;-><init>(Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;)V

    .line 325
    .line 326
    .line 327
    const/4 v1, 0x2

    .line 328
    invoke-virtual {v3, v4, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 329
    .line 330
    .line 331
    iget-object v1, v4, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 332
    .line 333
    if-eqz v1, :cond_2

    .line 334
    .line 335
    iget-object v2, v4, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver;->mCallbacks:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard$POGOKeyboardReceiver$1;

    .line 336
    .line 337
    iput-object v2, v1, Lcom/android/server/input/InputManagerService;->mInputMethodManagerCallbacks:Lcom/android/server/input/InputManagerService$InputMethodManagerCallbacks;

    .line 338
    .line 339
    :cond_2
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    .line 340
    .line 341
    iput-object v0, p0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->mHardKeyboardStatusChangeListener:Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda2;

    .line 342
    .line 343
    return-void
.end method

.method public final removeImeSurface()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v0, 0x424

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final removeImeSurfaceFromWindowAsync(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/16 v0, 0x425

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final removeStylusDeviceIdLocked(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroid/util/IntArray;->indexOf(I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, -0x1

    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/util/IntArray;->remove(I)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "Stylus deviceId: "

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p1, " removed."

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v0, "InputMethodManagerService"

    .line 46
    .line 47
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/HandwritingModeController;->reset(Z)V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 65
    .line 66
    const/16 p1, 0x460

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_0
    return-void
.end method

.method public final reportPerceptibleAsync(Landroid/os/IBinder;Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda18;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final requestClientSessionLocked(Lcom/android/server/inputmethod/ClientState;)V
    .locals 3

    .line 1
    iget-boolean v0, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Creating new session for client "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "InputMethodManagerService"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/server/inputmethod/ClientState;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x0

    .line 33
    aget-object v1, v0, v1

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    aget-object v0, v0, v2

    .line 37
    .line 38
    iput-boolean v2, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v2, Lcom/android/server/inputmethod/InputMethodManagerService$2;

    .line 45
    .line 46
    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService$2;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/IInputMethodInvoker;Landroid/view/InputChannel;)V

    .line 47
    .line 48
    .line 49
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    :try_start_1
    iget-object p0, p1, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 53
    .line 54
    invoke-interface {p0, v0, v2}, Lcom/android/internal/inputmethod/IInputMethod;->createSession(Landroid/view/InputChannel;Lcom/android/internal/inputmethod/IInputMethodSessionCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p0

    .line 59
    :try_start_2
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    .line 61
    .line 62
    :goto_0
    if-eqz v0, :cond_1

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 72
    .line 73
    .line 74
    :cond_0
    throw p0

    .line 75
    :cond_1
    :goto_1
    return-void
.end method

.method public final resetCurrentMethodAndClientLocked(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUnbindCurrentMethodByReset()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final resetDefaultImeLocked(Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 6
    .line 7
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v3, v0}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, v2

    .line 22
    :goto_0
    const-string v4, "InputMethodManagerService"

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const-string/jumbo v5, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_1

    .line 38
    .line 39
    const-string/jumbo v5, "com.sohu.inputmethod.sogou.samsung/.SogouIME"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-nez v5, :cond_1

    .line 51
    .line 52
    const-string/jumbo v5, "com.touchtype.swiftkey/com.touchtype.KeyboardService"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    :cond_1
    const-string/jumbo p0, "resetDefaultImeLocked: Do not reset the default (current) IME that preloaded."

    .line 66
    .line 67
    .line 68
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-virtual {v3, v0}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->isSystem()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_3

    .line 87
    .line 88
    return-void

    .line 89
    :cond_3
    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const/4 v1, 0x0

    .line 94
    invoke-static {p1, v0, v1}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/ArrayList;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    const-string p0, "No default found"

    .line 105
    .line 106
    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_4
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    .line 115
    .line 116
    const/4 v0, -0x1

    .line 117
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public final resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x1

    .line 8
    iput v1, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mDisplayIdToShowIme:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput v2, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mDeviceIdToShowIme:I

    .line 12
    .line 13
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 14
    .line 15
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v0, v3}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 24
    .line 25
    invoke-virtual {v4, p1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    new-instance v6, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string/jumbo v7, "resetSelectedInputMethodAndSubtypeLocked settings.getMethodMap() size : "

    .line 32
    .line 33
    .line 34
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    .line 38
    .line 39
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    const-string v6, "InputMethodManagerService"

    .line 51
    .line 52
    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    if-eqz v5, :cond_0

    .line 56
    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string/jumbo v7, "resetSelectedInputMethodAndSubtypeLocked imi : "

    .line 60
    .line 61
    .line 62
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_0
    if-eqz v5, :cond_2

    .line 76
    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-nez v4, :cond_2

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getLastSubtypeForInputMethodInternal(Ljava/lang/String;)Landroid/util/Pair;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_1

    .line 88
    .line 89
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 90
    .line 91
    move-object v3, p1

    .line 92
    check-cast v3, Ljava/lang/String;

    .line 93
    .line 94
    :cond_1
    if-eqz v3, :cond_2

    .line 95
    .line 96
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    invoke-static {v5, p1}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    .line 101
    .line 102
    .line 103
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_0

    .line 105
    :catch_0
    move-exception p1

    .line 106
    const-string v0, "HashCode for subtype looks broken: "

    .line 107
    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v6, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .line 114
    .line 115
    :cond_2
    :goto_0
    invoke-virtual {p0, v5, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public final scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "scheduleSwitchUserTaskLocked: userId="

    .line 2
    .line 3
    .line 4
    const-string v1, "InputMethodManagerService"

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    .line 14
    .line 15
    if-ne v1, p1, :cond_0

    .line 16
    .line 17
    iput-object p2, v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mClientToBeReset:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 28
    .line 29
    const/16 v1, 0xa

    .line 30
    .line 31
    invoke-virtual {p0, v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/IBinder;)Z

    .line 32
    .line 33
    .line 34
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    .line 35
    .line 36
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public final semComputeImeDisplayIdForTarget(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWMS:Lcom/android/server/wm/WindowManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDeskTopMode()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeKeyboardDefaultDisplayOnly()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    :cond_0
    const-string/jumbo p0, "semComputeImeDisplayIdForTarget: displayId="

    .line 20
    .line 21
    .line 22
    const-string v0, "InputMethodManagerService"

    .line 23
    .line 24
    invoke-static {p1, p0, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return p1
.end method

.method public final sendOnNavButtonFlagsChangedLocked()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodNavButtonFlagsLocked()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    :try_start_0
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 17
    .line 18
    invoke-interface {v0, p0}, Lcom/android/internal/inputmethod/IInputMethod;->onNavButtonFlagsChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method public final setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;I)V
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eq v0, p3, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v8

    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_8

    .line 24
    .line 25
    if-nez p2, :cond_1

    .line 26
    .line 27
    goto/16 :goto_7

    .line 28
    .line 29
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    array-length v0, p2

    .line 35
    const/4 v1, 0x0

    .line 36
    move v2, v1

    .line 37
    :goto_0
    if-ge v2, v0, :cond_3

    .line 38
    .line 39
    aget-object v3, p2, v2

    .line 40
    .line 41
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_2

    .line 46
    .line 47
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const-string v4, "InputMethodManagerService"

    .line 52
    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v7, "Duplicated subtype definition found: "

    .line 56
    .line 57
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v7, ", "

    .line 68
    .line 69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    const-class p2, Lcom/android/server/inputmethod/ImfLock;

    .line 90
    .line 91
    monitor-enter p2

    .line 92
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    .line 93
    .line 94
    if-nez v0, :cond_4

    .line 95
    .line 96
    monitor-exit p2

    .line 97
    return-void

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    goto :goto_6

    .line 100
    :cond_4
    invoke-static {p3}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 105
    .line 106
    if-ne v2, p3, :cond_5

    .line 107
    .line 108
    const/4 v2, 0x1

    .line 109
    goto :goto_2

    .line 110
    :cond_5
    move v2, v1

    .line 111
    :goto_2
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 116
    .line 117
    move-object v3, v9

    .line 118
    move-object v4, p1

    .line 119
    move-object v6, v0

    .line 120
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/inputmethod/InputMethodSettings;->getNewAdditionalSubtypeMap(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/inputmethod/AdditionalSubtypeMap;Landroid/content/pm/PackageManagerInternal;I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-eq v0, p1, :cond_7

    .line 125
    .line 126
    iget-object v0, v9, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 127
    .line 128
    invoke-static {p3, p1, v0}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->putAndSave(ILcom/android/server/inputmethod/AdditionalSubtypeMap;Lcom/android/server/inputmethod/InputMethodMap;)V

    .line 129
    .line 130
    .line 131
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 132
    .line 133
    .line 134
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :try_start_1
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 136
    .line 137
    invoke-static {p3}, Lcom/android/server/inputmethod/AdditionalSubtypeMapRepository;->get(I)Lcom/android/server/inputmethod/AdditionalSubtypeMap;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {p1, p3, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->queryInputMethodServicesInternal(Landroid/content/Context;ILcom/android/server/inputmethod/AdditionalSubtypeMap;I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-static {p3, p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->put(ILcom/android/server/inputmethod/InputMethodSettings;)V

    .line 146
    .line 147
    .line 148
    if-eqz v2, :cond_6

    .line 149
    .line 150
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->postInputMethodSettingUpdatedLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :catchall_1
    move-exception p0

    .line 155
    goto :goto_4

    .line 156
    :cond_6
    :goto_3
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 157
    .line 158
    .line 159
    goto :goto_5

    .line 160
    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 161
    .line 162
    .line 163
    throw p0

    .line 164
    :cond_7
    :goto_5
    monitor-exit p2

    .line 165
    return-void

    .line 166
    :goto_6
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    throw p0

    .line 168
    :cond_8
    :goto_7
    return-void
.end method

.method public setAttachedClientForTesting(Lcom/android/server/inputmethod/ClientState;)V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 3

    .line 1
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledFromValidUserLocked()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 23
    .line 24
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-static {v2, p1}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/4 v2, -0x1

    .line 43
    if-eq p1, v2, :cond_1

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :cond_1
    monitor-exit v0

    .line 52
    return-void

    .line 53
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final setDisplayImePolicyDexDeskTopMode(I)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isDeskTopMode()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeKeyboardDefaultDisplayOnly()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v2, "setDisplayImePolicyDexDeskTopMode: setDisplayImePolicy displayId="

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " imePolicy="

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "InputMethodManagerService"

    .line 39
    .line 40
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWMS:Lcom/android/server/wm/WindowManagerService;

    .line 44
    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowManagerService;->setDisplayImePolicy(II)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final setExplicitlyEnabledInputMethodSubtypes(Ljava/lang/String;[II)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eq v0, p3, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_1
    if-eqz v1, :cond_6

    .line 26
    .line 27
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    const-wide/16 v6, 0x0

    .line 34
    .line 35
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    move v4, v0

    .line 40
    invoke-virtual/range {v3 .. v8}, Landroid/content/pm/PackageManagerInternal;->isSameApp(IIJLjava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_6

    .line 45
    .line 46
    const-string/jumbo v0, "subtypeHashCodes must not be null"

    .line 47
    .line 48
    .line 49
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    :try_start_0
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    .line 57
    .line 58
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    :try_start_1
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    if-ne v3, p3, :cond_2

    .line 63
    .line 64
    const/4 v3, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    move v3, v4

    .line 67
    :goto_0
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-virtual {p3, p1, p2}, Lcom/android/server/inputmethod/InputMethodSettings;->setEnabledInputMethodSubtypes(Ljava/lang/String;[I)Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_3

    .line 76
    .line 77
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    if-eqz v3, :cond_5

    .line 85
    .line 86
    :try_start_2
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettingsObserver:Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;

    .line 87
    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    invoke-virtual {p3}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    iput-object p2, p1, Lcom/android/server/inputmethod/InputMethodManagerService$SettingsObserver;->mLastEnabled:Ljava/lang/String;

    .line 95
    .line 96
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 97
    .line 98
    .line 99
    :cond_5
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 106
    :catchall_1
    move-exception p0

    .line 107
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 108
    .line 109
    .line 110
    throw p0

    .line 111
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    .line 112
    .line 113
    const-string p2, "Calling UID="

    .line 114
    .line 115
    const-string p3, " does not belong to imeId="

    .line 116
    .line 117
    invoke-static {v0, p2, p3, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0
.end method

.method public final setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    .line 10
    .line 11
    monitor-enter v2

    .line 12
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->calledWithValidTokenLocked(Landroid/os/IBinder;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    monitor-exit v2

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 23
    .line 24
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    iget-object v4, v3, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 29
    .line 30
    invoke-virtual {v4, p2}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {p0, v4, v0, v1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->canCallerAccessInputMethod(Ljava/lang/String;IILcom/android/server/inputmethod/InputMethodSettings;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    const/4 v0, -0x1

    .line 47
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodWithSubtypeIdLocked(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    monitor-exit v2

    .line 51
    return-void

    .line 52
    :cond_1
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getExceptionForUnknownImeId(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    throw p0

    .line 57
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p0
.end method

.method public final setInputMethodEnabledLocked(Ljava/lang/String;Z)Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz p2, :cond_1

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsStr()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    filled-new-array {p1}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->concatEnabledImeIds(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    return v3

    .line 30
    :cond_0
    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->putEnabledInputMethodsStr(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return v2

    .line 34
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodsAndSubtypeList()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v4, p2, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->buildAndPutEnabledInputMethodsStrRemovingId(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_5

    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    iget p2, p2, Lcom/android/server/inputmethod/InputMethodBindingController;->mDeviceIdToShowIme:I

    .line 54
    .line 55
    if-nez p2, :cond_2

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_4

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_4

    .line 72
    .line 73
    const-string p1, "InputMethodManagerService"

    .line 74
    .line 75
    const-string p2, "Can\'t find new IME, unsetting the current input method."

    .line 76
    .line 77
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    const-string p1, ""

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    iget p0, v1, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 87
    .line 88
    const-string/jumbo p2, "default_device_input_method"

    .line 89
    .line 90
    .line 91
    const/4 v0, 0x0

    .line 92
    invoke-static {p2, v0, p0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_4

    .line 101
    .line 102
    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    if-nez p0, :cond_3

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_4
    :goto_1
    return v3

    .line 121
    :cond_5
    return v2
.end method

.method public final setInputMethodLocked(IILjava/lang/String;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 8
    .line 9
    invoke-virtual {v2, p3}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_c

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v4, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const/4 v5, 0x0

    .line 26
    iget v6, v1, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 27
    .line 28
    if-eqz v4, :cond_8

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-gtz p2, :cond_0

    .line 35
    .line 36
    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, v0, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyInputMethodSubtypeChangedLocked(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object p3, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 42
    .line 43
    if-ltz p1, :cond_1

    .line 44
    .line 45
    if-ge p1, p2, :cond_1

    .line 46
    .line 47
    invoke-virtual {v2, p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    move v0, v5

    .line 59
    :goto_0
    if-ge v0, p2, :cond_3

    .line 60
    .line 61
    invoke-virtual {v2, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    move-object p2, p1

    .line 72
    move p1, v0

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const/4 p2, -0x1

    .line 78
    move v7, p2

    .line 79
    move-object p2, p1

    .line 80
    move p1, v7

    .line 81
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string/jumbo v1, "subtype state: oldSubtype = "

    .line 84
    .line 85
    .line 86
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, " newSubtype = "

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, " force = "

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsNeedUpdateSubtypeForLocaleChanged:Z

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, ", intent received : "

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSubTypeIntentReceived:Z

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const-string v1, "InputMethodManagerService"

    .line 125
    .line 126
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    invoke-static {p2, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsNeedUpdateSubtypeForLocaleChanged:Z

    .line 136
    .line 137
    if-nez v0, :cond_4

    .line 138
    .line 139
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSubTypeIntentReceived:Z

    .line 140
    .line 141
    if-eqz v0, :cond_7

    .line 142
    .line 143
    :cond_4
    const/4 v0, 0x1

    .line 144
    invoke-virtual {p0, v2, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    if-eqz p1, :cond_5

    .line 152
    .line 153
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 154
    .line 155
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 156
    .line 157
    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 158
    .line 159
    .line 160
    :try_start_0
    iget-object p1, p1, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 161
    .line 162
    invoke-interface {p1, p2}, Lcom/android/internal/inputmethod/IInputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :catch_0
    move-exception p1

    .line 167
    invoke-static {p1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 168
    .line 169
    .line 170
    :cond_5
    :goto_2
    invoke-virtual {p0, v6, v2, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 171
    .line 172
    .line 173
    iget-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsNeedUpdateSubtypeForLocaleChanged:Z

    .line 174
    .line 175
    if-eqz p1, :cond_6

    .line 176
    .line 177
    if-ne p2, p3, :cond_6

    .line 178
    .line 179
    iput-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsNeedUpdateSubtypeForLocaleChanged:Z

    .line 180
    .line 181
    :cond_6
    iput-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSubTypeIntentReceived:Z

    .line 182
    .line 183
    :cond_7
    return-void

    .line 184
    :cond_8
    iget v0, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mDeviceIdToShowIme:I

    .line 185
    .line 186
    if-eqz v0, :cond_9

    .line 187
    .line 188
    if-nez p2, :cond_9

    .line 189
    .line 190
    invoke-virtual {v1, p3}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    return-void

    .line 194
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    if-eqz p2, :cond_a

    .line 199
    .line 200
    :try_start_1
    iget-object p2, p2, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 201
    .line 202
    invoke-interface {p2}, Lcom/android/internal/inputmethod/IInputMethod;->removeStylusHandwritingWindow()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :catch_1
    move-exception p2

    .line 207
    invoke-static {p2}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 208
    .line 209
    .line 210
    :cond_a
    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 211
    .line 212
    .line 213
    move-result-wide v0

    .line 214
    :try_start_2
    invoke-virtual {p0, v2, p1, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 215
    .line 216
    .line 217
    iput-object p3, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    .line 218
    .line 219
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 220
    .line 221
    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    .line 222
    .line 223
    .line 224
    move-result p1

    .line 225
    if-eqz p1, :cond_b

    .line 226
    .line 227
    new-instance p1, Landroid/content/Intent;

    .line 228
    .line 229
    const-string p2, "android.intent.action.INPUT_METHOD_CHANGED"

    .line 230
    .line 231
    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    const/high16 p2, 0x20000000

    .line 235
    .line 236
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 237
    .line 238
    .line 239
    const-string/jumbo p2, "input_method_id"

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    .line 244
    .line 245
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 246
    .line 247
    sget-object p3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 248
    .line 249
    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 250
    .line 251
    .line 252
    goto :goto_4

    .line 253
    :catchall_0
    move-exception p0

    .line 254
    goto :goto_5

    .line 255
    :cond_b
    :goto_4
    const/4 p1, 0x2

    .line 256
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    .line 258
    .line 259
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-virtual {p0, v6, v2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyInputMethodSubtypeChanged(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 267
    .line 268
    .line 269
    return-void

    .line 270
    :goto_5
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 271
    .line 272
    .line 273
    throw p0

    .line 274
    :cond_c
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getExceptionForUnknownImeId(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    throw p0
.end method

.method public final setInputMethodSwitchDisable(Lcom/android/internal/inputmethod/IInputMethodClient;Z)V
    .locals 7

    .line 1
    const-string v0, "InputMethodManagerService"

    .line 2
    .line 3
    const-string/jumbo v1, "setInputMethodSwitchDisable : Ignoring, uid "

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "unknown client "

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    :try_start_0
    sget-boolean v4, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodSwitchDisable:Z

    .line 14
    .line 15
    if-eq v4, p2, :cond_2

    .line 16
    .line 17
    const-string/jumbo v4, "setInputMethodSwitchDisable change"

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    .line 24
    .line 25
    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-virtual {v4, v5}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 36
    .line 37
    iget-object v2, v2, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 40
    .line 41
    iget v5, v4, Lcom/android/server/inputmethod/ClientState;->mPid:I

    .line 42
    .line 43
    iget v6, v4, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    .line 44
    .line 45
    iget v4, v4, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 46
    .line 47
    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/android/server/wm/WindowManagerInternal;->hasInputMethodClientFocus(Landroid/os/IBinder;III)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-nez p0, :cond_0

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, ": "

    .line 63
    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    sput-boolean p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodSwitchDisable:Z

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception p0

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-interface {p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    const-string/jumbo p1, "setInputMethodSwitchDisable : exception "

    .line 105
    .line 106
    .line 107
    invoke-static {p0, p1, v0}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    :goto_1
    return-void
.end method

.method public final setInputMethodWithSubtypeIdLocked(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-string v0, "android.permission.WRITE_SECURE_SETTINGS"

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 15
    .line 16
    const-string p1, "Using null token requires permission android.permission.WRITE_SECURE_SETTINGS"

    .line 17
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0

    .line 22
    :cond_1
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    .line 29
    .line 30
    if-eq v0, p2, :cond_2

    .line 31
    .line 32
    new-instance p0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string p1, "Ignoring setInputMethod of uid "

    .line 35
    .line 36
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, " token: "

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string p1, "InputMethodManagerService"

    .line 59
    .line 60
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    iget p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 65
    .line 66
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    iget-object v0, p2, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 71
    .line 72
    invoke-virtual {v0, p3}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda22;

    .line 79
    .line 80
    invoke-direct {v0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda22;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-nez p2, :cond_3

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    const-string p1, "Requested IME is not enabled: "

    .line 97
    .line 98
    invoke-static {p1, p3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw p0

    .line 106
    :cond_4
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    const/4 p2, 0x0

    .line 111
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    .line 121
    .line 122
    throw p0
.end method

.method public final setSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 8
    .line 9
    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    invoke-virtual {v0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    iget-object v6, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 22
    .line 23
    const-string/jumbo v7, "com.samsung.android.honeyboard/com.samsung.android.writingtoolkit.service.FakeHoneyBoardService"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    const/4 v8, 0x0

    .line 31
    if-eqz v7, :cond_0

    .line 32
    .line 33
    goto/16 :goto_6

    .line 34
    .line 35
    :cond_0
    sget-object v7, Lcom/android/server/inputmethod/InputMethodSettings;->INVALID_SUBTYPE_HASHCODE_STR:Ljava/lang/String;

    .line 36
    .line 37
    if-eqz v6, :cond_1

    .line 38
    .line 39
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move-object v9, v7

    .line 49
    :goto_0
    const/4 v10, 0x1

    .line 50
    if-nez v6, :cond_2

    .line 51
    .line 52
    move v6, v10

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    xor-int/2addr v6, v10

    .line 59
    :goto_1
    if-eqz v6, :cond_a

    .line 60
    .line 61
    invoke-virtual {v4}, Lcom/android/server/inputmethod/InputMethodSettings;->loadInputMethodAndSubtypeHistory()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    const/4 v11, 0x0

    .line 66
    move v12, v11

    .line 67
    :goto_2
    move-object v13, v6

    .line 68
    check-cast v13, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 71
    .line 72
    .line 73
    move-result v14

    .line 74
    if-ge v12, v14, :cond_4

    .line 75
    .line 76
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v14

    .line 80
    check-cast v14, Landroid/util/Pair;

    .line 81
    .line 82
    iget-object v15, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v15, Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v15

    .line 90
    if-eqz v15, :cond_3

    .line 91
    .line 92
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_3
    add-int/lit8 v12, v12, 0x1

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v12

    .line 108
    const/16 v14, 0x3b

    .line 109
    .line 110
    if-nez v12, :cond_5

    .line 111
    .line 112
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v12

    .line 116
    if-nez v12, :cond_5

    .line 117
    .line 118
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    move v5, v10

    .line 128
    goto :goto_4

    .line 129
    :cond_5
    move v5, v11

    .line 130
    :goto_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    .line 131
    .line 132
    .line 133
    move-result v9

    .line 134
    if-ge v11, v9, :cond_8

    .line 135
    .line 136
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v9

    .line 140
    check-cast v9, Landroid/util/Pair;

    .line 141
    .line 142
    iget-object v12, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast v12, Ljava/lang/String;

    .line 145
    .line 146
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v9, Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v15

    .line 154
    if-eqz v15, :cond_6

    .line 155
    .line 156
    move-object v9, v7

    .line 157
    :cond_6
    if-eqz v5, :cond_7

    .line 158
    .line 159
    const/16 v15, 0x3a

    .line 160
    .line 161
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_7
    move v5, v10

    .line 166
    :goto_5
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    add-int/lit8 v11, v11, 0x1

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v5

    .line 182
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 183
    .line 184
    .line 185
    move-result v6

    .line 186
    const-string/jumbo v7, "input_methods_subtype_history"

    .line 187
    .line 188
    .line 189
    if-eqz v6, :cond_9

    .line 190
    .line 191
    invoke-virtual {v4, v7, v8}, Lcom/android/server/inputmethod/InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_9
    invoke-virtual {v4, v7, v5}, Lcom/android/server/inputmethod/InputMethodSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :cond_a
    :goto_6
    const/4 v5, -0x1

    .line 199
    if-eqz v1, :cond_d

    .line 200
    .line 201
    if-gez v2, :cond_b

    .line 202
    .line 203
    goto :goto_7

    .line 204
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    .line 205
    .line 206
    .line 207
    move-result v6

    .line 208
    if-ge v2, v6, :cond_c

    .line 209
    .line 210
    invoke-virtual/range {p1 .. p2}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    .line 211
    .line 212
    .line 213
    move-result-object v8

    .line 214
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    goto :goto_7

    .line 219
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurrentInputMethodSubtypeLocked()Landroid/view/inputmethod/InputMethodSubtype;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    :cond_d
    :goto_7
    iget v2, v4, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 224
    .line 225
    invoke-static {v2}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    const-string/jumbo v7, "selected_input_method_subtype"

    .line 230
    .line 231
    .line 232
    invoke-interface {v6, v5, v7}, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;->putInt(ILjava/lang/String;)V

    .line 233
    .line 234
    .line 235
    iput-object v8, v3, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 236
    .line 237
    invoke-virtual {v0, v2, v1, v8}, Lcom/android/server/inputmethod/InputMethodManagerService;->notifyInputMethodSubtypeChangedLocked(ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 238
    .line 239
    .line 240
    if-nez p3, :cond_f

    .line 241
    .line 242
    if-eqz v1, :cond_e

    .line 243
    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    goto :goto_8

    .line 249
    :cond_e
    const-string v0, ""

    .line 250
    .line 251
    :goto_8
    invoke-virtual {v4, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    :cond_f
    return-void
.end method

.method public final setStylusWindowIdleTimeoutForTest(Lcom/android/internal/inputmethod/IInputMethodClient;J)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    const-string/jumbo v2, "setStylusWindowIdleTimeoutForTest"

    .line 9
    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    monitor-exit v1

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    .line 32
    .line 33
    :try_start_2
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 34
    .line 35
    invoke-interface {p0, p2, p3}, Lcom/android/internal/inputmethod/IInputMethod;->setStylusWindowIdleTimeoutForTest(J)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    :try_start_3
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 41
    .line 42
    .line 43
    :goto_0
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    .line 45
    .line 46
    monitor-exit v1

    .line 47
    return-void

    .line 48
    :catchall_1
    move-exception p0

    .line 49
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :goto_1
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 54
    throw p0
.end method

.method public final shouldShowImeKeyboardDefaultDisplayOnly()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string/jumbo v0, "touch_keyboard"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "false"

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getDexSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    const-string/jumbo v0, "shouldShowImeKeyboardDefaultDisplayOnly(): "

    .line 26
    .line 27
    .line 28
    const-string v1, "InputMethodManagerService"

    .line 29
    .line 30
    invoke-static {v0, v1, p0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 31
    .line 32
    .line 33
    return p0
.end method

.method public final shouldShowImeSwitcherLocked(II)Z
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mShowOngoingImeSwitcherForPhones:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    return v1

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 38
    .line 39
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardSecure(I)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    return v1

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 47
    .line 48
    const-string v2, "InputMethodManagerService"

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 53
    .line 54
    const-string/jumbo v3, "com.samsung.android.honeyboard"

    .line 55
    .line 56
    .line 57
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_5

    .line 62
    .line 63
    const-string/jumbo p0, "isImeSwitcherDisabledPackage : true"

    .line 64
    .line 65
    .line 66
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    return v1

    .line 70
    :cond_4
    const-string/jumbo v0, "mCurEditorInfo is null"

    .line 71
    .line 72
    .line 73
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :cond_5
    const-string/jumbo v0, "isImeSwitcherDisabledPackage : false"

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    sget-boolean v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodSwitchDisable:Z

    .line 83
    .line 84
    if-eqz v0, :cond_6

    .line 85
    .line 86
    return v1

    .line 87
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    .line 88
    .line 89
    if-nez v0, :cond_7

    .line 90
    .line 91
    return v1

    .line 92
    :cond_7
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSemImmsUtil:Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->isKeyguardLocked()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_8

    .line 99
    .line 100
    return v1

    .line 101
    :cond_8
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSemImmsUtil:Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;

    .line 102
    .line 103
    iget-object v3, v0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 104
    .line 105
    if-nez v3, :cond_9

    .line 106
    .line 107
    iget-object v3, v0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mContext:Landroid/content/Context;

    .line 108
    .line 109
    const-class v4, Landroid/app/KeyguardManager;

    .line 110
    .line 111
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Landroid/app/KeyguardManager;

    .line 116
    .line 117
    iput-object v3, v0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 118
    .line 119
    :cond_9
    iget-object v3, v0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 120
    .line 121
    if-eqz v3, :cond_a

    .line 122
    .line 123
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_a

    .line 128
    .line 129
    iget-object v0, v0, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 130
    .line 131
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_a

    .line 136
    .line 137
    return v1

    .line 138
    :cond_a
    and-int/lit8 v0, p1, 0x1

    .line 139
    .line 140
    if-nez v0, :cond_b

    .line 141
    .line 142
    return v1

    .line 143
    :cond_b
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 144
    .line 145
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    and-int/lit8 v3, p1, 0x3

    .line 150
    .line 151
    const/4 v4, 0x3

    .line 152
    if-eq v3, v4, :cond_c

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-eqz v3, :cond_c

    .line 159
    .line 160
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 161
    .line 162
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-eqz v3, :cond_c

    .line 167
    .line 168
    return v1

    .line 169
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->isShowKeyboardButton()Z

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    if-nez v3, :cond_d

    .line 174
    .line 175
    return v1

    .line 176
    :cond_d
    sget-boolean v3, Lcom/android/server/inputmethod/InputMethodManagerService$ImmsRune;->SUPPORT_SKBD_MULTI_MODAL_CONCEPT:Z

    .line 177
    .line 178
    const-string/jumbo v4, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    .line 179
    .line 180
    .line 181
    if-eqz v3, :cond_e

    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    if-eqz v3, :cond_e

    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodSettings;->isShowKeyboardButton()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_e

    .line 198
    .line 199
    return v1

    .line 200
    :cond_e
    const-string/jumbo v0, "com.samsung.android.honeyboard/com.samsung.android.writingtoolkit.service.FakeHoneyBoardService"

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_f

    .line 212
    .line 213
    return v1

    .line 214
    :cond_f
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 215
    .line 216
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerInternal;->isHardKeyboardAvailable()Z

    .line 217
    .line 218
    .line 219
    move-result p0

    .line 220
    const/4 v0, 0x1

    .line 221
    if-eqz p0, :cond_10

    .line 222
    .line 223
    const-string/jumbo p0, "shouldShowImeSwitcherLocked isHardKeyboardAvailable return true"

    .line 224
    .line 225
    .line 226
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    return v0

    .line 230
    :cond_10
    and-int/lit8 p0, p1, 0x2

    .line 231
    .line 232
    if-nez p0, :cond_11

    .line 233
    .line 234
    return v1

    .line 235
    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    const-string/jumbo v3, "shouldShowImeSwitcherLocked : checking vis : "

    .line 238
    .line 239
    .line 240
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 254
    .line 255
    .line 256
    move-result-object p0

    .line 257
    new-instance p1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda11;

    .line 258
    .line 259
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 267
    .line 268
    .line 269
    move-result p2

    .line 270
    const/4 v2, 0x2

    .line 271
    if-le p2, v2, :cond_12

    .line 272
    .line 273
    return v0

    .line 274
    :cond_12
    if-ge p2, v0, :cond_13

    .line 275
    .line 276
    return v1

    .line 277
    :cond_13
    const/4 v2, 0x0

    .line 278
    move v5, v1

    .line 279
    move v6, v5

    .line 280
    move v7, v6

    .line 281
    move-object v3, v2

    .line 282
    :goto_0
    if-ge v5, p2, :cond_19

    .line 283
    .line 284
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 289
    .line 290
    invoke-virtual {p0, v8, v0}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    .line 291
    .line 292
    .line 293
    move-result-object v9

    .line 294
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 295
    .line 296
    .line 297
    move-result v10

    .line 298
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v11

    .line 302
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v11

    .line 306
    if-eqz v11, :cond_14

    .line 307
    .line 308
    if-le v10, v0, :cond_14

    .line 309
    .line 310
    move v10, v0

    .line 311
    goto :goto_1

    .line 312
    :cond_14
    const-string/jumbo v11, "com.samsung.android.bixby.voiceinput/com.samsung.android.svoiceime.BixbyDictVoiceReco"

    .line 313
    .line 314
    .line 315
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v12

    .line 319
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v11

    .line 323
    if-nez v11, :cond_18

    .line 324
    .line 325
    const-string/jumbo v11, "com.samsung.android.bixby.service/.dictation.DictationInputMethodService"

    .line 326
    .line 327
    .line 328
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v8

    .line 332
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v8

    .line 336
    if-eqz v8, :cond_15

    .line 337
    .line 338
    goto :goto_4

    .line 339
    :cond_15
    :goto_1
    if-nez v10, :cond_16

    .line 340
    .line 341
    add-int/lit8 v6, v6, 0x1

    .line 342
    .line 343
    goto :goto_4

    .line 344
    :cond_16
    move v8, v1

    .line 345
    :goto_2
    if-ge v8, v10, :cond_18

    .line 346
    .line 347
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v11

    .line 351
    check-cast v11, Landroid/view/inputmethod/InputMethodSubtype;

    .line 352
    .line 353
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    .line 354
    .line 355
    .line 356
    move-result v12

    .line 357
    if-nez v12, :cond_17

    .line 358
    .line 359
    add-int/lit8 v6, v6, 0x1

    .line 360
    .line 361
    move-object v2, v11

    .line 362
    goto :goto_3

    .line 363
    :cond_17
    add-int/lit8 v7, v7, 0x1

    .line 364
    .line 365
    move-object v3, v11

    .line 366
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 367
    .line 368
    goto :goto_2

    .line 369
    :cond_18
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 370
    .line 371
    goto :goto_0

    .line 372
    :cond_19
    if-gt v6, v0, :cond_1f

    .line 373
    .line 374
    if-le v7, v0, :cond_1a

    .line 375
    .line 376
    goto :goto_5

    .line 377
    :cond_1a
    if-ne v6, v0, :cond_1d

    .line 378
    .line 379
    if-ne v7, v0, :cond_1d

    .line 380
    .line 381
    if-eqz v2, :cond_1c

    .line 382
    .line 383
    if-eqz v3, :cond_1c

    .line 384
    .line 385
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p0

    .line 389
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    move-result p0

    .line 397
    if-nez p0, :cond_1b

    .line 398
    .line 399
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    .line 400
    .line 401
    .line 402
    move-result p0

    .line 403
    if-nez p0, :cond_1b

    .line 404
    .line 405
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    .line 406
    .line 407
    .line 408
    move-result p0

    .line 409
    if-eqz p0, :cond_1c

    .line 410
    .line 411
    :cond_1b
    const-string p0, "TrySuppressingImeSwitcher"

    .line 412
    .line 413
    invoke-virtual {v2, p0}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    .line 414
    .line 415
    .line 416
    move-result p0

    .line 417
    if-eqz p0, :cond_1c

    .line 418
    .line 419
    return v1

    .line 420
    :cond_1c
    return v0

    .line 421
    :cond_1d
    if-ne p2, v0, :cond_1e

    .line 422
    .line 423
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object p0

    .line 427
    check-cast p0, Landroid/view/inputmethod/InputMethodInfo;

    .line 428
    .line 429
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object p0

    .line 433
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result p0

    .line 437
    if-eqz p0, :cond_1e

    .line 438
    .line 439
    move v1, v0

    .line 440
    :cond_1e
    return v1

    .line 441
    :cond_1f
    :goto_5
    return v0
.end method

.method public final showCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;I)Z
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ACCESS_CONTROL_ENABLED = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlEnable:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", ACCESS_CONTROL_KEYBOARD_BLOCK = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    .line 19
    .line 20
    const-string v2, "InputMethodManagerService"

    .line 21
    .line 22
    invoke-static {v2, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 23
    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlEnable:Z

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mAccessControlKeyboardBlockEnable:Z

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    const-string p0, "Interaction Control Keyboard block is enabled, so not show keyboard"

    .line 35
    .line 36
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return v1

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 41
    .line 42
    iget-object v3, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    .line 43
    .line 44
    iget-boolean v4, v3, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mA11yRequestingNoSoftKeyboard:Z

    .line 45
    .line 46
    const/4 v5, 0x4

    .line 47
    if-nez v4, :cond_14

    .line 48
    .line 49
    iget-boolean v4, v3, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mImeHiddenByDisplayPolicy:Z

    .line 50
    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    goto/16 :goto_8

    .line 54
    .line 55
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-interface {v3, p2, v5}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 60
    .line 61
    .line 62
    and-int/lit8 v3, p3, 0x2

    .line 63
    .line 64
    const/4 v4, 0x1

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    iput-boolean v4, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedShowExplicitly:Z

    .line 68
    .line 69
    iput-boolean v4, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    and-int/2addr p3, v4

    .line 73
    if-nez p3, :cond_3

    .line 74
    .line 75
    iput-boolean v4, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestedShowExplicitly:Z

    .line 76
    .line 77
    :cond_3
    :goto_0
    iget-boolean p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    .line 78
    .line 79
    const/4 v0, 0x5

    .line 80
    if-nez p3, :cond_4

    .line 81
    .line 82
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-interface {p0, p2, v0}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 87
    .line 88
    .line 89
    const-string p0, "System is not Ready, so not show keyboard"

    .line 90
    .line 91
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    return v1

    .line 95
    :cond_4
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-interface {p3, p2, v0}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 100
    .line 101
    .line 102
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 103
    .line 104
    invoke-virtual {p3, p1, v4}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->requestImeVisibility(Landroid/os/IBinder;Z)V

    .line 105
    .line 106
    .line 107
    iget p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 108
    .line 109
    invoke-virtual {p0, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    iget-object v0, p3, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 114
    .line 115
    if-eqz v0, :cond_5

    .line 116
    .line 117
    iget-boolean v0, p3, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasMainConnection:Z

    .line 118
    .line 119
    if-eqz v0, :cond_7

    .line 120
    .line 121
    iget-boolean v0, p3, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    .line 122
    .line 123
    if-nez v0, :cond_7

    .line 124
    .line 125
    iget-object v0, p3, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleConnection:Lcom/android/server/inputmethod/InputMethodBindingController$1;

    .line 126
    .line 127
    const v3, 0x2c001001

    .line 128
    .line 129
    .line 130
    invoke-virtual {p3, v0, v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentInputMethodService(Landroid/content/ServiceConnection;I)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    iput-boolean v0, p3, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_5
    iget-boolean v0, p3, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasMainConnection:Z

    .line 138
    .line 139
    if-nez v0, :cond_6

    .line 140
    .line 141
    invoke-virtual {p3}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentMethod()Lcom/android/internal/inputmethod/InputBindResult;

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 146
    .line 147
    .line 148
    move-result-wide v5

    .line 149
    iget-wide v7, p3, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    .line 150
    .line 151
    sub-long/2addr v5, v7

    .line 152
    const-string/jumbo v0, "setCurrentMethodVisible: bindingDuration="

    .line 153
    .line 154
    .line 155
    const-string v3, ", mLastBindTime="

    .line 156
    .line 157
    invoke-static {v0, v5, v6, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iget-wide v7, p3, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    .line 162
    .line 163
    const-string v3, "InputMethodBindingController"

    .line 164
    .line 165
    invoke-static {v0, v7, v8, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const-wide/16 v7, 0xbb8

    .line 169
    .line 170
    cmp-long v0, v5, v7

    .line 171
    .line 172
    if-ltz v0, :cond_7

    .line 173
    .line 174
    iget-object v0, p3, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    .line 175
    .line 176
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    filled-new-array {v0, v5, v6}, [Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    const/16 v5, 0x7d00

    .line 189
    .line 190
    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 191
    .line 192
    .line 193
    const-string v0, "Force disconnect/connect to the IME in setCurrentMethodVisible()"

    .line 194
    .line 195
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    iget-object v0, p3, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    .line 199
    .line 200
    iget-object v3, p3, Lcom/android/server/inputmethod/InputMethodBindingController;->mMainConnection:Lcom/android/server/inputmethod/InputMethodBindingController$2;

    .line 201
    .line 202
    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 203
    .line 204
    .line 205
    iput-boolean v1, p3, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasMainConnection:Z

    .line 206
    .line 207
    const v0, 0x40880005    # 4.2500024f

    .line 208
    .line 209
    .line 210
    invoke-virtual {p3, v3, v0}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentInputMethodService(Landroid/content/ServiceConnection;I)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    iput-boolean v0, p3, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasMainConnection:Z

    .line 215
    .line 216
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 217
    .line 218
    .line 219
    move-result-object p3

    .line 220
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 225
    .line 226
    const/16 v5, 0x8

    .line 227
    .line 228
    invoke-interface {v0, v3, v5}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 229
    .line 230
    .line 231
    invoke-static {}, Landroid/view/inputmethod/Flags;->deferShowSoftInputUntilSessionCreation()Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_8

    .line 236
    .line 237
    if-eqz p3, :cond_13

    .line 238
    .line 239
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 240
    .line 241
    if-eqz p3, :cond_13

    .line 242
    .line 243
    iget-object p3, p3, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 244
    .line 245
    if-eqz p3, :cond_13

    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_8
    if-eqz p3, :cond_13

    .line 249
    .line 250
    :goto_2
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 251
    .line 252
    .line 253
    move-result-object p3

    .line 254
    const/16 v0, 0x9

    .line 255
    .line 256
    invoke-interface {p3, p2, v0}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 257
    .line 258
    .line 259
    const/4 p3, 0x0

    .line 260
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 261
    .line 262
    invoke-static {}, Landroid/view/inputmethod/Flags;->useHandwritingListenerForTooltype()Z

    .line 263
    .line 264
    .line 265
    move-result p3

    .line 266
    if-eqz p3, :cond_d

    .line 267
    .line 268
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 269
    .line 270
    iget-object p3, p3, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 271
    .line 272
    iget-object p3, p3, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 273
    .line 274
    invoke-interface {p3}, Lcom/android/server/input/NativeInputManagerService;->getLastUsedInputDeviceId()I

    .line 275
    .line 276
    .line 277
    move-result p3

    .line 278
    iget-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 279
    .line 280
    const-class v0, Landroid/hardware/input/InputManager;

    .line 281
    .line 282
    invoke-virtual {p4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object p4

    .line 286
    check-cast p4, Landroid/hardware/input/InputManager;

    .line 287
    .line 288
    if-nez p4, :cond_9

    .line 289
    .line 290
    goto :goto_4

    .line 291
    :cond_9
    invoke-virtual {p4, p3}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    .line 292
    .line 293
    .line 294
    move-result-object p3

    .line 295
    if-nez p3, :cond_a

    .line 296
    .line 297
    goto :goto_4

    .line 298
    :cond_a
    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->isStylusDevice(Landroid/view/InputDevice;)Z

    .line 299
    .line 300
    .line 301
    move-result p4

    .line 302
    if-eqz p4, :cond_b

    .line 303
    .line 304
    const/4 v1, 0x2

    .line 305
    goto :goto_3

    .line 306
    :cond_b
    const/16 p4, 0x1002

    .line 307
    .line 308
    invoke-virtual {p3, p4}, Landroid/view/InputDevice;->supportsSource(I)Z

    .line 309
    .line 310
    .line 311
    move-result p3

    .line 312
    if-eqz p3, :cond_c

    .line 313
    .line 314
    move v1, v4

    .line 315
    :cond_c
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUpdateEditorToolType(I)V

    .line 316
    .line 317
    .line 318
    goto :goto_4

    .line 319
    :cond_d
    if-eqz p4, :cond_e

    .line 320
    .line 321
    invoke-virtual {p0, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->onUpdateEditorToolType(I)V

    .line 322
    .line 323
    .line 324
    :cond_e
    :goto_4
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    .line 325
    .line 326
    iget-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 327
    .line 328
    iget-boolean p4, p4, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    .line 329
    .line 330
    if-eqz p4, :cond_f

    .line 331
    .line 332
    const/4 p4, 0x3

    .line 333
    goto :goto_5

    .line 334
    :cond_f
    move p4, v4

    .line 335
    :goto_5
    iget-object p3, p3, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 336
    .line 337
    invoke-virtual {p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    if-eqz v0, :cond_12

    .line 342
    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    .line 344
    .line 345
    const-string v3, "Calling "

    .line 346
    .line 347
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v3, ".showSoftInput("

    .line 354
    .line 355
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    const-string v3, ", "

    .line 362
    .line 363
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    const-string v3, ") for reason: "

    .line 376
    .line 377
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-static {p6}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v3

    .line 384
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    :try_start_0
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 395
    .line 396
    invoke-interface {v0, p1, p2, p4, p5}, Lcom/android/internal/inputmethod/IInputMethod;->showSoftInput(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .line 398
    .line 399
    sget-boolean p4, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    .line 400
    .line 401
    if-eqz p4, :cond_11

    .line 402
    .line 403
    if-eqz p2, :cond_10

    .line 404
    .line 405
    invoke-virtual {p2}, Landroid/view/inputmethod/ImeTracker$Token;->getTag()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object p4

    .line 409
    goto :goto_6

    .line 410
    :cond_10
    const-string p4, "TOKEN_NONE"

    .line 411
    .line 412
    :goto_6
    iget-object p5, p3, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 413
    .line 414
    iget-object p5, p5, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 415
    .line 416
    invoke-static {p5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object p5

    .line 420
    invoke-static {p6}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputDisplayReasonToString(I)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    iget-object v1, p3, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 425
    .line 426
    iget v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowSoftInputMode:I

    .line 427
    .line 428
    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    filled-new-array {p4, p5, v0, v1}, [Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object p4

    .line 436
    const/16 p5, 0x7d01

    .line 437
    .line 438
    invoke-static {p5, p4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 439
    .line 440
    .line 441
    :cond_11
    invoke-virtual {p3, v4, p1, p6, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->onShowHideSoftInputRequested(ZLandroid/os/IBinder;ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 442
    .line 443
    .line 444
    goto :goto_7

    .line 445
    :catch_0
    move-exception p1

    .line 446
    invoke-static {p1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 447
    .line 448
    .line 449
    :cond_12
    :goto_7
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 450
    .line 451
    iput-boolean v4, p0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    .line 452
    .line 453
    return v4

    .line 454
    :cond_13
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    invoke-interface {p1, p2, v5}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 459
    .line 460
    .line 461
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 462
    .line 463
    return v1

    .line 464
    :cond_14
    :goto_8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 465
    .line 466
    const-string/jumbo p1, "onImeShowFlags: onFailed, A11yRequestingNoSoftKeyboard="

    .line 467
    .line 468
    .line 469
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    iget-boolean p1, v3, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mA11yRequestingNoSoftKeyboard:Z

    .line 473
    .line 474
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    const-string p1, ", mImeHiddenByDisplayPolicy="

    .line 478
    .line 479
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    iget-boolean p1, v3, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mImeHiddenByDisplayPolicy:Z

    .line 483
    .line 484
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object p0

    .line 491
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .line 493
    .line 494
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 495
    .line 496
    .line 497
    move-result-object p0

    .line 498
    invoke-interface {p0, p2, v5}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 499
    .line 500
    .line 501
    return v1
.end method

.method public final showInputMethodPickerFromClient(Lcom/android/internal/inputmethod/IInputMethodClient;I)V
    .locals 3

    .line 1
    const-string v0, "Ignoring showInputMethodPickerFromClient of uid "

    .line 2
    .line 3
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInputMethodRestrictionState()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string p0, "InputMethodManagerService"

    .line 22
    .line 23
    const-string p1, "Input method restricted by Knox Customization"

    .line 24
    .line 25
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    .line 30
    .line 31
    monitor-enter v1

    .line 32
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->canShowInputMethodPickerLocked(Lcom/android/internal/inputmethod/IInputMethodClient;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    const-string p0, "InputMethodManagerService"

    .line 39
    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ": "

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    monitor-exit v1

    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 72
    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    iget p1, p1, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const/4 p1, 0x0

    .line 79
    :goto_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    invoke-virtual {p0, v0, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 87
    .line 88
    .line 89
    monitor-exit v1

    .line 90
    return-void

    .line 91
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    throw p0
.end method

.method public final showInputMethodPickerFromSystem(II)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInputMethodRestrictionState()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string p0, "InputMethodManagerService"

    .line 20
    .line 21
    const-string p1, "Input method restricted by Knox Customization"

    .line 22
    .line 23
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final showSoftInput(Lcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;IZ)Z
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v3, p3

    .line 3
    .line 4
    move-object/from16 v6, p6

    .line 5
    .line 6
    const-string v1, "Client requesting input be shown, flags : "

    .line 7
    .line 8
    const-string v2, "IMMS.showSoftInput"

    .line 9
    .line 10
    const-wide/16 v8, 0x20

    .line 11
    .line 12
    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    const-string v5, "InputMethodManagerService#showSoftInput"

    .line 24
    .line 25
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/server/inputmethod/InputMethodManagerService$1;

    .line 26
    .line 27
    invoke-virtual {v4, v5, v7}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    .line 28
    .line 29
    .line 30
    const-class v10, Lcom/android/server/inputmethod/ImfLock;

    .line 31
    .line 32
    monitor-enter v10

    .line 33
    :try_start_0
    const-string/jumbo v4, "showSoftInput"

    .line 34
    .line 35
    .line 36
    move-object v5, p1

    .line 37
    invoke-virtual {p0, v2, p1, v4, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const/4 v4, 0x0

    .line 42
    if-nez v2, :cond_0

    .line 43
    .line 44
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v1, 0x3

    .line 49
    invoke-interface {v0, v3, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 50
    .line 51
    .line 52
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 53
    .line 54
    .line 55
    monitor-exit v10

    .line 56
    return v4

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 61
    .line 62
    .line 63
    move-result-wide v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :try_start_1
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_4

    .line 69
    .line 70
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 71
    .line 72
    iget-boolean v1, v1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    .line 73
    .line 74
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    iget-object v0, v0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindowClient:Lcom/android/server/inputmethod/ClientState;

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    iget-object v0, v0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    const/4 v2, 0x1

    .line 87
    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setImeVisibility(Z)V

    .line 88
    .line 89
    .line 90
    if-eqz v6, :cond_2

    .line 91
    .line 92
    if-eqz v1, :cond_1

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    const/4 v4, 0x2

    .line 96
    :goto_0
    const/4 v0, 0x0

    .line 97
    invoke-virtual {v6, v4, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catchall_1
    move-exception v0

    .line 102
    goto :goto_2

    .line 103
    :cond_2
    :goto_1
    :try_start_2
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    .line 105
    .line 106
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 107
    .line 108
    .line 109
    monitor-exit v10

    .line 110
    return v2

    .line 111
    :cond_3
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 112
    .line 113
    .line 114
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 115
    .line 116
    .line 117
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    return v4

    .line 119
    :cond_4
    :try_start_3
    const-string v2, "InputMethodManagerService"

    .line 120
    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    move/from16 v5, p4

    .line 127
    .line 128
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-object v1, p0

    .line 139
    move-object v2, p2

    .line 140
    move-object/from16 v3, p3

    .line 141
    .line 142
    move/from16 v4, p4

    .line 143
    .line 144
    move/from16 v5, p5

    .line 145
    .line 146
    move-object/from16 v6, p6

    .line 147
    .line 148
    move/from16 v7, p7

    .line 149
    .line 150
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;I)Z

    .line 151
    .line 152
    .line 153
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 154
    :try_start_4
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 155
    .line 156
    .line 157
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 158
    .line 159
    .line 160
    monitor-exit v10

    .line 161
    return v0

    .line 162
    :goto_2
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 163
    .line 164
    .line 165
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 166
    .line 167
    .line 168
    throw v0

    .line 169
    :goto_3
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 170
    throw v0
.end method

.method public final showSoftInputInternal(Landroid/os/IBinder;)V
    .locals 12

    .line 1
    const-string v0, "IMMS.showSoftInputInternal"

    .line 2
    .line 3
    const-wide/16 v1, 0x20

    .line 4
    .line 5
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v3, "InputMethodManagerService#showSoftInput"

    .line 13
    .line 14
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/server/inputmethod/InputMethodManagerService$1;

    .line 15
    .line 16
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    .line 17
    .line 18
    .line 19
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    const/4 v8, 0x0

    .line 27
    const/4 v9, 0x0

    .line 28
    const/4 v10, 0x0

    .line 29
    const/4 v11, 0x1

    .line 30
    const/4 v7, 0x0

    .line 31
    move-object v5, p0

    .line 32
    move-object v6, p1

    .line 33
    :try_start_1
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->showCurrentInputLocked(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;IILandroid/os/ResultReceiver;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    .line 35
    .line 36
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    .line 38
    .line 39
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 40
    .line 41
    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_0

    .line 46
    :catchall_1
    move-exception p0

    .line 47
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    throw p0
.end method

.method public final startConnectionlessStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ILandroid/view/inputmethod/CursorAnchorInfo;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v5, p5

    .line 3
    .line 4
    move-object/from16 v7, p6

    .line 5
    .line 6
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    move v3, p2

    .line 10
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget-boolean v2, v2, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsConnectionlessStylusHw:Z

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    const-string v0, "InputMethodManagerService"

    .line 20
    .line 21
    const-string v2, "Connectionless stylus handwriting mode unsupported by IME."

    .line 22
    .line 23
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    :try_start_1
    invoke-interface {v7, v4}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onError(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :catch_0
    move-exception v0

    .line 34
    move-object v2, v0

    .line 35
    :try_start_2
    const-string v0, "InputMethodManagerService"

    .line 36
    .line 37
    const-string v3, "Failed to report CONNECTIONLESS_HANDWRITING_ERROR_UNSUPPORTED"

    .line 38
    .line 39
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 43
    .line 44
    .line 45
    :goto_0
    monitor-exit v1

    .line 46
    return-void

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    if-eqz p4, :cond_1

    .line 49
    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    move v8, v4

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    const/4 v1, 0x0

    .line 55
    move v8, v1

    .line 56
    :goto_1
    const/4 v9, 0x2

    .line 57
    if-eqz v8, :cond_3

    .line 58
    .line 59
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    .line 60
    .line 61
    monitor-enter v1

    .line 62
    :try_start_3
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    .line 63
    .line 64
    move-object v10, p1

    .line 65
    invoke-virtual {v2, p1, v5}, Lcom/android/server/inputmethod/ClientController;->verifyClientAndPackageMatch(Lcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_2

    .line 70
    .line 71
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    new-instance v11, Lcom/android/server/inputmethod/InputMethodManagerService$3;

    .line 73
    .line 74
    move-object v1, v11

    .line 75
    move-object v2, p0

    .line 76
    move v3, p2

    .line 77
    move-object/from16 v4, p4

    .line 78
    .line 79
    move-object/from16 v5, p5

    .line 80
    .line 81
    move-object/from16 v6, p6

    .line 82
    .line 83
    invoke-direct/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService$3;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;)V

    .line 84
    .line 85
    .line 86
    move-object v4, v11

    .line 87
    goto :goto_4

    .line 88
    :catchall_1
    move-exception v0

    .line 89
    goto :goto_3

    .line 90
    :cond_2
    :try_start_4
    const-string v0, "InputMethodManagerService"

    .line 91
    .line 92
    const-string/jumbo v2, "startConnectionlessStylusHandwriting() fail"

    .line 93
    .line 94
    .line 95
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 96
    .line 97
    .line 98
    :try_start_5
    invoke-interface {v7, v9}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onError(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catch_1
    move-exception v0

    .line 103
    move-object v2, v0

    .line 104
    :try_start_6
    const-string v0, "InputMethodManagerService"

    .line 105
    .line 106
    const-string v3, "Failed to report CONNECTIONLESS_HANDWRITING_ERROR_OTHER"

    .line 107
    .line 108
    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 112
    .line 113
    .line 114
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 115
    .line 116
    const-string v2, "Delegator doesn\'t match UID"

    .line 117
    .line 118
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw v0

    .line 122
    :goto_3
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 123
    throw v0

    .line 124
    :cond_3
    move-object v10, p1

    .line 125
    move-object v4, v7

    .line 126
    :goto_4
    const/4 v3, 0x0

    .line 127
    move-object v1, p0

    .line 128
    move-object v2, p1

    .line 129
    move-object v5, p3

    .line 130
    move v6, v8

    .line 131
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ZLcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_4

    .line 136
    .line 137
    :try_start_7
    invoke-interface {v7, v9}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;->onError(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 138
    .line 139
    .line 140
    goto :goto_5

    .line 141
    :catch_2
    move-exception v0

    .line 142
    move-object v1, v0

    .line 143
    const-string v0, "InputMethodManagerService"

    .line 144
    .line 145
    const-string v2, "Failed to report CONNECTIONLESS_HANDWRITING_ERROR_OTHER"

    .line 146
    .line 147
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 151
    .line 152
    .line 153
    :cond_4
    :goto_5
    return-void

    .line 154
    :goto_6
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 155
    throw v0
.end method

.method public final startImeTrace()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/ImeTracing;->startTrace(Ljava/io/PrintWriter;)V

    .line 7
    .line 8
    .line 9
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda8;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/ClientController;->forAllClients(Ljava/util/function/Consumer;)V

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public final startInputOrWindowGainedFocus(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;)Lcom/android/internal/inputmethod/InputBindResult;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p3

    .line 4
    .line 5
    move-object/from16 v14, p7

    .line 6
    .line 7
    move/from16 v1, p11

    .line 8
    .line 9
    const-string v15, "InputBindResult is @NonNull. startInputReason="

    .line 10
    .line 11
    const-string v2, "Rejecting this client as it reported an invalid package name. uid="

    .line 12
    .line 13
    const-string/jumbo v4, "startInputOrWindowGainedFocus: reason="

    .line 14
    .line 15
    .line 16
    const-string/jumbo v5, "startInputOrWindowGainedFocus: Focus gain on non-focused client "

    .line 17
    .line 18
    .line 19
    const-string v6, "Unknown client "

    .line 20
    .line 21
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    if-eq v7, v1, :cond_1

    .line 26
    .line 27
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    const-string v8, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    if-eqz v14, :cond_0

    .line 36
    .line 37
    iget-object v7, v14, Landroid/view/inputmethod/EditorInfo;->targetInputMethodUser:Landroid/os/UserHandle;

    .line 38
    .line 39
    if-eqz v7, :cond_0

    .line 40
    .line 41
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-ne v7, v1, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    .line 49
    .line 50
    const-string v1, "EditorInfo#targetInputMethodUser must also be specified for cross-user startInputOrWindowGainedFocus()"

    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v0

    .line 56
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    .line 57
    .line 58
    const-string v0, "InputMethodManagerService"

    .line 59
    .line 60
    const-string/jumbo v1, "windowToken cannot be null."

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NULL:Lcom/android/internal/inputmethod/InputBindResult;

    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_2
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 70
    .line 71
    invoke-virtual {v7, v1}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-nez v7, :cond_3

    .line 76
    .line 77
    const-string v0, "InputMethodManagerService"

    .line 78
    .line 79
    const-string v2, "User #"

    .line 80
    .line 81
    const-string v3, " is not running."

    .line 82
    .line 83
    invoke-static {v1, v2, v3, v0}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;

    .line 87
    .line 88
    return-object v0

    .line 89
    :cond_3
    const-wide/16 v12, 0x20

    .line 90
    .line 91
    :try_start_0
    const-string v7, "IMMS.startInputOrWindowGainedFocus"

    .line 92
    .line 93
    invoke-static {v12, v13, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    const-string v8, "InputMethodManagerService#startInputOrWindowGainedFocus"

    .line 101
    .line 102
    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/server/inputmethod/InputMethodManagerService$1;

    .line 103
    .line 104
    invoke-virtual {v7, v8, v9}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    .line 105
    .line 106
    .line 107
    const-class v16, Lcom/android/server/inputmethod/ImfLock;

    .line 108
    .line 109
    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 110
    :try_start_1
    invoke-static/range {p11 .. p11}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    .line 111
    .line 112
    .line 113
    move-result v7

    .line 114
    const/4 v8, 0x0

    .line 115
    const/4 v9, 0x1

    .line 116
    if-nez v7, :cond_4

    .line 117
    .line 118
    invoke-static/range {p11 .. p11}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_5

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    :goto_1
    move-wide/from16 v19, v12

    .line 127
    .line 128
    goto/16 :goto_8

    .line 129
    .line 130
    :cond_4
    :goto_2
    iput-boolean v9, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->misSecurefolderIdOrDualAppId:Z

    .line 131
    .line 132
    move v1, v8

    .line 133
    :cond_5
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 134
    .line 135
    .line 136
    move-result-object v11

    .line 137
    iget-boolean v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSystemReady:Z

    .line 138
    .line 139
    if-nez v7, :cond_6

    .line 140
    .line 141
    new-instance v1, Lcom/android/internal/inputmethod/InputBindResult;

    .line 142
    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget v2, v11, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    .line 148
    .line 149
    const/4 v3, 0x0

    .line 150
    const/4 v4, 0x0

    .line 151
    const/4 v5, 0x0

    .line 152
    const/16 v6, 0x8

    .line 153
    .line 154
    const/4 v7, 0x0

    .line 155
    move-object/from16 p0, v1

    .line 156
    .line 157
    move/from16 p1, v6

    .line 158
    .line 159
    move-object/from16 p2, v7

    .line 160
    .line 161
    move-object/from16 p3, v3

    .line 162
    .line 163
    move-object/from16 p4, v4

    .line 164
    .line 165
    move-object/from16 p5, v0

    .line 166
    .line 167
    move/from16 p6, v2

    .line 168
    .line 169
    move/from16 p7, v5

    .line 170
    .line 171
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    .line 172
    .line 173
    .line 174
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 176
    .line 177
    .line 178
    return-object v1

    .line 179
    :cond_6
    :try_start_2
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    .line 180
    .line 181
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    .line 182
    .line 183
    .line 184
    move-result-object v10

    .line 185
    invoke-virtual {v7, v10}, Lcom/android/server/inputmethod/ClientController;->getClient(Landroid/os/IBinder;)Lcom/android/server/inputmethod/ClientState;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    if-eqz v10, :cond_14

    .line 190
    .line 191
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 192
    .line 193
    .line 194
    move-result-wide v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    :try_start_3
    iget-boolean v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mExperimentalConcurrentMultiUserModeEnabled:Z

    .line 196
    .line 197
    if-nez v6, :cond_a

    .line 198
    .line 199
    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserSwitchHandlerTask:Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;

    .line 200
    .line 201
    if-eqz v6, :cond_a

    .line 202
    .line 203
    iget v2, v6, Lcom/android/server/inputmethod/InputMethodManagerService$UserSwitchHandlerTask;->mToUserId:I

    .line 204
    .line 205
    if-ne v1, v2, :cond_7

    .line 206
    .line 207
    iget-object v2, v10, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 208
    .line 209
    invoke-virtual {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    .line 210
    .line 211
    .line 212
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 213
    .line 214
    :try_start_4
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 215
    .line 216
    .line 217
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 218
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 219
    .line 220
    .line 221
    return-object v0

    .line 222
    :catchall_1
    move-exception v0

    .line 223
    :goto_3
    move-wide/from16 v19, v12

    .line 224
    .line 225
    goto/16 :goto_7

    .line 226
    .line 227
    :cond_7
    :try_start_5
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 228
    .line 229
    iget v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 230
    .line 231
    invoke-virtual {v2, v3, v8}, Lcom/android/server/pm/UserManagerInternal;->getProfileIds(IZ)[I

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    array-length v3, v2

    .line 236
    :goto_4
    if-ge v8, v3, :cond_9

    .line 237
    .line 238
    aget v4, v2, v8

    .line 239
    .line 240
    if-ne v4, v1, :cond_8

    .line 241
    .line 242
    iget-object v2, v10, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 243
    .line 244
    invoke-virtual {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    .line 245
    .line 246
    .line 247
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 248
    .line 249
    :try_start_6
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 250
    .line 251
    .line 252
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 253
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 254
    .line 255
    .line 256
    return-object v0

    .line 257
    :cond_8
    add-int/lit8 v8, v8, 0x1

    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_9
    :try_start_7
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 261
    .line 262
    :try_start_8
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 263
    .line 264
    .line 265
    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 266
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 267
    .line 268
    .line 269
    return-object v0

    .line 270
    :cond_a
    :try_start_9
    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 271
    .line 272
    iget v7, v10, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 273
    .line 274
    iget v9, v10, Lcom/android/server/inputmethod/ClientState;->mPid:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 275
    .line 276
    :try_start_a
    iget v12, v10, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    .line 277
    .line 278
    invoke-virtual {v6, v3, v7, v9, v12}, Lcom/android/server/wm/WindowManagerInternal;->hasInputMethodClientFocus(Landroid/os/IBinder;III)I

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    const/4 v7, -0x3

    .line 283
    if-eq v6, v7, :cond_13

    .line 284
    .line 285
    const/4 v7, -0x2

    .line 286
    if-eq v6, v7, :cond_11

    .line 287
    .line 288
    const/4 v4, -0x1

    .line 289
    if-eq v6, v4, :cond_10

    .line 290
    .line 291
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImePlatformCompatUtils:Lcom/android/server/inputmethod/ImePlatformCompatUtils;

    .line 292
    .line 293
    iget v5, v10, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 294
    .line 295
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 296
    .line 297
    .line 298
    :try_start_b
    iget-object v4, v4, Lcom/android/server/inputmethod/ImePlatformCompatUtils;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 299
    .line 300
    const-wide/32 v6, 0xcc1a029

    .line 301
    .line 302
    .line 303
    invoke-interface {v4, v6, v7, v5}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByUid(JI)Z

    .line 304
    .line 305
    .line 306
    move-result v4
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 307
    goto :goto_5

    .line 308
    :catch_0
    move v4, v8

    .line 309
    :goto_5
    :try_start_c
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 310
    .line 311
    iget-boolean v6, v5, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    .line 312
    .line 313
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 314
    .line 315
    iget-object v7, v7, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 316
    .line 317
    if-eq v7, v3, :cond_b

    .line 318
    .line 319
    if-eqz v6, :cond_b

    .line 320
    .line 321
    if-eqz v4, :cond_b

    .line 322
    .line 323
    iput-boolean v8, v5, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mShowForced:Z

    .line 324
    .line 325
    goto :goto_6

    .line 326
    :catchall_2
    move-exception v0

    .line 327
    const-wide/16 v19, 0x20

    .line 328
    .line 329
    goto/16 :goto_7

    .line 330
    .line 331
    :cond_b
    :goto_6
    iget-boolean v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mExperimentalConcurrentMultiUserModeEnabled:Z

    .line 332
    .line 333
    if-nez v4, :cond_d

    .line 334
    .line 335
    iget v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 336
    .line 337
    if-eq v1, v4, :cond_d

    .line 338
    .line 339
    iget-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 340
    .line 341
    invoke-virtual {v2, v4, v8}, Lcom/android/server/pm/UserManagerInternal;->getProfileIds(IZ)[I

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    if-eqz v2, :cond_c

    .line 350
    .line 351
    iget-object v2, v10, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 352
    .line 353
    invoke-virtual {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->scheduleSwitchUserTaskLocked(ILcom/android/server/inputmethod/IInputMethodClientInvoker;)V

    .line 354
    .line 355
    .line 356
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->USER_SWITCHING:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 357
    .line 358
    :try_start_d
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 359
    .line 360
    .line 361
    monitor-exit v16
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 362
    const-wide/16 v1, 0x20

    .line 363
    .line 364
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 365
    .line 366
    .line 367
    return-object v0

    .line 368
    :catchall_3
    move-exception v0

    .line 369
    const-wide/16 v19, 0x20

    .line 370
    .line 371
    goto/16 :goto_8

    .line 372
    .line 373
    :cond_c
    :try_start_e
    const-string v1, "InputMethodManagerService"

    .line 374
    .line 375
    const-string v2, "A background user is requesting window. Hiding IME."

    .line 376
    .line 377
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .line 379
    .line 380
    const-string v1, "InputMethodManagerService"

    .line 381
    .line 382
    const-string v2, "If you need to impersonate a foreground user/profile from a background user, use EditorInfo.targetInputMethodUser with INTERACT_ACROSS_USERS_FULL permission."

    .line 383
    .line 384
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    .line 386
    .line 387
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 388
    .line 389
    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 390
    .line 391
    const/16 v2, 0xb

    .line 392
    .line 393
    invoke-virtual {v0, v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/IBinder;)Z

    .line 394
    .line 395
    .line 396
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_USER:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 397
    .line 398
    :try_start_f
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 399
    .line 400
    .line 401
    monitor-exit v16
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 402
    const-wide/16 v1, 0x20

    .line 403
    .line 404
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 405
    .line 406
    .line 407
    return-object v0

    .line 408
    :cond_d
    if-eqz v14, :cond_e

    .line 409
    .line 410
    :try_start_10
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 411
    .line 412
    iget v5, v10, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 413
    .line 414
    iget-object v9, v14, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 415
    .line 416
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 417
    .line 418
    .line 419
    move-result v6

    .line 420
    const-wide/16 v7, 0x0

    .line 421
    .line 422
    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManagerInternal;->isSameApp(IIJLjava/lang/String;)Z

    .line 423
    .line 424
    .line 425
    move-result v1

    .line 426
    if-nez v1, :cond_e

    .line 427
    .line 428
    const-string v0, "InputMethodManagerService"

    .line 429
    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    iget v2, v10, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 436
    .line 437
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    const-string v2, " package="

    .line 441
    .line 442
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    iget-object v2, v14, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 446
    .line 447
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .line 456
    .line 457
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_PACKAGE_NAME:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 458
    .line 459
    :try_start_11
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 460
    .line 461
    .line 462
    monitor-exit v16
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 463
    const-wide/16 v12, 0x20

    .line 464
    .line 465
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 466
    .line 467
    .line 468
    return-object v0

    .line 469
    :catchall_4
    move-exception v0

    .line 470
    const-wide/16 v12, 0x20

    .line 471
    .line 472
    goto/16 :goto_1

    .line 473
    .line 474
    :catchall_5
    move-exception v0

    .line 475
    const-wide/16 v12, 0x20

    .line 476
    .line 477
    goto/16 :goto_3

    .line 478
    .line 479
    :cond_e
    const-wide/16 v12, 0x20

    .line 480
    .line 481
    move-object/from16 v1, p0

    .line 482
    .line 483
    move/from16 v2, p1

    .line 484
    .line 485
    move-object/from16 v3, p3

    .line 486
    .line 487
    move/from16 v4, p4

    .line 488
    .line 489
    move/from16 v5, p5

    .line 490
    .line 491
    move/from16 v6, p6

    .line 492
    .line 493
    move-object/from16 v7, p7

    .line 494
    .line 495
    move-object/from16 v8, p8

    .line 496
    .line 497
    move-object/from16 v9, p9

    .line 498
    .line 499
    move-object v0, v10

    .line 500
    move/from16 v10, p10

    .line 501
    .line 502
    move-wide/from16 v19, v12

    .line 503
    .line 504
    move-object/from16 v12, p12

    .line 505
    .line 506
    move-object v13, v0

    .line 507
    :try_start_12
    invoke-virtual/range {v1 .. v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputOrWindowGainedFocusInternalLocked(ILandroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILcom/android/server/inputmethod/InputMethodBindingController;Landroid/window/ImeOnBackInvokedDispatcher;Lcom/android/server/inputmethod/ClientState;)Lcom/android/internal/inputmethod/InputBindResult;

    .line 508
    .line 509
    .line 510
    move-result-object v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 511
    :try_start_13
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 512
    .line 513
    .line 514
    monitor-exit v16
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 515
    if-nez v0, :cond_f

    .line 516
    .line 517
    :try_start_14
    const-string v0, "InputMethodManagerService"

    .line 518
    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    .line 520
    .line 521
    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    const-string v2, " windowFlags=#"

    .line 532
    .line 533
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    const-string v2, " editorInfo="

    .line 544
    .line 545
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    .line 557
    .line 558
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NULL:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 559
    .line 560
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 561
    .line 562
    .line 563
    return-object v0

    .line 564
    :catchall_6
    move-exception v0

    .line 565
    goto/16 :goto_9

    .line 566
    .line 567
    :cond_f
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 568
    .line 569
    .line 570
    return-object v0

    .line 571
    :catchall_7
    move-exception v0

    .line 572
    goto/16 :goto_8

    .line 573
    .line 574
    :catchall_8
    move-exception v0

    .line 575
    goto/16 :goto_7

    .line 576
    .line 577
    :cond_10
    move-object v0, v10

    .line 578
    const-wide/16 v19, 0x20

    .line 579
    .line 580
    :try_start_15
    const-string v1, "InputMethodManagerService"

    .line 581
    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    .line 583
    .line 584
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    iget-object v3, v0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 588
    .line 589
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    const-string v3, " (uid="

    .line 593
    .line 594
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    iget v3, v0, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 598
    .line 599
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    const-string v3, " pid="

    .line 603
    .line 604
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    iget v0, v0, Lcom/android/server/inputmethod/ClientState;->mPid:I

    .line 608
    .line 609
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    const-string v0, ")"

    .line 613
    .line 614
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    .line 623
    .line 624
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 625
    .line 626
    :try_start_16
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 627
    .line 628
    .line 629
    monitor-exit v16
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 630
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 631
    .line 632
    .line 633
    return-object v0

    .line 634
    :cond_11
    move-object v1, v10

    .line 635
    const-wide/16 v19, 0x20

    .line 636
    .line 637
    :try_start_17
    const-string v2, "InputMethodManagerService"

    .line 638
    .line 639
    const-string/jumbo v5, "startInputOrWindowGainedFocusInternal: display ID mismatch."

    .line 640
    .line 641
    .line 642
    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    .line 644
    .line 645
    const-string v2, "InputMethodManagerService"

    .line 646
    .line 647
    new-instance v5, Ljava/lang/StringBuilder;

    .line 648
    .line 649
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v4

    .line 656
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    const-string v4, " clientState="

    .line 660
    .line 661
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    const-string v1, " editorInfo="

    .line 668
    .line 669
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    .line 671
    .line 672
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    const-string v1, " startInputFlags="

    .line 676
    .line 677
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    .line 679
    .line 680
    invoke-static/range {p4 .. p4}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputFlagsToString(I)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v1

    .line 684
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    .line 686
    .line 687
    const-string v1, " softInputMode="

    .line 688
    .line 689
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    invoke-static/range {p5 .. p5}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v1

    .line 696
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    .line 698
    .line 699
    const-string v1, " windowFlags=#"

    .line 700
    .line 701
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    .line 703
    .line 704
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v1

    .line 708
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    const-string v1, " sameWindowFocused="

    .line 712
    .line 713
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 717
    .line 718
    iget-object v0, v0, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 719
    .line 720
    if-ne v0, v3, :cond_12

    .line 721
    .line 722
    const/4 v8, 0x1

    .line 723
    :cond_12
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v0

    .line 730
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    .line 732
    .line 733
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->DISPLAY_ID_MISMATCH:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 734
    .line 735
    :try_start_18
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 736
    .line 737
    .line 738
    monitor-exit v16
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 739
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 740
    .line 741
    .line 742
    return-object v0

    .line 743
    :cond_13
    const-wide/16 v19, 0x20

    .line 744
    .line 745
    :try_start_19
    const-string v0, "InputMethodManagerService"

    .line 746
    .line 747
    const-string/jumbo v1, "startInputOrWindowGainedFocus: invalid display ID."

    .line 748
    .line 749
    .line 750
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    .line 752
    .line 753
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->INVALID_DISPLAY_ID:Lcom/android/internal/inputmethod/InputBindResult;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 754
    .line 755
    :try_start_1a
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 756
    .line 757
    .line 758
    monitor-exit v16
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    .line 759
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 760
    .line 761
    .line 762
    return-object v0

    .line 763
    :goto_7
    :try_start_1b
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 764
    .line 765
    .line 766
    throw v0

    .line 767
    :cond_14
    move-wide/from16 v19, v12

    .line 768
    .line 769
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 770
    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    .line 772
    .line 773
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    invoke-interface/range {p2 .. p2}, Lcom/android/internal/inputmethod/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    .line 777
    .line 778
    .line 779
    move-result-object v2

    .line 780
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 784
    .line 785
    .line 786
    move-result-object v1

    .line 787
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 788
    .line 789
    .line 790
    throw v0

    .line 791
    :goto_8
    monitor-exit v16
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    .line 792
    :try_start_1c
    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    .line 793
    :catchall_9
    move-exception v0

    .line 794
    move-wide/from16 v19, v12

    .line 795
    .line 796
    :goto_9
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 797
    .line 798
    .line 799
    throw v0
.end method

.method public final startInputOrWindowGainedFocusAsync(ILcom/android/internal/inputmethod/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;IILandroid/window/ImeOnBackInvokedDispatcher;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final startInputOrWindowGainedFocusInternalLocked(ILandroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;ILcom/android/server/inputmethod/InputMethodBindingController;Landroid/window/ImeOnBackInvokedDispatcher;Lcom/android/server/inputmethod/ClientState;)Lcom/android/internal/inputmethod/InputBindResult;
    .locals 23

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move/from16 v8, p4

    .line 6
    .line 7
    move-object/from16 v11, p6

    .line 8
    .line 9
    move-object/from16 v12, p10

    .line 10
    .line 11
    move-object/from16 v13, p12

    .line 12
    .line 13
    and-int/lit8 v9, p3, 0x2

    .line 14
    .line 15
    const-string v14, "InputMethodManagerService"

    .line 16
    .line 17
    const/4 v7, 0x1

    .line 18
    if-eqz v9, :cond_1

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo v2, "startInputOrWindowGainedFocusInternalLocked: reason="

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputReasonToString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v2, " clientState="

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-static/range {p12 .. p12}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, " editorInfo="

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v2, " startInputFlags="

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-static/range {p3 .. p3}, Lcom/android/internal/inputmethod/InputMethodDebug;->startInputFlagsToString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v2, " softInputMode="

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-static/range {p4 .. p4}, Lcom/android/internal/inputmethod/InputMethodDebug;->softInputModeToString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v2, " windowFlags=#"

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v2, " sameWindowFocused="

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object v2, v10, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 101
    .line 102
    iget-object v2, v2, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 103
    .line 104
    if-ne v2, v0, :cond_0

    .line 105
    .line 106
    move v2, v7

    .line 107
    goto :goto_0

    .line 108
    :cond_0
    const/4 v2, 0x0

    .line 109
    :goto_0
    invoke-static {v14, v1, v2}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 110
    .line 111
    .line 112
    :cond_1
    iget-object v1, v10, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 113
    .line 114
    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 115
    .line 116
    if-ne v1, v0, :cond_2

    .line 117
    .line 118
    move/from16 v16, v7

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    const/16 v16, 0x0

    .line 122
    .line 123
    :goto_1
    if-eqz v9, :cond_3

    .line 124
    .line 125
    move v6, v7

    .line 126
    goto :goto_2

    .line 127
    :cond_3
    const/4 v6, 0x0

    .line 128
    :goto_2
    and-int/lit8 v1, p3, 0x8

    .line 129
    .line 130
    if-eqz v1, :cond_4

    .line 131
    .line 132
    move/from16 v17, v7

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :cond_4
    const/16 v17, 0x0

    .line 136
    .line 137
    :goto_3
    if-eqz v11, :cond_5

    .line 138
    .line 139
    invoke-virtual/range {p6 .. p6}, Landroid/view/inputmethod/EditorInfo;->getInitialToolType()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    move v5, v1

    .line 144
    goto :goto_4

    .line 145
    :cond_5
    const/4 v5, 0x0

    .line 146
    :goto_4
    if-eqz v11, :cond_6

    .line 147
    .line 148
    iget-object v1, v11, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 149
    .line 150
    if-eqz v1, :cond_6

    .line 151
    .line 152
    const-string/jumbo v2, "isTextEditor"

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    .line 157
    .line 158
    :cond_6
    new-instance v4, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    .line 159
    .line 160
    xor-int/lit8 v18, v16, 0x1

    .line 161
    .line 162
    move-object v1, v4

    .line 163
    move/from16 v2, p4

    .line 164
    .line 165
    move/from16 v3, p5

    .line 166
    .line 167
    move-object v15, v4

    .line 168
    move v4, v5

    .line 169
    move/from16 v19, v9

    .line 170
    .line 171
    move v9, v5

    .line 172
    move/from16 v5, v18

    .line 173
    .line 174
    move/from16 v20, v6

    .line 175
    .line 176
    move/from16 v7, v17

    .line 177
    .line 178
    invoke-direct/range {v1 .. v7}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;-><init>(IIIZZZ)V

    .line 179
    .line 180
    .line 181
    iget-object v1, v10, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 182
    .line 183
    iget-object v2, v1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    .line 184
    .line 185
    invoke-virtual {v2, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    check-cast v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    .line 190
    .line 191
    const/4 v7, 0x2

    .line 192
    if-eqz v2, :cond_7

    .line 193
    .line 194
    if-eqz v20, :cond_7

    .line 195
    .line 196
    if-eq v9, v7, :cond_7

    .line 197
    .line 198
    iget-boolean v2, v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    .line 199
    .line 200
    iput-boolean v2, v15, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_7
    iget-object v3, v1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 204
    .line 205
    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    const-string/jumbo v4, "com.google.android.tts/com.google.android.apps.speech.tts.googletts.settings.asr.voiceime.VoiceInputMethodService"

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-eqz v3, :cond_8

    .line 217
    .line 218
    if-eqz v2, :cond_8

    .line 219
    .line 220
    if-eqz v20, :cond_8

    .line 221
    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string/jumbo v4, "setWindowState: for gvi, set requestedImeVisible="

    .line 225
    .line 226
    .line 227
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    iget-boolean v4, v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    .line 231
    .line 232
    invoke-static {v14, v3, v4}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 233
    .line 234
    .line 235
    iget-boolean v2, v2, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    .line 236
    .line 237
    iput-boolean v2, v15, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    .line 238
    .line 239
    :cond_8
    :goto_5
    invoke-virtual {v1, v0, v15}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->setWindowStateInner(Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)V

    .line 240
    .line 241
    .line 242
    if-eqz v16, :cond_a

    .line 243
    .line 244
    if-eqz v20, :cond_a

    .line 245
    .line 246
    if-eqz v11, :cond_9

    .line 247
    .line 248
    move-object/from16 v0, p0

    .line 249
    .line 250
    move-object/from16 v1, p12

    .line 251
    .line 252
    move-object/from16 v2, p7

    .line 253
    .line 254
    move-object/from16 v3, p8

    .line 255
    .line 256
    move-object/from16 v4, p6

    .line 257
    .line 258
    move/from16 v5, p3

    .line 259
    .line 260
    move/from16 v6, p1

    .line 261
    .line 262
    move/from16 v7, p9

    .line 263
    .line 264
    move-object/from16 v8, p11

    .line 265
    .line 266
    move-object/from16 v9, p10

    .line 267
    .line 268
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/ClientState;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/internal/inputmethod/InputBindResult;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    return-object v0

    .line 273
    :cond_9
    new-instance v0, Lcom/android/internal/inputmethod/InputBindResult;

    .line 274
    .line 275
    const/4 v1, 0x0

    .line 276
    const/4 v2, 0x0

    .line 277
    const/4 v3, 0x4

    .line 278
    const/4 v4, 0x0

    .line 279
    const/4 v5, 0x0

    .line 280
    const/4 v6, -0x1

    .line 281
    const/4 v7, 0x0

    .line 282
    move-object/from16 p0, v0

    .line 283
    .line 284
    move/from16 p1, v3

    .line 285
    .line 286
    move-object/from16 p2, v4

    .line 287
    .line 288
    move-object/from16 p3, v5

    .line 289
    .line 290
    move-object/from16 p4, v1

    .line 291
    .line 292
    move-object/from16 p5, v2

    .line 293
    .line 294
    move/from16 p6, v6

    .line 295
    .line 296
    move/from16 p7, v7

    .line 297
    .line 298
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    .line 299
    .line 300
    .line 301
    return-object v0

    .line 302
    :cond_a
    new-instance v1, Lcom/android/server/inputmethod/ImeBindingState;

    .line 303
    .line 304
    iget v2, v12, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    .line 305
    .line 306
    invoke-direct {v1, v0, v8, v13, v11}, Lcom/android/server/inputmethod/ImeBindingState;-><init>(Landroid/os/IBinder;ILcom/android/server/inputmethod/ClientState;Landroid/view/inputmethod/EditorInfo;)V

    .line 307
    .line 308
    .line 309
    iput-object v1, v10, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 310
    .line 311
    iget-object v1, v10, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    .line 312
    .line 313
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 314
    .line 315
    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    iget-object v0, v10, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 319
    .line 320
    const/16 v1, 0x1c

    .line 321
    .line 322
    move/from16 v9, p9

    .line 323
    .line 324
    if-ge v9, v1, :cond_c

    .line 325
    .line 326
    :cond_b
    const/4 v1, 0x1

    .line 327
    goto :goto_7

    .line 328
    :cond_c
    and-int/lit8 v1, p3, 0x1

    .line 329
    .line 330
    if-nez v1, :cond_d

    .line 331
    .line 332
    :goto_6
    const/4 v1, 0x0

    .line 333
    goto :goto_7

    .line 334
    :cond_d
    if-nez v19, :cond_b

    .line 335
    .line 336
    goto :goto_6

    .line 337
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 338
    .line 339
    .line 340
    and-int/lit8 v2, v8, 0xf

    .line 341
    .line 342
    and-int/lit16 v3, v8, 0xf0

    .line 343
    .line 344
    const/16 v4, 0x10

    .line 345
    .line 346
    const/4 v5, 0x3

    .line 347
    iget-object v6, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 348
    .line 349
    if-eq v3, v4, :cond_f

    .line 350
    .line 351
    iget-object v3, v6, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    .line 352
    .line 353
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    invoke-virtual {v3, v5}, Landroid/content/res/Configuration;->isLayoutSizeAtLeast(I)Z

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    if-eqz v3, :cond_e

    .line 362
    .line 363
    goto :goto_8

    .line 364
    :cond_e
    const/4 v3, 0x0

    .line 365
    goto :goto_9

    .line 366
    :cond_f
    :goto_8
    const/4 v3, 0x1

    .line 367
    :goto_9
    and-int/lit16 v4, v8, 0x100

    .line 368
    .line 369
    if-eqz v4, :cond_10

    .line 370
    .line 371
    const/4 v8, 0x1

    .line 372
    goto :goto_a

    .line 373
    :cond_10
    const/4 v8, 0x0

    .line 374
    :goto_a
    const/4 v5, 0x7

    .line 375
    const/16 v22, 0x0

    .line 376
    .line 377
    if-eqz v20, :cond_14

    .line 378
    .line 379
    if-eq v2, v7, :cond_12

    .line 380
    .line 381
    const/4 v7, 0x3

    .line 382
    if-eq v2, v7, :cond_11

    .line 383
    .line 384
    goto :goto_c

    .line 385
    :cond_11
    :goto_b
    const/4 v4, 0x0

    .line 386
    goto :goto_d

    .line 387
    :cond_12
    if-eqz v4, :cond_13

    .line 388
    .line 389
    goto :goto_b

    .line 390
    :cond_13
    :goto_c
    iget-object v4, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 391
    .line 392
    invoke-virtual {v0, v15}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowTokenFrom(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)Landroid/os/IBinder;

    .line 393
    .line 394
    .line 395
    move-result-object v7

    .line 396
    invoke-virtual {v4, v7}, Lcom/android/server/wm/WindowManagerInternal;->shouldRestoreImeVisibility(Landroid/os/IBinder;)Z

    .line 397
    .line 398
    .line 399
    move-result v4

    .line 400
    :goto_d
    if-eqz v4, :cond_14

    .line 401
    .line 402
    const-string v1, "Will show input to restore visibility"

    .line 403
    .line 404
    invoke-static {v14, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .line 406
    .line 407
    const/4 v7, 0x1

    .line 408
    iput-boolean v7, v15, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    .line 409
    .line 410
    invoke-virtual {v0, v15}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->getWindowTokenFrom(Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)Landroid/os/IBinder;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-virtual {v0, v1, v15}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->setWindowStateInner(Landroid/os/IBinder;Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;)V

    .line 415
    .line 416
    .line 417
    new-instance v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    .line 418
    .line 419
    const/16 v1, 0x17

    .line 420
    .line 421
    invoke-direct {v0, v5, v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    .line 422
    .line 423
    .line 424
    :goto_e
    move-object v15, v0

    .line 425
    const/16 v2, 0xc

    .line 426
    .line 427
    const/4 v14, 0x0

    .line 428
    const/16 v21, 0x2

    .line 429
    .line 430
    goto/16 :goto_14

    .line 431
    .line 432
    :cond_14
    const/4 v7, 0x1

    .line 433
    const/4 v4, 0x5

    .line 434
    if-eqz v2, :cond_1f

    .line 435
    .line 436
    if-eq v2, v7, :cond_1e

    .line 437
    .line 438
    const/4 v3, 0x2

    .line 439
    if-eq v2, v3, :cond_1c

    .line 440
    .line 441
    const/4 v3, 0x3

    .line 442
    if-eq v2, v3, :cond_1a

    .line 443
    .line 444
    const/4 v3, 0x4

    .line 445
    if-eq v2, v3, :cond_18

    .line 446
    .line 447
    if-eq v2, v4, :cond_16

    .line 448
    .line 449
    :cond_15
    :goto_f
    const/16 v2, 0xc

    .line 450
    .line 451
    const/16 v21, 0x2

    .line 452
    .line 453
    goto/16 :goto_13

    .line 454
    .line 455
    :cond_16
    const-string v2, "Window asks to always show input"

    .line 456
    .line 457
    invoke-static {v14, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .line 459
    .line 460
    if-eqz v1, :cond_17

    .line 461
    .line 462
    if-eqz v18, :cond_15

    .line 463
    .line 464
    new-instance v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    .line 465
    .line 466
    const/16 v1, 0x8

    .line 467
    .line 468
    invoke-direct {v0, v5, v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    .line 469
    .line 470
    .line 471
    goto :goto_e

    .line 472
    :cond_17
    const-string v1, "SOFT_INPUT_STATE_ALWAYS_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()"

    .line 473
    .line 474
    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .line 476
    .line 477
    goto :goto_f

    .line 478
    :cond_18
    if-eqz v8, :cond_15

    .line 479
    .line 480
    if-eqz v1, :cond_19

    .line 481
    .line 482
    const-string v0, "Window asks to show input going forward"

    .line 483
    .line 484
    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .line 486
    .line 487
    new-instance v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    .line 488
    .line 489
    invoke-direct {v0, v5, v5}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    .line 490
    .line 491
    .line 492
    goto :goto_e

    .line 493
    :cond_19
    const-string v1, "SOFT_INPUT_STATE_VISIBLE is ignored because there is no focused view that also returns true from View#onCheckIsTextEditor()"

    .line 494
    .line 495
    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    .line 497
    .line 498
    goto :goto_f

    .line 499
    :cond_1a
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 500
    .line 501
    .line 502
    move-result v1

    .line 503
    if-eqz v1, :cond_1b

    .line 504
    .line 505
    goto :goto_f

    .line 506
    :cond_1b
    if-eqz v18, :cond_15

    .line 507
    .line 508
    const-string v0, "Window asks to hide input"

    .line 509
    .line 510
    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    .line 512
    .line 513
    new-instance v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    .line 514
    .line 515
    const/16 v1, 0xe

    .line 516
    .line 517
    invoke-direct {v0, v4, v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    .line 518
    .line 519
    .line 520
    goto :goto_e

    .line 521
    :cond_1c
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 522
    .line 523
    .line 524
    move-result v1

    .line 525
    if-eqz v1, :cond_1d

    .line 526
    .line 527
    goto :goto_f

    .line 528
    :cond_1d
    if-eqz v8, :cond_15

    .line 529
    .line 530
    const-string v0, "Window asks to hide input going forward"

    .line 531
    .line 532
    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    .line 534
    .line 535
    new-instance v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    .line 536
    .line 537
    const/16 v1, 0xd

    .line 538
    .line 539
    invoke-direct {v0, v4, v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    .line 540
    .line 541
    .line 542
    goto :goto_e

    .line 543
    :cond_1e
    const-string v1, "Window asks to unchanged"

    .line 544
    .line 545
    invoke-static {v14, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    .line 547
    .line 548
    iget-object v1, v6, Lcom/android/server/inputmethod/InputMethodManagerService;->mLastImeTargetWindow:Landroid/os/IBinder;

    .line 549
    .line 550
    iget-object v2, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    .line 551
    .line 552
    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v1

    .line 556
    check-cast v1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    .line 557
    .line 558
    if-eqz v1, :cond_15

    .line 559
    .line 560
    iget-boolean v1, v1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    .line 561
    .line 562
    iput-boolean v1, v15, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    .line 563
    .line 564
    goto :goto_f

    .line 565
    :cond_1f
    const/16 v21, 0x2

    .line 566
    .line 567
    if-eqz v18, :cond_20

    .line 568
    .line 569
    if-eqz v20, :cond_21

    .line 570
    .line 571
    if-nez v3, :cond_20

    .line 572
    .line 573
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 574
    .line 575
    .line 576
    move-result v1

    .line 577
    if-nez v1, :cond_20

    .line 578
    .line 579
    goto :goto_10

    .line 580
    :cond_20
    const/4 v1, 0x6

    .line 581
    const/16 v2, 0xc

    .line 582
    .line 583
    goto :goto_12

    .line 584
    :cond_21
    :goto_10
    invoke-static/range {p5 .. p5}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    .line 585
    .line 586
    .line 587
    move-result v1

    .line 588
    if-eqz v1, :cond_22

    .line 589
    .line 590
    const-string v0, "Unspecified window will hide input"

    .line 591
    .line 592
    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    .line 594
    .line 595
    new-instance v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    .line 596
    .line 597
    const/4 v1, 0x6

    .line 598
    const/16 v2, 0xc

    .line 599
    .line 600
    invoke-direct {v0, v1, v2}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    .line 601
    .line 602
    .line 603
    :goto_11
    move-object v15, v0

    .line 604
    const/4 v14, 0x0

    .line 605
    goto :goto_14

    .line 606
    :cond_22
    const/16 v2, 0xc

    .line 607
    .line 608
    goto :goto_13

    .line 609
    :goto_12
    if-eqz v20, :cond_23

    .line 610
    .line 611
    if-eqz v3, :cond_23

    .line 612
    .line 613
    if-eqz v8, :cond_23

    .line 614
    .line 615
    const-string v0, "Unspecified window will show input"

    .line 616
    .line 617
    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    .line 619
    .line 620
    new-instance v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    .line 621
    .line 622
    invoke-direct {v0, v5, v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    .line 623
    .line 624
    .line 625
    goto :goto_11

    .line 626
    :cond_23
    :goto_13
    if-nez v18, :cond_24

    .line 627
    .line 628
    if-eqz v17, :cond_24

    .line 629
    .line 630
    const-string v0, "Same window without editor will hide input"

    .line 631
    .line 632
    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    .line 634
    .line 635
    new-instance v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    .line 636
    .line 637
    const/16 v1, 0x15

    .line 638
    .line 639
    invoke-direct {v0, v4, v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    .line 640
    .line 641
    .line 642
    goto :goto_11

    .line 643
    :cond_24
    if-nez v20, :cond_26

    .line 644
    .line 645
    iget-boolean v0, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    .line 646
    .line 647
    if-eqz v0, :cond_26

    .line 648
    .line 649
    if-eqz v17, :cond_26

    .line 650
    .line 651
    iget-object v0, v6, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputMethodDeviceConfigs:Lcom/android/server/inputmethod/InputMethodDeviceConfigs;

    .line 652
    .line 653
    iget-boolean v0, v0, Lcom/android/server/inputmethod/InputMethodDeviceConfigs;->mHideImeWhenNoEditorFocus:Z

    .line 654
    .line 655
    if-eqz v0, :cond_26

    .line 656
    .line 657
    const-string v0, "Window without editor will hide input"

    .line 658
    .line 659
    invoke-static {v14, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    .line 661
    .line 662
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    .line 663
    .line 664
    .line 665
    move-result v0

    .line 666
    const/4 v14, 0x0

    .line 667
    if-eqz v0, :cond_25

    .line 668
    .line 669
    iput-boolean v14, v15, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mRequestedImeVisible:Z

    .line 670
    .line 671
    :cond_25
    new-instance v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;

    .line 672
    .line 673
    const/16 v1, 0x21

    .line 674
    .line 675
    invoke-direct {v0, v4, v1}, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;-><init>(II)V

    .line 676
    .line 677
    .line 678
    move-object v15, v0

    .line 679
    goto :goto_14

    .line 680
    :cond_26
    const/4 v14, 0x0

    .line 681
    move-object/from16 v15, v22

    .line 682
    .line 683
    :goto_14
    if-eqz v15, :cond_2d

    .line 684
    .line 685
    iget v8, v15, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->mReason:I

    .line 686
    .line 687
    const/4 v0, 0x6

    .line 688
    if-eq v8, v0, :cond_27

    .line 689
    .line 690
    if-eq v8, v5, :cond_27

    .line 691
    .line 692
    const/16 v0, 0x8

    .line 693
    .line 694
    if-eq v8, v0, :cond_27

    .line 695
    .line 696
    const/16 v0, 0x17

    .line 697
    .line 698
    if-eq v8, v0, :cond_27

    .line 699
    .line 700
    move v7, v14

    .line 701
    move/from16 v16, v7

    .line 702
    .line 703
    move v14, v8

    .line 704
    goto :goto_15

    .line 705
    :cond_27
    if-eqz v11, :cond_28

    .line 706
    .line 707
    move-object/from16 v0, p0

    .line 708
    .line 709
    move-object/from16 v1, p12

    .line 710
    .line 711
    move v5, v2

    .line 712
    move-object/from16 v2, p7

    .line 713
    .line 714
    move-object/from16 v3, p8

    .line 715
    .line 716
    move-object/from16 v4, p6

    .line 717
    .line 718
    move v6, v5

    .line 719
    move/from16 v5, p3

    .line 720
    .line 721
    move v14, v6

    .line 722
    move/from16 v6, p1

    .line 723
    .line 724
    move/from16 v16, v7

    .line 725
    .line 726
    move/from16 v7, p9

    .line 727
    .line 728
    move v14, v8

    .line 729
    move-object/from16 v8, p11

    .line 730
    .line 731
    move-object/from16 v9, p10

    .line 732
    .line 733
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/ClientState;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/internal/inputmethod/InputBindResult;

    .line 734
    .line 735
    .line 736
    move-result-object v22

    .line 737
    move/from16 v7, v16

    .line 738
    .line 739
    goto :goto_15

    .line 740
    :cond_28
    move/from16 v16, v7

    .line 741
    .line 742
    move v14, v8

    .line 743
    const/16 v16, 0x0

    .line 744
    .line 745
    :goto_15
    invoke-virtual {v10, v14, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->createStatsTokenForFocusedClient(IZ)Landroid/view/inputmethod/ImeTracker$Token;

    .line 746
    .line 747
    .line 748
    move-result-object v2

    .line 749
    iget-object v0, v10, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityApplier:Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;

    .line 750
    .line 751
    iget-object v1, v10, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 752
    .line 753
    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 754
    .line 755
    iget v3, v15, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->mState:I

    .line 756
    .line 757
    iget v4, v15, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityResult;->mReason:I

    .line 758
    .line 759
    iget v5, v12, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    .line 760
    .line 761
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/DefaultImeVisibilityApplier;->applyImeVisibility(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;III)V

    .line 762
    .line 763
    .line 764
    const/16 v0, 0xc

    .line 765
    .line 766
    if-ne v14, v0, :cond_2c

    .line 767
    .line 768
    iget-object v0, v10, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 769
    .line 770
    iget-object v0, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mImeDisplayValidator:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;

    .line 771
    .line 772
    iget v1, v13, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    .line 773
    .line 774
    if-eqz v1, :cond_2b

    .line 775
    .line 776
    const/4 v2, -0x1

    .line 777
    if-ne v1, v2, :cond_29

    .line 778
    .line 779
    goto :goto_16

    .line 780
    :cond_29
    iget-object v0, v0, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowManagerInternal;

    .line 781
    .line 782
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayImePolicy(I)I

    .line 783
    .line 784
    .line 785
    move-result v0

    .line 786
    if-nez v0, :cond_2a

    .line 787
    .line 788
    move v15, v1

    .line 789
    goto :goto_17

    .line 790
    :cond_2a
    const/4 v1, 0x2

    .line 791
    if-ne v0, v1, :cond_2b

    .line 792
    .line 793
    move v15, v2

    .line 794
    goto :goto_17

    .line 795
    :cond_2b
    :goto_16
    const/4 v15, 0x0

    .line 796
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenDisplayIdLocked()I

    .line 797
    .line 798
    .line 799
    move-result v0

    .line 800
    if-eq v15, v0, :cond_2c

    .line 801
    .line 802
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 803
    .line 804
    .line 805
    :cond_2c
    move/from16 v15, v16

    .line 806
    .line 807
    goto :goto_18

    .line 808
    :cond_2d
    const/4 v15, 0x0

    .line 809
    :goto_18
    if-nez v15, :cond_2f

    .line 810
    .line 811
    if-eqz v11, :cond_2e

    .line 812
    .line 813
    move-object/from16 v0, p0

    .line 814
    .line 815
    move-object/from16 v1, p12

    .line 816
    .line 817
    move-object/from16 v2, p7

    .line 818
    .line 819
    move-object/from16 v3, p8

    .line 820
    .line 821
    move-object/from16 v4, p6

    .line 822
    .line 823
    move/from16 v5, p3

    .line 824
    .line 825
    move/from16 v6, p1

    .line 826
    .line 827
    move/from16 v7, p9

    .line 828
    .line 829
    move-object/from16 v8, p11

    .line 830
    .line 831
    move-object/from16 v9, p10

    .line 832
    .line 833
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->startInputUncheckedLocked(Lcom/android/server/inputmethod/ClientState;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/internal/inputmethod/InputBindResult;

    .line 834
    .line 835
    .line 836
    move-result-object v22

    .line 837
    goto :goto_19

    .line 838
    :cond_2e
    sget-object v22, Lcom/android/internal/inputmethod/InputBindResult;->NULL_EDITOR_INFO:Lcom/android/internal/inputmethod/InputBindResult;

    .line 839
    .line 840
    :cond_2f
    :goto_19
    return-object v22
.end method

.method public final startInputUncheckedLocked(Lcom/android/server/inputmethod/ClientState;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;Landroid/view/inputmethod/EditorInfo;IIILandroid/window/ImeOnBackInvokedDispatcher;Lcom/android/server/inputmethod/InputMethodBindingController;)Lcom/android/internal/inputmethod/InputBindResult;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    move/from16 v4, p6

    .line 10
    .line 11
    move-object/from16 v5, p9

    .line 12
    .line 13
    const/4 v7, 0x2

    .line 14
    iget-object v8, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 15
    .line 16
    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 17
    .line 18
    iget-object v9, v9, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 19
    .line 20
    iget-object v8, v8, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mRequestWindowStateMap:Ljava/util/WeakHashMap;

    .line 21
    .line 22
    invoke-virtual {v8, v9}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    check-cast v8, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;

    .line 27
    .line 28
    if-nez v8, :cond_0

    .line 29
    .line 30
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NOT_IME_TARGET_WINDOW:Lcom/android/internal/inputmethod/InputBindResult;

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_0
    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 34
    .line 35
    iget-object v10, v9, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mImeDisplayValidator:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    const/4 v11, -0x1

    .line 38
    iget v13, v1, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    .line 39
    .line 40
    if-eqz v13, :cond_3

    .line 41
    .line 42
    if-ne v13, v11, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v10, v10, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wm/WindowManagerInternal;

    .line 46
    .line 47
    invoke-virtual {v10, v13}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayImePolicy(I)I

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    if-nez v10, :cond_2

    .line 52
    .line 53
    move v10, v13

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    if-ne v10, v7, :cond_3

    .line 56
    .line 57
    move v10, v11

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    :goto_0
    const/4 v10, 0x0

    .line 60
    :goto_1
    iget-object v14, v9, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 61
    .line 62
    invoke-virtual {v14, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->semComputeImeDisplayIdForTarget(I)I

    .line 63
    .line 64
    .line 65
    move-result v10

    .line 66
    iput v10, v8, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeTargetWindowState;->mImeDisplayId:I

    .line 67
    .line 68
    if-ne v10, v11, :cond_4

    .line 69
    .line 70
    const/4 v8, 0x1

    .line 71
    goto :goto_2

    .line 72
    :cond_4
    const/4 v8, 0x0

    .line 73
    :goto_2
    iget-object v9, v9, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    .line 74
    .line 75
    iput-boolean v8, v9, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mImeHiddenByDisplayPolicy:Z

    .line 76
    .line 77
    iput v10, v5, Lcom/android/server/inputmethod/InputMethodBindingController;->mDisplayIdToShowIme:I

    .line 78
    .line 79
    iget-object v8, v5, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 82
    .line 83
    const-class v10, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 84
    .line 85
    if-nez v9, :cond_5

    .line 86
    .line 87
    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    check-cast v9, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 92
    .line 93
    iput-object v9, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 94
    .line 95
    :cond_5
    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 96
    .line 97
    const/4 v14, 0x0

    .line 98
    const-string v15, "InputMethodManagerService"

    .line 99
    .line 100
    if-eqz v9, :cond_7

    .line 101
    .line 102
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->vdmCustomIme()Z

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    if-nez v9, :cond_6

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_6
    iget v9, v5, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    .line 110
    .line 111
    invoke-static {v9}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-virtual {v0, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    iget v12, v9, Lcom/android/server/inputmethod/InputMethodBindingController;->mDeviceIdToShowIme:I

    .line 120
    .line 121
    iget v11, v9, Lcom/android/server/inputmethod/InputMethodBindingController;->mDisplayIdToShowIme:I

    .line 122
    .line 123
    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 124
    .line 125
    check-cast v6, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    .line 126
    .line 127
    iget-object v6, v6, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 128
    .line 129
    iget-object v6, v6, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    .line 130
    .line 131
    invoke-virtual {v6, v11}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->getDeviceIdForDisplayId(I)I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    iput v6, v9, Lcom/android/server/inputmethod/InputMethodBindingController;->mDeviceIdToShowIme:I

    .line 136
    .line 137
    if-nez v6, :cond_9

    .line 138
    .line 139
    if-nez v12, :cond_8

    .line 140
    .line 141
    :cond_7
    :goto_3
    move-object v6, v8

    .line 142
    goto :goto_4

    .line 143
    :cond_8
    iget v6, v7, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 144
    .line 145
    const-string/jumbo v9, "default_device_input_method"

    .line 146
    .line 147
    .line 148
    invoke-static {v9, v14, v6}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v6

    .line 152
    invoke-virtual {v7, v14}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_9
    iget-object v14, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDeviceMethodMap:Landroid/util/SparseArray;

    .line 157
    .line 158
    invoke-virtual {v14, v6, v8}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v14

    .line 162
    check-cast v14, Ljava/lang/String;

    .line 163
    .line 164
    invoke-static {v14, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v16

    .line 168
    if-eqz v16, :cond_a

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_a
    iget-object v4, v7, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 172
    .line 173
    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    .line 174
    .line 175
    invoke-virtual {v4, v14}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v4

    .line 179
    if-nez v4, :cond_b

    .line 180
    .line 181
    const-string/jumbo v4, "computeCurrentDeviceMethodIdLocked: disabling ime, newDeviceId="

    .line 182
    .line 183
    .line 184
    const-string v7, ", deviceMethodId="

    .line 185
    .line 186
    const-string v3, ", oldDeviceId="

    .line 187
    .line 188
    invoke-static {v6, v4, v7, v14, v3}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    const-string v4, ", displayIdToShowIme="

    .line 193
    .line 194
    const-string v6, ", curTokenDisplayId="

    .line 195
    .line 196
    invoke-static {v12, v11, v4, v6, v3}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 197
    .line 198
    .line 199
    iget v4, v9, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    .line 200
    .line 201
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v4, ", mVirtualDeviceMethodMap="

    .line 205
    .line 206
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVirtualDeviceMethodMap:Landroid/util/SparseArray;

    .line 210
    .line 211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    invoke-static {v15, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    const/4 v6, 0x0

    .line 222
    goto :goto_4

    .line 223
    :cond_b
    if-nez v12, :cond_c

    .line 224
    .line 225
    invoke-virtual {v7, v8}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :cond_c
    move-object v6, v14

    .line 229
    :goto_4
    if-nez v6, :cond_e

    .line 230
    .line 231
    if-nez v13, :cond_d

    .line 232
    .line 233
    const-string/jumbo v3, "startInputUncheckedLocked setImeHiddenByDisplayPolicy skip"

    .line 234
    .line 235
    .line 236
    invoke-static {v15, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_d
    const-string/jumbo v3, "startInputUncheckedLocked setImeHiddenByDisplayPolicy true, csDisplayId : "

    .line 241
    .line 242
    .line 243
    invoke-static {v13, v3, v15}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 247
    .line 248
    iget-object v3, v3, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    .line 249
    .line 250
    const/4 v4, 0x1

    .line 251
    iput-boolean v4, v3, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mImeHiddenByDisplayPolicy:Z

    .line 252
    .line 253
    goto :goto_5

    .line 254
    :cond_e
    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    if-nez v3, :cond_f

    .line 259
    .line 260
    iget v3, v5, Lcom/android/server/inputmethod/InputMethodBindingController;->mDeviceIdToShowIme:I

    .line 261
    .line 262
    const/4 v4, -0x1

    .line 263
    invoke-virtual {v0, v4, v3, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IILjava/lang/String;)V

    .line 264
    .line 265
    .line 266
    move-object v8, v6

    .line 267
    :cond_f
    :goto_5
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 268
    .line 269
    iget-object v3, v3, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mPolicy:Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;

    .line 270
    .line 271
    iget-boolean v3, v3, Lcom/android/server/inputmethod/ImeVisibilityStateComputer$ImeVisibilityPolicy;->mImeHiddenByDisplayPolicy:Z

    .line 272
    .line 273
    if-eqz v3, :cond_10

    .line 274
    .line 275
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 276
    .line 277
    iget-object v1, v1, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 278
    .line 279
    const/16 v2, 0x1b

    .line 280
    .line 281
    invoke-virtual {v0, v2, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/IBinder;)Z

    .line 282
    .line 283
    .line 284
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NO_IME:Lcom/android/internal/inputmethod/InputBindResult;

    .line 285
    .line 286
    return-object v0

    .line 287
    :cond_10
    if-nez v8, :cond_11

    .line 288
    .line 289
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NO_IME:Lcom/android/internal/inputmethod/InputBindResult;

    .line 290
    .line 291
    return-object v0

    .line 292
    :cond_11
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 293
    .line 294
    if-eq v3, v1, :cond_12

    .line 295
    .line 296
    const/4 v3, 0x1

    .line 297
    invoke-virtual {v0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 298
    .line 299
    .line 300
    iget-boolean v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    .line 301
    .line 302
    if-eqz v4, :cond_13

    .line 303
    .line 304
    iget-object v4, v1, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 305
    .line 306
    const/4 v6, 0x0

    .line 307
    invoke-virtual {v4, v3, v6}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setActive(ZZ)V

    .line 308
    .line 309
    .line 310
    goto :goto_6

    .line 311
    :cond_12
    const/4 v3, 0x1

    .line 312
    :cond_13
    :goto_6
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 313
    .line 314
    if-eqz v4, :cond_14

    .line 315
    .line 316
    move v4, v3

    .line 317
    goto :goto_7

    .line 318
    :cond_14
    const/4 v4, 0x0

    .line 319
    :goto_7
    iget v6, v5, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    .line 320
    .line 321
    add-int/2addr v6, v3

    .line 322
    iput v6, v5, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    .line 323
    .line 324
    if-gtz v6, :cond_15

    .line 325
    .line 326
    iput v3, v5, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    .line 327
    .line 328
    :cond_15
    iput-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 329
    .line 330
    iput-object v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 331
    .line 332
    move-object/from16 v3, p3

    .line 333
    .line 334
    iput-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurRemoteAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    .line 335
    .line 336
    move-object/from16 v3, p8

    .line 337
    .line 338
    iput-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    .line 339
    .line 340
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 341
    .line 342
    if-nez v3, :cond_16

    .line 343
    .line 344
    invoke-static {v10}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v3

    .line 348
    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 349
    .line 350
    iput-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 351
    .line 352
    :cond_16
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVdmInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 353
    .line 354
    move-object/from16 v6, p4

    .line 355
    .line 356
    if-eqz v3, :cond_17

    .line 357
    .line 358
    iget-object v7, v6, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    .line 359
    .line 360
    if-nez v7, :cond_17

    .line 361
    .line 362
    iget v7, v1, Lcom/android/server/inputmethod/ClientState;->mUid:I

    .line 363
    .line 364
    invoke-virtual {v3, v7}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getPreferredLocaleListForUid(I)Landroid/os/LocaleList;

    .line 365
    .line 366
    .line 367
    move-result-object v3

    .line 368
    if-eqz v3, :cond_17

    .line 369
    .line 370
    iput-object v3, v6, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    .line 371
    .line 372
    :cond_17
    iput-object v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 373
    .line 374
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 375
    .line 376
    if-eqz v3, :cond_18

    .line 377
    .line 378
    const/4 v3, 0x1

    .line 379
    goto :goto_8

    .line 380
    :cond_18
    const/4 v3, 0x0

    .line 381
    :goto_8
    if-eq v3, v4, :cond_19

    .line 382
    .line 383
    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    .line 384
    .line 385
    iget-object v4, v4, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    .line 386
    .line 387
    iget-object v4, v4, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 388
    .line 389
    invoke-interface {v4, v3}, Lcom/android/server/input/NativeInputManagerService;->setInputMethodConnectionIsActive(Z)V

    .line 390
    .line 391
    .line 392
    :cond_19
    sput-object v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputConnectionForKnox:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 393
    .line 394
    iget v2, v6, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    .line 395
    .line 396
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    .line 397
    .line 398
    if-eqz v3, :cond_1a

    .line 399
    .line 400
    const/4 v3, 0x1

    .line 401
    goto :goto_9

    .line 402
    :cond_1a
    const/4 v3, 0x0

    .line 403
    :goto_9
    sget-object v4, Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;

    .line 404
    .line 405
    const-string/jumbo v4, "sys.datawedge.prop"

    .line 406
    .line 407
    .line 408
    const/4 v6, 0x0

    .line 409
    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 410
    .line 411
    .line 412
    move-result v4

    .line 413
    const/4 v6, 0x1

    .line 414
    if-ne v4, v6, :cond_1c

    .line 415
    .line 416
    const-string/jumbo v4, "|"

    .line 417
    .line 418
    .line 419
    const/4 v6, 0x5

    .line 420
    if-nez v3, :cond_1b

    .line 421
    .line 422
    sget-boolean v3, Lcom/android/server/DualAppManagerService;->isNullInputContextNotified:Z

    .line 423
    .line 424
    if-nez v3, :cond_1c

    .line 425
    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    .line 427
    .line 428
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .line 430
    .line 431
    sget-object v7, Lcom/android/server/DualAppManagerService;->lastResumedActivity:Ljava/lang/String;

    .line 432
    .line 433
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v2

    .line 446
    const/4 v3, 0x0

    .line 447
    invoke-static {v6, v3, v2}, Lcom/android/server/DualAppManagerService;->sendInternalMsg(IILjava/lang/Object;)V

    .line 448
    .line 449
    .line 450
    const/4 v2, 0x1

    .line 451
    sput-boolean v2, Lcom/android/server/DualAppManagerService;->isNullInputContextNotified:Z

    .line 452
    .line 453
    goto :goto_a

    .line 454
    :cond_1b
    sget-boolean v3, Lcom/android/server/DualAppManagerService;->isNotNullInputContextNotified:Z

    .line 455
    .line 456
    if-nez v3, :cond_1c

    .line 457
    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    .line 459
    .line 460
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 461
    .line 462
    .line 463
    sget-object v7, Lcom/android/server/DualAppManagerService;->lastResumedActivity:Ljava/lang/String;

    .line 464
    .line 465
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    const/4 v3, 0x1

    .line 479
    invoke-static {v6, v3, v2}, Lcom/android/server/DualAppManagerService;->sendInternalMsg(IILjava/lang/Object;)V

    .line 480
    .line 481
    .line 482
    sput-boolean v3, Lcom/android/server/DualAppManagerService;->isNotNullInputContextNotified:Z

    .line 483
    .line 484
    sput-boolean v3, Lcom/android/server/DualAppManagerService;->isNullInputContextNotified:Z

    .line 485
    .line 486
    :cond_1c
    :goto_a
    iget-boolean v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mPreventImeStartupUnlessTextEditor:Z

    .line 487
    .line 488
    if-nez v2, :cond_1d

    .line 489
    .line 490
    :goto_b
    const/4 v4, 0x1

    .line 491
    goto :goto_d

    .line 492
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->isShowRequestedForCurrentWindow()Z

    .line 493
    .line 494
    .line 495
    move-result v2

    .line 496
    if-eqz v2, :cond_1e

    .line 497
    .line 498
    goto :goto_b

    .line 499
    :cond_1e
    const/16 v2, 0x1c

    .line 500
    .line 501
    move/from16 v3, p7

    .line 502
    .line 503
    if-ge v3, v2, :cond_1f

    .line 504
    .line 505
    goto :goto_b

    .line 506
    :cond_1f
    const/4 v4, 0x1

    .line 507
    and-int/lit8 v2, p5, 0x1

    .line 508
    .line 509
    if-nez v2, :cond_20

    .line 510
    .line 511
    goto :goto_c

    .line 512
    :cond_20
    const/4 v2, 0x2

    .line 513
    and-int/lit8 v2, p5, 0x2

    .line 514
    .line 515
    if-nez v2, :cond_24

    .line 516
    .line 517
    :goto_c
    iget v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 518
    .line 519
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 524
    .line 525
    invoke-virtual {v2, v8}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 526
    .line 527
    .line 528
    move-result-object v2

    .line 529
    if-nez v2, :cond_21

    .line 530
    .line 531
    goto :goto_d

    .line 532
    :cond_21
    iget-object v3, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mNonPreemptibleInputMethods:[Ljava/lang/String;

    .line 533
    .line 534
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    move-result v2

    .line 542
    if-eqz v2, :cond_22

    .line 543
    .line 544
    goto :goto_d

    .line 545
    :cond_22
    iget-object v0, v5, Lcom/android/server/inputmethod/InputMethodBindingController;->mAutofillController:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    .line 546
    .line 547
    iget-object v0, v0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mInlineSuggestionsRequestCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

    .line 548
    .line 549
    if-eqz v0, :cond_23

    .line 550
    .line 551
    invoke-interface {v0}, Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;->onInlineSuggestionsSessionInvalidated()V

    .line 552
    .line 553
    .line 554
    :cond_23
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 555
    .line 556
    .line 557
    sget-object v0, Lcom/android/internal/inputmethod/InputBindResult;->NO_EDITOR:Lcom/android/internal/inputmethod/InputBindResult;

    .line 558
    .line 559
    return-object v0

    .line 560
    :cond_24
    :goto_d
    iget-object v2, v5, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    .line 561
    .line 562
    iget v3, v5, Lcom/android/server/inputmethod/InputMethodBindingController;->mDisplayIdToShowIme:I

    .line 563
    .line 564
    if-eqz v2, :cond_2c

    .line 565
    .line 566
    iget-object v6, v5, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    .line 567
    .line 568
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 569
    .line 570
    .line 571
    move-result v2

    .line 572
    if-eqz v2, :cond_2c

    .line 573
    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurTokenDisplayIdLocked()I

    .line 575
    .line 576
    .line 577
    move-result v2

    .line 578
    if-ne v3, v2, :cond_2c

    .line 579
    .line 580
    iget-object v2, v1, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 581
    .line 582
    if-eqz v2, :cond_27

    .line 583
    .line 584
    const/4 v2, 0x0

    .line 585
    iput-boolean v2, v1, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    .line 586
    .line 587
    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 588
    .line 589
    .line 590
    and-int/lit8 v1, p5, 0x4

    .line 591
    .line 592
    move/from16 v3, p6

    .line 593
    .line 594
    if-eqz v1, :cond_25

    .line 595
    .line 596
    move v2, v4

    .line 597
    goto :goto_e

    .line 598
    :cond_25
    const/4 v2, 0x0

    .line 599
    :goto_e
    invoke-virtual {v0, v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewAccessibilityLocked(IZ)V

    .line 600
    .line 601
    .line 602
    if-eqz v1, :cond_26

    .line 603
    .line 604
    move v6, v4

    .line 605
    goto :goto_f

    .line 606
    :cond_26
    const/4 v6, 0x0

    .line 607
    :goto_f
    invoke-virtual {v0, v3, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->attachNewInputLocked(IZ)Lcom/android/internal/inputmethod/InputBindResult;

    .line 608
    .line 609
    .line 610
    move-result-object v0

    .line 611
    return-object v0

    .line 612
    :cond_27
    iget-boolean v2, v5, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasMainConnection:Z

    .line 613
    .line 614
    if-eqz v2, :cond_2b

    .line 615
    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 617
    .line 618
    .line 619
    move-result-object v2

    .line 620
    if-eqz v2, :cond_29

    .line 621
    .line 622
    invoke-static {}, Landroid/view/inputmethod/Flags;->useZeroJankProxy()Z

    .line 623
    .line 624
    .line 625
    move-result v2

    .line 626
    if-nez v2, :cond_28

    .line 627
    .line 628
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 629
    .line 630
    .line 631
    invoke-static/range {p1 .. p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 632
    .line 633
    .line 634
    :cond_28
    new-instance v14, Lcom/android/internal/inputmethod/InputBindResult;

    .line 635
    .line 636
    iget-object v1, v5, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    .line 637
    .line 638
    iget v2, v5, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    .line 639
    .line 640
    const/4 v3, 0x0

    .line 641
    const/4 v4, 0x0

    .line 642
    const/4 v6, 0x1

    .line 643
    const/4 v7, 0x0

    .line 644
    const/4 v8, 0x0

    .line 645
    move-object/from16 p1, v14

    .line 646
    .line 647
    move/from16 p2, v6

    .line 648
    .line 649
    move-object/from16 p3, v3

    .line 650
    .line 651
    move-object/from16 p4, v7

    .line 652
    .line 653
    move-object/from16 p5, v8

    .line 654
    .line 655
    move-object/from16 p6, v1

    .line 656
    .line 657
    move/from16 p7, v2

    .line 658
    .line 659
    move/from16 p8, v4

    .line 660
    .line 661
    invoke-direct/range {p1 .. p8}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    .line 662
    .line 663
    .line 664
    goto :goto_10

    .line 665
    :cond_29
    iget-wide v1, v5, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    .line 666
    .line 667
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 668
    .line 669
    .line 670
    move-result-wide v3

    .line 671
    sub-long/2addr v3, v1

    .line 672
    const-wide/16 v1, 0xbb8

    .line 673
    .line 674
    cmp-long v1, v3, v1

    .line 675
    .line 676
    if-gez v1, :cond_2a

    .line 677
    .line 678
    new-instance v14, Lcom/android/internal/inputmethod/InputBindResult;

    .line 679
    .line 680
    iget-object v1, v5, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    .line 681
    .line 682
    iget v2, v5, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    .line 683
    .line 684
    const/4 v3, 0x0

    .line 685
    const/4 v4, 0x0

    .line 686
    const/4 v6, 0x2

    .line 687
    const/4 v7, 0x0

    .line 688
    const/4 v8, 0x0

    .line 689
    move-object/from16 p1, v14

    .line 690
    .line 691
    move/from16 p2, v6

    .line 692
    .line 693
    move-object/from16 p3, v3

    .line 694
    .line 695
    move-object/from16 p4, v7

    .line 696
    .line 697
    move-object/from16 p5, v8

    .line 698
    .line 699
    move-object/from16 p6, v1

    .line 700
    .line 701
    move/from16 p7, v2

    .line 702
    .line 703
    move/from16 p8, v4

    .line 704
    .line 705
    invoke-direct/range {p1 .. p8}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    .line 706
    .line 707
    .line 708
    goto :goto_10

    .line 709
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getSelectedMethodIdLocked()Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v1

    .line 713
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 714
    .line 715
    .line 716
    move-result-object v2

    .line 717
    const/4 v3, 0x0

    .line 718
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 719
    .line 720
    .line 721
    move-result-object v3

    .line 722
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 723
    .line 724
    .line 725
    move-result-object v1

    .line 726
    const/16 v2, 0x7d00

    .line 727
    .line 728
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 729
    .line 730
    .line 731
    :cond_2b
    const/4 v14, 0x0

    .line 732
    :goto_10
    if-eqz v14, :cond_2c

    .line 733
    .line 734
    return-object v14

    .line 735
    :cond_2c
    invoke-virtual {v0, v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->setDisplayImePolicyDexDeskTopMode(I)V

    .line 736
    .line 737
    .line 738
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 739
    .line 740
    .line 741
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentMethod()Lcom/android/internal/inputmethod/InputBindResult;

    .line 742
    .line 743
    .line 744
    move-result-object v0

    .line 745
    return-object v0
.end method

.method public final startProtoDump([BILjava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    if-eq v1, v3, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual {v4}, Lcom/android/internal/inputmethod/ImeTracing;->isAvailable()Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-eqz v5, :cond_5

    .line 22
    .line 23
    invoke-virtual {v4}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-nez v5, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    new-instance v5, Landroid/util/proto/ProtoOutputStream;

    .line 31
    .line 32
    invoke-direct {v5}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 33
    .line 34
    .line 35
    const-wide v6, 0x10b00000003L

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    const-wide v8, 0x10900000002L

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    const-wide v10, 0x10600000001L

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    const-wide v12, 0x20b00000002L

    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    if-eqz v1, :cond_4

    .line 56
    .line 57
    const/4 v14, 0x1

    .line 58
    if-eq v1, v14, :cond_3

    .line 59
    .line 60
    if-eq v1, v3, :cond_2

    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    invoke-virtual {v5, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 64
    .line 65
    .line 66
    move-result-wide v6

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 68
    .line 69
    .line 70
    move-result-wide v12

    .line 71
    invoke-virtual {v5, v10, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 75
    .line 76
    .line 77
    move-object/from16 v0, p0

    .line 78
    .line 79
    invoke-virtual {v0, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    invoke-virtual {v5, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 87
    .line 88
    .line 89
    move-result-wide v12

    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 91
    .line 92
    .line 93
    move-result-wide v14

    .line 94
    invoke-virtual {v5, v10, v11, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    invoke-virtual {v5, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 108
    .line 109
    .line 110
    move-result-wide v12

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 112
    .line 113
    .line 114
    move-result-wide v14

    .line 115
    invoke-virtual {v5, v10, v11, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v8, v9, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v6, v7, v0}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 125
    .line 126
    .line 127
    :goto_0
    invoke-virtual {v4, v5, v1}, Lcom/android/internal/inputmethod/ImeTracing;->addToBuffer(Landroid/util/proto/ProtoOutputStream;I)V

    .line 128
    .line 129
    .line 130
    :cond_5
    :goto_1
    return-void
.end method

.method public final startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ZLcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)Z

    return-void
.end method

.method public final startStylusHandwriting(Lcom/android/internal/inputmethod/IInputMethodClient;ZLcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)Z
    .locals 6

    .line 2
    const-string v0, "IMMS.startStylusHandwriting"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3
    :try_start_0
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    const-string v3, "InputMethodManagerService#startStylusHandwriting"

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mDumper:Lcom/android/server/inputmethod/InputMethodManagerService$1;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/inputmethod/ImeTracing;->triggerManagerServiceDump(Ljava/lang/String;Lcom/android/internal/inputmethod/ImeTracing$ServiceDumper;)V

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5
    const-class v3, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p2, :cond_0

    .line 6
    :try_start_1
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p2}, Lcom/android/server/inputmethod/HandwritingModeController;->clearPendingHandwritingDelegation()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 7
    :cond_0
    :goto_0
    const-string/jumbo p2, "startStylusHandwriting"

    const/4 v4, 0x0

    invoke-virtual {p0, v0, p1, p2, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->canInteractWithImeLocked(ILcom/android/internal/inputmethod/IInputMethodClient;Ljava/lang/String;Landroid/view/inputmethod/ImeTracker$Token;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 8
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    .line 10
    :cond_1
    :try_start_2
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStylusIds:Landroid/util/IntArray;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/util/IntArray;->size()I

    move-result p1

    if-eqz p1, :cond_7

    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :try_start_3
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    move-result-object p1

    .line 13
    iget-boolean p1, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    if-nez p1, :cond_2

    .line 14
    const-string p0, "InputMethodManagerService"

    const-string p1, "Stylus HW unsupported by IME. Ignoring startStylusHandwriting()"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 15
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 16
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 17
    :cond_2
    :try_start_5
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {p1}, Lcom/android/server/inputmethod/HandwritingModeController;->getCurrentRequestId()Ljava/util/OptionalInt;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_3

    .line 19
    const-string p0, "InputMethodManagerService"

    const-string p1, "Stylus handwriting was not initialized."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 20
    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 21
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    .line 22
    :cond_3
    :try_start_7
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/HandwritingModeController;->isStylusGestureOngoing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 23
    const-string p0, "InputMethodManagerService"

    const-string p1, "There is no ongoing stylus gesture to start stylus handwriting."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 24
    :try_start_8
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 25
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    .line 26
    :cond_4
    :try_start_9
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHwController:Lcom/android/server/inputmethod/HandwritingModeController;

    .line 27
    iget-object v0, v0, Lcom/android/server/inputmethod/HandwritingModeController;->mHandwritingSurface:Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;

    if-eqz v0, :cond_5

    .line 28
    iget-boolean v0, v0, Lcom/android/server/inputmethod/HandwritingEventReceiverSurface;->mIsIntercepting:Z

    if-eqz v0, :cond_5

    .line 29
    const-string p0, "InputMethodManagerService"

    const-string p1, "Stylus handwriting session is already ongoing. Ignoring startStylusHandwriting()."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 30
    :try_start_a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 31
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    .line 32
    :cond_5
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 33
    invoke-virtual {p1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 34
    :try_start_c
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    invoke-interface {p0, p1, p3, p4, p5}, Lcom/android/internal/inputmethod/IInputMethod;->canStartStylusHandwriting(ILcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_1

    :catch_0
    move-exception p0

    .line 35
    :try_start_d
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 36
    :goto_1
    :try_start_e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 37
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x1

    return p0

    .line 38
    :cond_6
    :try_start_f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 40
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    .line 41
    :goto_2
    :try_start_10
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    throw p0

    .line 43
    :cond_7
    const-string p0, "InputMethodManagerService"

    const-string p1, "No supported Stylus hardware found on device. Ignoring startStylusHandwriting()"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 45
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p2

    .line 46
    :goto_3
    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :try_start_12
    throw p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :catchall_2
    move-exception p0

    .line 47
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 48
    throw p0
.end method

.method public final stopImeTrace()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/internal/inputmethod/ImeTracing;->stopTrace(Ljava/io/PrintWriter;)V

    .line 7
    .line 8
    .line 9
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    .line 13
    .line 14
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda8;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-direct {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda8;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v1}, Lcom/android/server/inputmethod/ClientController;->forAllClients(Ljava/util/function/Consumer;)V

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public final switchToInputMethodLocked(ILjava/lang/String;)Z
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, -0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x0

    .line 11
    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 12
    .line 13
    if-ne p1, v1, :cond_2

    .line 14
    .line 15
    iget-object p1, v6, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v6, p2}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0, v3, v5, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IILjava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return v2

    .line 42
    :cond_1
    :goto_0
    return v5

    .line 43
    :cond_2
    iget-object p0, v6, Lcom/android/server/inputmethod/InputMethodMap;->mMap:Landroid/util/ArrayMap;

    .line 44
    .line 45
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_4

    .line 50
    .line 51
    invoke-virtual {v0, v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {v6, p2}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    if-nez p0, :cond_3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget p0, v0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    .line 70
    .line 71
    invoke-static {p0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const-string/jumbo p1, "selected_input_method_subtype"

    .line 76
    .line 77
    .line 78
    invoke-interface {p0, v3, p1}, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;->putInt(ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return v2

    .line 82
    :cond_4
    :goto_1
    return v5
.end method

.method public final unbindCurrentClientLocked(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToMethod:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    :try_start_0
    iget-object v0, v0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 19
    .line 20
    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputMethod;->unbindInput()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    invoke-static {v0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBoundToAccessibility:Z

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 33
    .line 34
    invoke-virtual {v0, v1, v1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->setActive(ZZ)V

    .line 35
    .line 36
    .line 37
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 44
    .line 45
    iget-object v2, v2, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    .line 46
    .line 47
    iget v0, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    .line 48
    .line 49
    iget-boolean v3, v2, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mIsProxy:Z

    .line 50
    .line 51
    if-eqz v3, :cond_1

    .line 52
    .line 53
    :try_start_1
    iget-object v2, v2, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethodClient;

    .line 54
    .line 55
    invoke-interface {v2, v0, p1}, Lcom/android/internal/inputmethod/IInputMethodClient;->onUnbindMethod(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catch_1
    move-exception p1

    .line 60
    invoke-static {p1}, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    new-instance v3, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda0;

    .line 65
    .line 66
    const/4 v4, 0x0

    .line 67
    invoke-direct {v3, v2, v0, p1, v4}, Lcom/android/server/inputmethod/IInputMethodClientInvoker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;III)V

    .line 68
    .line 69
    .line 70
    iget-object p1, v2, Lcom/android/server/inputmethod/IInputMethodClientInvoker;->mHandler:Landroid/os/Handler;

    .line 71
    .line 72
    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    .line 74
    .line 75
    :goto_1
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 76
    .line 77
    iput-boolean v1, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    .line 78
    .line 79
    iput-boolean v1, p1, Lcom/android/server/inputmethod/ClientState;->mSessionRequestedForAccessibility:Z

    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 83
    .line 84
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 89
    .line 90
    const/16 v2, 0x8

    .line 91
    .line 92
    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 93
    .line 94
    .line 95
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenuLocked()V

    .line 100
    .line 101
    .line 102
    :cond_2
    return-void
.end method

.method public final undoMinimizeSoftInput()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 9
    .line 10
    invoke-interface {p0}, Lcom/android/internal/inputmethod/IInputMethod;->undoMinimizeSoftInput()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    invoke-static {p0}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public final updateFromSettingsLocked(Z)V
    .locals 2

    .line 1
    const-string v0, "InputMethodManagerService"

    .line 2
    .line 3
    const-string/jumbo v1, "updateFromSettingsLocked"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(Z)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodMenuController;->updateKeyboardFromSettingsLocked()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final updateImeSwitchStatus(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-interface {p0, p1, v0}, Lcom/android/internal/inputmethod/IInputMethodSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    :cond_0
    return-void
.end method

.method public final updateInputMethodsFromSettingsLocked(Z)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x4

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v1, v4}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    move v6, v3

    .line 23
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    if-ge v6, v7, :cond_1

    .line 28
    .line 29
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    .line 34
    .line 35
    :try_start_0
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    const-wide/32 v9, 0x8000

    .line 40
    .line 41
    .line 42
    invoke-static {v9, v10}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-object v8, v4

    .line 52
    :goto_1
    if-eqz v8, :cond_0

    .line 53
    .line 54
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 55
    .line 56
    if-ne v8, v2, :cond_0

    .line 57
    .line 58
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    const/4 v8, 0x1

    .line 63
    invoke-virtual {p1, v7, v3, v8}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 64
    .line 65
    .line 66
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget p1, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mDeviceIdToShowIme:I

    .line 76
    .line 77
    if-nez p1, :cond_2

    .line 78
    .line 79
    const-string/jumbo p1, "default_input_method"

    .line 80
    .line 81
    .line 82
    invoke-static {p1, v4, v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    const-string/jumbo v6, "default_device_input_method"

    .line 87
    .line 88
    .line 89
    invoke-static {v6, v4, v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    if-eqz v7, :cond_2

    .line 94
    .line 95
    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    if-nez v5, :cond_2

    .line 100
    .line 101
    invoke-static {v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-interface {v5, p1, v7}, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->get(I)Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-interface {p1, v6, v4}, Lcom/android/server/inputmethod/SecureSettingsWrapper$ReaderWriter;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_2
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    if-eqz v4, :cond_3

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked()Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_3

    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    const-string v5, "InputMethodManagerService"

    .line 140
    .line 141
    if-nez v4, :cond_4

    .line 142
    .line 143
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethodSubtypeId(Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :catch_1
    move-exception v2

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v4, "Unknown input method from prefs: "

    .line 155
    .line 156
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-static {v5, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    .line 168
    .line 169
    const/4 v2, 0x5

    .line 170
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClientLocked(I)V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetCurrentMethodAndClientLocked(I)V

    .line 175
    .line 176
    .line 177
    :goto_2
    const-string/jumbo v2, "updateInputMethodsFromSettingsLocked: id="

    .line 178
    .line 179
    .line 180
    invoke-static {v2, p1, v5}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 184
    .line 185
    iget v7, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mUserId:I

    .line 186
    .line 187
    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 188
    .line 189
    if-ne v0, v7, :cond_5

    .line 190
    .line 191
    iget-object v8, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    .line 192
    .line 193
    iget-object v5, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mContext:Landroid/content/Context;

    .line 194
    .line 195
    const/4 v4, 0x0

    .line 196
    const/4 v2, 0x0

    .line 197
    const/4 v3, 0x0

    .line 198
    move-object v6, v1

    .line 199
    invoke-static/range {v2 .. v7}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->getSortedInputMethodAndSubtypeList(ZZZLandroid/content/Context;Lcom/android/server/inputmethod/InputMethodMap;I)Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-static {v8, v2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->createFrom(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;Ljava/util/List;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    iput-object v2, p1, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_5
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 211
    .line 212
    new-instance v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 213
    .line 214
    invoke-direct {v2, p1, v1, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;-><init>(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodMap;I)V

    .line 215
    .line 216
    .line 217
    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSwitchingController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    .line 218
    .line 219
    :goto_3
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHardwareKeyboardShortcutController:Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;

    .line 220
    .line 221
    iget v2, p1, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;->mUserId:I

    .line 222
    .line 223
    if-ne v0, v2, :cond_6

    .line 224
    .line 225
    invoke-virtual {p1, v1}, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;->reset(Lcom/android/server/inputmethod/InputMethodMap;)V

    .line 226
    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_6
    new-instance p1, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;

    .line 230
    .line 231
    invoke-direct {p1, v1, v0}, Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;-><init>(Lcom/android/server/inputmethod/InputMethodMap;I)V

    .line 232
    .line 233
    .line 234
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHardwareKeyboardShortcutController:Lcom/android/server/inputmethod/HardwareKeyboardShortcutController;

    .line 235
    .line 236
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked()V

    .line 237
    .line 238
    .line 239
    return-void
.end method

.method public final updateSystemUiLocked(II)V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentUserId:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodBindingController(I)Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v4, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    .line 8
    .line 9
    if-nez v4, :cond_0

    .line 10
    .line 11
    goto/16 :goto_7

    .line 12
    .line 13
    :cond_0
    iget v3, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeBindingState:Lcom/android/server/inputmethod/ImeBindingState;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget-object v2, v2, Lcom/android/server/inputmethod/ImeBindingState;->mFocusedWindow:Landroid/os/IBinder;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object v2, v5

    .line 24
    :goto_0
    if-eqz v2, :cond_2

    .line 25
    .line 26
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mFocusedWindowPerceptible:Ljava/util/WeakHashMap;

    .line 27
    .line 28
    invoke-virtual {v5, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    move-object v5, v2

    .line 33
    check-cast v5, Ljava/lang/Boolean;

    .line 34
    .line 35
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 36
    .line 37
    .line 38
    move-result-wide v8

    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    :try_start_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSemImmsUtil:Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/android/server/inputmethod/SemInputMethodManagerServiceUtil;->isKeyguardLocked()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_3

    .line 48
    .line 49
    iget-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mIsInteractive:Z

    .line 50
    .line 51
    if-nez v2, :cond_4

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_8

    .line 56
    :cond_3
    :goto_1
    const-string p1, "InputMethodManagerService"

    .line 57
    .line 58
    const-string/jumbo v2, "updateSystemUiLocked(), Current client is not Keyguard, changing visibility to Vis : 0"

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    :cond_4
    if-eqz v5, :cond_6

    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_6

    .line 72
    .line 73
    and-int/lit8 v2, p1, 0x2

    .line 74
    .line 75
    if-eqz v2, :cond_5

    .line 76
    .line 77
    and-int/lit8 p1, p1, -0x3

    .line 78
    .line 79
    or-int/lit8 p1, p1, 0x8

    .line 80
    .line 81
    :cond_5
    :goto_2
    move v5, p1

    .line 82
    goto :goto_3

    .line 83
    :cond_6
    and-int/lit8 p1, p1, -0x9

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :goto_3
    iget-object p1, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMenuController:Lcom/android/server/inputmethod/InputMethodMenuController;

    .line 89
    .line 90
    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    .line 91
    .line 92
    if-nez v2, :cond_8

    .line 93
    .line 94
    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-nez p1, :cond_7

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_7
    :goto_4
    move v6, p2

    .line 104
    goto :goto_6

    .line 105
    :cond_8
    :goto_5
    const/4 p2, 0x3

    .line 106
    goto :goto_4

    .line 107
    :goto_6
    invoke-virtual {p0, v5, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->shouldShowImeSwitcherLocked(II)Z

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 112
    .line 113
    if-eqz p0, :cond_9

    .line 114
    .line 115
    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 116
    .line 117
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 118
    .line 119
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/statusbar/StatusBarManagerService;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .line 121
    .line 122
    :cond_9
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    .line 124
    .line 125
    :goto_7
    return-void

    .line 126
    :goto_8
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 127
    .line 128
    .line 129
    throw p0
.end method

.method public final updateSystemUiLocked$1()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final userHasDebugPriv(ILandroid/os/ShellCommand;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 2
    .line 3
    const-string/jumbo v0, "no_debugging_features"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string p2, "User #"

    .line 17
    .line 18
    const-string v0, " is restricted with DISALLOW_DEBUGGING_FEATURES."

    .line 19
    .line 20
    invoke-static {p1, p0, p2, v0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 p0, 0x1

    .line 26
    return p0
.end method
