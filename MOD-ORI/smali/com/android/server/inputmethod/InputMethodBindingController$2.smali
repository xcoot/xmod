.class public final Lcom/android/server/inputmethod/InputMethodBindingController$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodBindingController;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodBindingController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    .line 1
    const-string v0, "Initiating attach with token: "

    .line 2
    .line 3
    const-string v1, "IMMS.onServiceConnected"

    .line 4
    .line 5
    const-wide/16 v2, 0x20

    .line 6
    .line 7
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-class v1, Lcom/android/server/inputmethod/ImfLock;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 14
    .line 15
    iget-object v4, v4, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    .line 16
    .line 17
    if-eqz v4, :cond_7

    .line 18
    .line 19
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_7

    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 30
    .line 31
    invoke-static {p2}, Lcom/android/internal/inputmethod/IInputMethod$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputMethod;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const/4 v4, 0x0

    .line 36
    if-nez p2, :cond_0

    .line 37
    .line 38
    move-object v5, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {p2}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_6

    .line 45
    .line 46
    new-instance v5, Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 47
    .line 48
    invoke-direct {v5, p2}, Lcom/android/server/inputmethod/IInputMethodInvoker;-><init>(Lcom/android/internal/inputmethod/IInputMethod;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    iput-object v5, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController$2;->updateCurrentMethodUid()V

    .line 54
    .line 55
    .line 56
    const-string p1, "InputMethodBindingController"

    .line 57
    .line 58
    const-string/jumbo p2, "onServiceConnected"

    .line 59
    .line 60
    .line 61
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 65
    .line 66
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    .line 67
    .line 68
    if-nez p1, :cond_1

    .line 69
    .line 70
    const-string p1, "InputMethodBindingController"

    .line 71
    .line 72
    const-string p2, "Service connected without a token!"

    .line 73
    .line 74
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    .line 80
    .line 81
    .line 82
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 83
    .line 84
    .line 85
    monitor-exit v1

    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    goto/16 :goto_4

    .line 89
    .line 90
    :cond_1
    const-string p1, "InputMethodBindingController"

    .line 91
    .line 92
    new-instance p2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 98
    .line 99
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    .line 100
    .line 101
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 112
    .line 113
    iget p1, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    .line 114
    .line 115
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    .line 120
    .line 121
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 122
    .line 123
    iget-object p2, p2, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {p1, p2}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 130
    .line 131
    iget-boolean p2, p2, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    .line 132
    .line 133
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->supportsStylusHandwriting()Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    const/4 v5, 0x0

    .line 138
    if-eq p2, v0, :cond_2

    .line 139
    .line 140
    const/4 p2, 0x1

    .line 141
    goto :goto_1

    .line 142
    :cond_2
    move p2, v5

    .line 143
    :goto_1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 144
    .line 145
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->supportsStylusHandwriting()Z

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    iput-boolean v6, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsStylusHw:Z

    .line 150
    .line 151
    if-eqz p2, :cond_3

    .line 152
    .line 153
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->invalidateLocalStylusHandwritingAvailabilityCaches()V

    .line 154
    .line 155
    .line 156
    :cond_3
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 157
    .line 158
    iget-boolean p2, p2, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsConnectionlessStylusHw:Z

    .line 159
    .line 160
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->supportsConnectionlessStylusHandwriting()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eq p2, v0, :cond_4

    .line 165
    .line 166
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 167
    .line 168
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->supportsConnectionlessStylusHandwriting()Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    iput-boolean p1, p2, Lcom/android/server/inputmethod/InputMethodBindingController;->mSupportsConnectionlessStylusHw:Z

    .line 173
    .line 174
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->invalidateLocalConnectionlessStylusHandwritingAvailabilityCaches()V

    .line 175
    .line 176
    .line 177
    :cond_4
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 178
    .line 179
    iget-object p2, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 180
    .line 181
    iget-object v0, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 182
    .line 183
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurToken:Landroid/os/IBinder;

    .line 184
    .line 185
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    new-instance v6, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;

    .line 189
    .line 190
    invoke-direct {v6, p2, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodNavButtonFlagsLocked()I

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    new-instance v7, Lcom/android/internal/inputmethod/IInputMethod$InitParams;

    .line 201
    .line 202
    invoke-direct {v7}, Lcom/android/internal/inputmethod/IInputMethod$InitParams;-><init>()V

    .line 203
    .line 204
    .line 205
    iput-object p1, v7, Lcom/android/internal/inputmethod/IInputMethod$InitParams;->token:Landroid/os/IBinder;

    .line 206
    .line 207
    iput-object v6, v7, Lcom/android/internal/inputmethod/IInputMethod$InitParams;->privilegedOperations:Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    .line 208
    .line 209
    iput p2, v7, Lcom/android/internal/inputmethod/IInputMethod$InitParams;->navigationBarFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .line 211
    :try_start_1
    iget-object p1, v0, Lcom/android/server/inputmethod/IInputMethodInvoker;->mTarget:Lcom/android/internal/inputmethod/IInputMethod;

    .line 212
    .line 213
    invoke-interface {p1, v7}, Lcom/android/internal/inputmethod/IInputMethod;->initializeInternal(Lcom/android/internal/inputmethod/IInputMethod$InitParams;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    .line 215
    .line 216
    goto :goto_2

    .line 217
    :catch_0
    move-exception p1

    .line 218
    :try_start_2
    invoke-static {p1}, Lcom/android/server/inputmethod/IInputMethodInvoker;->logRemoteException(Landroid/os/RemoteException;)V

    .line 219
    .line 220
    .line 221
    :goto_2
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 222
    .line 223
    iget-object p2, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 224
    .line 225
    iget p1, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    .line 226
    .line 227
    iget-object v0, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 228
    .line 229
    const/16 v6, 0x1b58

    .line 230
    .line 231
    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    .line 233
    .line 234
    iget-object p2, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 235
    .line 236
    invoke-virtual {p2, v6, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 241
    .line 242
    .line 243
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 244
    .line 245
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 246
    .line 247
    iget-object p2, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 248
    .line 249
    if-eqz p2, :cond_5

    .line 250
    .line 251
    iget-object v0, p2, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 252
    .line 253
    invoke-virtual {p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->finishSessionLocked(Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;)V

    .line 254
    .line 255
    .line 256
    iput-object v4, p2, Lcom/android/server/inputmethod/ClientState;->mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    .line 257
    .line 258
    iput-boolean v5, p2, Lcom/android/server/inputmethod/ClientState;->mSessionRequested:Z

    .line 259
    .line 260
    iget-object p2, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 261
    .line 262
    invoke-static {p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->clearClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 263
    .line 264
    .line 265
    iget-object p2, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 266
    .line 267
    invoke-virtual {p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 268
    .line 269
    .line 270
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurClient:Lcom/android/server/inputmethod/ClientState;

    .line 271
    .line 272
    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->requestClientSessionForAccessibilityLocked(Lcom/android/server/inputmethod/ClientState;)V

    .line 273
    .line 274
    .line 275
    :cond_5
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 276
    .line 277
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mAutofillController:Lcom/android/server/inputmethod/AutofillSuggestionsController;

    .line 278
    .line 279
    invoke-virtual {p1}, Lcom/android/server/inputmethod/AutofillSuggestionsController;->performOnCreateInlineSuggestionsRequest()V

    .line 280
    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 284
    .line 285
    new-instance p1, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    const-string p2, " must have been a BinderProxy."

    .line 294
    .line 295
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    throw p0

    .line 306
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 307
    .line 308
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 309
    .line 310
    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 311
    .line 312
    const/16 p2, 0x442

    .line 313
    .line 314
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 319
    .line 320
    .line 321
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 322
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 323
    .line 324
    .line 325
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 326
    .line 327
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 328
    .line 329
    .line 330
    return-void

    .line 331
    :goto_4
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 332
    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "onServiceDisconnected: mLastBindTime="

    .line 2
    .line 3
    .line 4
    const-string v1, "Service disconnected: "

    .line 5
    .line 6
    const-class v2, Lcom/android/server/inputmethod/ImfLock;

    .line 7
    .line 8
    monitor-enter v2

    .line 9
    :try_start_0
    const-string v3, "InputMethodBindingController"

    .line 10
    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " mCurIntent="

    .line 20
    .line 21
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    .line 27
    .line 28
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 39
    .line 40
    iget-object v3, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethod:Lcom/android/server/inputmethod/IInputMethodInvoker;

    .line 41
    .line 42
    if-eqz v3, :cond_0

    .line 43
    .line 44
    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    .line 45
    .line 46
    if-eqz v1, :cond_0

    .line 47
    .line 48
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 59
    .line 60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    iput-wide v3, p1, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    .line 65
    .line 66
    const-string p1, "InputMethodBindingController"

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 74
    .line 75
    iget-wide v3, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mLastBindTime:J

    .line 76
    .line 77
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodBindingController;->clearCurMethodAndSessions()V

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 93
    .line 94
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 95
    .line 96
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibilityStateComputer:Lcom/android/server/inputmethod/ImeVisibilityStateComputer;

    .line 97
    .line 98
    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p1, Lcom/android/server/inputmethod/ImeVisibilityStateComputer;->mInputShown:Z

    .line 100
    .line 101
    const/4 p1, 0x3

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->unbindCurrentClientLocked(I)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    goto :goto_1

    .line 108
    :cond_0
    :goto_0
    monitor-exit v2

    .line 109
    return-void

    .line 110
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    throw p0
.end method

.method public final updateCurrentMethodUid()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurIntent:Landroid/content/Intent;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 14
    .line 15
    iget-object v2, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 16
    .line 17
    const-wide/16 v3, 0x0

    .line 18
    .line 19
    iget v1, v1, Lcom/android/server/inputmethod/InputMethodBindingController;->mUserId:I

    .line 20
    .line 21
    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-gez v1, :cond_0

    .line 26
    .line 27
    const-string v1, "Failed to get UID for package="

    .line 28
    .line 29
    const-string v2, "InputMethodBindingController"

    .line 30
    .line 31
    invoke-static {v1, v0, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 35
    .line 36
    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodBindingController$2;->this$0:Lcom/android/server/inputmethod/InputMethodBindingController;

    .line 41
    .line 42
    iput v1, p0, Lcom/android/server/inputmethod/InputMethodBindingController;->mCurMethodUid:I

    .line 43
    .line 44
    :goto_0
    return-void
.end method
