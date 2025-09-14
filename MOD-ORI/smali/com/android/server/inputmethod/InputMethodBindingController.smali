.class public final Lcom/android/server/inputmethod/InputMethodBindingController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final IME_CONNECTION_BIND_FLAGS:I = 0x40880005

.field static final IME_VISIBLE_BIND_FLAGS:I = 0x2c001001


# instance fields
.field public final mAutofillController:Lcom/android/server/inputmethod/AutofillSuggestionsController;

.field public final mContext:Landroid/content/Context;

.field public mCurId:Ljava/lang/String;

.field public mCurIntent:Landroid/content/Intent;

.field public mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

.field public mCurMethodUid:I

.field public mCurSeq:I

.field public mCurToken:Landroid/os/IBinder;

.field public mCurTokenDisplayId:I

.field public mCurrentSubtype:Landroid/view/inputmethod/InputMethodSubtype;

.field public mDeviceIdToShowIme:I

.field public mDisplayIdToShowIme:I

.field public mHasMainConnection:Z

.field public mLastBindTime:J

.field public final mMainConnection:Lcom/android/server/inputmethod/InputMethodBindingController$2;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public mSelectedMethodId:Ljava/lang/String;

.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public mSupportsConnectionlessStylusHw:Z

.field public mSupportsStylusHw:Z

.field public final mUserId:I

.field public mVisibleBound:Z

