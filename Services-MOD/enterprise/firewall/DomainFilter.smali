.class public final Lcom/android/server/enterprise/firewall/DomainFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final MAX_LIST_SIZE_IN_BYTES:I

.field public static mConnectivityService:Landroid/net/ConnectivityManager;


# instance fields
.field public final mBootFilterReceiver:Lcom/android/server/enterprise/firewall/DomainFilter$1;

.field public final mCaptivePortalNetworkCallback:Lcom/android/server/enterprise/firewall/DomainFilter$5;

.field public final mContext:Landroid/content/Context;

.field public mDnsManager:Lcom/android/server/enterprise/firewall/EnforceDnsManager;

.field public final mDnsResolverAdapter:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

.field public final mDomainFilterBrokenRules:Ljava/util/Map;

.field public mDomainFilterEventListener:Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;

.field public final mDomainFilterNapCommon:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

.field public final mDomainReportCache:Ljava/util/Set;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mExceptionListLock:Ljava/lang/Object;

.field public final mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

.field public final mInjector:Lcom/android/server/enterprise/firewall/DomainFilter$Injector;

.field public mIsExceptionListApplied:Z

.field public mIsKGExceptionApplied:Z

.field public final mKGExceptionListLock:Ljava/lang/Object;

.field public final mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

.field public mNetdService:Landroid/net/INetd;

.field public final mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

.field public final mNetworkIdList:Ljava/util/List;

.field public final mNetworkIdListLock:Ljava/lang/Object;

.field public mNetworkService:Landroid/os/INetworkManagementService;

.field public mOemNetdService:Lcom/android/internal/net/IOemNetd;

.field public final mPackageFilterReceiver:Lcom/android/server/enterprise/firewall/DomainFilter$1;

.field public final mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

.field public mReportCacheIndex:I

.field public final mServer:Ljava/lang/String;

.field public final mUserFilterReceiver:Lcom/android/server/enterprise/firewall/DomainFilter$1;

.field public final mUserIdMap:Ljava/util/Map;

.field public final mUserIdMapLock:Ljava/lang/Object;


