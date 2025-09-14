.class public abstract Lcom/android/server/accounts/AccountManagerService$Session;
.super Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final mAccountName:Ljava/lang/String;

.field public final mAccountType:Ljava/lang/String;

.field public final mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

.field public final mAuthDetailsRequired:Z

.field public mAuthenticator:Landroid/accounts/IAccountAuthenticator;

.field public mAuthenticatorUid:I

.field public mBindingStartTime:J

.field public mCanStartAccountManagerActivity:Z

.field public final mCreationTime:J

.field public final mExpectActivityLaunch:Z

.field public mNumErrors:I

.field public mNumRequestContinued:I

.field public mNumResults:I

.field public mResponse:Landroid/accounts/IAccountManagerResponse;

.field public final mSessionLock:Ljava/lang/Object;

.field public final mStripAuthTokenFromResult:Z

.field public final mUpdateLastAuthenticatedTime:Z

.field public final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 3
    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    .line 6
    new-instance v0, Ljava/lang/Object;

    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mSessionLock:Ljava/lang/Object;

    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    .line 16
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    .line 18
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    .line 20
    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 23
    iput-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mCanStartAccountManagerActivity:Z

    .line 25
    if-eqz p4, :cond_1

    .line 27
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 29
    iput-boolean p6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mStripAuthTokenFromResult:Z

    .line 31
    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 33
    iput-boolean p5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 38
    move-result-wide p4

    .line 39
    iput-wide p4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mCreationTime:J

    .line 41
    iput-object p7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    .line 43
    iput-boolean p8, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    .line 45
    iput-boolean p9, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mUpdateLastAuthenticatedTime:Z

    .line 47
    iget-object p2, p1, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 49
    monitor-enter p2

    .line 50
    :try_start_0
    iget-object p4, p1, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    move-result-object p5

    .line 56
    invoke-virtual {p4, p5, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 62
    const/4 p2, 0x3

    .line 63
    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 66
    move-result-object p2

    .line 67
    const-wide/32 p4, 0xdbba0

    .line 70
    invoke-virtual {p1, p2, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 73
    if-eqz p3, :cond_0

    .line 75
    :try_start_1
    invoke-interface {p3}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    .line 78
    move-result-object p1

    .line 79
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 82
    iput-object p3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    goto :goto_0

    .line 85
    :catch_0
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->binderDied()V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    throw p0

    .line 92
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 94
    const-string p1, "accountType is null"

    .line 96
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 99
    throw p0
.end method


# virtual methods
.method public final bind()V
    .locals 6

    .line 1
    const-string v0, "AccountManagerService"

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v3, "initiating bind to authenticator type "

    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 32
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 34
    iget-object v3, v3, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/AccountAuthenticatorCache;

    .line 36
    invoke-static {v2}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    .line 39
    move-result-object v4

    .line 40
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 42
    iget v5, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 44
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/RegisteredServicesCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 47
    move-result-object v3

    .line 48
    if-nez v3, :cond_1

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 52
    const-string/jumbo v3, "there is no authenticator for "

    .line 55
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v2, ", bailing out"

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v1

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    goto/16 :goto_1

    .line 75
    :cond_1
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 77
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 79
    iget v4, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 81
    invoke-virtual {v2, v4}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_2

    .line 87
    iget-object v2, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentInfo:Landroid/content/pm/ComponentInfo;

    .line 89
    iget-boolean v2, v2, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 91
    if-nez v2, :cond_2

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    const-string v2, "Blocking binding to authenticator "

    .line 97
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    iget-object v2, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    const-string v2, " which isn\'t encryption aware"

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    goto :goto_1

    .line 118
    :cond_2
    new-instance v2, Landroid/content/Intent;

    .line 120
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 123
    const-string v4, "android.accounts.AccountAuthenticator"

    .line 125
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object v4, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 130
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 133
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_3

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    .line 141
    const-string/jumbo v4, "performing bindService to "

    .line 144
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    iget-object v4, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 149
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    move-result-object v1

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_3
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 161
    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/AccountAuthenticatorCache;

    .line 163
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 165
    iget v4, v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 167
    invoke-virtual {v1, v4}, Landroid/content/pm/RegisteredServicesCache;->getBindInstantServiceAllowed(I)Z

    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_4

    .line 173
    const-wide/32 v4, 0x400001

    .line 176
    goto :goto_0

    .line 177
    :cond_4
    const-wide/16 v4, 0x1

    .line 179
    :goto_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 181
    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 183
    invoke-static {v4, v5}, Landroid/content/Context$BindServiceFlags;->of(J)Landroid/content/Context$BindServiceFlags;

    .line 186
    move-result-object v4

    .line 187
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 189
    iget v5, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 191
    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 194
    move-result-object v5

    .line 195
    invoke-virtual {v1, v2, p0, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;Landroid/content/Context$BindServiceFlags;Landroid/os/UserHandle;)Z

    .line 198
    move-result v1

    .line 199
    if-nez v1, :cond_5

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    .line 203
    const-string v2, "bindService to "

    .line 205
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    iget-object v2, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    const-string v2, " failed"

    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object v1

    .line 222
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 227
    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 229
    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 232
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 234
    const-string v2, "bind attempt failed for "

    .line 236
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 242
    move-result-wide v2

    .line 243
    invoke-virtual {p0, v2, v3}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    move-result-object v1

    .line 254
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v0, 0x1

    .line 258
    const-string v1, "bind failure"

    .line 260
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 263
    goto :goto_2

    .line 264
    :cond_5
    iget v0, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 266
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticatorUid:I

    .line 268
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 271
    move-result-wide v0

    .line 272
    iput-wide v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mBindingStartTime:J

    .line 274
    :goto_2
    return-void
.end method

.method public final binderDied()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 4
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->close()V

    .line 7
    return-void
.end method

.method public final checkKeyIntent(ILandroid/os/Bundle;)Z
    .locals 13

    .line 1
    const-string v0, "KEY_INTENT resolved to an Activity ("

    .line 3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 14
    invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 21
    const-class v1, Landroid/content/Intent;

    .line 23
    const-string/jumbo v4, "intent"

    .line 26
    invoke-virtual {p2, v4, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/content/Intent;

    .line 32
    const-class v5, Landroid/content/Intent;

    .line 34
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroid/content/Intent;

    .line 40
    if-nez v1, :cond_0

    .line 42
    if-nez v3, :cond_c

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    move-result-object v5

    .line 49
    const-class v6, Landroid/content/Intent;

    .line 51
    if-ne v5, v6, :cond_c

    .line 53
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    move-result-object v5

    .line 57
    const-class v6, Landroid/content/Intent;

    .line 59
    if-eq v5, v6, :cond_1

    .line 61
    goto/16 :goto_4

    .line 63
    :cond_1
    invoke-virtual {v1, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    .line 66
    move-result v5

    .line 67
    if-nez v5, :cond_2

    .line 69
    goto/16 :goto_4

    .line 71
    :cond_2
    invoke-virtual {v1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v3}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    .line 78
    move-result-object v5

    .line 79
    if-eq v1, v5, :cond_3

    .line 81
    goto/16 :goto_4

    .line 83
    :cond_3
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    .line 86
    move-result v1

    .line 87
    and-int/lit16 v1, v1, 0xc3

    .line 89
    if-nez v1, :cond_c

    .line 91
    :goto_0
    const-class v1, Landroid/content/Intent;

    .line 93
    invoke-virtual {p2, v4, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Landroid/content/Intent;

    .line 99
    const/4 v3, 0x1

    .line 100
    if-nez v1, :cond_4

    .line 102
    return v3

    .line 103
    :cond_4
    invoke-virtual {v1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 106
    move-result-object v5

    .line 107
    if-nez v5, :cond_5

    .line 109
    const/4 v5, 0x0

    .line 110
    invoke-static {v5, v5}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 113
    move-result-object v5

    .line 114
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 117
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 120
    move-result-wide v5

    .line 121
    :try_start_0
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 123
    iget-object v7, v7, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 125
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 128
    move-result-object v7

    .line 129
    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 131
    iget v8, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->userId:I

    .line 133
    invoke-virtual {v7, v1, v2, v8}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 136
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    if-nez v7, :cond_6

    .line 139
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 142
    return v2

    .line 143
    :cond_6
    :try_start_1
    const-string/jumbo v8, "content"

    .line 146
    invoke-virtual {v1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    .line 149
    move-result-object v9

    .line 150
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    if-eqz v8, :cond_7

    .line 156
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 159
    return v2

    .line 160
    :cond_7
    :try_start_2
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 162
    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 164
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 166
    const-class v9, Landroid/content/pm/PackageManagerInternal;

    .line 168
    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 171
    move-result-object v9

    .line 172
    check-cast v9, Landroid/content/pm/PackageManagerInternal;

    .line 174
    iget-object v10, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 176
    const-string v11, "android"

    .line 178
    iget-object v12, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 180
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    move-result v11

    .line 184
    if-nez v11, :cond_8

    .line 186
    goto :goto_1

    .line 187
    :cond_8
    iget-boolean v11, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mCanStartAccountManagerActivity:Z

    .line 189
    if-eqz v11, :cond_9

    .line 191
    const-class v11, Landroid/accounts/GrantCredentialsPermissionActivity;

    .line 193
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 196
    move-result-object v11

    .line 197
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    move-result v11

    .line 201
    if-nez v11, :cond_b

    .line 203
    :cond_9
    const-class v11, Landroid/accounts/CantAddAccountActivity;

    .line 205
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 208
    move-result-object v11

    .line 209
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    move-result v10

    .line 213
    if-eqz v10, :cond_a

    .line 215
    goto :goto_2

    .line 216
    :cond_a
    :goto_1
    invoke-virtual {v9, v8, p1}, Landroid/content/pm/PackageManagerInternal;->hasSignatureCapability(II)Z

    .line 219
    move-result p1

    .line 220
    if-nez p1, :cond_b

    .line 222
    iget-object p1, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 224
    iget-object p2, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 226
    const-string v1, "AccountManagerService"

    .line 228
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    .line 232
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string p2, ") in a package ("

    .line 240
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string p1, ") that does not share a signature with the supplying authenticator ("

    .line 248
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const-string p0, ")."

    .line 256
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    move-result-object p0

    .line 263
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 269
    return v2

    .line 270
    :catchall_0
    move-exception p0

    .line 271
    goto :goto_3

    .line 272
    :cond_b
    :goto_2
    :try_start_3
    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 275
    move-result-object p0

    .line 276
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p2, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 282
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 285
    return v3

    .line 286
    :goto_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 289
    throw p0

    .line 290
    :cond_c
    :goto_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 293
    move-result-object p0

    .line 294
    const-string p1, ""

    .line 296
    const-string p2, "250588548"

    .line 298
    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    .line 301
    move-result-object p0

    .line 302
    const p1, 0x534e4554

    .line 305
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 308
    return v2
.end method

.method public final close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 8
    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_0

    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_1

    .line 30
    invoke-interface {v0}, Landroid/accounts/IAccountManagerResponse;->asBinder()Landroid/os/IBinder;

    .line 33
    move-result-object v0

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 38
    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 42
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 44
    const/4 v2, 0x3

    .line 45
    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 48
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mSessionLock:Ljava/lang/Object;

    .line 50
    monitor-enter v2

    .line 51
    :try_start_1
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 53
    if-eqz v0, :cond_2

    .line 55
    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 57
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 59
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 64
    goto :goto_0

    .line 65
    :catchall_1
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    :goto_0
    monitor-exit v2

    .line 68
    return-void

    .line 69
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 70
    throw p0

    .line 71
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    throw p0
.end method

.method public final getResponseAndClose()Landroid/accounts/IAccountManagerResponse;
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticatorUid:I

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-wide v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mBindingStartTime:J

    .line 7
    const-wide/16 v3, 0x0

    .line 9
    cmp-long v1, v1, v3

    .line 11
    if-lez v1, :cond_0

    .line 13
    sget-object v1, Lcom/android/server/accounts/AccountManagerService;->sResponseLatency:Lcom/android/modules/expresslog/Histogram;

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 18
    move-result-wide v2

    .line 19
    iget-wide v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mBindingStartTime:J

    .line 21
    sub-long/2addr v2, v4

    .line 22
    long-to-float v2, v2

    .line 23
    invoke-virtual {v1, v0, v2}, Lcom/android/modules/expresslog/Histogram;->logSampleWithUid(IF)V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 28
    if-nez v0, :cond_1

    .line 30
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->close()V

    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->close()V

    .line 38
    return-object v0
.end method

.method public onError(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    .line 7
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x2

    .line 12
    const-string v2, "AccountManagerService"

    .line 14
    if-eqz v0, :cond_1

    .line 16
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string p0, " calling onError() on response "

    .line 40
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p0

    .line 58
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_2

    .line 64
    const-string p1, "Session.onError: caught RemoteException while responding"

    .line 66
    invoke-static {v2, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 73
    move-result p0

    .line 74
    if-eqz p0, :cond_2

    .line 76
    const-string p0, "Session.onError: already closed"

    .line 78
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_2
    :goto_0
    return-void
.end method

.method public final onRequestContinued()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    .line 7
    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    const-string/jumbo v0, "errorCode"

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {p1, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 8
    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    .line 10
    add-int/2addr v2, v1

    .line 11
    iput v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    .line 13
    const-string v2, "accountType"

    .line 15
    const-string v3, "authAccount"

    .line 17
    if-eqz p1, :cond_8

    .line 19
    const-string/jumbo v4, "booleanResult"

    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 26
    move-result v4

    .line 27
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_0

    .line 33
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_0

    .line 39
    move v6, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move v6, v5

    .line 42
    :goto_0
    iget-boolean v7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mUpdateLastAuthenticatedTime:Z

    .line 44
    if-eqz v7, :cond_2

    .line 46
    if-nez v4, :cond_1

    .line 48
    if-eqz v6, :cond_2

    .line 50
    :cond_1
    move v4, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move v4, v5

    .line 53
    :goto_1
    if-nez v4, :cond_3

    .line 55
    iget-boolean v6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    .line 57
    if-eqz v6, :cond_8

    .line 59
    :cond_3
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 61
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    .line 63
    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 65
    sget-object v9, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 67
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 73
    move-result v9

    .line 74
    invoke-virtual {v6, v9}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 77
    move-result-object v9

    .line 78
    iget-object v9, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    .line 80
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 83
    move-result v9

    .line 84
    if-eqz v9, :cond_5

    .line 86
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 89
    move-result v9

    .line 90
    invoke-virtual {v6, v9}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 93
    move-result-object v6

    .line 94
    iget-object v6, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    .line 96
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    move-result-object v6

    .line 100
    check-cast v6, [Landroid/accounts/Account;

    .line 102
    array-length v8, v6

    .line 103
    move v9, v5

    .line 104
    :goto_2
    if-ge v9, v8, :cond_5

    .line 106
    aget-object v10, v6, v9

    .line 108
    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 110
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    move-result v10

    .line 114
    if-eqz v10, :cond_4

    .line 116
    goto :goto_3

    .line 117
    :cond_4
    add-int/2addr v9, v1

    .line 118
    goto :goto_2

    .line 119
    :cond_5
    move v1, v5

    .line 120
    :goto_3
    if-eqz v4, :cond_6

    .line 122
    if-eqz v1, :cond_6

    .line 124
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 126
    new-instance v5, Landroid/accounts/Account;

    .line 128
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    .line 130
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 132
    invoke-direct {v5, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v4, v5}, Lcom/android/server/accounts/AccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z

    .line 138
    :cond_6
    iget-boolean v4, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthDetailsRequired:Z

    .line 140
    if-eqz v4, :cond_8

    .line 142
    if-eqz v1, :cond_7

    .line 144
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 146
    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 148
    new-instance v4, Landroid/accounts/Account;

    .line 150
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountName:Ljava/lang/String;

    .line 152
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccountType:Ljava/lang/String;

    .line 154
    invoke-direct {v4, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v1, v1, Lcom/android/server/accounts/AccountsDb;->mDeDatabase:Lcom/android/server/accounts/AccountsDb$DeDatabaseHelper;

    .line 159
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 162
    move-result-object v1

    .line 163
    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 165
    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 167
    filled-new-array {v5, v4}, [Ljava/lang/String;

    .line 170
    move-result-object v4

    .line 171
    const-string v5, "SELECT last_password_entry_time_millis_epoch FROM accounts WHERE name=? AND type=?"

    .line 173
    invoke-static {v1, v5, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    .line 176
    move-result-wide v4

    .line 177
    goto :goto_4

    .line 178
    :cond_7
    const-wide/16 v4, -0x1

    .line 180
    :goto_4
    const-string/jumbo v1, "lastAuthenticatedTime"

    .line 183
    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 186
    :cond_8
    const-string/jumbo v1, "invalid intent in bundle returned"

    .line 189
    const/4 v4, 0x5

    .line 190
    if-eqz p1, :cond_9

    .line 192
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 195
    move-result v5

    .line 196
    invoke-virtual {p0, v5, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->checkKeyIntent(ILandroid/os/Bundle;)Z

    .line 199
    move-result v5

    .line 200
    if-nez v5, :cond_9

    .line 202
    invoke-virtual {p0, v4, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 205
    return-void

    .line 206
    :cond_9
    const-string v5, "authtoken"

    .line 208
    if-eqz p1, :cond_a

    .line 210
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 213
    move-result-object v6

    .line 214
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 217
    move-result v6

    .line 218
    if-nez v6, :cond_a

    .line 220
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 227
    move-result-object v2

    .line 228
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 231
    move-result v6

    .line 232
    if-nez v6, :cond_a

    .line 234
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 237
    move-result v6

    .line 238
    if-nez v6, :cond_a

    .line 240
    new-instance v6, Landroid/accounts/Account;

    .line 242
    invoke-direct {v6, v3, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 247
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 249
    sget-object v7, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 251
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    invoke-static {v6, v3}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 257
    move-result-object v3

    .line 258
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAccounts:Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 260
    invoke-virtual {v2, v3, v6}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 263
    :cond_a
    iget-boolean v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    .line 265
    if-eqz v2, :cond_b

    .line 267
    if-eqz p1, :cond_b

    .line 269
    const-string/jumbo v2, "intent"

    .line 272
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 275
    move-result v2

    .line 276
    if-eqz v2, :cond_b

    .line 278
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 280
    goto :goto_5

    .line 281
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    .line 284
    move-result-object v2

    .line 285
    :goto_5
    if-eqz v2, :cond_11

    .line 287
    const/4 v3, 0x2

    .line 288
    const-string v6, "AccountManagerService"

    .line 290
    if-nez p1, :cond_d

    .line 292
    :try_start_0
    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 295
    move-result p1

    .line 296
    if-eqz p1, :cond_c

    .line 298
    new-instance p1, Ljava/lang/StringBuilder;

    .line 300
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    move-result-object p0

    .line 307
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 310
    move-result-object p0

    .line 311
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const-string p0, " calling onError() on response "

    .line 316
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    move-result-object p0

    .line 326
    invoke-static {v6, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    goto :goto_6

    .line 330
    :catch_0
    move-exception p0

    .line 331
    goto :goto_7

    .line 332
    :cond_c
    :goto_6
    const-string/jumbo p0, "null bundle returned"

    .line 335
    invoke-interface {v2, v4, p0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    .line 338
    goto :goto_8

    .line 339
    :cond_d
    iget-boolean v7, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mStripAuthTokenFromResult:Z

    .line 341
    if-eqz v7, :cond_e

    .line 343
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 349
    move-result v5

    .line 350
    invoke-virtual {p0, v5, p1}, Lcom/android/server/accounts/AccountManagerService$Session;->checkKeyIntent(ILandroid/os/Bundle;)Z

    .line 353
    move-result v5

    .line 354
    if-nez v5, :cond_e

    .line 356
    invoke-virtual {p0, v4, v1}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 359
    return-void

    .line 360
    :cond_e
    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 363
    move-result v1

    .line 364
    if-eqz v1, :cond_f

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    .line 368
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 374
    move-result-object p0

    .line 375
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 378
    move-result-object p0

    .line 379
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string p0, " calling onResult() on response "

    .line 384
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    move-result-object p0

    .line 394
    invoke-static {v6, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_f
    const/4 p0, -0x1

    .line 398
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 401
    move-result p0

    .line 402
    if-lez p0, :cond_10

    .line 404
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 407
    move-result p0

    .line 408
    const-string/jumbo v0, "errorMessage"

    .line 411
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 414
    move-result-object p1

    .line 415
    invoke-interface {v2, p0, p1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    .line 418
    goto :goto_8

    .line 419
    :cond_10
    invoke-interface {v2, p1}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    goto :goto_8

    .line 423
    :goto_7
    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 426
    move-result p1

    .line 427
    if-eqz p1, :cond_11

    .line 429
    const-string/jumbo p1, "failure while notifying response"

    .line 432
    invoke-static {v6, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    :cond_11
    :goto_8
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mSessionLock:Ljava/lang/Object;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    invoke-static {p2}, Landroid/accounts/IAccountAuthenticator$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountAuthenticator;

    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-eqz p2, :cond_0

    .line 12
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->run()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :catch_0
    :try_start_2
    const-string/jumbo p2, "remote exception"

    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p0, v0, p2}, Lcom/android/server/accounts/AccountManagerService$Session;->onError(ILjava/lang/String;)V

    .line 25
    :cond_0
    :goto_0
    monitor-exit p1

    .line 26
    return-void

    .line 27
    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Session;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    :try_start_0
    const-string/jumbo p1, "disconnected"

    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-interface {p0, v0, p1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    const/4 p1, 0x2

    .line 17
    const-string v0, "AccountManagerService"

    .line 19
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 25
    const-string p1, "Session.onServiceDisconnected: caught RemoteException while responding"

    .line 27
    invoke-static {v0, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    :cond_0
    :goto_0
    return-void
.end method

.method public abstract run()V
.end method

.method public toDebugString(J)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Session: expectLaunch "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-boolean v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mExpectActivityLaunch:Z

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", connected "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mAuthenticator:Landroid/accounts/IAccountAuthenticator;

    .line 20
    if-eqz v1, :cond_0

    .line 22
    const/4 v1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    const-string v1, ", stats ("

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumResults:I

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    const-string v1, "/"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget v2, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumRequestContinued:I

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mNumErrors:I

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, "), lifetime "

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-wide v1, p0, Lcom/android/server/accounts/AccountManagerService$Session;->mCreationTime:J

    .line 63
    sub-long/2addr p1, v1

    .line 64
    long-to-double p0, p1

    .line 65
    const-wide v1, 0x408f400000000000L    # 1000.0

    .line 70
    div-double/2addr p0, v1

    .line 71
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 78
    return-object p0
.end method