.field public final mVisibleConnection:Lcom/android/server/inputmethod/InputMethodBindingController$1;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    .line 8
    .line 9
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mDisplayIdToShowIme:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mDeviceIdToShowIme:I

    .line 13
    .line 14
    new-instance v0, Lcom/android/server/inputmethod/InputMethodBindingController$1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodBindingController$1;-><init>(Lcom/android/server/inputmethod/InputMethodBindingController;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleConnection:Lcom/android/server/inputmethod/InputMethodBindingController$1;

    .line 20
    .line 21
    new-instance v0, Lcom/android/server/inputmethod/InputMethodBindingController$2;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodBindingController$2;-><init>(Lcom/android/server/inputmethod/InputMethodBindingController;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mMainConnection:Lcom/android/server/inputmethod/InputMethodBindingController$2;

    .line 27
    .line 28
    iput p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    .line 29
    .line 30
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 31
    .line 32
    iget-object p1, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    new-instance p1, Lcom/android/server/inputmethod/AutofillSuggestionsController;

    .line 37
    .line 38
    invoke-direct {p1, p0}, Lcom/android/server/inputmethod/AutofillSuggestionsController;-><init>(Lcom/android/server/inputmethod/InputMethodBindingController;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mAutofillController:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    .line 42
    .line 43
    iget-object p1, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 46
    .line 47
    iget-object p1, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final bindCurrentInputMethodService(Landroid/content/ServiceConnection;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "InputMethodBindingController"

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "bindCurrentInputMethodService: caller="

    .line 13
    .line 14
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/16 v2, 0xa

    .line 18
    .line 19
    invoke-static {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    .line 25
    .line 26
    new-instance v2, Landroid/os/UserHandle;

    .line 27
    .line 28
    iget p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    .line 29
    .line 30
    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    return p0

    .line 38
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v0, "--- bind failed: service = "

    .line 41
    .line 42
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    .line 46
    .line 47
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p0, ", conn = "

    .line 51
    .line 52
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    const/4 p0, 0x0

    .line 66
    return p0
.end method

.method public final bindCurrentMethod()Lcom/android/internal/inputmethod/InputBindResult;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "InputMethodBindingController"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo p0, "mSelectedMethodId is null!"

    .line 8
    .line 9
    .line 10
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    sget-object p0, Lcom/android/internal/inputmethod/InputBindResult;->NO_IME:Lcom/android/internal/inputmethod/InputBindResult;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    .line 17
    .line 18
    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    new-instance v3, Landroid/content/Intent;

    .line 37
    .line 38
    const-string v4, "android.view.InputMethod"

    .line 39
    .line 40
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    const-string v2, "android.intent.extra.client_label"

    .line 47
    .line 48
    const v4, 0x104069b

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const/4 v4, 0x2

    .line 59
    invoke-virtual {v2, v4}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    new-instance v5, Landroid/content/Intent;

    .line 66
    .line 67
    const-string v6, "android.settings.INPUT_METHOD_SETTINGS"

    .line 68
    .line 69
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const/4 v6, 0x0

    .line 77
    const/high16 v7, 0x4000000

    .line 78
    .line 79
    invoke-static {v4, v6, v5, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const-string v4, "android.intent.extra.client_intent"

    .line 84
    .line 85
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    .line 89
    .line 90
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mMainConnection:Lcom/android/server/inputmethod/InputMethodBindingController$2;

    .line 91
    .line 92
    const v3, 0x40880005    # 4.2500024f

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v2, v3}, Lcom/android/server/inputmethod/InputMethodBindingController;->bindCurrentInputMethodService(Landroid/content/ServiceConnection;I)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasMainConnection:Z

    .line 100
    .line 101
    const/4 v3, 0x0

    .line 102
    if-eqz v2, :cond_1

    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 111
    .line 112
    .line 113
    move-result-wide v4

    .line 114
    iput-wide v4, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    .line 115
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v2, "bindCurrentMethod: mLastBindTime="

    .line 119
    .line 120
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-wide v4, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    .line 124
    .line 125
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    new-instance v0, Landroid/os/Binder;

    .line 136
    .line 137
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 138
    .line 139
    .line 140
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    .line 141
    .line 142
    iget v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mDisplayIdToShowIme:I

    .line 143
    .line 144
    iput v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    .line 145
    .line 146
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 147
    .line 148
    const/16 v4, 0x7db

    .line 149
    .line 150
    invoke-virtual {v2, v0, v4, v1, v3}, Lcom/android/server/wm/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    .line 151
    .line 152
    .line 153
    new-instance v0, Lcom/android/internal/inputmethod/InputBindResult;

    .line 154
    .line 155
    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    .line 156
    .line 157
    iget v11, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurSeq:I

    .line 158
    .line 159
    const/4 v8, 0x0

    .line 160
    const/4 v9, 0x0

    .line 161
    const/4 v6, 0x2

    .line 162
    const/4 v7, 0x0

    .line 163
    const/4 v12, 0x0

    .line 164
    move-object v5, v0

    .line 165
    invoke-direct/range {v5 .. v12}, Lcom/android/internal/inputmethod/InputBindResult;-><init>(ILcom/android/internal/inputmethod/IInputMethodSession;Landroid/util/SparseArray;Landroid/view/InputChannel;Ljava/lang/String;IZ)V

    .line 166
    .line 167
    .line 168
    return-object v0

    .line 169
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string v1, "Failure connecting to input method service: "

    .line 172
    .line 173
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    const-string v1, "InputMethodManagerService"

    .line 186
    .line 187
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    .line 191
    .line 192
    sget-object p0, Lcom/android/internal/inputmethod/InputBindResult;->IME_NOT_CONNECTED:Lcom/android/internal/inputmethod/InputBindResult;

    .line 193
    .line 194
    return-object p0

    .line 195
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 196
    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    const-string v2, "Unknown id: "

    .line 200
    .line 201
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw v0
.end method

.method public final clearCurMethodAndSessions()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->getCurMethodLocked()Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, -0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    new-instance v1, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda9;

    .line 13
    .line 14
    const/4 v5, 0x1

    .line 15
    invoke-direct {v1, v5, v0}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda9;-><init>(ILcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 16
    .line 17
    .line 18
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mClientController:Lcom/android/server/inputmethod/ClientController;

    .line 19
    .line 20
    invoke-virtual {v5, v1}, Lcom/android/server/inputmethod/ClientController;->forAllClients(Ljava/util/function/Consumer;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    .line 26
    .line 27
    .line 28
    move v1, v2

    .line 29
    :goto_0
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-ge v1, v5, :cond_0

    .line 36
    .line 37
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    .line 38
    .line 39
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;

    .line 44
    .line 45
    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionForAccessibilityLocked(Lcom/android/server/inputmethod/InputMethodManagerService$AccessibilitySessionState;)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iput-object v4, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 52
    .line 53
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mEnabledAccessibilitySessions:Landroid/util/SparseArray;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 56
    .line 57
    .line 58
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 59
    .line 60
    const/16 v5, 0x1b58

    .line 61
    .line 62
    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 63
    .line 64
    .line 65
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 66
    .line 67
    invoke-virtual {v1, v5, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 72
    .line 73
    .line 74
    :cond_1
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 75
    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSlotIme:Ljava/lang/String;

    .line 79
    .line 80
    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerService$2;

    .line 81
    .line 82
    iget-object v1, v1, Lcom/android/server/statusbar/StatusBarManagerService$2;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    .line 83
    .line 84
    invoke-virtual {v1, v5, v2}, Lcom/android/server/statusbar/StatusBarManagerService;->setIconVisibility(Ljava/lang/String;Z)V

    .line 85
    .line 86
    .line 87
    :cond_2
    iput-boolean v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mInFullscreenMode:Z

    .line 88
    .line 89
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 90
    .line 91
    iget v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 92
    .line 93
    and-int/lit8 v0, v0, 0x2

    .line 94
    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    const/4 v0, 0x1

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    move v0, v2

    .line 100
    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowManagerInternal;->setDismissImeOnBackKeyPressed(ZZ)V

    .line 101
    .line 102
    .line 103
    iput-object v4, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 104
    .line 105
    iput v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    .line 106
    .line 107
    return-void
.end method

.method public final onCreateInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;Z)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mAutofillController:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mInlineSuggestionsRequestCallback:Lcom/android/internal/inputmethod/InlineSuggestionsRequestCallback;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    .line 11
    .line 12
    iget v2, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    .line 13
    .line 14
    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->isInlineSuggestionsEnabled()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    if-eqz p3, :cond_0

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->supportsInlineSuggestionsWithTouchExploration()Z

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    if-eqz p3, :cond_1

    .line 39
    .line 40
    :cond_0
    new-instance p3, Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {p3, p1, p2, v1}, Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;-><init>(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput-object p3, p0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mPendingInlineSuggestionsRequest:Lcom/android/server/inputmethod/AutofillSuggestionsController$CreateInlineSuggestionsRequest;

    .line 50
    .line 51
    iget-object p1, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 52
    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->performOnCreateInlineSuggestionsRequest()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->onInlineSuggestionsUnsupported()V

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_0
    return-void
.end method

.method public final unbindCurrentMethod()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "unbindCurrentMethod: caller="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/16 v1, 0xa

    .line 10
    .line 11
    const-string v2, "InputMethodBindingController"

    .line 12
    .line 13
    invoke-static {v1, v0, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleConnection:Lcom/android/server/inputmethod/InputMethodBindingController$1;

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 26
    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mVisibleBound:Z

    .line 29
    .line 30
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasMainConnection:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mMainConnection:Lcom/android/server/inputmethod/InputMethodBindingController$2;

    .line 37
    .line 38
    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 39
    .line 40
    .line 41
    iput-boolean v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mHasMainConnection:Z

    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v4, "Removing window token: "

    .line 51
    .line 52
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    .line 56
    .line 57
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v4, " for display: "

    .line 61
    .line 62
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget v4, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    .line 66
    .line 67
    invoke-static {v0, v4, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    .line 71
    .line 72
    iget v2, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    .line 73
    .line 74
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 75
    .line 76
    const/4 v5, 0x1

    .line 77
    invoke-virtual {v4, v0, v5, v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZZI)V

    .line 78
    .line 79
    .line 80
    const/4 v0, -0x1

    .line 81
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurTokenDisplayId:I

    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 84
    .line 85
    iput v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mImeWindowVis:I

    .line 86
    .line 87
    iput v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    .line 88
    .line 89
    invoke-virtual {v0, v1, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(II)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mAutofillController:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    .line 93
    .line 94
    iput-object v3, v0, Lcom/android/server/inputmethod/AutofillSuggestionsController;->mCurHostInputToken:Landroid/os/IBinder;

    .line 95
    .line 96
    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    .line 97
    .line 98
    :cond_2
    iput-object v3, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurId:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->clearCurMethodAndSessions()V

    .line 101
    .line 102
    .line 103
    return-void
.end method