# direct methods
.method public static -$$Nest$mextractHost(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 p0, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 7
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 9
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    const-string/jumbo v0, "extractHost() - Invalid url "

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    const-string v0, "DomainFilter"

    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    move-object v0, p0

    .line 26
    :goto_0
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    :cond_0
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/IBinder;->getSuggestedMaxIpcSizeBytes()I

    .line 4
    move-result v0

    .line 5
    sput v0, Lcom/android/server/enterprise/firewall/DomainFilter;->MAX_LIST_SIZE_IN_BYTES:I

    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/firewall/FirewallRulesApplier;)V
    .locals 13

    .line 1
    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$Injector;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v1, Ljava/lang/Object;

    .line 11
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    .line 16
    new-instance v1, Ljava/lang/Object;

    .line 18
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    .line 23
    new-instance v1, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    .line 25
    invoke-direct {v1}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    .line 30
    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterEventListener:Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;

    .line 33
    const/4 v2, 0x5

    .line 34
    new-array v2, v2, [Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    .line 36
    iput-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCache:[Lcom/android/server/enterprise/firewall/DomainFilter$BlockReport;

    .line 38
    const/4 v2, 0x0

    .line 39
    iput v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mReportCacheIndex:I

    .line 41
    iput-boolean v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    .line 43
    new-instance v3, Ljava/lang/Object;

    .line 45
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mExceptionListLock:Ljava/lang/Object;

    .line 50
    iput-boolean v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsKGExceptionApplied:Z

    .line 52
    new-instance v2, Ljava/lang/Object;

    .line 54
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mKGExceptionListLock:Ljava/lang/Object;

    .line 59
    new-instance v2, Ljava/util/HashMap;

    .line 61
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 64
    iput-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterBrokenRules:Ljava/util/Map;

    .line 66
    new-instance v4, Lcom/android/server/enterprise/firewall/DomainFilter$1;

    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-direct {v4, p0, v2}, Lcom/android/server/enterprise/firewall/DomainFilter$1;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;I)V

    .line 72
    new-instance v2, Lcom/android/server/enterprise/firewall/DomainFilter$1;

    .line 74
    const/4 v3, 0x1

    .line 75
    invoke-direct {v2, p0, v3}, Lcom/android/server/enterprise/firewall/DomainFilter$1;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;I)V

    .line 78
    new-instance v12, Lcom/android/server/enterprise/firewall/DomainFilter$1;

    .line 80
    const/4 v3, 0x2

    .line 81
    invoke-direct {v12, p0, v3}, Lcom/android/server/enterprise/firewall/DomainFilter$1;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;I)V

    .line 84
    new-instance v3, Lcom/android/server/enterprise/firewall/DomainFilter$5;

    .line 86
    invoke-direct {v3, p0}, Lcom/android/server/enterprise/firewall/DomainFilter$5;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    .line 89
    iput-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mCaptivePortalNetworkCallback:Lcom/android/server/enterprise/firewall/DomainFilter$5;

    .line 91
    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mInjector:Lcom/android/server/enterprise/firewall/DomainFilter$Injector;

    .line 93
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    .line 98
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 100
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 103
    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 105
    iput-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 107
    new-instance p2, Ljava/util/ArrayList;

    .line 109
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iput-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    .line 114
    new-instance p2, Landroid/os/HandlerThread;

    .line 116
    const-string v3, "DomainFilterHandlerThread"

    .line 118
    invoke-direct {p2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 124
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 127
    move-result-object p2

    .line 128
    new-instance v3, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    .line 130
    invoke-direct {v3, p0, p2}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/os/Looper;)V

    .line 133
    iput-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    .line 135
    new-instance p2, Ljava/util/HashMap;

    .line 137
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 140
    iput-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    .line 142
    invoke-static {p1}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    .line 145
    move-result-object p2

    .line 146
    iput-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterNapCommon:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    .line 148
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->getInstance()Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    .line 151
    move-result-object p2

    .line 152
    iput-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsResolverAdapter:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    .line 154
    new-instance v6, Landroid/content/IntentFilter;

    .line 156
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    const-string p2, "android.intent.action.PACKAGE_ADDED"

    .line 161
    invoke-virtual {v6, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    .line 166
    invoke-virtual {v6, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string p2, "android.intent.action.PACKAGE_REPLACED"

    .line 171
    invoke-virtual {v6, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string/jumbo p2, "package"

    .line 177
    invoke-virtual {v6, p2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 180
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 182
    const/4 v7, 0x0

    .line 183
    const/4 v8, 0x0

    .line 184
    move-object v3, p1

    .line 185
    move-object v5, p2

    .line 186
    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 189
    const-string v3, "android.intent.action.USER_REMOVED"

    .line 191
    const-string v4, "android.intent.action.USER_ADDED"

    .line 193
    invoke-static {v3, v4}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 196
    move-result-object v8

    .line 197
    const/4 v9, 0x0

    .line 198
    const/4 v10, 0x0

    .line 199
    const/4 v11, 0x2

    .line 200
    move-object v5, p1

    .line 201
    move-object v6, v2

    .line 202
    move-object v7, p2

    .line 203
    invoke-virtual/range {v5 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 206
    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 208
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

    .line 211
    invoke-static {v2, v3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 214
    move-result-object v8

    .line 215
    move-object v6, v12

    .line 216
    invoke-virtual/range {v5 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 222
    move-result-object p1

    .line 223
    const-string/jumbo p2, "captive_portal_server"

    .line 226
    invoke-static {p1, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    move-result-object p1

    .line 230
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mServer:Ljava/lang/String;

    .line 232
    if-nez p1, :cond_0

    .line 234
    const-string/jumbo p1, "connectivitycheck.gstatic.com"

    .line 237
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mServer:Ljava/lang/String;

    .line 239
    :cond_0
    new-instance p1, Lcom/android/server/enterprise/firewall/DomainFilter$4;

    .line 241
    const/4 p2, 0x0

    .line 242
    invoke-direct {p1, p2, p0}, Lcom/android/server/enterprise/firewall/DomainFilter$4;-><init>(ILjava/lang/Object;)V

    .line 245
    new-instance p2, Ljava/lang/Thread;

    .line 247
    invoke-direct {p2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 250
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 253
    const-string p1, "DomainFilter"

    .line 255
    const-string/jumbo p2, "initReportCache()"

    .line 258
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance p1, Ljava/util/HashSet;

    .line 263
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 266
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    .line 268
    new-instance p1, Landroid/content/ContentValues;

    .line 270
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 273
    const/4 p2, 0x1

    .line 274
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 277
    move-result-object v2

    .line 278
    const-string/jumbo v3, "status"

    .line 281
    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 284
    const-string v2, "DomainFilterReportStatus"

    .line 286
    invoke-virtual {v0, v2, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 289
    move-result-object p1

    .line 290
    check-cast p1, Ljava/util/ArrayList;

    .line 292
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 295
    move-result v0

    .line 296
    if-eqz v0, :cond_1

    .line 298
    goto :goto_2

    .line 299
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 302
    move-result-object p1

    .line 303
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 306
    move-result v0

    .line 307
    if-eqz v0, :cond_3

    .line 309
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 312
    move-result-object v0

    .line 313
    check-cast v0, Landroid/content/ContentValues;

    .line 315
    const-string/jumbo v1, "userId"

    .line 318
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 321
    move-result-object v0

    .line 322
    if-eqz v0, :cond_2

    .line 324
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 327
    move-result v0

    .line 328
    goto :goto_1

    .line 329
    :cond_2
    const/4 v0, -0x1

    .line 330
    :goto_1
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    .line 332
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 335
    move-result-object v0

    .line 336
    check-cast v1, Ljava/util/HashSet;

    .line 338
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 341
    goto :goto_0

    .line 342
    :cond_3
    :goto_2
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    .line 344
    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 347
    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 350
    move-result-object p1

    .line 351
    const/16 p2, 0x11

    .line 353
    invoke-virtual {p1, p2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 356
    move-result-object p1

    .line 357
    iget-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    .line 359
    const-string/jumbo v0, "connectivity"

    .line 362
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 365
    move-result-object p2

    .line 366
    check-cast p2, Landroid/net/ConnectivityManager;

    .line 368
    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 371
    move-result-object p1

    .line 372
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mCaptivePortalNetworkCallback:Lcom/android/server/enterprise/firewall/DomainFilter$5;

    .line 374
    invoke-virtual {p2, p1, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 377
    return-void
.end method

.method public static prepareDomainUrls(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, ""

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_2

    .line 16
    move v3, v2

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    move-result v4

    .line 21
    if-ge v3, v4, :cond_1

    .line 23
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 27
    if-eqz v4, :cond_0

    .line 29
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Ljava/lang/String;

    .line 35
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 43
    invoke-interface {v0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    invoke-interface {v0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 50
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setAllowDomains(Ljava/util/List;)V

    .line 56
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_5

    .line 62
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_5

    .line 68
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 71
    move-result v3

    .line 72
    if-ge v2, v3, :cond_4

    .line 74
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    move-result-object v3

    .line 78
    if-eqz v3, :cond_3

    .line 80
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Ljava/lang/String;

    .line 86
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 93
    move-result-object v3

    .line 94
    invoke-interface {v0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 97
    goto :goto_3

    .line 98
    :cond_3
    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 101
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 103
    goto :goto_2

    .line 104
    :cond_4
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setDenyDomains(Ljava/util/List;)V

    .line 107
    :cond_5
    return-void
.end method

.method public static setDomainFilterRulesProperties(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Lorg/json/JSONArray;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 10
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 13
    const-string/jumbo v1, "pN"

    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_2

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns2()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v1, 0x1

    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception p0

    .line 43
    goto :goto_3

    .line 44
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .line 45
    :goto_1
    const-string/jumbo v2, "cDNS"

    .line 48
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_3

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    .line 64
    move-result-object v1

    .line 65
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_3

    .line 71
    const/4 p0, 0x2

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 80
    move-result p0

    .line 81
    :goto_2
    const-string/jumbo v1, "rlTp"

    .line 84
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_4

    .line 91
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 93
    const-string v0, "Failed to put rule in json: "

    .line 95
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object p0

    .line 109
    const-string p1, "DomainFilter"

    .line 111
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_4
    return-void
.end method

.method public static validateApplicationIdentity(Lcom/samsung/android/knox/AppIdentity;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 5
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 7
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 9
    const-string v2, "Invalid AppIdentity object."

    .line 11
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 14
    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    const-string v1, "*"

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 31
    if-eqz p0, :cond_1

    .line 33
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 35
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 37
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 39
    const-string v2, "There is no signature related to all applications."

    .line 41
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 44
    return-object p0

    .line 45
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validatePackageName(Ljava/lang/String;)Z

    .line 48
    move-result p0

    .line 49
    if-nez p0, :cond_2

    .line 51
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 53
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 55
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 57
    const-string v3, "Invalid package name. - "

    .line 59
    invoke-static {v3, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 66
    return-object p0

    .line 67
    :cond_2
    const/4 p0, 0x0

    .line 68
    return-object p0
.end method

.method public static validateDomains(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 14
    return v1

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_2

    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v0

    .line 33
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/lang/String;

    .line 45
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->validateDomain(Ljava/lang/String;)Z

    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_1

    .line 51
    return v1

    .line 52
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_4

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    .line 65
    move-result-object p0

    .line 66
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object p0

    .line 70
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_4

    .line 76
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Ljava/lang/String;

    .line 82
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->validateDomain(Ljava/lang/String;)Z

    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_3

    .line 88
    return v1

    .line 89
    :cond_4
    const/4 p0, 0x1

    .line 90
    return p0
.end method


# virtual methods
.method public final declared-synchronized addDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 27

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    const-string v2, "addDomainFilterRules() - rules.size = "

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    move-object/from16 v3, p2

    .line 10
    check-cast v3, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    move-result v4

    .line 16
    const/4 v5, 0x1

    .line 17
    const/4 v6, 0x0

    .line 18
    if-eqz v4, :cond_0

    .line 20
    const-string v0, "DomainFilter"

    .line 22
    const-string v2, "addDomainFilterRules() - No rule specified"

    .line 24
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-array v0, v5, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 29
    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 31
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 33
    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 35
    const-string v5, "No rule was specified."

    .line 37
    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 40
    aput-object v2, v0, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    .line 43
    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto/16 :goto_17

    .line 47
    :cond_0
    :try_start_1
    const-string v4, "DomainFilter"

    .line 49
    new-instance v7, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 57
    move-result v2

    .line 58
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget v2, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 70
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 73
    move-result v4

    .line 74
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    .line 77
    move-result v7

    .line 78
    const/4 v8, -0x1

    .line 79
    if-ne v7, v8, :cond_1

    .line 81
    const-string v0, "DomainFilter"

    .line 83
    const-string v2, "addDomainFilterRules() - Another admin already have domain filter rules in the database"

    .line 85
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-array v0, v5, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 90
    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 92
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 94
    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 96
    const-string v5, "This administrator can\'t execute this operation because he is not the owner."

    .line 98
    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 101
    aput-object v2, v0, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    monitor-exit p0

    .line 104
    return-object v0

    .line 105
    :cond_1
    :try_start_2
    iget-object v7, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    .line 107
    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    :try_start_3
    iget-object v9, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    .line 110
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object v10

    .line 114
    check-cast v9, Ljava/util/HashMap;

    .line 116
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    move-result-object v9

    .line 120
    check-cast v9, Ljava/util/Map;

    .line 122
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 123
    :try_start_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 126
    move-result v7

    .line 127
    new-array v10, v7, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 129
    new-instance v11, Lorg/json/JSONArray;

    .line 131
    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 134
    move v12, v6

    .line 135
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 138
    move-result v13

    .line 139
    if-ge v12, v13, :cond_24

    .line 141
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 144
    move-result-object v13

    .line 145
    check-cast v13, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 147
    if-nez v13, :cond_2

    .line 149
    const-string v13, "DomainFilter"

    .line 151
    const-string v14, "addDomainFilterRules() - Skipping invalid rule - No rule specified"

    .line 153
    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v13, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 158
    sget-object v14, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 160
    sget-object v15, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 162
    const-string v8, "No rule was specified."

    .line 164
    invoke-direct {v13, v14, v15, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 167
    aput-object v13, v10, v12

    .line 169
    :goto_1
    move-object/from16 v17, v3

    .line 171
    move/from16 v16, v4

    .line 173
    move/from16 v19, v7

    .line 175
    move-object/from16 v18, v9

    .line 177
    move-object/from16 v20, v11

    .line 179
    :goto_2
    move-object v4, v0

    .line 180
    goto/16 :goto_14

    .line 182
    :cond_2
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    .line 185
    move-result-object v8

    .line 186
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns2()Ljava/lang/String;

    .line 189
    move-result-object v14

    .line 190
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 193
    move-result v15

    .line 194
    xor-int/2addr v15, v5

    .line 195
    if-nez v15, :cond_4

    .line 197
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 200
    move-result v16

    .line 201
    if-eqz v16, :cond_4

    .line 203
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    .line 206
    move-result-object v16

    .line 207
    if-eqz v16, :cond_3

    .line 209
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    .line 212
    move-result-object v16

    .line 213
    if-eqz v16, :cond_3

    .line 215
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    .line 218
    move-result-object v16

    .line 219
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    .line 222
    move-result v16

    .line 223
    if-eqz v16, :cond_4

    .line 225
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    .line 228
    move-result-object v16

    .line 229
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    .line 232
    move-result v16

    .line 233
    if-eqz v16, :cond_4

    .line 235
    :cond_3
    const-string v8, "DomainFilter"

    .line 237
    const-string v13, "addDomainFilterRules() - Skipping invalid rule - mandatory parameters missing"

    .line 239
    invoke-static {v8, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 244
    sget-object v13, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 246
    sget-object v14, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 248
    const-string v15, "No parameters provided."

    .line 250
    invoke-direct {v8, v13, v14, v15}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 253
    aput-object v8, v10, v12

    .line 255
    goto :goto_1

    .line 256
    :cond_4
    invoke-static {v13, v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->setDomainFilterRulesProperties(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Lorg/json/JSONArray;)V

    .line 259
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 262
    move-result-object v16

    .line 263
    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/firewall/DomainFilter;->validateApplicationIdentity(Lcom/samsung/android/knox/AppIdentity;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 266
    move-result-object v16

    .line 267
    aput-object v16, v10, v12

    .line 269
    if-eqz v16, :cond_5

    .line 271
    const-string v8, "DomainFilter"

    .line 273
    new-instance v13, Ljava/lang/StringBuilder;

    .line 275
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    const-string v14, "addDomainFilterRules() - Skipping invalid rule - invalid Application Identity: "

    .line 280
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    aget-object v14, v10, v12

    .line 285
    invoke-virtual {v14}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    .line 288
    move-result-object v14

    .line 289
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    move-result-object v13

    .line 296
    invoke-static {v8, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    goto/16 :goto_1

    .line 301
    :cond_5
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 304
    move-result-object v16

    .line 305
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 308
    move-result-object v5

    .line 309
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 312
    move-result-object v16

    .line 313
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 316
    move-result-object v6

    .line 317
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 320
    move-result v16

    .line 321
    if-nez v16, :cond_6

    .line 323
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->validatePkgSignature(ILjava/lang/String;Ljava/lang/String;)Z

    .line 326
    move-result v16

    .line 327
    move-object/from16 v17, v3

    .line 329
    goto :goto_3

    .line 330
    :cond_6
    move-object/from16 v17, v3

    .line 332
    const/16 v16, 0x1

    .line 334
    :goto_3
    const-string v3, "*"

    .line 336
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    move-result v3

    .line 340
    if-nez v3, :cond_7

    .line 342
    invoke-virtual {v1, v9, v5, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->verifyAppInstalled(Ljava/util/Map;Ljava/lang/String;I)Z

    .line 345
    move-result v3

    .line 346
    goto :goto_4

    .line 347
    :cond_7
    const/4 v3, 0x1

    .line 348
    :goto_4
    if-nez v16, :cond_8

    .line 350
    if-eqz v3, :cond_8

    .line 352
    const-string v3, "DomainFilter"

    .line 354
    const-string v5, "addDomainFilterRules() - Skipping invalid rule - signature mismatch"

    .line 356
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 361
    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 363
    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 365
    const-string v8, "Given signature does not match with the application."

    .line 367
    invoke-direct {v3, v5, v6, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 370
    aput-object v3, v10, v12

    .line 372
    :goto_5
    move/from16 v16, v4

    .line 374
    move/from16 v19, v7

    .line 376
    move-object/from16 v18, v9

    .line 378
    move-object/from16 v20, v11

    .line 380
    const/4 v6, 0x0

    .line 381
    goto/16 :goto_2

    .line 383
    :cond_8
    if-nez v15, :cond_9

    .line 385
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 388
    move-result v16

    .line 389
    if-eqz v16, :cond_b

    .line 391
    :cond_9
    if-eqz v15, :cond_c

    .line 393
    invoke-static {v8}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    .line 396
    move-result v16

    .line 397
    if-eqz v16, :cond_a

    .line 399
    if-eqz v14, :cond_c

    .line 401
    invoke-static {v14}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv4Address(Ljava/lang/String;)Z

    .line 404
    move-result v16

    .line 405
    if-eqz v16, :cond_b

    .line 407
    goto :goto_6

    .line 408
    :cond_a
    invoke-static {v8}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    .line 411
    move-result v16

    .line 412
    if-eqz v16, :cond_b

    .line 414
    if-eqz v14, :cond_c

    .line 416
    invoke-static {v14}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateIpv6Address(Ljava/lang/String;)Z

    .line 419
    move-result v16

    .line 420
    if-eqz v16, :cond_b

    .line 422
    goto :goto_6

    .line 423
    :cond_b
    const-string v3, "DomainFilter"

    .line 425
    const-string v5, "addDomainFilterRules() - Skipping invalid rule - invalid DNS"

    .line 427
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 432
    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 434
    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 436
    const-string v8, "Invalid DNS(s) provided"

    .line 438
    invoke-direct {v3, v5, v6, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 441
    aput-object v3, v10, v12

    .line 443
    goto :goto_5

    .line 444
    :cond_c
    :goto_6
    invoke-static {v13}, Lcom/android/server/enterprise/firewall/DomainFilter;->validateDomains(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;)Z

    .line 447
    move-result v16

    .line 448
    if-nez v16, :cond_d

    .line 450
    const-string v3, "DomainFilter"

    .line 452
    const-string v5, "addDomainFilterRules() - Skipping invalid rule - invalid domain"

    .line 454
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 459
    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 461
    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 463
    const-string v8, "Invalid domain."

    .line 465
    invoke-direct {v3, v5, v6, v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 468
    aput-object v3, v10, v12

    .line 470
    goto :goto_5

    .line 471
    :cond_d
    move/from16 v16, v4

    .line 473
    new-instance v4, Landroid/content/ContentValues;

    .line 475
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 478
    move-object/from16 v18, v9

    .line 480
    const-string v9, "adminUid"

    .line 482
    move/from16 v19, v7

    .line 484
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 487
    move-result-object v7

    .line 488
    invoke-virtual {v4, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 491
    const-string/jumbo v7, "packageName"

    .line 494
    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string/jumbo v7, "signature"

    .line 500
    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    new-instance v7, Landroid/content/ContentValues;

    .line 505
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 508
    const-string v9, "adminUid"

    .line 510
    move-object/from16 v20, v11

    .line 512
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 515
    move-result-object v11

    .line 516
    invoke-virtual {v7, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 519
    const-string/jumbo v9, "packageName"

    .line 522
    invoke-virtual {v7, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v9, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 527
    const-string v11, "DomainFilterTable"

    .line 529
    move-object/from16 v21, v6

    .line 531
    const/4 v6, 0x0

    .line 532
    invoke-virtual {v9, v11, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 535
    move-result-object v6

    .line 536
    new-instance v9, Landroid/content/ContentValues;

    .line 538
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 541
    check-cast v6, Ljava/util/ArrayList;

    .line 543
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 546
    move-result v11

    .line 547
    if-nez v11, :cond_e

    .line 549
    const/4 v11, 0x0

    .line 550
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 553
    move-result-object v6

    .line 554
    move-object v9, v6

    .line 555
    check-cast v9, Landroid/content/ContentValues;

    .line 557
    const/4 v6, 0x1

    .line 558
    goto :goto_7

    .line 559
    :cond_e
    const/4 v6, 0x0

    .line 560
    :goto_7
    invoke-static {v13}, Lcom/android/server/enterprise/firewall/DomainFilter;->prepareDomainUrls(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;)V

    .line 563
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    .line 566
    move-result-object v11

    .line 567
    if-nez v11, :cond_f

    .line 569
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 572
    move-result-object v11

    .line 573
    goto :goto_8

    .line 574
    :cond_f
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    .line 577
    move-result-object v11

    .line 578
    :goto_8
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    .line 581
    move-result-object v22

    .line 582
    if-nez v22, :cond_10

    .line 584
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 587
    move-result-object v22

    .line 588
    :goto_9
    move-object/from16 v23, v22

    .line 590
    goto :goto_a

    .line 591
    :cond_10
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    .line 594
    move-result-object v22

    .line 595
    goto :goto_9

    .line 596
    :goto_a
    new-instance v22, Ljava/util/ArrayList;

    .line 598
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 601
    new-instance v24, Ljava/util/ArrayList;

    .line 603
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 606
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 609
    move-result v25

    .line 610
    if-eqz v25, :cond_11

    .line 612
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    .line 615
    move-result v25

    .line 616
    if-nez v25, :cond_12

    .line 618
    :cond_11
    move/from16 v22, v6

    .line 620
    goto :goto_b

    .line 621
    :cond_12
    move-object/from16 v0, v22

    .line 623
    move/from16 v22, v6

    .line 625
    move-object/from16 v6, v24

    .line 627
    move-object/from16 v24, v7

    .line 629
    goto :goto_10

    .line 630
    :goto_b
    const-string/jumbo v6, "whitelist"

    .line 633
    iget-object v0, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 635
    invoke-static {v9, v6, v0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getListFromDb(Landroid/content/ContentValues;Ljava/lang/String;Lcom/android/server/enterprise/storage/EdmStorageProvider;)Ljava/util/List;

    .line 638
    move-result-object v0

    .line 639
    const-string/jumbo v6, "blacklist"

    .line 642
    move-object/from16 v24, v7

    .line 644
    iget-object v7, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 646
    invoke-static {v9, v6, v7}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getListFromDb(Landroid/content/ContentValues;Ljava/lang/String;Lcom/android/server/enterprise/storage/EdmStorageProvider;)Ljava/util/List;

    .line 649
    move-result-object v6

    .line 650
    invoke-interface {v6, v11}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    .line 653
    move-result v7

    .line 654
    if-eqz v7, :cond_16

    .line 656
    move-object/from16 v7, v23

    .line 658
    invoke-interface {v0, v7}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    .line 661
    move-result v23

    .line 662
    if-nez v23, :cond_13

    .line 664
    goto :goto_e

    .line 665
    :cond_13
    if-nez v15, :cond_17

    .line 667
    const-string v0, "DomainFilter"

    .line 669
    const-string v3, "addDomainFilterRules() - Skipping rule - This rule is already in the database"

    .line 671
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 676
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 678
    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 680
    const-string v5, "The specified rule is already in the database."

    .line 682
    invoke-direct {v0, v3, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 685
    aput-object v0, v10, v12

    .line 687
    :cond_14
    :goto_c
    move-object/from16 v4, p1

    .line 689
    :cond_15
    :goto_d
    const/4 v6, 0x0

    .line 690
    goto/16 :goto_14

    .line 692
    :cond_16
    move-object/from16 v7, v23

    .line 694
    :cond_17
    :goto_e
    move-object/from16 v23, v0

    .line 696
    move-object/from16 v25, v6

    .line 698
    const/4 v0, 0x0

    .line 699
    :goto_f
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 702
    move-result v6

    .line 703
    if-ge v0, v6, :cond_19

    .line 705
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 708
    move-result-object v6

    .line 709
    check-cast v6, Ljava/lang/String;

    .line 711
    invoke-interface {v11, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 714
    move-result v26

    .line 715
    if-eqz v26, :cond_18

    .line 717
    invoke-interface {v11, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 720
    :cond_18
    add-int/lit8 v0, v0, 0x1

    .line 722
    goto :goto_f

    .line 723
    :cond_19
    move-object/from16 v0, v23

    .line 725
    move-object/from16 v6, v25

    .line 727
    :goto_10
    invoke-virtual {v13, v11}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setDenyDomains(Ljava/util/List;)V

    .line 730
    if-eqz v15, :cond_1e

    .line 732
    if-eqz v3, :cond_1c

    .line 734
    invoke-virtual {v1, v8, v14}, Lcom/android/server/enterprise/firewall/DomainFilter;->setupNetworkDns(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    move-result v7

    .line 738
    const/4 v11, -0x1

    .line 739
    if-ne v7, v11, :cond_1a

    .line 741
    const-string v0, "DomainFilter"

    .line 743
    const-string v3, "addDomainFilterRules() - Skipping invalid rule - Invalid netID"

    .line 745
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 750
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 752
    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 754
    const-string v5, "Error occurred applying DNS(s)"

    .line 756
    invoke-direct {v0, v3, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 759
    aput-object v0, v10, v12

    .line 761
    goto :goto_c

    .line 762
    :cond_1a
    const-string/jumbo v11, "networkId"

    .line 765
    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 768
    move-result v11

    .line 769
    if-eqz v11, :cond_1b

    .line 771
    const-string/jumbo v11, "networkId"

    .line 774
    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 777
    move-result-object v9

    .line 778
    if-eqz v9, :cond_1b

    .line 780
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 783
    move-result v11

    .line 784
    move/from16 v23, v3

    .line 786
    const/4 v3, -0x1

    .line 787
    if-eq v11, v3, :cond_1d

    .line 789
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 792
    move-result v11

    .line 793
    if-eq v7, v11, :cond_1d

    .line 795
    iget-object v11, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    .line 797
    const/4 v3, 0x0

    .line 798
    invoke-static {v11, v3, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 801
    move-result-object v9

    .line 802
    iget-object v3, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    .line 804
    invoke-virtual {v3, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 807
    goto :goto_11

    .line 808
    :cond_1b
    move/from16 v23, v3

    .line 810
    goto :goto_11

    .line 811
    :cond_1c
    move/from16 v23, v3

    .line 813
    const/4 v7, -0x1

    .line 814
    :cond_1d
    :goto_11
    const-string/jumbo v3, "dns1"

    .line 817
    invoke-virtual {v4, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string/jumbo v3, "dns2"

    .line 823
    invoke-virtual {v4, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const-string/jumbo v3, "networkId"

    .line 829
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 832
    move-result-object v8

    .line 833
    invoke-virtual {v4, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 836
    move v11, v7

    .line 837
    goto :goto_12

    .line 838
    :cond_1e
    move/from16 v23, v3

    .line 840
    const/4 v11, -0x1

    .line 841
    :goto_12
    iget-object v3, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 843
    invoke-virtual {v3, v2, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->hasDenyRuleInDatabase(ILjava/lang/String;)Z

    .line 846
    move-result v3

    .line 847
    iget-object v7, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 849
    const-string v8, "DomainFilterTable"

    .line 851
    move-object/from16 v9, v24

    .line 853
    invoke-virtual {v7, v8, v4, v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 856
    move-result v4

    .line 857
    if-nez v4, :cond_1f

    .line 859
    const-string v0, "DomainFilter"

    .line 861
    const-string v3, "addDomainFilterRules() - Failed to add rule in the database"

    .line 863
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 868
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 870
    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 872
    const-string v5, "Failed to add/update rule in the database."

    .line 874
    invoke-direct {v0, v3, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 877
    aput-object v0, v10, v12

    .line 879
    if-eqz v15, :cond_14

    .line 881
    iget-object v0, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    .line 883
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 886
    move-result-object v3

    .line 887
    const/4 v4, 0x0

    .line 888
    invoke-static {v0, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 891
    move-result-object v0

    .line 892
    iget-object v3, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    .line 894
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 897
    goto/16 :goto_c

    .line 899
    :cond_1f
    move-object/from16 v4, p1

    .line 901
    invoke-virtual {v1, v4, v13, v6, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->addDomainListInDataBase(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Ljava/util/List;Ljava/util/List;)Z

    .line 904
    move-result v0

    .line 905
    if-nez v0, :cond_21

    .line 907
    const-string v0, "DomainFilter"

    .line 909
    const-string v3, "addDomainFilterRules() - Failed to add rule in the database -domains list"

    .line 911
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 916
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 918
    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 920
    const-string v6, "Failed to add/update rule in the database."

    .line 922
    invoke-direct {v0, v3, v5, v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 925
    aput-object v0, v10, v12

    .line 927
    if-nez v22, :cond_20

    .line 929
    iget-object v0, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 931
    const-string v3, "DomainFilterTable"

    .line 933
    invoke-virtual {v0, v3, v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 936
    :cond_20
    if-eqz v15, :cond_15

    .line 938
    iget-object v0, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    .line 940
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 943
    move-result-object v3

    .line 944
    const/4 v5, 0x0

    .line 945
    invoke-static {v0, v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 948
    move-result-object v0

    .line 949
    iget-object v3, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    .line 951
    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 954
    goto/16 :goto_d

    .line 956
    :cond_21
    if-eqz v23, :cond_22

    .line 958
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 961
    move-result-object v0

    .line 962
    const/4 v6, 0x0

    .line 963
    invoke-virtual {v1, v4, v13, v6, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;ILjava/lang/String;)V

    .line 966
    goto :goto_13

    .line 967
    :cond_22
    const/4 v6, 0x0

    .line 968
    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->processPackageExceptionListDelayed()V

    .line 971
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->processKGPackageExceptionDelayed()V

    .line 974
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 976
    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 978
    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 980
    const-string v9, "The rule(s) was successfully added/updated."

    .line 982
    invoke-direct {v0, v7, v8, v9}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 985
    aput-object v0, v10, v12

    .line 987
    iget-object v0, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterNapCommon:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    .line 989
    const/4 v7, 0x1

    .line 990
    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->setDomainFilterEnabled(Z)V

    .line 993
    new-instance v0, Lcom/samsung/android/knox/AppIdentity;

    .line 995
    move-object/from16 v8, v21

    .line 997
    invoke-direct {v0, v5, v8}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    if-nez v3, :cond_23

    .line 1002
    iget-object v3, v1, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 1004
    invoke-virtual {v3, v0, v4, v7}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->blockPort53(Lcom/samsung/android/knox/AppIdentity;Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 1007
    move-result v0

    .line 1008
    if-eqz v0, :cond_23

    .line 1010
    const-string v0, "DomainFilter"

    .line 1012
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1014
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1017
    const-string/jumbo v7, "blockPort53() - port53 rule added successfully. Package: "

    .line 1020
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1029
    move-result-object v3

    .line 1030
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_23
    :goto_14
    add-int/lit8 v12, v12, 0x1

    .line 1035
    move-object v0, v4

    .line 1036
    move/from16 v4, v16

    .line 1038
    move-object/from16 v3, v17

    .line 1040
    move-object/from16 v9, v18

    .line 1042
    move/from16 v7, v19

    .line 1044
    move-object/from16 v11, v20

    .line 1046
    const/4 v5, 0x1

    .line 1047
    const/4 v8, -0x1

    .line 1048
    goto/16 :goto_0

    .line 1050
    :cond_24
    move-object v4, v0

    .line 1051
    move-object/from16 v17, v3

    .line 1053
    move/from16 v19, v7

    .line 1055
    move-object/from16 v20, v11

    .line 1057
    new-instance v0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 1059
    const-string v2, "KNOX_SECURE_NETWORK"

    .line 1061
    const-string v3, "addDomainFilterRules"

    .line 1063
    const/4 v5, 0x1

    .line 1064
    invoke-direct {v0, v2, v5, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 1067
    iget v2, v4, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 1069
    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setUserTypeProperty(I)V

    .line 1072
    const-string/jumbo v2, "rules"

    .line 1075
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1077
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1080
    const-string v5, "\""

    .line 1082
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 1088
    move-result-object v5

    .line 1089
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    const-string v5, "\""

    .line 1094
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1100
    move-result-object v3

    .line 1101
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    invoke-static {v0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 1107
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1110
    move-result v0

    .line 1111
    if-eqz v0, :cond_27

    .line 1113
    new-instance v0, Ljava/util/ArrayList;

    .line 1115
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1118
    move/from16 v2, v19

    .line 1120
    :goto_15
    if-ge v6, v2, :cond_26

    .line 1122
    aget-object v3, v10, v6

    .line 1124
    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 1127
    move-result-object v3

    .line 1128
    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 1130
    invoke-virtual {v3, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    .line 1133
    move-result v3

    .line 1134
    if-eqz v3, :cond_25

    .line 1136
    move-object/from16 v3, v17

    .line 1138
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1141
    move-result-object v5

    .line 1142
    check-cast v5, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 1144
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1147
    goto :goto_16

    .line 1148
    :cond_25
    move-object/from16 v3, v17

    .line 1150
    :goto_16
    add-int/lit8 v6, v6, 0x1

    .line 1152
    move-object/from16 v17, v3

    .line 1154
    goto :goto_15

    .line 1155
    :cond_26
    invoke-virtual {v1, v4, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->addDomainRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1158
    :cond_27
    monitor-exit p0

    .line 1159
    return-object v10

    .line 1160
    :catchall_1
    move-exception v0

    .line 1161
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1162
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1163
    :goto_17
    monitor-exit p0

    .line 1164
    throw v0
.end method

.method public final addDomainListInDataBase(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z
    .locals 7

    .line 1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3
    const-string v2, "adminUid"

    .line 4
    const-string/jumbo v3, "packageName"

    .line 5
    invoke-static {p1, v1, v2, v3, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string/jumbo v4, "typeList"

    invoke-virtual {v1, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const-string/jumbo v4, "domain"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 9
    invoke-static {p1, v5, v2, v3, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v5, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DomainFilterListTable"

    invoke-virtual {v2, v3, v1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "addDomainListInDataBase()- Any "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " couldn\'t be added"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "DomainFilter"

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 13
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->rollbackDomainList(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Z)V

    const/4 p0, 0x0

    return p0

    .line 14
    :cond_0
    move-object v1, p7

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final addDomainListInDataBase(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Ljava/util/List;Ljava/util/List;)Z
    .locals 11

    .line 21
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 22
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 23
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 24
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v3

    .line 25
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object p2

    .line 26
    const-string v10, "DomainFilter"

    const-string v0, "addDomainListInDataBase()"

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const-string/jumbo v4, "blacklist"

    move-object v0, p0

    move v1, p1

    move-object v2, v8

    move-object v5, p3

    move-object v6, p4

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->addDomainListInDataBase(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string/jumbo v4, "whitelist"

    move-object v0, p0

    move v1, p1

    move-object v2, v8

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->addDomainListInDataBase(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    .line 29
    const-string p0, "addDomainListInDataBase()- All domains were added"

    invoke-static {v10, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public final declared-synchronized addDomainRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "DomainFilter"

    .line 4
    const-string v1, "addDomainRules()"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    move-object v0, p2

    .line 10
    check-cast v0, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 18
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 20
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 22
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 24
    const-string v1, "The domain filter on iptables api was successfully enabled."

    .line 26
    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    .line 30
    return-object p1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 35
    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addDomainRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 38
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    monitor-exit p0

    .line 40
    return-object p1

    .line 41
    :goto_0
    monitor-exit p0

    .line 42
    throw p1
.end method

.method public final checkAdminInDatabase(I)I
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 4
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    const-string v1, "DomainFilterTable"

    .line 9
    const-string v2, "adminUid"

    .line 11
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 14
    move-result-object v1

    .line 15
    move-object v3, v1

    .line 16
    check-cast v3, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    if-nez v3, :cond_0

    .line 25
    const-string v1, "DomainFilterOnIptablesApiStatus"

    .line 27
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 30
    move-result-object v1

    .line 31
    move-object p0, v1

    .line 32
    check-cast p0, Ljava/util/ArrayList;

    .line 34
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 37
    move-result p0

    .line 38
    if-nez p0, :cond_0

    .line 40
    return v4

    .line 41
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Ljava/lang/String;

    .line 47
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 50
    move-result p0

    .line 51
    if-ne p0, p1, :cond_1

    .line 53
    const/4 p0, 0x1

    .line 54
    return p0

    .line 55
    :cond_1
    const/4 p0, -0x1

    .line 56
    return p0
.end method

.method public final concatenateListAndExecuteCommand(ILjava/util/ArrayList;ILjava/lang/String;Ljava/util/List;)V
    .locals 9

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 3
    invoke-virtual {p4, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 6
    move-result-object v0

    .line 7
    array-length v0, v0

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    add-int/2addr p3, v0

    .line 19
    if-nez p5, :cond_0

    .line 21
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 24
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    const/4 p2, 0x0

    .line 28
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeDomainFilterCommands(Ljava/util/ArrayList;I)V

    .line 34
    goto/16 :goto_2

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    move v4, p3

    .line 38
    move v3, v0

    .line 39
    :goto_0
    invoke-interface {p5}, Ljava/util/List;->size()I

    .line 42
    move-result v5

    .line 43
    const-string/jumbo v6, "concatenateListAndExecuteCommand() - "

    .line 46
    const-string v7, "DomainFilter"

    .line 48
    if-ge v3, v5, :cond_3

    .line 50
    invoke-interface {p5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Ljava/lang/String;

    .line 56
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 58
    invoke-virtual {v5, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 61
    move-result-object v5

    .line 62
    array-length v5, v5

    .line 63
    add-int/2addr v4, v5

    .line 64
    const v5, 0x11170

    .line 67
    if-ge v4, v5, :cond_2

    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 72
    move-result v5

    .line 73
    if-nez v5, :cond_1

    .line 75
    invoke-interface {p5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Ljava/lang/String;

    .line 81
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 87
    const-string v6, ";"

    .line 89
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-interface {p5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    move-result-object v6

    .line 96
    check-cast v6, Ljava/lang/String;

    .line 98
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 110
    goto :goto_0

    .line 111
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 113
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v4

    .line 127
    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 133
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 146
    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeDomainFilterCommands(Ljava/util/ArrayList;I)V

    .line 149
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 152
    move v4, p3

    .line 153
    goto :goto_0

    .line 154
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    .line 157
    move-result p3

    .line 158
    if-eqz p3, :cond_4

    .line 160
    new-instance p3, Ljava/lang/StringBuilder;

    .line 162
    invoke-direct {p3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object p5

    .line 169
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object p3

    .line 176
    invoke-static {v7, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 182
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object p2

    .line 189
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 195
    invoke-virtual {p0, v1, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeDomainFilterCommands(Ljava/util/ArrayList;I)V

    .line 198
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 201
    :cond_4
    :goto_2
    return-void
.end method

.method public final connectNativeNetdService()V
    .locals 3

    .line 1
    const-string v0, "DomainFilter"

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mInjector:Lcom/android/server/enterprise/firewall/DomainFilter$Injector;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string/jumbo v1, "netd"

    .line 11
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_0

    .line 21
    const-string v2, "WARNING: returning null INetd instance."

    .line 23
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    iput-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    .line 28
    if-nez v1, :cond_1

    .line 30
    const-string/jumbo p0, "connectNativeNetdService() - netd is null."

    .line 33
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void

    .line 37
    :cond_1
    invoke-interface {v1}, Landroid/net/INetd;->isAlive()Z

    .line 40
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    const/4 p0, 0x0

    .line 43
    :goto_0
    if-nez p0, :cond_2

    .line 45
    const-string/jumbo p0, "connectNativeNetdService() - Can\'t connect to NativeNetdService netd"

    .line 48
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_2
    return-void
.end method

.method public final declared-synchronized enableDomainFilterOnIptables(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 4
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 7
    move-result v1

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    .line 11
    move-result v2

    .line 12
    const/4 v3, -0x1

    .line 13
    if-ne v2, v3, :cond_0

    .line 15
    const-string p1, "DomainFilter"

    .line 17
    const-string/jumbo p2, "enableDomainFilterOnIptables() - Another admin already have domain filter rules in the database"

    .line 20
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 25
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 27
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 29
    const-string v1, "This administrator can\'t execute this operation because he is not the owner."

    .line 31
    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    .line 35
    return-object p1

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    goto/16 :goto_1

    .line 39
    :cond_0
    if-eqz p2, :cond_6

    .line 41
    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 43
    const-string v3, "*filter\n:domainfilter-test -\nCOMMIT\n*filter\n-A domainfilter-test -m domainfilter --blacklist %testing% -j REJECT\nCOMMIT\n"

    .line 45
    const/4 v4, 0x4

    .line 46
    invoke-virtual {v2, v4, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    .line 49
    move-result v3

    .line 50
    const-string v5, "*filter\n-D domainfilter-test -m domainfilter --blacklist %testing% -j REJECT\nCOMMIT\n*filter\n-X domainfilter-test\nCOMMIT\n"

    .line 52
    invoke-virtual {v2, v4, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    .line 55
    if-nez v3, :cond_1

    .line 57
    const-string p1, "DomainFilter"

    .line 59
    const-string p2, "DomainFilterOnIptablesApi not supported."

    .line 61
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 66
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 68
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 70
    const-string v1, "Failed to enable domain filter on iptables api."

    .line 72
    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    monitor-exit p0

    .line 76
    return-object p1

    .line 77
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterOnIptablesEnabledAtAll()Z

    .line 80
    move-result v2

    .line 81
    new-instance v3, Landroid/content/ContentValues;

    .line 83
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 86
    const-string v4, "adminUid"

    .line 88
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    const-string/jumbo v0, "userId"

    .line 98
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string/jumbo v0, "status"

    .line 108
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {v3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 115
    iget-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 117
    const-string v0, "DomainFilterOnIptablesApiStatus"

    .line 119
    invoke-virtual {p2, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 122
    move-result-wide v0

    .line 123
    const-wide/16 v3, -0x1

    .line 125
    cmp-long p2, v0, v3

    .line 127
    if-nez p2, :cond_2

    .line 129
    const-string p1, "DomainFilter"

    .line 131
    const-string/jumbo p2, "enableDomainFilterOnIptables() - Failed to change DomainFilterOnIptables Api status on database"

    .line 134
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 139
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 141
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 143
    const-string v1, "Failed to change DomainFilterOnIptables status on database."

    .line 145
    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    monitor-exit p0

    .line 149
    return-object p1

    .line 150
    :cond_2
    if-nez v2, :cond_5

    .line 152
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getConnectivityService()Landroid/net/ConnectivityManager;

    .line 155
    move-result-object p2

    .line 156
    const-string v0, "DomainFilter"

    .line 158
    if-nez p2, :cond_3

    .line 160
    const-string/jumbo p2, "flushNetworkDnsCache() - failed to retrieve ConnectivityService instance"

    .line 163
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 166
    goto :goto_0

    .line 167
    :cond_3
    :try_start_4
    sget-object p2, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/ConnectivityManager;

    .line 169
    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 172
    move-result-object p2

    .line 173
    if-eqz p2, :cond_4

    .line 175
    new-instance v1, Lcom/android/server/enterprise/firewall/DomainFilter$$ExternalSyntheticLambda0;

    .line 177
    invoke-direct {v1, p0, p2}, Lcom/android/server/enterprise/firewall/DomainFilter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/net/Network;)V

    .line 180
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 183
    goto :goto_0

    .line 184
    :catch_0
    :try_start_5
    const-string/jumbo p2, "flushNetworkDnsCache() - Failed to getActiveNetwork"

    .line 187
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterNapCommon:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    .line 192
    const/4 v0, 0x1

    .line 193
    invoke-virtual {p2, v0}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->setDomainFilterOnIptablesEnabled(Z)V

    .line 196
    :cond_5
    const/4 p2, 0x0

    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;

    .line 200
    move-result-object p2

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->addDomainRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 204
    move-result-object p1

    .line 205
    const-string p2, "DomainFilter"

    .line 207
    const-string/jumbo v0, "enableDomainFilterOnIptables() - DomainFilterOnIptables Api successfully enabled"

    .line 210
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 213
    monitor-exit p0

    .line 214
    return-object p1

    .line 215
    :cond_6
    :try_start_6
    new-instance p1, Landroid/content/ContentValues;

    .line 217
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 220
    const-string p2, "adminUid"

    .line 222
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    const-string/jumbo p2, "userId"

    .line 232
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 239
    iget-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 241
    const-string v0, "DomainFilterOnIptablesApiStatus"

    .line 243
    invoke-virtual {p2, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 246
    move-result p1

    .line 247
    if-nez p1, :cond_7

    .line 249
    const-string p1, "DomainFilter"

    .line 251
    const-string/jumbo p2, "enableDomainFilterOnIptables() - Failed to change DomainFilterOnIptables Api status on database"

    .line 254
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 259
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 261
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 263
    const-string v1, "Failed to change DomainFilterOnIptables status on database."

    .line 265
    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 268
    monitor-exit p0

    .line 269
    return-object p1

    .line 270
    :cond_7
    :try_start_7
    const-string p1, "DomainFilter"

    .line 272
    const-string/jumbo p2, "enableDomainFilterOnIptables() - DomainFilterOnIptables successfully disabled"

    .line 275
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterOnIptablesEnabledAtAll()Z

    .line 281
    move-result p1

    .line 282
    const/4 p2, 0x0

    .line 283
    if-nez p1, :cond_8

    .line 285
    iget-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterNapCommon:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    .line 287
    invoke-virtual {p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->setDomainFilterOnIptablesEnabled(Z)V

    .line 290
    :cond_8
    iget-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 292
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {p1, v0, p2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->flushDomainChains(Ljava/lang/Integer;Z)Z

    .line 299
    move-result p1

    .line 300
    if-nez p1, :cond_9

    .line 302
    const-string p1, "DomainFilter"

    .line 304
    const-string/jumbo p2, "flushDomainChains() - Failed to flush domain chains"

    .line 307
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 312
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 314
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 316
    const-string v1, "Failed to disable domain filter on iptables api."

    .line 318
    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 321
    monitor-exit p0

    .line 322
    return-object p1

    .line 323
    :cond_9
    :try_start_8
    const-string p1, "DomainFilter"

    .line 325
    const-string/jumbo p2, "flushDomainChains() - domain rules successfully removed"

    .line 328
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 333
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 335
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 337
    const-string v1, "The domain filter on iptables api was successfully disabled."

    .line 339
    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 342
    monitor-exit p0

    .line 343
    return-object p1

    .line 344
    :goto_1
    monitor-exit p0

    .line 345
    throw p1
.end method

.method public final enableDomainFilterReport(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 6

    .line 1
    const-string v0, "DomainFilter"

    .line 3
    const-string/jumbo v1, "enableDomainFilterReport()"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 11
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 14
    move-result v1

    .line 15
    new-instance v2, Landroid/content/ContentValues;

    .line 17
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 20
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    move-result-object v3

    .line 24
    const-string/jumbo v4, "status"

    .line 27
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v3

    .line 34
    const-string/jumbo v4, "userId"

    .line 37
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 40
    new-instance v3, Landroid/content/ContentValues;

    .line 42
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object p1

    .line 49
    const-string v5, "adminUid"

    .line 51
    invoke-virtual {v3, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 54
    iget-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 56
    const-string v5, "DomainFilterReportStatus"

    .line 58
    invoke-virtual {p1, v5, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_0

    .line 64
    const-string/jumbo p0, "enableDomainFilterReport() - Failed to change Domain Filter Report status on database"

    .line 67
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 72
    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 74
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 76
    const-string v0, "Failed to change Domain Filter report status on database."

    .line 78
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 81
    return-object p0

    .line 82
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object p1

    .line 86
    if-eqz p2, :cond_1

    .line 88
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    .line 90
    check-cast v2, Ljava/util/HashSet;

    .line 92
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 95
    move-result v2

    .line 96
    if-nez v2, :cond_1

    .line 98
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    .line 100
    check-cast v1, Ljava/util/HashSet;

    .line 102
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    goto :goto_0

    .line 106
    :cond_1
    if-nez p2, :cond_2

    .line 108
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    .line 111
    move-result v2

    .line 112
    if-nez v2, :cond_2

    .line 114
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    .line 116
    check-cast v2, Ljava/util/HashSet;

    .line 118
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_2

    .line 124
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    .line 126
    check-cast v2, Ljava/util/HashSet;

    .line 128
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 131
    new-instance p1, Landroid/content/ContentValues;

    .line 133
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {p1, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 145
    const-string v2, "DomainFilterReportTable"

    .line 147
    invoke-virtual {v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 150
    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 152
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->registerDomainFilterListener(Z)Z

    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_3

    .line 158
    const-string/jumbo p0, "enableDomainFilterReport() - Domain Filter Report successfully enabled"

    .line 161
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    goto :goto_1

    .line 165
    :cond_3
    if-nez p2, :cond_4

    .line 167
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->registerDomainFilterListener(Z)Z

    .line 170
    move-result p0

    .line 171
    if-eqz p0, :cond_4

    .line 173
    const-string/jumbo p0, "enableDomainFilterReport() - Domain Filter Report successfully disabled"

    .line 176
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_4
    :goto_1
    new-instance p0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 181
    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 183
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 185
    if-eqz p2, :cond_5

    .line 187
    const-string p2, "Domain Report successfully enabled."

    .line 189
    goto :goto_2

    .line 190
    :cond_5
    const-string p2, "Domain Report successfully disabled."

    .line 192
    :goto_2
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 195
    return-object p0
.end method

.method public final declared-synchronized executeDomainFilterCommands(Ljava/util/ArrayList;I)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    const/4 v0, 0x1

    .line 12
    :goto_0
    const/4 v1, 0x3

    .line 13
    if-gt v0, v1, :cond_1

    .line 15
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 18
    move-result-object v2

    .line 19
    iput-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    .line 21
    if-eqz v2, :cond_0

    .line 23
    invoke-interface {v2, p2, p1}, Lcom/android/internal/net/IOemNetd;->updateDomainFilterCache(I[Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    const/16 v2, 0x14

    .line 28
    int-to-long v2, v2

    .line 29
    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 32
    goto :goto_1

    .line 33
    :catch_0
    move-exception v2

    .line 34
    :try_start_3
    const-string v3, "DomainFilter"

    .line 36
    const-string/jumbo v4, "delayTransaction() - failed to delay transaction "

    .line 39
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 42
    :goto_1
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_3

    .line 46
    :catch_1
    :try_start_4
    const-string v2, "DomainFilter"

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const-string/jumbo v4, "executeDomainFilterCommands() - attempt "

    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v4, " in "

    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v1

    .line 74
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 77
    const/16 v1, 0x1f4

    .line 79
    int-to-long v1, v1

    .line 80
    :try_start_5
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 83
    goto :goto_2

    .line 84
    :catch_2
    move-exception v1

    .line 85
    :try_start_6
    const-string v2, "DomainFilter"

    .line 87
    const-string/jumbo v3, "delayTransaction() - failed to delay transaction "

    .line 90
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    const-string p1, "DomainFilter"

    .line 98
    const-string/jumbo p2, "executeDomainFilterCommands() - Transaction failed. "

    .line 101
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 104
    monitor-exit p0

    .line 105
    return-void

    .line 106
    :goto_3
    monitor-exit p0

    .line 107
    throw p1
.end method

.method public final getApplicationUid(ILjava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const/16 p0, 0x80

    .line 16
    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(IILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 19
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_2

    .line 26
    :catch_0
    move-exception p0

    .line 27
    :try_start_1
    const-string p1, "DomainFilter"

    .line 29
    const-string/jumbo p2, "getApplicationUid() - exception getting package info "

    .line 32
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    const/4 p0, 0x0

    .line 39
    :goto_0
    if-eqz p0, :cond_1

    .line 41
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 43
    if-nez p0, :cond_0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 48
    return p0

    .line 49
    :cond_1
    :goto_1
    const/4 p0, -0x1

    .line 50
    return p0

    .line 51
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    throw p0
.end method

.method public final getConnectivityService()Landroid/net/ConnectivityManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/ConnectivityManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    .line 7
    const-string/jumbo v0, "connectivity"

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 16
    sput-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/ConnectivityManager;

    .line 18
    :cond_0
    sget-object p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnectivityService:Landroid/net/ConnectivityManager;

    .line 20
    return-object p0
.end method

.method public final getDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .locals 12

    .line 1
    const-string v0, "DomainFilter"

    .line 3
    const-string/jumbo v1, "getDomainFilterRules()"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    new-instance v1, Landroid/content/ContentValues;

    .line 16
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 19
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object p1

    .line 25
    const-string v2, "adminUid"

    .line 27
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 30
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 32
    const-string p1, "DomainFilterTable"

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object p1

    .line 45
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Landroid/content/ContentValues;

    .line 57
    const-string/jumbo v3, "packageName"

    .line 60
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object v3

    .line 64
    const-string/jumbo v4, "signature"

    .line 67
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v4

    .line 71
    if-eqz p2, :cond_1

    .line 73
    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_0

    .line 79
    :cond_1
    const-string/jumbo v5, "blacklist"

    .line 82
    invoke-static {v2, v5, p0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getListFromDb(Landroid/content/ContentValues;Ljava/lang/String;Lcom/android/server/enterprise/storage/EdmStorageProvider;)Ljava/util/List;

    .line 85
    move-result-object v8

    .line 86
    const-string/jumbo v5, "whitelist"

    .line 89
    invoke-static {v2, v5, p0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getListFromDb(Landroid/content/ContentValues;Ljava/lang/String;Lcom/android/server/enterprise/storage/EdmStorageProvider;)Ljava/util/List;

    .line 92
    move-result-object v9

    .line 93
    const-string/jumbo v5, "dns1"

    .line 96
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object v10

    .line 100
    const-string/jumbo v5, "dns2"

    .line 103
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object v11

    .line 107
    new-instance v7, Lcom/samsung/android/knox/AppIdentity;

    .line 109
    invoke-direct {v7, v3, v4}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v2, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 114
    move-object v6, v2

    .line 115
    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>(Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 125
    return-object v0
.end method

.method public final getOemNetdService()Lcom/android/internal/net/IOemNetd;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    .line 8
    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->connectNativeNetdService()V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    .line 15
    if-nez v0, :cond_4

    .line 17
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    .line 19
    if-eqz v0, :cond_4

    .line 21
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mInjector:Lcom/android/server/enterprise/firewall/DomainFilter$Injector;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    const-string/jumbo v0, "netd"

    .line 29
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    .line 36
    move-result-object v0

    .line 37
    const-string v1, "DomainFilter"

    .line 39
    if-nez v0, :cond_2

    .line 41
    const-string v2, "WARNING: returning null INetd instance."

    .line 43
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_2
    if-eqz v0, :cond_3

    .line 48
    :try_start_0
    invoke-interface {v0}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    .line 55
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string/jumbo v2, "getOemNetdService() - failed to retrieve getOemNetdService instance "

    .line 61
    invoke-static {v2, v0, v1}, Landroid/net/util/NetdService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 64
    :cond_3
    const-string v0, "WARNING: returning null IOemNetd instance."

    .line 66
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v0, 0x0

    .line 70
    :goto_0
    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    .line 72
    :cond_4
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    .line 74
    return-object p0
.end method

.method public final hasAnyRuleInDatabase()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string v0, "DomainFilterTable"

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    move-result p0

    .line 16
    const-string v0, "DomainFilter"

    .line 18
    if-eqz p0, :cond_0

    .line 20
    const-string/jumbo p0, "hasAnyRuleInDatabase(): false"

    .line 23
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_0
    const-string/jumbo p0, "hasAnyRuleInDatabase(): true"

    .line 31
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 p0, 0x1

    .line 35
    return p0
.end method

.method public final isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 6
    move-result v0

    .line 7
    new-instance v1, Landroid/content/ContentValues;

    .line 9
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 12
    const-string/jumbo v2, "userId"

    .line 15
    const-string v3, "adminUid"

    .line 17
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 22
    const-string p1, "DomainFilterOnIptablesApiStatus"

    .line 24
    const-string/jumbo v0, "status"

    .line 27
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_0

    .line 39
    const/4 p0, 0x0

    .line 40
    return p0

    .line 41
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 43
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 46
    move-result p0

    .line 47
    return p0
.end method

.method public final isDomainFilterOnIptablesEnabledAtAll()Z
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v2

    .line 11
    const-string/jumbo v3, "status"

    .line 14
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 19
    const-string v2, "DomainFilterOnIptablesApiStatus"

    .line 21
    invoke-virtual {p0, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 24
    move-result p0

    .line 25
    if-lez p0, :cond_0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_0
    return v1
.end method

.method public final isDomainFilterReportEnabledAsUser(I)Z
    .locals 2

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p1

    .line 10
    const-string/jumbo v1, "userId"

    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 16
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 18
    const-string p1, "DomainFilterReportStatus"

    .line 20
    const-string/jumbo v1, "status"

    .line 23
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Ljava/util/ArrayList;

    .line 29
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 35
    const/4 p0, 0x0

    .line 36
    return p0

    .line 37
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 39
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 42
    move-result p0

    .line 43
    return p0
.end method

.method public final packageAdded(Landroid/content/Intent;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "android.intent.extra.user_handle"

    .line 11
    const/4 v2, -0x1

    .line 12
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 15
    move-result p1

    .line 16
    if-eq p1, v2, :cond_9

    .line 18
    if-nez v0, :cond_0

    .line 20
    goto/16 :goto_4

    .line 22
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(ILjava/lang/String;)I

    .line 25
    move-result v1

    .line 26
    const-string v3, "DomainFilter"

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    .line 30
    const-string/jumbo v5, "packageAdded() - packageName: "

    .line 33
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v5, ", uid: "

    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v4

    .line 51
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    if-ne v1, v2, :cond_1

    .line 56
    const-string p0, "DomainFilter"

    .line 58
    const-string/jumbo p1, "packageAdded() - Failed to retrieve app info"

    .line 61
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void

    .line 65
    :cond_1
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    .line 67
    monitor-enter v3

    .line 68
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v4

    .line 72
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    .line 74
    check-cast v5, Ljava/util/HashMap;

    .line 76
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-result-object v5

    .line 80
    if-nez v5, :cond_2

    .line 82
    new-instance v5, Ljava/util/HashMap;

    .line 84
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object v6

    .line 91
    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    .line 96
    check-cast v6, Ljava/util/HashMap;

    .line 98
    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    goto/16 :goto_3

    .line 105
    :cond_2
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    .line 107
    check-cast v5, Ljava/util/HashMap;

    .line 109
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    move-result-object v4

    .line 113
    check-cast v4, Ljava/util/Map;

    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v5

    .line 119
    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    new-instance v3, Landroid/content/ContentValues;

    .line 125
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 128
    const/4 v4, 0x0

    .line 129
    invoke-static {v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    .line 132
    move-result-object v5

    .line 133
    const-string v6, "#SelectClause#"

    .line 135
    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string/jumbo v5, "packageName"

    .line 141
    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 146
    const-string v6, "DomainFilterTable"

    .line 148
    const/4 v7, 0x0

    .line 149
    invoke-virtual {v5, v6, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 152
    move-result-object v5

    .line 153
    check-cast v5, Ljava/util/ArrayList;

    .line 155
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 158
    move-result v6

    .line 159
    if-nez v6, :cond_8

    .line 161
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 164
    move-result-object v4

    .line 165
    check-cast v4, Landroid/content/ContentValues;

    .line 167
    const-string/jumbo v5, "signature"

    .line 170
    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 173
    move-result-object v5

    .line 174
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    move-result v6

    .line 178
    if-nez v6, :cond_4

    .line 180
    invoke-virtual {p0, p1, v0, v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->validatePkgSignature(ILjava/lang/String;Ljava/lang/String;)Z

    .line 183
    move-result p1

    .line 184
    if-eqz p1, :cond_3

    .line 186
    goto :goto_1

    .line 187
    :cond_3
    const-string p0, "DomainFilter"

    .line 189
    const-string/jumbo p1, "packageAdded() - Installed app\'s signature mismatched the one provided by admin."

    .line 192
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    goto :goto_2

    .line 196
    :cond_4
    :goto_1
    const-string/jumbo p1, "blacklist"

    .line 199
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 201
    invoke-static {v4, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getListFromDb(Landroid/content/ContentValues;Ljava/lang/String;Lcom/android/server/enterprise/storage/EdmStorageProvider;)Ljava/util/List;

    .line 204
    move-result-object v9

    .line 205
    const-string/jumbo p1, "whitelist"

    .line 208
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 210
    invoke-static {v4, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getListFromDb(Landroid/content/ContentValues;Ljava/lang/String;Lcom/android/server/enterprise/storage/EdmStorageProvider;)Ljava/util/List;

    .line 213
    move-result-object v10

    .line 214
    const-string/jumbo p1, "dns1"

    .line 217
    invoke-virtual {v4, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    move-result-object p1

    .line 221
    move-object v0, v9

    .line 222
    check-cast v0, Ljava/util/ArrayList;

    .line 224
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_5

    .line 230
    move-object v0, v10

    .line 231
    check-cast v0, Ljava/util/ArrayList;

    .line 233
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 236
    move-result v0

    .line 237
    if-eqz v0, :cond_5

    .line 239
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 242
    move-result v0

    .line 243
    if-nez v0, :cond_8

    .line 245
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 248
    move-result v0

    .line 249
    if-nez v0, :cond_7

    .line 251
    const-string/jumbo v0, "dns2"

    .line 254
    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->setupNetworkDns(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    move-result p1

    .line 262
    if-eq p1, v2, :cond_6

    .line 264
    const-string/jumbo v0, "networkId"

    .line 267
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 276
    const-string v2, "DomainFilterTable"

    .line 278
    invoke-virtual {v0, v2, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 281
    :cond_6
    move v2, p1

    .line 282
    :cond_7
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 285
    move-result-object v7

    .line 286
    const/4 v8, 0x0

    .line 287
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 290
    move-result-object v11

    .line 291
    const/4 v6, 0x0

    .line 292
    move-object v5, p0

    .line 293
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 296
    :cond_8
    :goto_2
    return-void

    .line 297
    :goto_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    throw p0

    .line 299
    :cond_9
    :goto_4
    const-string p0, "DomainFilter"

    .line 301
    const-string/jumbo p1, "packageAdded() - Received invalid user id or package name, can\'t retrieve application info"

    .line 304
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method

.method public final declared-synchronized processKGPackageException(Ljava/util/List;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    move-result-object p1

    .line 6
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 18
    const-string/jumbo v1, "com.samsung.android.kgclient"

    .line 21
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 23
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 31
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 33
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v7, 0x0

    .line 41
    const/16 v2, 0x8

    .line 43
    const/4 v4, 0x0

    .line 44
    const/4 v5, 0x0

    .line 45
    move-object v1, p0

    .line 46
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    monitor-exit p0

    .line 53
    return-void

    .line 54
    :goto_1
    monitor-exit p0

    .line 55
    throw p1
.end method

.method public final processKGPackageExceptionDelayed()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isKGExemptRuleRequired()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mKGExceptionListLock:Ljava/lang/Object;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsKGExceptionApplied:Z

    .line 12
    if-eqz v1, :cond_0

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsKGExceptionApplied:Z

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    .line 24
    const-string/jumbo v1, "user"

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/os/UserManager;

    .line 33
    if-eqz v0, :cond_2

    .line 35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 38
    move-result-wide v1

    .line 39
    :try_start_1
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object v0

    .line 49
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 61
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 66
    move-result-object v4

    .line 67
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 69
    const/16 v5, 0x40

    .line 71
    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->processKGPackageException(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    goto :goto_0

    .line 79
    :catchall_1
    move-exception p0

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 84
    goto :goto_3

    .line 85
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 88
    throw p0

    .line 89
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    throw p0

    .line 91
    :cond_2
    :goto_3
    return-void
.end method

.method public final declared-synchronized processPackageExceptionList(Ljava/util/List;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getUidsToExemptFromPackages(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/List;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p1

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Integer;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 30
    move-result v0

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    const/4 v2, 0x4

    .line 38
    const/4 v4, 0x0

    .line 39
    const/4 v5, 0x0

    .line 40
    move-object v1, p0

    .line 41
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :goto_1
    monitor-exit p0

    .line 50
    throw p1
.end method

.method public final processPackageExceptionListDelayed()V
    .locals 6

    .line 1
    const-string v0, "DomainFilter"

    .line 3
    const-string/jumbo v1, "processPackageExceptionListDelayed()"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mExceptionListLock:Ljava/lang/Object;

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    .line 14
    if-eqz v1, :cond_0

    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_3

    .line 20
    :cond_0
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    .line 26
    const-string/jumbo v1, "user"

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/os/UserManager;

    .line 35
    if-eqz v0, :cond_2

    .line 37
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 40
    move-result-wide v1

    .line 41
    :try_start_1
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v0

    .line 51
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_1

    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 63
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 68
    move-result-object v4

    .line 69
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 71
    const/16 v5, 0x40

    .line 73
    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->processPackageExceptionList(Ljava/util/List;)V

    .line 80
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->processPlatformPackageExceptionList(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 83
    goto :goto_0

    .line 84
    :catchall_1
    move-exception p0

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 89
    goto :goto_2

    .line 90
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 93
    throw p0

    .line 94
    :cond_2
    :goto_2
    return-void

    .line 95
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    throw p0
.end method

.method public final declared-synchronized processPlatformPackageExceptionList(Ljava/util/List;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getPlatformUidsToExemptFromPackages(Ljava/util/List;)Ljava/util/List;

    .line 5
    move-result-object p1

    .line 6
    check-cast p1, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p1

    .line 12
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Integer;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 27
    move-result v0

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x0

    .line 34
    const/16 v2, 0x8

    .line 36
    const/4 v4, 0x0

    .line 37
    const/4 v5, 0x0

    .line 38
    move-object v1, p0

    .line 39
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :goto_1
    monitor-exit p0

    .line 48
    throw p1
.end method

.method public final declared-synchronized reassembleDomainFilterBrokenRules(I)Ljava/util/List;
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterBrokenRules:Ljava/util/Map;

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v2

    .line 13
    check-cast v1, Ljava/util/HashMap;

    .line 15
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/util/List;

    .line 21
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v1

    .line 25
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_4

    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v3

    .line 41
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_3

    .line 47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 53
    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getIpcToken()I

    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_0

    .line 59
    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getIpcToken()I

    .line 62
    move-result v5

    .line 63
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getIpcToken()I

    .line 66
    move-result v6

    .line 67
    if-ne v5, v6, :cond_0

    .line 69
    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    .line 76
    move-result-object v5

    .line 77
    if-eqz v3, :cond_1

    .line 79
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    .line 82
    move-result-object v6

    .line 83
    invoke-interface {v3, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 86
    goto :goto_1

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    goto :goto_2

    .line 89
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    .line 91
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    .line 94
    move-result-object v2

    .line 95
    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    :cond_2
    invoke-virtual {v4, v3}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setDenyDomains(Ljava/util/List;)V

    .line 101
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setAllowDomains(Ljava/util/List;)V

    .line 104
    goto :goto_0

    .line 105
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    goto :goto_0

    .line 109
    :cond_4
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterBrokenRules:Ljava/util/Map;

    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    move-result-object p1

    .line 115
    check-cast v1, Ljava/util/HashMap;

    .line 117
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    .line 121
    return-object v0

    .line 122
    :goto_2
    monitor-exit p0

    .line 123
    throw p1
.end method

.method public final registerDomainFilterListener(Z)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "DomainFilter"

    .line 4
    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterEventListener:Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;

    .line 8
    if-nez p1, :cond_1

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    .line 16
    if-eqz p1, :cond_1

    .line 18
    new-instance p1, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;

    .line 20
    invoke-direct {p1, p0}, Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    .line 23
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterEventListener:Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;

    .line 25
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    .line 27
    invoke-interface {p0, p1}, Lcom/android/internal/net/IOemNetd;->registerDomainFilterEventListener(Lcom/android/internal/net/IDomainFilterEventListener;)V

    .line 30
    const-string p0, "DomainFilterEventListener registered successfully"

    .line 32
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return v0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    const-string p1, "Failed to register domainFilterEventListener "

    .line 39
    invoke-static {p0, p1, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterEventListener:Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;

    .line 45
    if-eqz p1, :cond_1

    .line 47
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getOemNetdService()Lcom/android/internal/net/IOemNetd;

    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mOemNetdService:Lcom/android/internal/net/IOemNetd;

    .line 53
    if-eqz p1, :cond_1

    .line 55
    invoke-interface {p1}, Lcom/android/internal/net/IOemNetd;->unregisterDomainFilterEventListener()V

    .line 58
    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterEventListener:Lcom/android/server/enterprise/firewall/DomainFilter$DomainFilterEventListener;

    .line 61
    const-string p0, "DomainFilterEventListener unregistered successfully"

    .line 63
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    return v0

    .line 67
    :catch_1
    move-exception p0

    .line 68
    const-string p1, "Failed to unregister domainFilterEventListener "

    .line 70
    invoke-static {p0, p1, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 74
    return p0
.end method

.method public final releaseNetworks(I)V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p1

    .line 10
    const-string v1, "adminUid"

    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 15
    const-string/jumbo p1, "networkId"

    .line 18
    filled-new-array {p1}, [Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 24
    const-string v3, "DomainFilterTable"

    .line 26
    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 38
    const-string p0, "DomainFilter"

    .line 40
    const-string/jumbo p1, "releaseNetworks() - No rules in database"

    .line 43
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void

    .line 47
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object v0

    .line 51
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Landroid/content/ContentValues;

    .line 63
    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 66
    move-result-object v1

    .line 67
    const/4 v2, -0x1

    .line 68
    if-eqz v1, :cond_2

    .line 70
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 73
    move-result v1

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    move v1, v2

    .line 76
    :goto_1
    if-eq v1, v2, :cond_1

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    .line 84
    const/4 v3, 0x0

    .line 85
    invoke-static {v2, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    return-void
.end method

.method public final declared-synchronized removeDnsForApplication(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;ILandroid/content/ContentValues;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "DomainFilter"

    .line 4
    const-string/jumbo v1, "removeDnsForApplication() - START"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    const-string/jumbo v0, "dns1"

    .line 13
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    const-string/jumbo v1, "dns2"

    .line 20
    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns2()Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    if-eqz v0, :cond_5

    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_5

    .line 40
    if-nez v3, :cond_0

    .line 42
    if-nez v1, :cond_5

    .line 44
    :cond_0
    if-eqz v3, :cond_1

    .line 46
    if-eqz v1, :cond_5

    .line 48
    :cond_1
    if-eqz v3, :cond_2

    .line 50
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto/16 :goto_1

    .line 60
    :cond_2
    const-string/jumbo v0, "networkId"

    .line 63
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 66
    move-result-object p3

    .line 67
    if-eqz p3, :cond_3

    .line 69
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 72
    move-result v0

    .line 73
    const/4 v1, -0x1

    .line 74
    if-eq v0, v1, :cond_3

    .line 76
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-static {v0, v2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 82
    move-result-object p3

    .line 83
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkHandler:Lcom/android/server/enterprise/firewall/DomainFilter$NetworkManagementHandler;

    .line 85
    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object p3

    .line 92
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    .line 94
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 97
    const-string/jumbo v1, "dns1"

    .line 100
    const/4 v2, 0x0

    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string/jumbo v1, "dns2"

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string/jumbo v1, "networkId"

    .line 113
    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    new-instance p3, Landroid/content/ContentValues;

    .line 118
    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 121
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 129
    const-string v1, "adminUid"

    .line 131
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    move-result-object p2

    .line 135
    invoke-virtual {p3, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    const-string/jumbo p2, "packageName"

    .line 141
    invoke-virtual {p3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 146
    const-string p2, "DomainFilterTable"

    .line 148
    invoke-virtual {p1, p2, v0, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 151
    move-result p1

    .line 152
    if-nez p1, :cond_4

    .line 154
    const-string p1, "DomainFilter"

    .line 156
    const-string/jumbo p2, "removeDnsForApplication() -  Database error!"

    .line 159
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 164
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 166
    sget-object p3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 168
    const-string v0, "Failed to remove DNS(s) from database."

    .line 170
    invoke-direct {p1, p2, p3, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    .line 174
    return-object p1

    .line 175
    :cond_4
    monitor-exit p0

    .line 176
    return-object v2

    .line 177
    :cond_5
    :goto_0
    :try_start_1
    const-string p1, "DomainFilter"

    .line 179
    const-string/jumbo p2, "removeDnsForApplication() - Invalid parameters!"

    .line 182
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 187
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 189
    sget-object p3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 191
    const-string v0, "DNS(s) provided doesn\'t match DNS(s) in database."

    .line 193
    invoke-direct {p1, p2, p3, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    monitor-exit p0

    .line 197
    return-object p1

    .line 198
    :goto_1
    monitor-exit p0

    .line 199
    throw p1
.end method

.method public final declared-synchronized removeDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 20

    .line 1
    move-object/from16 v8, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    move-object/from16 v7, p2

    .line 7
    const-string v1, "Rules successfully cleared. Admin: "

    .line 9
    const-string/jumbo v2, "removeDomainFilterRules() - rules.size = "

    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    const-string v3, "DomainFilter"

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    if-eqz v7, :cond_0

    .line 22
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 25
    move-result v2

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v2

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto/16 :goto_17

    .line 34
    :cond_0
    const-string v2, "0"

    .line 36
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v9, 0x1

    .line 47
    const/4 v10, 0x0

    .line 48
    if-eqz v7, :cond_1

    .line 50
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_1

    .line 56
    const-string v0, "DomainFilter"

    .line 58
    const-string/jumbo v1, "removeDomainFilterRules() - No rule specified"

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-array v0, v9, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 66
    new-instance v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 68
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 70
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 72
    const-string v4, "No rule was specified."

    .line 74
    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 77
    aput-object v1, v0, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    .line 80
    return-object v0

    .line 81
    :cond_1
    :try_start_1
    iget v11, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 83
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    .line 86
    move-result v2

    .line 87
    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    .line 90
    move-result v3

    .line 91
    if-nez v3, :cond_2

    .line 93
    const-string v0, "DomainFilter"

    .line 95
    const-string/jumbo v1, "removeDomainFilterRules() - Database is already empty"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-array v0, v9, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 103
    new-instance v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 105
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 107
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 109
    const-string v4, "The rules are already cleared."

    .line 111
    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 114
    aput-object v1, v0, v10

    .line 116
    goto/16 :goto_12

    .line 118
    :cond_2
    const/4 v12, -0x1

    .line 119
    if-ne v3, v12, :cond_3

    .line 121
    const-string v0, "DomainFilter"

    .line 123
    const-string/jumbo v1, "removeDomainFilterRules() - Another admin is handling domainfilter rules in the database"

    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-array v0, v9, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 131
    new-instance v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 133
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 135
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 137
    const-string v4, "This administrator can\'t execute this operation because he is not the owner."

    .line 139
    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 142
    aput-object v1, v0, v10

    .line 144
    goto/16 :goto_12

    .line 146
    :cond_3
    sget-object v3, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->CLEAR_ALL:Ljava/util/List;

    .line 148
    const/4 v13, 0x0

    .line 149
    if-ne v7, v3, :cond_9

    .line 151
    new-array v3, v9, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 153
    invoke-virtual {v8, v11}, Lcom/android/server/enterprise/firewall/DomainFilter;->releaseNetworks(I)V

    .line 156
    new-instance v4, Landroid/content/ContentValues;

    .line 158
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 161
    const-string v5, "adminUid"

    .line 163
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    move-result-object v6

    .line 167
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    iget-object v5, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 172
    const-string v6, "DomainFilterTable"

    .line 174
    invoke-virtual {v5, v6, v13, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 177
    move-result-object v5

    .line 178
    iget-object v6, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 180
    const-string v7, "DomainFilterTable"

    .line 182
    invoke-virtual {v6, v7, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 185
    move-result v6

    .line 186
    if-gtz v6, :cond_4

    .line 188
    const-string v1, "DomainFilter"

    .line 190
    const-string/jumbo v2, "removeDomainFilterRules() - Failed to clear rulesfrom the database"

    .line 193
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 198
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 200
    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 202
    const-string v5, "Failed to clear rules from database."

    .line 204
    invoke-direct {v1, v2, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 207
    aput-object v1, v3, v10

    .line 209
    goto/16 :goto_2

    .line 211
    :cond_4
    iget-object v6, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 213
    const-string v7, "DomainFilterListTable"

    .line 215
    invoke-virtual {v6, v7, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 218
    move-result v6

    .line 219
    if-gez v6, :cond_6

    .line 221
    check-cast v5, Ljava/util/ArrayList;

    .line 223
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 226
    move-result-object v1

    .line 227
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    move-result v2

    .line 231
    if-eqz v2, :cond_5

    .line 233
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 236
    move-result-object v2

    .line 237
    check-cast v2, Landroid/content/ContentValues;

    .line 239
    iget-object v5, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 241
    const-string v6, "DomainFilterTable"

    .line 243
    invoke-virtual {v5, v6, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 246
    goto :goto_1

    .line 247
    :cond_5
    const-string v1, "DomainFilter"

    .line 249
    const-string/jumbo v2, "removeDomainFilterRules() - Failed to clear rules from the database (url)"

    .line 252
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 257
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 259
    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 261
    const-string v5, "Failed to clear rules from database."

    .line 263
    invoke-direct {v1, v2, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 266
    aput-object v1, v3, v10

    .line 268
    goto :goto_2

    .line 269
    :cond_6
    new-instance v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 271
    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 273
    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 275
    new-instance v7, Ljava/lang/StringBuilder;

    .line 277
    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    move-result-object v1

    .line 287
    invoke-direct {v4, v5, v6, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 290
    aput-object v4, v3, v10

    .line 292
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 295
    move-result v1

    .line 296
    if-eqz v1, :cond_7

    .line 298
    iget-object v1, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 300
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 303
    move-result-object v4

    .line 304
    invoke-virtual {v1, v4, v10}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->flushDomainChains(Ljava/lang/Integer;Z)Z

    .line 307
    move-result v1

    .line 308
    if-nez v1, :cond_7

    .line 310
    const-string v1, "DomainFilter"

    .line 312
    const-string/jumbo v4, "flushDomainChains() - Failed to flush domain chains"

    .line 315
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_7
    iget-object v1, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 320
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    move-result-object v2

    .line 324
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->flushDnsPortChains(Ljava/lang/Integer;)Z

    .line 327
    move-result v1

    .line 328
    if-nez v1, :cond_8

    .line 330
    const-string v1, "DomainFilter"

    .line 332
    const-string/jumbo v2, "flushDnsPortChains() - Failed to flush port53 chains"

    .line 335
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_8
    const-string v1, "DomainFilter"

    .line 340
    const-string/jumbo v2, "flushDomainChains() - domain rules successfully removed"

    .line 343
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :goto_2
    const/4 v1, 0x2

    .line 347
    invoke-virtual {v8, v0, v13, v1, v13}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;ILjava/lang/String;)V

    .line 350
    move-object v0, v3

    .line 351
    goto/16 :goto_12

    .line 353
    :cond_9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 356
    move-result v14

    .line 357
    new-array v15, v14, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 359
    new-instance v6, Ljava/util/ArrayList;

    .line 361
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 364
    move v5, v10

    .line 365
    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 368
    move-result v1

    .line 369
    if-ge v5, v1, :cond_21

    .line 371
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 374
    move-result-object v1

    .line 375
    move-object v4, v1

    .line 376
    check-cast v4, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 378
    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 381
    move-result-object v1

    .line 382
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->validateApplicationIdentity(Lcom/samsung/android/knox/AppIdentity;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 385
    move-result-object v1

    .line 386
    aput-object v1, v15, v5

    .line 388
    if-eqz v1, :cond_a

    .line 390
    const-string v1, "DomainFilter"

    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    .line 394
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    const-string/jumbo v3, "removeDomainFilterRules() - Skipping invalid rule - invalidApplication Identity"

    .line 400
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    aget-object v3, v15, v5

    .line 405
    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    .line 408
    move-result-object v3

    .line 409
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    move-result-object v2

    .line 416
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    move/from16 v19, v5

    .line 421
    move-object v7, v6

    .line 422
    move v3, v9

    .line 423
    move v2, v12

    .line 424
    move/from16 v17, v14

    .line 426
    goto/16 :goto_f

    .line 428
    :cond_a
    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 431
    move-result-object v1

    .line 432
    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 435
    move-result-object v3

    .line 436
    new-instance v2, Landroid/content/ContentValues;

    .line 438
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 441
    const-string v1, "adminUid"

    .line 443
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 446
    move-result-object v12

    .line 447
    invoke-virtual {v2, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 450
    const-string/jumbo v1, "packageName"

    .line 453
    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v1, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 458
    const-string v12, "DomainFilterTable"

    .line 460
    invoke-virtual {v1, v12, v13, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 463
    move-result-object v1

    .line 464
    check-cast v1, Ljava/util/ArrayList;

    .line 466
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 469
    move-result v12

    .line 470
    if-eqz v12, :cond_b

    .line 472
    const-string v1, "DomainFilter"

    .line 474
    const-string/jumbo v2, "removeDomainFilterRules() - Skipping rule - This rule is not in the database"

    .line 477
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 482
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 484
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 486
    const-string v4, "The rule is not in the database."

    .line 488
    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 491
    aput-object v1, v15, v5

    .line 493
    move/from16 v19, v5

    .line 495
    move-object v7, v6

    .line 496
    move v3, v9

    .line 497
    move/from16 v17, v14

    .line 499
    const/4 v2, -0x1

    .line 500
    goto/16 :goto_f

    .line 502
    :cond_b
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 505
    move-result-object v1

    .line 506
    move-object v12, v1

    .line 507
    check-cast v12, Landroid/content/ContentValues;

    .line 509
    const-string/jumbo v1, "signature"

    .line 512
    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 515
    move-result-object v1

    .line 516
    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 519
    move-result-object v16

    .line 520
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 523
    move-result-object v9

    .line 524
    if-eqz v9, :cond_c

    .line 526
    if-eqz v1, :cond_e

    .line 528
    :cond_c
    if-nez v9, :cond_d

    .line 530
    if-nez v1, :cond_e

    .line 532
    :cond_d
    if-eqz v9, :cond_f

    .line 534
    if-eqz v1, :cond_f

    .line 536
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 539
    move-result v1

    .line 540
    if-nez v1, :cond_f

    .line 542
    :cond_e
    const-string v1, "DomainFilter"

    .line 544
    const-string/jumbo v2, "removeDomainFilterRules() - Skipping invalid rule - signature mismatch"

    .line 547
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    new-instance v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 552
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 554
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 556
    const-string v4, "Signature does not match with the previous added."

    .line 558
    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 561
    aput-object v1, v15, v5

    .line 563
    :goto_4
    move/from16 v19, v5

    .line 565
    move-object v7, v6

    .line 566
    move/from16 v17, v14

    .line 568
    :goto_5
    const/4 v2, -0x1

    .line 569
    const/4 v3, 0x1

    .line 570
    goto/16 :goto_f

    .line 572
    :cond_f
    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    .line 575
    move-result-object v1

    .line 576
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 579
    move-result v1

    .line 580
    if-nez v1, :cond_11

    .line 582
    invoke-virtual {v8, v4, v11, v12}, Lcom/android/server/enterprise/firewall/DomainFilter;->removeDnsForApplication(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;ILandroid/content/ContentValues;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 585
    move-result-object v1

    .line 586
    aput-object v1, v15, v5

    .line 588
    if-eqz v1, :cond_10

    .line 590
    const-string v1, "DomainFilter"

    .line 592
    const-string/jumbo v2, "removeDomainFilterRules() - Skipping rule - Failed to remove DNS"

    .line 595
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    goto :goto_4

    .line 599
    :cond_10
    const/16 v16, 0x1

    .line 601
    goto :goto_6

    .line 602
    :cond_11
    move/from16 v16, v10

    .line 604
    :goto_6
    const-string/jumbo v1, "blacklist"

    .line 607
    iget-object v10, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 609
    invoke-static {v12, v1, v10}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getListFromDb(Landroid/content/ContentValues;Ljava/lang/String;Lcom/android/server/enterprise/storage/EdmStorageProvider;)Ljava/util/List;

    .line 612
    move-result-object v10

    .line 613
    const-string/jumbo v1, "whitelist"

    .line 616
    iget-object v13, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 618
    invoke-static {v12, v1, v13}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getListFromDb(Landroid/content/ContentValues;Ljava/lang/String;Lcom/android/server/enterprise/storage/EdmStorageProvider;)Ljava/util/List;

    .line 621
    move-result-object v13

    .line 622
    invoke-static {v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->prepareDomainUrls(Lcom/samsung/android/knox/net/firewall/DomainFilterRule;)V

    .line 625
    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    .line 628
    move-result-object v1

    .line 629
    move-object/from16 v17, v3

    .line 631
    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    .line 634
    move-result-object v3

    .line 635
    if-eqz v1, :cond_12

    .line 637
    new-instance v7, Ljava/util/HashSet;

    .line 639
    invoke-direct {v7, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 642
    invoke-interface {v7, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 645
    move-result v18

    .line 646
    goto :goto_7

    .line 647
    :cond_12
    new-instance v7, Ljava/util/HashSet;

    .line 649
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 652
    if-eqz v3, :cond_13

    .line 654
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 657
    :cond_13
    const/16 v18, 0x1

    .line 659
    :goto_7
    if-eqz v3, :cond_14

    .line 661
    new-instance v1, Ljava/util/HashSet;

    .line 663
    invoke-direct {v1, v13}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 666
    invoke-interface {v1, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 669
    move-result v3

    .line 670
    or-int v3, v18, v3

    .line 672
    goto :goto_8

    .line 673
    :cond_14
    new-instance v3, Ljava/util/HashSet;

    .line 675
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 678
    if-eqz v1, :cond_15

    .line 680
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 683
    :cond_15
    move-object v1, v3

    .line 684
    const/4 v3, 0x1

    .line 685
    :goto_8
    if-nez v3, :cond_16

    .line 687
    if-nez v16, :cond_16

    .line 689
    const-string v1, "DomainFilter"

    .line 691
    const-string/jumbo v2, "removeDomainFilterRules() - Skipping rule - Rule is not in the database"

    .line 694
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    new-instance v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 699
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 701
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 703
    const-string v4, "The rule is not in the database."

    .line 705
    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 708
    aput-object v1, v15, v5

    .line 710
    goto/16 :goto_4

    .line 712
    :cond_16
    const-string/jumbo v3, "dns1"

    .line 715
    invoke-virtual {v12, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 718
    move-result-object v3

    .line 719
    if-eqz v3, :cond_17

    .line 721
    const/4 v3, 0x1

    .line 722
    goto :goto_9

    .line 723
    :cond_17
    const/4 v3, 0x0

    .line 724
    :goto_9
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    .line 727
    move-result v7

    .line 728
    if-eqz v7, :cond_18

    .line 730
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 733
    move-result v1

    .line 734
    if-eqz v1, :cond_18

    .line 736
    if-nez v16, :cond_19

    .line 738
    if-nez v3, :cond_18

    .line 740
    goto :goto_a

    .line 741
    :cond_18
    move-object v9, v4

    .line 742
    move/from16 v19, v5

    .line 744
    move-object v7, v6

    .line 745
    move/from16 v17, v14

    .line 747
    goto/16 :goto_c

    .line 749
    :cond_19
    :goto_a
    iget-object v1, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 751
    const-string v3, "DomainFilterTable"

    .line 753
    const/4 v7, 0x0

    .line 754
    invoke-virtual {v1, v3, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 757
    move-result-object v16

    .line 758
    iget-object v1, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 760
    const-string v3, "DomainFilterTable"

    .line 762
    invoke-virtual {v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 765
    move-result v1

    .line 766
    if-gtz v1, :cond_1a

    .line 768
    const-string v1, "DomainFilter"

    .line 770
    const-string/jumbo v2, "removeDomainFilterRules() - Failed to remove rule fromthe database"

    .line 773
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    new-instance v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 778
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 780
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 782
    const-string v4, "Failed to remove/update rule from the database."

    .line 784
    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 787
    aput-object v1, v15, v5

    .line 789
    move/from16 v19, v5

    .line 791
    move-object v10, v6

    .line 792
    move/from16 v17, v14

    .line 794
    goto/16 :goto_b

    .line 796
    :cond_1a
    move-object/from16 v1, p0

    .line 798
    move-object v3, v2

    .line 799
    move-object/from16 v2, p1

    .line 801
    move-object/from16 v7, v17

    .line 803
    move/from16 v17, v14

    .line 805
    move-object v14, v3

    .line 806
    move-object v3, v4

    .line 807
    move-object/from16 v18, v9

    .line 809
    move-object v9, v4

    .line 810
    move-object v4, v6

    .line 811
    move/from16 v19, v5

    .line 813
    move-object v5, v10

    .line 814
    move-object v10, v6

    .line 815
    move-object v6, v13

    .line 816
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->removeDomainListInDatabase(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    .line 819
    move-result v1

    .line 820
    if-nez v1, :cond_1b

    .line 822
    iget-object v1, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 824
    const-string v2, "DomainFilterTable"

    .line 826
    move-object/from16 v3, v16

    .line 828
    check-cast v3, Ljava/util/ArrayList;

    .line 830
    const/4 v4, 0x0

    .line 831
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 834
    move-result-object v3

    .line 835
    check-cast v3, Landroid/content/ContentValues;

    .line 837
    invoke-virtual {v1, v2, v3, v14}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 840
    const-string v1, "DomainFilter"

    .line 842
    const-string/jumbo v2, "removeDomainFilterRules() - Failed to remove rule fromthe database"

    .line 845
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    new-instance v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 850
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 852
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 854
    const-string v4, "Failed to remove/update rule from the database."

    .line 856
    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 859
    aput-object v1, v15, v19

    .line 861
    goto :goto_b

    .line 862
    :cond_1b
    const-string/jumbo v1, "networkId"

    .line 865
    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 868
    move-result-object v1

    .line 869
    if-eqz v1, :cond_1c

    .line 871
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 874
    move-result v1

    .line 875
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 878
    move-result-object v1

    .line 879
    const/4 v2, 0x1

    .line 880
    invoke-virtual {v8, v0, v9, v2, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;ILjava/lang/String;)V

    .line 883
    new-instance v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 885
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 887
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 889
    const-string v4, "The rule was successfuly removed/updated."

    .line 891
    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 894
    aput-object v1, v15, v19

    .line 896
    iget-object v1, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 898
    invoke-virtual {v1, v11, v7}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->hasDenyRuleInDatabase(ILjava/lang/String;)Z

    .line 901
    move-result v1

    .line 902
    if-nez v1, :cond_1d

    .line 904
    new-instance v1, Lcom/samsung/android/knox/AppIdentity;

    .line 906
    move-object/from16 v2, v18

    .line 908
    invoke-direct {v1, v7, v2}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    iget-object v2, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 913
    const/4 v3, 0x0

    .line 914
    invoke-virtual {v2, v1, v0, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->blockPort53(Lcom/samsung/android/knox/AppIdentity;Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 917
    move-result v1

    .line 918
    if-eqz v1, :cond_1d

    .line 920
    const-string v1, "DomainFilter"

    .line 922
    new-instance v2, Ljava/lang/StringBuilder;

    .line 924
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 927
    const-string/jumbo v3, "unblocking port53 for package = "

    .line 930
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 939
    move-result-object v2

    .line 940
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    goto :goto_b

    .line 944
    :cond_1c
    const-string v1, "DomainFilter"

    .line 946
    const-string/jumbo v2, "removeDomainFilterRules() - Failed to remove rule from the database"

    .line 949
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    new-instance v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 954
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 956
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 958
    const-string v4, "Failed to remove/update rule from the database."

    .line 960
    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 963
    aput-object v1, v15, v19

    .line 965
    :cond_1d
    :goto_b
    move-object v7, v10

    .line 966
    goto/16 :goto_5

    .line 968
    :goto_c
    move-object/from16 v1, p0

    .line 970
    move-object/from16 v2, p1

    .line 972
    move-object v3, v9

    .line 973
    move-object v4, v7

    .line 974
    move-object v5, v10

    .line 975
    move-object v6, v13

    .line 976
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->removeDomainListInDatabase(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    .line 979
    move-result v1

    .line 980
    if-nez v1, :cond_1e

    .line 982
    const-string v1, "DomainFilter"

    .line 984
    const-string/jumbo v2, "removeDomainFilterRules() - Failed to remove rule from the database"

    .line 987
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    new-instance v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 992
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 994
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 996
    const-string v4, "Failed to remove/update rule from the database."

    .line 998
    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 1001
    aput-object v1, v15, v19

    .line 1003
    goto/16 :goto_5

    .line 1005
    :cond_1e
    if-eqz v16, :cond_1f

    .line 1007
    const-string/jumbo v1, "networkId"

    .line 1010
    invoke-virtual {v12, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 1013
    move-result-object v1

    .line 1014
    goto :goto_d

    .line 1015
    :cond_1f
    const/4 v1, 0x0

    .line 1016
    :goto_d
    if-nez v1, :cond_20

    .line 1018
    const/4 v2, -0x1

    .line 1019
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1022
    move-result-object v1

    .line 1023
    goto :goto_e

    .line 1024
    :cond_20
    const/4 v2, -0x1

    .line 1025
    :goto_e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1028
    move-result v1

    .line 1029
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 1032
    move-result-object v1

    .line 1033
    const/4 v3, 0x1

    .line 1034
    invoke-virtual {v8, v0, v9, v3, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;ILjava/lang/String;)V

    .line 1037
    new-instance v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 1039
    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 1041
    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 1043
    const-string v6, "The rule was successfuly removed/updated."

    .line 1045
    invoke-direct {v1, v4, v5, v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 1048
    aput-object v1, v15, v19

    .line 1050
    :goto_f
    add-int/lit8 v5, v19, 0x1

    .line 1052
    move v12, v2

    .line 1053
    move v9, v3

    .line 1054
    move-object v6, v7

    .line 1055
    move/from16 v14, v17

    .line 1057
    const/4 v10, 0x0

    .line 1058
    const/4 v13, 0x0

    .line 1059
    move-object/from16 v7, p2

    .line 1061
    goto/16 :goto_3

    .line 1063
    :cond_21
    move-object v7, v6

    .line 1064
    move/from16 v17, v14

    .line 1066
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1069
    move-result v1

    .line 1070
    if-eqz v1, :cond_24

    .line 1072
    new-instance v1, Ljava/util/ArrayList;

    .line 1074
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1077
    move/from16 v3, v17

    .line 1079
    const/4 v2, 0x0

    .line 1080
    :goto_10
    if-ge v2, v3, :cond_23

    .line 1082
    aget-object v4, v15, v2

    .line 1084
    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 1087
    move-result-object v4

    .line 1088
    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 1090
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    .line 1093
    move-result v4

    .line 1094
    if-eqz v4, :cond_22

    .line 1096
    move-object/from16 v4, p2

    .line 1098
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1101
    move-result-object v5

    .line 1102
    check-cast v5, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 1104
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1107
    goto :goto_11

    .line 1108
    :cond_22
    move-object/from16 v4, p2

    .line 1110
    :goto_11
    add-int/lit8 v2, v2, 0x1

    .line 1112
    goto :goto_10

    .line 1113
    :cond_23
    invoke-virtual {v8, v0, v1, v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->removeDomainRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/util/List;)V

    .line 1116
    :cond_24
    move-object v0, v15

    .line 1117
    :goto_12
    iget-object v1, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mExceptionListLock:Ljava/lang/Object;

    .line 1119
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1120
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    .line 1123
    move-result v2

    .line 1124
    if-nez v2, :cond_25

    .line 1126
    const/4 v2, 0x0

    .line 1127
    iput-boolean v2, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsExceptionListApplied:Z

    .line 1129
    iget-object v3, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterNapCommon:Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;

    .line 1131
    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/firewall/DomainFilterNapCommon;->setDomainFilterEnabled(Z)V

    .line 1134
    goto :goto_13

    .line 1135
    :catchall_1
    move-exception v0

    .line 1136
    goto :goto_16

    .line 1137
    :cond_25
    :goto_13
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1138
    :try_start_3
    iget-object v1, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mKGExceptionListLock:Ljava/lang/Object;

    .line 1140
    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1141
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    .line 1144
    move-result v2

    .line 1145
    if-nez v2, :cond_26

    .line 1147
    const/4 v2, 0x0

    .line 1148
    iput-boolean v2, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mIsKGExceptionApplied:Z

    .line 1150
    goto :goto_14

    .line 1151
    :catchall_2
    move-exception v0

    .line 1152
    goto :goto_15

    .line 1153
    :cond_26
    :goto_14
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1154
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    .line 1157
    move-result v1

    .line 1158
    if-nez v1, :cond_27

    .line 1160
    const-string v3, ""

    .line 1162
    const/4 v4, 0x0

    .line 1163
    const/4 v5, 0x0

    .line 1164
    const/4 v6, 0x0

    .line 1165
    const/4 v7, 0x0

    .line 1166
    const/4 v2, 0x5

    .line 1167
    move-object/from16 v1, p0

    .line 1169
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 1172
    iget-object v3, v8, Lcom/android/server/enterprise/firewall/DomainFilter;->mServer:Ljava/lang/String;

    .line 1174
    const/4 v4, 0x0

    .line 1175
    const/4 v5, 0x0

    .line 1176
    const/4 v6, 0x0

    .line 1177
    const/4 v7, 0x0

    .line 1178
    const/4 v2, 0x5

    .line 1179
    move-object/from16 v1, p0

    .line 1181
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1184
    :cond_27
    monitor-exit p0

    .line 1185
    return-object v0

    .line 1186
    :goto_15
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1187
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1188
    :goto_16
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1189
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1190
    :goto_17
    monitor-exit p0

    .line 1191
    throw v0
.end method

.method public final removeDomainListInDatabase(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 8

    .line 1
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_0

    .line 17
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_0

    .line 23
    invoke-virtual {p2, p5}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setAllowDomains(Ljava/util/List;)V

    .line 26
    invoke-virtual {p2, p4}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setDenyDomains(Ljava/util/List;)V

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    .line 33
    move-result-object p1

    .line 34
    if-nez p1, :cond_1

    .line 36
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setAllowDomains(Ljava/util/List;)V

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    .line 43
    move-result-object p1

    .line 44
    if-nez p1, :cond_2

    .line 46
    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setDenyDomains(Ljava/util/List;)V

    .line 49
    :cond_2
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    .line 51
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    .line 57
    move-result-object p3

    .line 58
    if-eqz p3, :cond_3

    .line 60
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    .line 63
    move-result-object p3

    .line 64
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 67
    :cond_3
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    .line 70
    move-result-object p3

    .line 71
    if-eqz p3, :cond_4

    .line 73
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 80
    :cond_4
    new-instance v5, Ljava/util/HashSet;

    .line 82
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 85
    const/4 p2, 0x0

    .line 86
    move p3, p2

    .line 87
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 90
    move-result v0

    .line 91
    const-string v7, "DomainFilter"

    .line 93
    if-ge p3, v0, :cond_6

    .line 95
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Ljava/lang/String;

    .line 101
    new-instance v3, Landroid/content/ContentValues;

    .line 103
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 106
    const-string v4, "adminUid"

    .line 108
    const-string/jumbo v6, "packageName"

    .line 111
    invoke-static {v1, v3, v4, v6, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string/jumbo v4, "domain"

    .line 117
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 122
    const-string v6, "DomainFilterListTable"

    .line 124
    invoke-virtual {v4, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 127
    move-result v3

    .line 128
    if-gtz v3, :cond_5

    .line 130
    const/4 v6, 0x0

    .line 131
    move-object v0, p0

    .line 132
    move-object v3, p4

    .line 133
    move-object v4, p5

    .line 134
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->rollbackDomainList(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Z)V

    .line 137
    const-string/jumbo p0, "removeDomainListInDatabase()- Any deny domain couldn\'t be removed"

    .line 140
    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return p2

    .line 144
    :cond_5
    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 p3, p3, 0x1

    .line 149
    goto :goto_1

    .line 150
    :cond_6
    const-string/jumbo p0, "removeDomainListInDatabase()- All domains were removed"

    .line 153
    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 p0, 0x1

    .line 157
    return p0
.end method

.method public final declared-synchronized removeDomainRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/util/List;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "DomainFilter"

    .line 4
    const-string/jumbo v1, "removeDomainRules()"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    move-object v0, p2

    .line 11
    check-cast v0, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 19
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 21
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 23
    sget-object p3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 25
    const-string v0, "The domain filter on iptables api was successfully disabled."

    .line 27
    invoke-direct {p1, p2, p3, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 36
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->removeDomainRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/util/List;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :goto_0
    monitor-exit p0

    .line 42
    throw p1
.end method

.method public final rollbackDomainList(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Set;Z)V
    .locals 7

    .line 1
    check-cast p5, Ljava/util/HashSet;

    .line 3
    invoke-virtual {p5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p5

    .line 7
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 13
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/String;

    .line 19
    new-instance v1, Landroid/content/ContentValues;

    .line 21
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 24
    const-string v2, "adminUid"

    .line 26
    const-string/jumbo v3, "packageName"

    .line 29
    invoke-static {p1, v1, v2, v3, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string/jumbo v2, "domain"

    .line 35
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v2, Landroid/content/ContentValues;

    .line 40
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 43
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 46
    move-result v3

    .line 47
    const-string/jumbo v4, "typeList"

    .line 50
    if-eqz v3, :cond_0

    .line 52
    const-string/jumbo v3, "blacklist"

    .line 55
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    invoke-interface {p4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_1

    .line 65
    const-string/jumbo v3, "whitelist"

    .line 68
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 73
    const-string v4, "DomainFilter"

    .line 75
    const-string v5, "DomainFilterListTable"

    .line 77
    if-eqz p6, :cond_2

    .line 79
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 82
    move-result v6

    .line 83
    if-nez v6, :cond_2

    .line 85
    invoke-interface {p4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_2

    .line 91
    invoke-virtual {v3, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 94
    const-string/jumbo v0, "rollbackDomainList()- Rollback for all domains that were added"

    .line 97
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    const-string/jumbo v6, "rollbackDomainList()- Rollback for all domains thatwere (Added ="

    .line 106
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 112
    const-string v6, ")"

    .line 114
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 121
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {v3, v5, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 127
    goto :goto_0

    .line 128
    :cond_3
    return-void
.end method

.method public final sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {p2}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 4
    move-result-object v6

    .line 5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_0
    const/4 v0, 0x2

    .line 15
    if-eq v0, p1, :cond_8

    .line 17
    const/4 v0, 0x3

    .line 18
    if-eq v0, p1, :cond_8

    .line 20
    const/4 v0, 0x4

    .line 21
    if-eq v0, p1, :cond_8

    .line 23
    const/4 v0, 0x5

    .line 24
    if-eq v0, p1, :cond_8

    .line 26
    const/16 v0, 0x8

    .line 28
    if-ne v0, p1, :cond_1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 36
    move-result-object p2

    .line 37
    array-length p2, p2

    .line 38
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_2

    .line 44
    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 47
    move-result-object p3

    .line 48
    array-length p3, p3

    .line 49
    add-int/2addr p2, p3

    .line 50
    :cond_2
    if-eqz p1, :cond_3

    .line 52
    const/4 p3, 0x1

    .line 53
    if-ne p3, p1, :cond_7

    .line 55
    :cond_3
    if-eqz p4, :cond_4

    .line 57
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    .line 60
    move-result p3

    .line 61
    if-nez p3, :cond_4

    .line 63
    const-string v4, "BLACKLIST"

    .line 65
    move-object v0, p0

    .line 66
    move v1, p1

    .line 67
    move-object v2, v6

    .line 68
    move v3, p2

    .line 69
    move-object v5, p4

    .line 70
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->concatenateListAndExecuteCommand(ILjava/util/ArrayList;ILjava/lang/String;Ljava/util/List;)V

    .line 73
    :cond_4
    if-eqz p5, :cond_5

    .line 75
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    .line 78
    move-result p3

    .line 79
    if-nez p3, :cond_5

    .line 81
    const-string v4, "WHITELIST"

    .line 83
    move-object v0, p0

    .line 84
    move v1, p1

    .line 85
    move-object v2, v6

    .line 86
    move v3, p2

    .line 87
    move-object v5, p5

    .line 88
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->concatenateListAndExecuteCommand(ILjava/util/ArrayList;ILjava/lang/String;Ljava/util/List;)V

    .line 91
    :cond_5
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    move-result p2

    .line 95
    if-nez p2, :cond_7

    .line 97
    const-string p2, "-1"

    .line 99
    invoke-virtual {p6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    move-result p2

    .line 103
    if-nez p2, :cond_7

    .line 105
    invoke-virtual {v6, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    if-nez p1, :cond_6

    .line 110
    const-string p1, "ADD"

    .line 112
    goto :goto_0

    .line 113
    :cond_6
    const-string p1, "REMOVE"

    .line 115
    :goto_0
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    const/4 p1, 0x6

    .line 119
    invoke-virtual {p0, v6, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeDomainFilterCommands(Ljava/util/ArrayList;I)V

    .line 122
    :cond_7
    return-void

    .line 123
    :cond_8
    :goto_1
    invoke-virtual {p0, v6, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeDomainFilterCommands(Ljava/util/ArrayList;I)V

    .line 126
    return-void
.end method

.method public final setupNetworkDns(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, -0x1

    .line 11
    if-eqz v0, :cond_0

    .line 13
    :goto_0
    move v3, v2

    .line 14
    goto :goto_3

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    .line 20
    check-cast v3, Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v3

    .line 26
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_5

    .line 32
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;

    .line 38
    iget-object v5, v4, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mDns1:Ljava/lang/String;

    .line 40
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_1

    .line 46
    if-eqz p2, :cond_2

    .line 48
    iget-object v5, v4, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mDns2:Ljava/lang/String;

    .line 50
    if-eqz v5, :cond_1

    .line 52
    :cond_2
    if-nez p2, :cond_3

    .line 54
    iget-object v5, v4, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mDns2:Ljava/lang/String;

    .line 56
    if-eqz v5, :cond_3

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    if-eqz p2, :cond_4

    .line 61
    iget-object v5, v4, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mDns2:Ljava/lang/String;

    .line 63
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v5

    .line 67
    if-eqz v5, :cond_1

    .line 69
    goto :goto_2

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto/16 :goto_c

    .line 73
    :cond_4
    :goto_2
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :try_start_1
    iget v3, v4, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mUsageCounter:I

    .line 76
    add-int/2addr v3, v1

    .line 77
    iput v3, v4, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mUsageCounter:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 79
    :try_start_2
    monitor-exit v4

    .line 80
    iget v3, v4, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;->mNetId:I

    .line 82
    monitor-exit v0

    .line 83
    goto :goto_3

    .line 84
    :catchall_1
    move-exception p0

    .line 85
    monitor-exit v4

    .line 86
    throw p0

    .line 87
    :cond_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    goto :goto_0

    .line 89
    :goto_3
    if-eq v3, v2, :cond_6

    .line 91
    return v3

    .line 92
    :cond_6
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 94
    if-nez v0, :cond_7

    .line 96
    const-string/jumbo v0, "network_management"

    .line 99
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_7

    .line 105
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    .line 108
    move-result-object v0

    .line 109
    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 111
    :cond_7
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 113
    if-nez v0, :cond_8

    .line 115
    const-string p0, "DomainFilter"

    .line 117
    const-string/jumbo p1, "setupNetworkDns() - failed to retrieve NetworkManagementService instance"

    .line 120
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return v2

    .line 124
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->getConnectivityService()Landroid/net/ConnectivityManager;

    .line 127
    move-result-object v0

    .line 128
    if-nez v0, :cond_9

    .line 130
    const-string p0, "DomainFilter"

    .line 132
    const-string/jumbo p1, "setupNetworkDns() - failed to retrieve ConnectivityService instance"

    .line 135
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return v2

    .line 139
    :cond_9
    move v0, v1

    .line 140
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 143
    move-result-wide v4

    .line 144
    const/4 v6, 0x0

    .line 145
    :try_start_3
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    .line 147
    invoke-virtual {v7}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->reserveNetId()I

    .line 150
    move-result v3

    .line 151
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->connectNativeNetdService()V

    .line 154
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 156
    if-nez v7, :cond_b

    .line 158
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 161
    return v2

    .line 162
    :cond_b
    :try_start_4
    invoke-interface {v7, v3, v6}, Landroid/net/INetd;->networkCreateVpn(IZ)V

    .line 165
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsResolverAdapter:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    .line 167
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    const-string v8, "DnsResolverAdapter"

    .line 172
    const-string/jumbo v9, "createNetworkCache - entered"

    .line 175
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v9, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda2;

    .line 180
    const/4 v10, 0x0

    .line 181
    invoke-direct {v9, v3, v10}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$$ExternalSyntheticLambda2;-><init>(II)V

    .line 184
    invoke-virtual {v7, v9}, Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;->runWithExceptionHandling(Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter$CheckedRemoteRequest;)V

    .line 187
    const-string/jumbo v7, "createNetworkCache - exited"

    .line 190
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 193
    :try_start_5
    new-instance v7, Landroid/net/LinkProperties;

    .line 195
    invoke-direct {v7}, Landroid/net/LinkProperties;-><init>()V

    .line 198
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 201
    move-result-object v8

    .line 202
    invoke-virtual {v7, v8}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 205
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 208
    move-result v8

    .line 209
    if-nez v8, :cond_c

    .line 211
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 214
    move-result-object v8

    .line 215
    invoke-virtual {v7, v8}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 218
    goto :goto_4

    .line 219
    :catchall_2
    move-exception p0

    .line 220
    goto/16 :goto_b

    .line 222
    :catch_0
    move-exception v6

    .line 223
    move v7, v1

    .line 224
    goto/16 :goto_7

    .line 226
    :catch_1
    move-exception v0

    .line 227
    goto/16 :goto_9

    .line 229
    :cond_c
    :goto_4
    new-instance v8, Lcom/android/server/enterprise/firewall/EnforceDnsManager;

    .line 231
    iget-object v9, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    .line 233
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsResolverAdapter:Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;

    .line 235
    invoke-direct {v8, v9, v10}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/adapterlayer/DnsResolverAdapter;)V

    .line 238
    iput-object v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsManager:Lcom/android/server/enterprise/firewall/EnforceDnsManager;

    .line 240
    iget-object v9, v8, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mLinkPropertiesMap:Ljava/util/Map;

    .line 242
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    move-result-object v10

    .line 246
    check-cast v9, Ljava/util/HashMap;

    .line 248
    invoke-virtual {v9, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-virtual {v8, v3}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->sendDnsConfigurationForNetwork(I)V

    .line 254
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsManager:Lcom/android/server/enterprise/firewall/EnforceDnsManager;

    .line 256
    iput-boolean v1, v7, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mEnforceDnsUid:Z

    .line 258
    invoke-virtual {v7, v3}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->sendDnsConfigurationForNetwork(I)V

    .line 261
    const/4 v7, 0x3

    .line 262
    filled-new-array {v6, v1, v7}, [I

    .line 265
    move-result-object v7

    .line 266
    iget-object v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsManager:Lcom/android/server/enterprise/firewall/EnforceDnsManager;

    .line 268
    iget-object v9, v8, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mTransportsMap:Ljava/util/Map;

    .line 270
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 273
    move-result-object v10

    .line 274
    check-cast v9, Ljava/util/HashMap;

    .line 276
    invoke-virtual {v9, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-virtual {v8, v3}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->sendDnsConfigurationForNetwork(I)V

    .line 282
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDnsManager:Lcom/android/server/enterprise/firewall/EnforceDnsManager;

    .line 284
    invoke-virtual {v7}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->flushVmDnsCache()V

    .line 287
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdListLock:Ljava/lang/Object;

    .line 289
    monitor-enter v7
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 290
    :try_start_6
    iget-object v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetworkIdList:Ljava/util/List;

    .line 292
    new-instance v9, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;

    .line 294
    invoke-direct {v9, v3, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter$NetworkIdInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 297
    check-cast v8, Ljava/util/ArrayList;

    .line 299
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 303
    :goto_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 306
    move v0, v6

    .line 307
    goto/16 :goto_a

    .line 309
    :catchall_3
    move-exception v8

    .line 310
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 311
    :try_start_8
    throw v8
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 312
    :goto_6
    move-object v11, v7

    .line 313
    move v7, v6

    .line 314
    move-object v6, v11

    .line 315
    goto :goto_7

    .line 316
    :catch_2
    move-exception v7

    .line 317
    goto :goto_6

    .line 318
    :catch_3
    move-exception v7

    .line 319
    :try_start_9
    const-string v8, "DomainFilter"

    .line 321
    new-instance v9, Ljava/lang/StringBuilder;

    .line 323
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    const-string v10, "Error creating private network: "

    .line 328
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 334
    move-result-object v7

    .line 335
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    move-result-object v7

    .line 342
    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    .line 347
    invoke-virtual {v7, v3}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->releaseNetId(I)V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 350
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 353
    return v2

    .line 354
    :goto_7
    if-eqz v7, :cond_d

    .line 356
    :try_start_a
    const-string v7, "DomainFilter"

    .line 358
    new-instance v8, Ljava/lang/StringBuilder;

    .line 360
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    const-string/jumbo v9, "setupNetworkDns() - Failed to set dns for network "

    .line 366
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    move-result-object v8

    .line 376
    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 379
    :try_start_b
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetdService:Landroid/net/INetd;

    .line 381
    if-eqz v6, :cond_e

    .line 383
    invoke-interface {v6, v3}, Landroid/net/INetd;->networkDestroy(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 386
    goto :goto_8

    .line 387
    :catch_4
    move-exception v6

    .line 388
    :try_start_c
    const-string v7, "DomainFilter"

    .line 390
    const-string/jumbo v8, "setupNetworkDns() - Failed to remove network"

    .line 393
    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    goto :goto_8

    .line 397
    :cond_d
    const-string v7, "DomainFilter"

    .line 399
    const-string/jumbo v8, "setupNetworkDns() - Failed to create new network with id provided."

    .line 402
    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    :cond_e
    :goto_8
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mNetIdManager:Lcom/android/server/enterprise/firewall/KnoxNetIdManager;

    .line 407
    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/firewall/KnoxNetIdManager;->releaseNetId(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 410
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 413
    goto :goto_a

    .line 414
    :goto_9
    :try_start_d
    const-string v7, "DomainFilter"

    .line 416
    const-string/jumbo v8, "setupNetworkDns() - Failed creating new network."

    .line 419
    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 422
    goto :goto_5

    .line 423
    :goto_a
    if-nez v0, :cond_a

    .line 425
    return v3

    .line 426
    :goto_b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 429
    throw p0

    .line 430
    :goto_c
    :try_start_e
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 431
    throw p0
.end method

.method public final updateDaemonCache(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/DomainFilterRule;ILjava/lang/String;)V
    .locals 8

    .line 1
    const-string v1, "DomainFilter"

    .line 3
    const-string/jumbo v3, "updateDaemonCache()"

    .line 6
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 11
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 14
    move-result v1

    .line 15
    const/4 v3, 0x2

    .line 16
    if-ne v3, p3, :cond_0

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    move-object v1, p0

    .line 27
    move v2, p3

    .line 28
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 31
    goto/16 :goto_6

    .line 33
    :cond_0
    if-eqz p2, :cond_a

    .line 35
    const/4 v3, 0x1

    .line 36
    if-eqz p3, :cond_1

    .line 38
    if-ne v3, p3, :cond_a

    .line 40
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    .line 42
    monitor-enter v4

    .line 43
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v6

    .line 49
    check-cast v5, Ljava/util/HashMap;

    .line 51
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Ljava/util/Map;

    .line 57
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 65
    move-result-object v4

    .line 66
    const-string v6, "*"

    .line 68
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v6

    .line 72
    const/4 v7, 0x0

    .line 73
    if-eqz v6, :cond_2

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    :goto_0
    move-object v4, v1

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_3

    .line 87
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Ljava/lang/Integer;

    .line 93
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 96
    move-result v1

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 100
    move-result-object v1

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    move-object v4, v7

    .line 103
    :goto_1
    if-eqz v4, :cond_a

    .line 105
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    .line 108
    move-result-object v1

    .line 109
    if-eqz v1, :cond_5

    .line 111
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 114
    move-result v5

    .line 115
    if-nez v5, :cond_4

    .line 117
    :goto_2
    move-object v5, v1

    .line 118
    goto :goto_3

    .line 119
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    .line 121
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    goto :goto_2

    .line 125
    :cond_5
    if-ne v3, p3, :cond_6

    .line 127
    const-string v1, "ALL"

    .line 129
    invoke-static {v1}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 132
    move-result-object v1

    .line 133
    goto :goto_2

    .line 134
    :cond_6
    move-object v5, v7

    .line 135
    :goto_3
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    .line 138
    move-result-object v1

    .line 139
    if-eqz v1, :cond_8

    .line 141
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 144
    move-result v3

    .line 145
    if-nez v3, :cond_7

    .line 147
    :goto_4
    move-object v6, v1

    .line 148
    goto :goto_5

    .line 149
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    .line 151
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    goto :goto_4

    .line 155
    :cond_8
    if-ne v3, p3, :cond_9

    .line 157
    const-string v1, "ALL"

    .line 159
    invoke-static {v1}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 162
    move-result-object v1

    .line 163
    goto :goto_4

    .line 164
    :cond_9
    move-object v6, v7

    .line 165
    :goto_5
    const/4 v7, 0x0

    .line 166
    move-object v1, p0

    .line 167
    move v2, p3

    .line 168
    move-object v3, v4

    .line 169
    move-object v4, v7

    .line 170
    move-object v7, p4

    .line 171
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 174
    goto :goto_6

    .line 175
    :catchall_0
    move-exception v0

    .line 176
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    throw v0

    .line 178
    :cond_a
    :goto_6
    return-void
.end method

.method public final validatePkgSignature(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    .line 3
    const-string v0, "android"

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p0, v0, v1, p1}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    .line 9
    move-result-object p0

    .line 10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 13
    move-result-wide v2

    .line 14
    :try_start_0
    invoke-static {v1, p0, p2, p3}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 17
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    return p0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    :try_start_1
    const-string p1, "DomainFilter"

    .line 25
    const-string/jumbo p2, "validatePkgSignature() - Fail to validate application signature."

    .line 28
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    return v1

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    throw p0
.end method

.method public final verifyAppInstalled(Ljava/util/Map;Ljava/lang/String;I)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 10
    return v0

    .line 11
    :cond_0
    invoke-virtual {p0, p3, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(ILjava/lang/String;)I

    .line 14
    move-result v1

    .line 15
    const/4 v2, -0x1

    .line 16
    if-eq v1, v2, :cond_2

    .line 18
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object p3

    .line 22
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    .line 24
    monitor-enter v2

    .line 25
    if-nez p1, :cond_1

    .line 27
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    .line 29
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    .line 41
    check-cast p0, Ljava/util/HashMap;

    .line 43
    invoke-virtual {p0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    .line 51
    check-cast p0, Ljava/util/HashMap;

    .line 53
    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object p0

    .line 57
    check-cast p0, Ljava/util/Map;

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object p3

    .line 63
    invoke-interface {p0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object p0

    .line 70
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :goto_0
    monitor-exit v2

    .line 74
    return v0

    .line 75
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0

    .line 77
    :cond_2
    const/4 p0, 0x0

    .line 78
    return p0
.end method
