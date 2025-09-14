.class public final Lcom/android/server/enterprise/firewall/Firewall;
.super Lcom/samsung/android/knox/net/firewall/IFirewall$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static mHasIpv6FilterSupport:Z


# instance fields
.field public mAreRulesReloaded:Z

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public final mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

.field public final mFirewallExemptions:Ljava/util/Map;

.field public final mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

.field public final mInitializingExemptionListLock:Ljava/lang/Object;

.field public final mInitializingIpTablesRulesLock:Ljava/lang/Object;

.field public final mInjector:Lcom/android/server/enterprise/firewall/Firewall$Injector;

.field public mIsChainsCreated:Z

.field public final mPackageFilterReceiver:Lcom/android/server/enterprise/firewall/Firewall$1;

.field public final mUserReceiver:Lcom/android/server/enterprise/firewall/Firewall$1;


# direct methods
.method public static -$$Nest$mcreateChains(Lcom/android/server/enterprise/firewall/Firewall;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mInitializingIpTablesRulesLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mIsChainsCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v1, :cond_0

    .line 8
    :try_start_1
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->createIptablesChains(Ljava/lang/Integer;)Z

    .line 14
    move-result v1

    .line 15
    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mIsChainsCreated:Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    goto :goto_4

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_5

    .line 20
    :catch_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :catch_1
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :catch_2
    move-exception p0

    .line 25
    goto :goto_2

    .line 26
    :catch_3
    move-exception p0

    .line 27
    goto :goto_3

    .line 28
    :goto_0
    :try_start_2
    const-string v1, "Firewall"

    .line 30
    const-string/jumbo v2, "createIptablesChains(): IllegalArgumentException was thrown."

    .line 33
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    goto :goto_4

    .line 37
    :goto_1
    const-string v1, "Firewall"

    .line 39
    const-string/jumbo v2, "createIptablesChains(): NullPointerException was thrown."

    .line 42
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    goto :goto_4

    .line 46
    :goto_2
    const-string v1, "Firewall"

    .line 48
    const-string/jumbo v2, "createIptablesChains(): IOException was thrown."

    .line 51
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    goto :goto_4

    .line 55
    :goto_3
    const-string v1, "Firewall"

    .line 57
    const-string/jumbo v2, "createIptablesChains(): SecurityException was thrown."

    .line 60
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :cond_0
    :goto_4
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 1
    new-instance v0, Lcom/android/server/enterprise/firewall/Firewall$Injector;

    .line 3
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/firewall/Firewall$Injector;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-direct {p0}, Lcom/samsung/android/knox/net/firewall/IFirewall$Stub;-><init>()V

    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mIsChainsCreated:Z

    .line 12
    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mAreRulesReloaded:Z

    .line 14
    new-instance v2, Ljava/lang/Object;

    .line 16
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mInitializingIpTablesRulesLock:Ljava/lang/Object;

    .line 21
    new-instance v2, Ljava/lang/Object;

    .line 23
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mInitializingExemptionListLock:Ljava/lang/Object;

    .line 28
    new-instance v3, Ljava/util/HashMap;

    .line 30
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 33
    iput-object v3, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallExemptions:Ljava/util/Map;

    .line 35
    new-instance v3, Lcom/android/server/enterprise/firewall/Firewall$1;

    .line 37
    const/4 v4, 0x0

    .line 38
    invoke-direct {v3, p0, v4}, Lcom/android/server/enterprise/firewall/Firewall$1;-><init>(Lcom/android/server/enterprise/firewall/Firewall;I)V

    .line 41
    new-instance v6, Lcom/android/server/enterprise/firewall/Firewall$1;

    .line 43
    const/4 v4, 0x1

    .line 44
    invoke-direct {v6, p0, v4}, Lcom/android/server/enterprise/firewall/Firewall$1;-><init>(Lcom/android/server/enterprise/firewall/Firewall;I)V

    .line 47
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 49
    invoke-direct {v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object v4, v0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 54
    new-instance v4, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 56
    invoke-direct {v4, p1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    .line 59
    iput-object v4, v0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 61
    new-instance v4, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 63
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v5, 0x1

    .line 67
    iput-boolean v5, v4, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mShouldAddAcceptRuleToInput:Z

    .line 69
    iput-object p1, v4, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mContext:Landroid/content/Context;

    .line 71
    iput-object p0, v4, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    .line 73
    new-instance v5, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 75
    invoke-direct {v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 78
    iput-object v5, v4, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 80
    new-instance v5, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

    .line 82
    invoke-direct {v5, v4}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;-><init>(Lcom/android/server/enterprise/firewall/FirewallRulesApplier;)V

    .line 85
    iput-object v5, v4, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mDomainFilterAppChainsMngr:Lcom/android/server/enterprise/firewall/FirewallRulesApplier$DomainFilterApplicationChainsManager;

    .line 87
    iput v1, v4, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I

    .line 89
    iput-object v4, v0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 91
    new-instance v4, Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 93
    iget-object v5, v0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 95
    invoke-direct {v4, p1, v5}, Lcom/android/server/enterprise/firewall/DomainFilter;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/firewall/FirewallRulesApplier;)V

    .line 98
    iput-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mInjector:Lcom/android/server/enterprise/firewall/Firewall$Injector;

    .line 100
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    .line 102
    iget-object v5, v0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 104
    iput-object v5, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 106
    iget-object v5, v0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 108
    iput-object v5, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 110
    iput-object v4, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 112
    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 114
    iput-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 116
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 121
    const/16 v4, 0x10

    .line 123
    if-ge v0, v4, :cond_0

    .line 125
    goto :goto_0

    .line 126
    :cond_0
    const-string v0, "*filter\n:test_ipv6 -\n-X test_ipv6\nCOMMIT\n"

    .line 128
    const/4 v1, 0x6

    .line 129
    invoke-virtual {v5, v1, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommand(ILjava/lang/String;)Z

    .line 132
    move-result v1

    .line 133
    :goto_0
    sput-boolean v1, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6FilterSupport:Z

    .line 135
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 137
    if-nez v0, :cond_1

    .line 139
    const-class v0, Landroid/net/ConnectivityManager;

    .line 141
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 147
    iput-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 151
    new-instance v1, Lcom/android/server/enterprise/firewall/Firewall$NetworkCallback;

    .line 153
    invoke-direct {v1, p0}, Lcom/android/server/enterprise/firewall/Firewall$NetworkCallback;-><init>(Lcom/android/server/enterprise/firewall/Firewall;)V

    .line 156
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    .line 161
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "android.intent.action.USER_ADDED"

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const/4 v1, 0x2

    .line 175
    invoke-virtual {p1, v3, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 178
    new-instance v8, Landroid/content/IntentFilter;

    .line 180
    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 183
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 185
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 190
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string/jumbo v0, "package"

    .line 196
    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 199
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 201
    const/4 v9, 0x0

    .line 202
    const/4 v10, 0x0

    .line 203
    move-object v5, p1

    .line 204
    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 207
    invoke-static {p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getAllUsers(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 210
    move-result-object p1

    .line 211
    monitor-enter v2

    .line 212
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 215
    move-result-object p1

    .line 216
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_2

    .line 222
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Ljava/lang/Integer;

    .line 228
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallExemptions:Ljava/util/Map;

    .line 230
    new-instance v3, Ljava/util/HashMap;

    .line 232
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 235
    check-cast v1, Ljava/util/HashMap;

    .line 237
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/Firewall;->populateFirewallExemptionList(Ljava/lang/Integer;)V

    .line 243
    goto :goto_1

    .line 244
    :catchall_0
    move-exception p0

    .line 245
    goto :goto_2

    .line 246
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    new-instance p1, Ljava/lang/Thread;

    .line 249
    new-instance v0, Lcom/android/server/enterprise/firewall/Firewall$4;

    .line 251
    invoke-direct {v0, p0}, Lcom/android/server/enterprise/firewall/Firewall$4;-><init>(Lcom/android/server/enterprise/firewall/Firewall;)V

    .line 254
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 257
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 260
    return-void

    .line 261
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    throw p0
.end method

.method public static compareIpSubdivisions([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    move v2, v1

    .line 4
    move v3, v2

    .line 5
    :goto_0
    array-length v4, p2

    .line 6
    const/4 v5, 0x1

    .line 7
    if-ge v1, v4, :cond_5

    .line 9
    aget-object v4, p0, v1

    .line 11
    invoke-static {p3, v4}, Lcom/android/server/enterprise/firewall/Firewall;->convertIpSectionToInt(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Ljava/lang/String;)I

    .line 14
    move-result v4

    .line 15
    aget-object v6, p1, v1

    .line 17
    invoke-static {p3, v6}, Lcom/android/server/enterprise/firewall/Firewall;->convertIpSectionToInt(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Ljava/lang/String;)I

    .line 20
    move-result v6

    .line 21
    aget-object v7, p2, v1

    .line 23
    invoke-static {p3, v7}, Lcom/android/server/enterprise/firewall/Firewall;->convertIpSectionToInt(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Ljava/lang/String;)I

    .line 26
    move-result v7

    .line 27
    if-le v7, v4, :cond_0

    .line 29
    if-nez v2, :cond_0

    .line 31
    move v2, v5

    .line 32
    :cond_0
    if-ge v7, v4, :cond_1

    .line 34
    if-nez v2, :cond_1

    .line 36
    return v0

    .line 37
    :cond_1
    if-ge v7, v6, :cond_2

    .line 39
    if-nez v3, :cond_2

    .line 41
    move v3, v5

    .line 42
    :cond_2
    if-le v7, v6, :cond_3

    .line 44
    if-nez v3, :cond_3

    .line 46
    return v0

    .line 47
    :cond_3
    if-eqz v2, :cond_4

    .line 49
    if-eqz v3, :cond_4

    .line 51
    return v5

    .line 52
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_5
    return v5
.end method

.method public static convertIpSectionToInt(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 3
    if-ne p0, v0, :cond_0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 p0, 0x10

    .line 16
    invoke-static {p1, p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    .line 19
    move-result p0

    .line 20
    :goto_0
    return p0
.end method

.method public static convertToIpv6CompleteForm(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1
    const-string v0, "::"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v2

    .line 19
    const/16 v3, 0x8

    .line 21
    const/4 v4, 0x1

    .line 22
    const/4 v5, 0x7

    .line 23
    const-string v6, "0"

    .line 25
    const-string v7, ":"

    .line 27
    if-eqz v2, :cond_3

    .line 29
    :goto_0
    if-ge v4, v3, :cond_2

    .line 31
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    if-eq v4, v5, :cond_1

    .line 36
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 55
    move-result p0

    .line 56
    const/16 v8, 0x3a

    .line 58
    const-string v9, "0:"

    .line 60
    if-ne p0, v8, :cond_7

    .line 62
    aget-object p0, v0, v4

    .line 64
    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    array-length v0, p0

    .line 69
    sub-int/2addr v3, v0

    .line 70
    move v0, v2

    .line 71
    :goto_1
    if-ge v0, v3, :cond_4

    .line 73
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v0, v0, 0x1

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    :goto_2
    array-length v0, p0

    .line 80
    if-ge v2, v0, :cond_6

    .line 82
    aget-object v0, p0, v2

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    array-length v0, p0

    .line 88
    sub-int/2addr v0, v4

    .line 89
    if-eq v2, v0, :cond_5

    .line 91
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 96
    goto :goto_2

    .line 97
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    move-result-object p0

    .line 101
    return-object p0

    .line 102
    :cond_7
    array-length p0, v0

    .line 103
    const/4 v8, 0x2

    .line 104
    if-ne p0, v8, :cond_c

    .line 106
    aget-object p0, v0, v2

    .line 108
    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 111
    move-result-object p0

    .line 112
    aget-object v0, v0, v4

    .line 114
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    array-length v5, p0

    .line 119
    sub-int/2addr v3, v5

    .line 120
    array-length v5, v0

    .line 121
    sub-int/2addr v3, v5

    .line 122
    move v5, v2

    .line 123
    :goto_3
    array-length v6, p0

    .line 124
    if-ge v5, v6, :cond_8

    .line 126
    aget-object v6, p0, v5

    .line 128
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    add-int/lit8 v5, v5, 0x1

    .line 136
    goto :goto_3

    .line 137
    :cond_8
    move p0, v2

    .line 138
    :goto_4
    if-ge p0, v3, :cond_9

    .line 140
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    add-int/lit8 p0, p0, 0x1

    .line 145
    goto :goto_4

    .line 146
    :cond_9
    :goto_5
    array-length p0, v0

    .line 147
    if-ge v2, p0, :cond_b

    .line 149
    aget-object p0, v0, v2

    .line 151
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    array-length p0, v0

    .line 155
    sub-int/2addr p0, v4

    .line 156
    if-eq v2, p0, :cond_a

    .line 158
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_a
    add-int/lit8 v2, v2, 0x1

    .line 163
    goto :goto_5

    .line 164
    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object p0

    .line 168
    return-object p0

    .line 169
    :cond_c
    aget-object p0, v0, v2

    .line 171
    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 174
    move-result-object p0

    .line 175
    array-length v0, p0

    .line 176
    rsub-int/lit8 v3, v0, 0x8

    .line 178
    move v4, v2

    .line 179
    :goto_6
    array-length v8, p0

    .line 180
    if-ge v4, v8, :cond_d

    .line 182
    new-instance v8, Ljava/lang/StringBuilder;

    .line 184
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    aget-object v9, p0, v4

    .line 189
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    move-result-object v8

    .line 199
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    add-int/lit8 v4, v4, 0x1

    .line 204
    goto :goto_6

    .line 205
    :cond_d
    :goto_7
    if-ge v2, v3, :cond_f

    .line 207
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    rsub-int/lit8 p0, v0, 0x7

    .line 212
    if-eq v2, p0, :cond_e

    .line 214
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_e
    add-int/lit8 v2, v2, 0x1

    .line 219
    goto :goto_7

    .line 220
    :cond_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object p0

    .line 224
    return-object p0
.end method

.method public static createDenyAllRule(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Z)Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 3
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 5
    invoke-direct {v0, v1, p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)V

    .line 8
    const-string p0, "*"

    .line 10
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    .line 16
    if-eqz p1, :cond_0

    .line 18
    new-instance p0, Lcom/samsung/android/knox/AppIdentity;

    .line 20
    const-string p1, "android"

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setApplication(Lcom/samsung/android/knox/AppIdentity;)V

    .line 29
    :cond_0
    return-object v0
.end method

.method public static matchIpIntoIpRangeRule(Ljava/lang/String;Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z
    .locals 5

    .line 1
    const-string v0, ":"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 9
    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 14
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    const-string v3, "-"

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 23
    move-result v2

    .line 24
    const/4 v4, 0x0

    .line 25
    if-eqz v2, :cond_2

    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 30
    move-result-object v2

    .line 31
    if-ne v2, v1, :cond_2

    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 43
    const/4 v3, 0x1

    .line 44
    if-ne v1, v2, :cond_1

    .line 46
    aget-object v0, p1, v4

    .line 48
    const-string v2, "\\."

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    aget-object p1, p1, v3

    .line 56
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
    invoke-static {v0, p1, p0, v1}, Lcom/android/server/enterprise/firewall/Firewall;->compareIpSubdivisions([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)Z

    .line 67
    move-result p0

    .line 68
    return p0

    .line 69
    :cond_1
    aget-object v2, p1, v4

    .line 71
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->convertToIpv6CompleteForm(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 75
    aput-object v2, p1, v4

    .line 77
    aget-object v2, p1, v3

    .line 79
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->convertToIpv6CompleteForm(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v2

    .line 83
    aput-object v2, p1, v3

    .line 85
    invoke-static {p0}, Lcom/android/server/enterprise/firewall/Firewall;->convertToIpv6CompleteForm(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 89
    aget-object v2, p1, v4

    .line 91
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 94
    move-result-object v2

    .line 95
    aget-object p1, p1, v3

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 104
    move-result-object p0

    .line 105
    invoke-static {v2, p1, p0, v1}, Lcom/android/server/enterprise/firewall/Firewall;->compareIpSubdivisions([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)Z

    .line 108
    move-result p0

    .line 109
    return p0

    .line 110
    :cond_2
    return v4
.end method

.method public static matchPortIntoPortRangeRule(Ljava/lang/String;Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "-"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    array-length v0, p1

    .line 23
    const/4 v1, 0x2

    .line 24
    if-eq v0, v1, :cond_0

    .line 26
    return v2

    .line 27
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result v0

    .line 35
    aget-object v1, p1, v2

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 44
    move-result v1

    .line 45
    if-le v0, v1, :cond_1

    .line 47
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 54
    move-result p0

    .line 55
    const/4 v0, 0x1

    .line 56
    aget-object p1, p1, v0

    .line 58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 65
    move-result p1

    .line 66
    if-ge p0, p1, :cond_1

    .line 68
    return v0

    .line 69
    :cond_1
    return v2
.end method

.method public static setRulesProperties(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lorg/json/JSONArray;)V
    .locals 11

    .line 1
    const-string v0, "Firewall"

    .line 3
    const-string v1, "Failed to put parameter in json: "

    .line 5
    if-nez p0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 10
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 13
    const-string/jumbo v3, "pN"

    .line 16
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v3, "adrTp"

    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 32
    move-result-object v4

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v6, 0x2

    .line 35
    const/4 v7, 0x1

    .line 36
    const/4 v8, -0x1

    .line 37
    if-nez v4, :cond_1

    .line 39
    :goto_0
    move v4, v8

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    sget-object v9, Lcom/android/server/enterprise/firewall/Firewall$5;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$AddressType:[I

    .line 43
    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->ordinal()I

    .line 46
    move-result v4

    .line 47
    aget v4, v9, v4

    .line 49
    if-eq v4, v7, :cond_3

    .line 51
    if-eq v4, v6, :cond_2

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move v4, v7

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    move v4, v5

    .line 57
    :goto_1
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    const-string/jumbo v3, "netIt"

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    .line 66
    move-result-object v4

    .line 67
    const/4 v9, 0x3

    .line 68
    if-nez v4, :cond_4

    .line 70
    :goto_2
    move v4, v8

    .line 71
    goto :goto_3

    .line 72
    :cond_4
    sget-object v10, Lcom/android/server/enterprise/firewall/Firewall$5;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$NetworkInterface:[I

    .line 74
    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ordinal()I

    .line 77
    move-result v4

    .line 78
    aget v4, v10, v4

    .line 80
    if-eq v4, v7, :cond_7

    .line 82
    if-eq v4, v6, :cond_6

    .line 84
    if-eq v4, v9, :cond_5

    .line 86
    goto :goto_2

    .line 87
    :cond_5
    move v4, v6

    .line 88
    goto :goto_3

    .line 89
    :cond_6
    move v4, v7

    .line 90
    goto :goto_3

    .line 91
    :cond_7
    move v4, v5

    .line 92
    :goto_3
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :try_start_1
    const-string/jumbo v3, "ptLc"

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    .line 101
    move-result-object v4

    .line 102
    if-nez v4, :cond_8

    .line 104
    :goto_4
    move v4, v8

    .line 105
    goto :goto_5

    .line 106
    :cond_8
    sget-object v10, Lcom/android/server/enterprise/firewall/Firewall$5;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$PortLocation:[I

    .line 108
    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->ordinal()I

    .line 111
    move-result v4

    .line 112
    aget v4, v10, v4

    .line 114
    if-eq v4, v7, :cond_b

    .line 116
    if-eq v4, v6, :cond_a

    .line 118
    if-eq v4, v9, :cond_9

    .line 120
    goto :goto_4

    .line 121
    :cond_9
    move v4, v6

    .line 122
    goto :goto_5

    .line 123
    :cond_a
    move v4, v7

    .line 124
    goto :goto_5

    .line 125
    :cond_b
    move v4, v5

    .line 126
    :goto_5
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    goto :goto_6

    .line 130
    :catch_0
    move-exception p0

    .line 131
    goto/16 :goto_c

    .line 133
    :catch_1
    move-exception v3

    .line 134
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 136
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v3}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object v3

    .line 150
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_6
    const-string/jumbo v3, "prt"

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 159
    move-result-object v4

    .line 160
    if-nez v4, :cond_c

    .line 162
    :goto_7
    move v4, v8

    .line 163
    goto :goto_8

    .line 164
    :cond_c
    sget-object v10, Lcom/android/server/enterprise/firewall/Firewall$5;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$Protocol:[I

    .line 166
    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->ordinal()I

    .line 169
    move-result v4

    .line 170
    aget v4, v10, v4

    .line 172
    if-eq v4, v7, :cond_f

    .line 174
    if-eq v4, v6, :cond_e

    .line 176
    if-eq v4, v9, :cond_d

    .line 178
    goto :goto_7

    .line 179
    :cond_d
    move v4, v7

    .line 180
    goto :goto_8

    .line 181
    :cond_e
    move v4, v6

    .line 182
    goto :goto_8

    .line 183
    :cond_f
    move v4, v5

    .line 184
    :goto_8
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 187
    :try_start_3
    const-string/jumbo v3, "rlTp"

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 193
    move-result-object p0

    .line 194
    if-nez p0, :cond_10

    .line 196
    :goto_9
    move v5, v8

    .line 197
    goto :goto_a

    .line 198
    :cond_10
    sget-object v4, Lcom/android/server/enterprise/firewall/Firewall$5;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ordinal()I

    .line 203
    move-result p0

    .line 204
    aget p0, v4, p0

    .line 206
    if-eq p0, v7, :cond_14

    .line 208
    if-eq p0, v6, :cond_13

    .line 210
    if-eq p0, v9, :cond_12

    .line 212
    const/4 v4, 0x4

    .line 213
    if-eq p0, v4, :cond_11

    .line 215
    goto :goto_9

    .line 216
    :cond_11
    move v5, v9

    .line 217
    goto :goto_a

    .line 218
    :cond_12
    move v5, v6

    .line 219
    goto :goto_a

    .line 220
    :cond_13
    move v5, v7

    .line 221
    :cond_14
    :goto_a
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 224
    goto :goto_b

    .line 225
    :catch_2
    move-exception p0

    .line 226
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 228
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    .line 234
    move-result-object p0

    .line 235
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    move-result-object p0

    .line 242
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_b
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 248
    goto :goto_d

    .line 249
    :goto_c
    new-instance p1, Ljava/lang/StringBuilder;

    .line 251
    const-string v1, "Failed to put rule in json: "

    .line 253
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    .line 259
    move-result-object p0

    .line 260
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    move-result-object p0

    .line 267
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :goto_d
    return-void
.end method

.method public static shouldApplyExemptRules([Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    aget-object v3, p0, v2

    .line 8
    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 10
    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 13
    move-result-object v5

    .line 14
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_0

    .line 20
    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 22
    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStatus()Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_0

    .line 32
    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->FORWARD:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 34
    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v4, v3}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_0

    .line 44
    const/4 v1, 0x1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    :goto_1
    return v1
.end method

.method public static shouldApplyIcmpAllowRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 3
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 15
    const-string v0, "*"

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 27
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 39
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->INPUT:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_1

    .line 51
    :cond_0
    const/4 p0, 0x1

    .line 52
    return p0

    .line 53
    :cond_1
    const/4 p0, 0x0

    .line 54
    return p0
.end method


# virtual methods
.method public final addAppToExemptList(Ljava/lang/Integer;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallExemptions:Ljava/util/Map;

    .line 3
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/Map;

    .line 9
    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 18
    move-result v0

    .line 19
    invoke-static {v0, p2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->verifyPackageName(ILjava/lang/String;)Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 28
    move-result p1

    .line 29
    invoke-static {p1, p2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isPlatformSigned(ILjava/lang/String;)Z

    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 35
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 37
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 39
    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 41
    invoke-direct {p1, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)V

    .line 44
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->OUTPUT:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 46
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setDirection(Lcom/samsung/android/knox/net/firewall/Firewall$Direction;)V

    .line 49
    new-instance v0, Lcom/samsung/android/knox/AppIdentity;

    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-direct {v0, p2, v1}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setApplication(Lcom/samsung/android/knox/AppIdentity;)V

    .line 58
    new-instance v0, Lcom/android/server/enterprise/firewall/FirewallExemption;

    .line 60
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/firewall/FirewallExemption;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallRule;)V

    .line 63
    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const/4 p0, 0x1

    .line 67
    return p0

    .line 68
    :cond_0
    const/4 p0, 0x0

    .line 69
    return p0
.end method

.method public final addDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;I)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->reassembleDomainFilterBrokenRules(I)Ljava/util/List;

    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->addDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 15
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-object p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method public final declared-synchronized addRule(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 4
    invoke-static {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateFirewallRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 11
    move-result-object v2

    .line 12
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 14
    if-ne v2, v3, :cond_0

    .line 16
    const-string p1, "Firewall"

    .line 18
    const-string p2, "addRule() - Invalid Firewall Rule"

    .line 20
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    .line 24
    return-object v1

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto/16 :goto_3

    .line 28
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x0

    .line 41
    if-nez v1, :cond_1

    .line 43
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 46
    move-result v1

    .line 47
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    .line 49
    const-string v5, "android"

    .line 51
    invoke-static {v4, v5, v2, v1}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    .line 54
    move-result-object v1

    .line 55
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 58
    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    :try_start_2
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v6}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 70
    move-result-object v7

    .line 71
    invoke-virtual {v7}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 74
    move-result-object v7

    .line 75
    invoke-static {v2, v1, v6, v7}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 78
    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 79
    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    if-nez v1, :cond_1

    .line 84
    const-string p1, "Firewall"

    .line 86
    const-string p2, "addRule() - Signature mismatch"

    .line 88
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 93
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 95
    const-string v0, "Given signature does not match with the application."

    .line 97
    invoke-direct {p1, v3, p2, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    monitor-exit p0

    .line 101
    return-object p1

    .line 102
    :catchall_1
    move-exception p1

    .line 103
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    throw p1

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 116
    move-result-object v1

    .line 117
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    .line 119
    const-class v5, Landroid/app/admin/DevicePolicyManager;

    .line 121
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 124
    move-result-object v4

    .line 125
    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    .line 127
    const-string v5, "SYSTEM_UIDS"

    .line 129
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 132
    move-result-object v6

    .line 133
    invoke-virtual {v6}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 136
    move-result-object v6

    .line 137
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 140
    move-result v5

    .line 141
    if-eqz v5, :cond_3

    .line 143
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 146
    move-result-wide v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 147
    :try_start_5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 150
    move-result v7

    .line 151
    invoke-virtual {v4, v7}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    .line 154
    move-result-object v7

    .line 155
    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 158
    move-result v8

    .line 159
    if-eqz v8, :cond_2

    .line 161
    if-eqz v7, :cond_2

    .line 163
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 166
    move-result-object v7

    .line 167
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    move-result v7

    .line 171
    if-eqz v7, :cond_2

    .line 173
    const/4 v2, 0x1

    .line 174
    goto :goto_0

    .line 175
    :catchall_2
    move-exception p1

    .line 176
    goto :goto_1

    .line 177
    :cond_2
    :goto_0
    invoke-virtual {v4, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnCallingUser(Ljava/lang/String;)Z

    .line 180
    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 181
    :try_start_6
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    if-nez v1, :cond_3

    .line 186
    if-nez v2, :cond_3

    .line 188
    const-string p1, "Firewall"

    .line 190
    const-string p2, "addRule() - Firewall system uid rule not supported outside DO or WPCOD"

    .line 192
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 197
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 199
    const-string v0, "Firewall rules for system UIDs are only supported on DO or WPCOD."

    .line 201
    invoke-direct {p1, v3, p2, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 204
    monitor-exit p0

    .line 205
    return-object p1

    .line 206
    :goto_1
    :try_start_7
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 209
    throw p1

    .line 210
    :cond_3
    const-string v1, "SYSTEM_UIDS"

    .line 212
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_4

    .line 226
    invoke-static {}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isKGExemptRuleRequired()Z

    .line 229
    move-result v1

    .line 230
    if-eqz v1, :cond_4

    .line 232
    const-string p1, "Firewall"

    .line 234
    const-string p2, "addRule() - Firewall system uid rule not supported on Knox Guard enrolled device"

    .line 236
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 241
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 243
    const-string v0, "Firewall rules for system UIDs are not supported on devices enrolled in Knox Guard."

    .line 245
    invoke-direct {p1, v3, p2, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 248
    monitor-exit p0

    .line 249
    return-object p1

    .line 250
    :cond_4
    :try_start_8
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 253
    move-result-object v1

    .line 254
    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 256
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->equals(Ljava/lang/Object;)Z

    .line 259
    move-result v1

    .line 260
    if-eqz v1, :cond_8

    .line 262
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 265
    move-result-object v1

    .line 266
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 268
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    .line 271
    move-result v2

    .line 272
    if-nez v2, :cond_5

    .line 274
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 276
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    .line 279
    move-result v2

    .line 280
    if-eqz v2, :cond_6

    .line 282
    :cond_5
    sget-boolean v2, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6FilterSupport:Z

    .line 284
    if-nez v2, :cond_6

    .line 286
    const-string p1, "Firewall"

    .line 288
    const-string p2, "addRule() - IPv6 not supported"

    .line 290
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 295
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->IPV6_NOT_SUPPORTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 297
    const-string v0, "This device does not have IPv6 support for this type of rule."

    .line 299
    invoke-direct {p1, v3, p2, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 302
    monitor-exit p0

    .line 303
    return-object p1

    .line 304
    :cond_6
    :try_start_9
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 306
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    .line 309
    move-result v2

    .line 310
    if-nez v2, :cond_7

    .line 312
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 314
    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    .line 317
    move-result v1

    .line 318
    if-eqz v1, :cond_8

    .line 320
    :cond_7
    const-string p1, "Firewall"

    .line 322
    const-string p2, "addRule() - IPv6 not supported"

    .line 324
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 329
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->IPV6_NOT_SUPPORTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 331
    const-string v0, "This device does not have IPv6 support for this type of rule."

    .line 333
    invoke-direct {p1, v3, p2, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 336
    monitor-exit p0

    .line 337
    return-object p1

    .line 338
    :cond_8
    :try_start_a
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 340
    if-nez v1, :cond_9

    .line 342
    goto :goto_2

    .line 343
    :cond_9
    invoke-static {p2, v0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getContentValuesFromRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;I)Landroid/content/ContentValues;

    .line 346
    move-result-object v2

    .line 347
    const-string/jumbo v4, "status"

    .line 350
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 353
    const-string v4, "FirewallRule"

    .line 355
    sget-object v5, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_RULE_COLUMNS:[Ljava/lang/String;

    .line 357
    invoke-virtual {v1, v4, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 360
    move-result-object v1

    .line 361
    check-cast v1, Ljava/util/ArrayList;

    .line 363
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 366
    move-result v1

    .line 367
    if-nez v1, :cond_a

    .line 369
    const-string p1, "Firewall"

    .line 371
    const-string p2, "addRule() - This rule is already in the database"

    .line 373
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 378
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 380
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 382
    const-string v1, "The specified rule is already in the database."

    .line 384
    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 387
    monitor-exit p0

    .line 388
    return-object p1

    .line 389
    :cond_a
    :goto_2
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->isFirewallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 392
    move-result p1

    .line 393
    if-eqz p1, :cond_b

    .line 395
    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->PENDING:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 397
    invoke-virtual {p2, p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setStatus(Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;)V

    .line 400
    :cond_b
    invoke-static {p2, v0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getContentValuesFromRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;I)Landroid/content/ContentValues;

    .line 403
    move-result-object p1

    .line 404
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 406
    const-string v1, "FirewallRule"

    .line 408
    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 411
    move-result-wide v0

    .line 412
    const-wide/16 v4, -0x1

    .line 414
    cmp-long p1, v0, v4

    .line 416
    if-nez p1, :cond_c

    .line 418
    const-string p1, "Firewall"

    .line 420
    const-string p2, "addRule() - Failed to add rule in the database"

    .line 422
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 427
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 429
    const-string v0, "Failed to add/update rule in the database."

    .line 431
    invoke-direct {p1, v3, p2, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 434
    monitor-exit p0

    .line 435
    return-object p1

    .line 436
    :cond_c
    long-to-int p1, v0

    .line 437
    :try_start_c
    invoke-virtual {p2, p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setId(I)V

    .line 440
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 442
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 444
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 446
    const-string v1, "The rule(s) was successfully added/updated."

    .line 448
    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 451
    monitor-exit p0

    .line 452
    return-object p1

    .line 453
    :goto_3
    monitor-exit p0

    .line 454
    throw p1
.end method

.method public final declared-synchronized addRules(Lcom/samsung/android/knox/ContextInfo;[Lcom/samsung/android/knox/net/firewall/FirewallRule;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 5
    move-result-object p1

    .line 6
    const-string v0, "Firewall"

    .line 8
    const-string v1, "addRules()"

    .line 10
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    if-eqz p2, :cond_f

    .line 15
    array-length v0, p2

    .line 16
    if-nez v0, :cond_0

    .line 18
    goto/16 :goto_8

    .line 20
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    .line 22
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 25
    array-length v1, p2

    .line 26
    new-array v1, v1, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    .line 30
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 33
    const/4 v3, 0x0

    .line 34
    move v4, v3

    .line 35
    :goto_0
    array-length v5, p2

    .line 36
    if-ge v4, v5, :cond_2

    .line 38
    aget-object v5, p2, v4

    .line 40
    invoke-static {v5, v0}, Lcom/android/server/enterprise/firewall/Firewall;->setRulesProperties(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lorg/json/JSONArray;)V

    .line 43
    aget-object v5, p2, v4

    .line 45
    invoke-virtual {p0, p1, v5}, Lcom/android/server/enterprise/firewall/Firewall;->addRule(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 48
    move-result-object v5

    .line 49
    aput-object v5, v1, v4

    .line 51
    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 53
    invoke-virtual {v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v6, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_1

    .line 63
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    goto :goto_1

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    goto/16 :goto_9

    .line 74
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    new-instance v4, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 79
    const-string v5, "KNOX_SECURE_NETWORK"

    .line 81
    const-string v6, "addRules"

    .line 83
    const/4 v7, 0x1

    .line 84
    invoke-direct {v4, v5, v7, v6}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 87
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 89
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setUserTypeProperty(I)V

    .line 92
    const-string/jumbo v5, "rules"

    .line 95
    new-instance v6, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    const-string v8, "\""

    .line 102
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v0, "\""

    .line 114
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v4, v5, v0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {v4}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 127
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 130
    move-result v0

    .line 131
    new-array v4, v0, [Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 133
    move v5, v3

    .line 134
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 137
    move-result v6

    .line 138
    if-ge v5, v6, :cond_3

    .line 140
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 143
    move-result-object v6

    .line 144
    check-cast v6, Ljava/lang/Integer;

    .line 146
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 149
    move-result v6

    .line 150
    aget-object v6, p2, v6

    .line 152
    aput-object v6, v4, v5

    .line 154
    add-int/lit8 v5, v5, 0x1

    .line 156
    goto :goto_2

    .line 157
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 160
    move-result v5

    .line 161
    new-array v5, v5, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->isFirewallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 166
    move-result v6

    .line 167
    if-eqz v6, :cond_6

    .line 169
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/firewall/Firewall;->enableFirewallRules(Lcom/samsung/android/knox/ContextInfo;[Lcom/samsung/android/knox/net/firewall/FirewallRule;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 172
    move-result-object v5

    .line 173
    invoke-static {v4}, Lcom/android/server/enterprise/firewall/Firewall;->shouldApplyExemptRules([Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    .line 176
    move-result v6

    .line 177
    if-eqz v6, :cond_4

    .line 179
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 181
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 184
    move-result v6

    .line 185
    invoke-virtual {p0, p1, v6}, Lcom/android/server/enterprise/firewall/Firewall;->applyExemptRules(Lcom/samsung/android/knox/ContextInfo;I)V

    .line 188
    :cond_4
    move p1, v3

    .line 189
    :goto_3
    if-ge p1, v0, :cond_7

    .line 191
    aget-object v6, v4, p1

    .line 193
    invoke-static {v6}, Lcom/android/server/enterprise/firewall/Firewall;->shouldApplyIcmpAllowRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    .line 196
    move-result v6

    .line 197
    if-eqz v6, :cond_5

    .line 199
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 201
    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addOrRemoveIcmpAllowRule(Z)V

    .line 204
    :cond_5
    add-int/lit8 p1, p1, 0x1

    .line 206
    goto :goto_3

    .line 207
    :cond_6
    move v7, v3

    .line 208
    :cond_7
    if-eqz v7, :cond_e

    .line 210
    array-length p1, p2

    .line 211
    new-array p1, p1, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 213
    move v0, v3

    .line 214
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 217
    move-result v4

    .line 218
    if-ge v0, v4, :cond_a

    .line 220
    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 222
    aget-object v6, v5, v0

    .line 224
    invoke-virtual {v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 227
    move-result-object v6

    .line 228
    invoke-virtual {v4, v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    .line 231
    move-result v6

    .line 232
    if-eqz v6, :cond_9

    .line 234
    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INPUT_CHAIN_NOT_SUPPORTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 236
    aget-object v7, v5, v0

    .line 238
    invoke-virtual {v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getErrorCode()Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 241
    move-result-object v7

    .line 242
    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->equals(Ljava/lang/Object;)Z

    .line 245
    move-result v7

    .line 246
    if-eqz v7, :cond_8

    .line 248
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 251
    move-result-object v7

    .line 252
    check-cast v7, Ljava/lang/Integer;

    .line 254
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 257
    move-result v7

    .line 258
    new-instance v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 260
    new-instance v9, Ljava/lang/StringBuilder;

    .line 262
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    const-string v10, "The rule(s) was successfully added/updated. / "

    .line 267
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    aget-object v10, v5, v0

    .line 272
    invoke-virtual {v10}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    .line 275
    move-result-object v10

    .line 276
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    move-result-object v9

    .line 283
    invoke-direct {v8, v4, v6, v9}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 286
    aput-object v8, p1, v7

    .line 288
    goto :goto_5

    .line 289
    :cond_8
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 292
    move-result-object v6

    .line 293
    check-cast v6, Ljava/lang/Integer;

    .line 295
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 298
    move-result v6

    .line 299
    new-instance v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 301
    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 303
    new-instance v9, Ljava/lang/StringBuilder;

    .line 305
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    const-string v10, "The rule(s) was successfully added/updated. / "

    .line 310
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    aget-object v10, v5, v0

    .line 315
    invoke-virtual {v10}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    .line 318
    move-result-object v10

    .line 319
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    move-result-object v9

    .line 326
    invoke-direct {v7, v4, v8, v9}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 329
    aput-object v7, p1, v6

    .line 331
    goto :goto_5

    .line 332
    :cond_9
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 335
    move-result-object v4

    .line 336
    check-cast v4, Ljava/lang/Integer;

    .line 338
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 341
    move-result v4

    .line 342
    new-instance v6, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 344
    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 346
    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 348
    new-instance v9, Ljava/lang/StringBuilder;

    .line 350
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    const-string v10, "The rule(s) was successfully added/updated. / "

    .line 355
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    aget-object v10, v5, v0

    .line 360
    invoke-virtual {v10}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    .line 363
    move-result-object v10

    .line 364
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 370
    move-result-object v9

    .line 371
    invoke-direct {v6, v7, v8, v9}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 374
    aput-object v6, p1, v4

    .line 376
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 378
    goto/16 :goto_4

    .line 380
    :cond_a
    :goto_6
    array-length v0, p2

    .line 381
    if-ge v3, v0, :cond_d

    .line 383
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 385
    aget-object v2, v1, v3

    .line 387
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 390
    move-result-object v2

    .line 391
    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    .line 394
    move-result v0

    .line 395
    if-eqz v0, :cond_b

    .line 397
    goto :goto_7

    .line 398
    :cond_b
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 400
    aget-object v2, v1, v3

    .line 402
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 405
    move-result-object v2

    .line 406
    invoke-virtual {v0, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    .line 409
    move-result v0

    .line 410
    if-eqz v0, :cond_c

    .line 412
    aget-object v0, v1, v3

    .line 414
    aput-object v0, p1, v3

    .line 416
    goto :goto_7

    .line 417
    :cond_c
    new-instance v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 419
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 421
    aget-object v4, v1, v3

    .line 423
    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getErrorCode()Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 426
    move-result-object v4

    .line 427
    new-instance v5, Ljava/lang/StringBuilder;

    .line 429
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    const-string v6, "Failed to add/update rule in the database. / "

    .line 434
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    aget-object v6, v1, v3

    .line 439
    invoke-virtual {v6}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    .line 442
    move-result-object v6

    .line 443
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    move-result-object v5

    .line 450
    invoke-direct {v0, v2, v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 453
    aput-object v0, p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 457
    goto :goto_6

    .line 458
    :cond_d
    monitor-exit p0

    .line 459
    return-object p1

    .line 460
    :cond_e
    monitor-exit p0

    .line 461
    return-object v1

    .line 462
    :cond_f
    :goto_8
    monitor-exit p0

    .line 463
    const/4 p0, 0x0

    .line 464
    return-object p0

    .line 465
    :goto_9
    monitor-exit p0

    .line 466
    throw p1
.end method

.method public final applyExemptRules(Lcom/samsung/android/knox/ContextInfo;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallExemptions:Ljava/util/Map;

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p2

    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 9
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Ljava/util/Map;

    .line 15
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 18
    move-result-object p2

    .line 19
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p2

    .line 23
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_3

    .line 29
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/android/server/enterprise/firewall/FirewallExemption;

    .line 35
    iget-boolean v1, v0, Lcom/android/server/enterprise/firewall/FirewallExemption;->mIsApplied:Z

    .line 37
    if-eqz v1, :cond_0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v1, v0, Lcom/android/server/enterprise/firewall/FirewallExemption;->mExemptionRule:Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 42
    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    const/4 v2, 0x1

    .line 54
    const-string/jumbo v3, "com.samsung.android.kgclient"

    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_1

    .line 63
    move v1, v2

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isKGExemptRuleRequired()Z

    .line 68
    move-result v1

    .line 69
    :goto_1
    if-nez v1, :cond_2

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 74
    invoke-virtual {v1, v0, v2, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addOrRemoveExemptRules(Lcom/android/server/enterprise/firewall/FirewallExemption;ZLcom/samsung/android/knox/ContextInfo;)V

    .line 77
    iput-boolean v2, v0, Lcom/android/server/enterprise/firewall/FirewallExemption;->mIsApplied:Z

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    return-void
.end method

.method public final blockOrUnblockAll(IZ)V
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "blockOrUnblockAll(block = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const-string v1, "Firewall"

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    const-string v2, ", uid = "

    .line 29
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v2, ") "

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    .line 53
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    const/4 v2, -0x1

    .line 57
    if-ne p1, v2, :cond_0

    .line 59
    iget-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 61
    invoke-virtual {p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->getAllAdmins()Ljava/util/ArrayList;

    .line 64
    move-result-object v0

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 76
    move-result-object p1

    .line 77
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_4

    .line 83
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Ljava/lang/Integer;

    .line 89
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 92
    move-result v0

    .line 93
    const/16 v2, 0x3e8

    .line 95
    if-eq v0, v2, :cond_1

    .line 97
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    .line 99
    invoke-direct {v3, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 102
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/firewall/Firewall;->isFirewallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_1

    .line 108
    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 110
    const/4 v5, 0x0

    .line 111
    invoke-static {v4, v5}, Lcom/android/server/enterprise/firewall/Firewall;->createDenyAllRule(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Z)Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {p0, v4, v3, p2}, Lcom/android/server/enterprise/firewall/Firewall;->enableOrDisableRuleAsAdmin(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 118
    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 120
    invoke-static {v4, v5}, Lcom/android/server/enterprise/firewall/Firewall;->createDenyAllRule(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Z)Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {p0, v4, v3, p2}, Lcom/android/server/enterprise/firewall/Firewall;->enableOrDisableRuleAsAdmin(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 127
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 130
    move-result v0

    .line 131
    if-nez v0, :cond_1

    .line 133
    const/16 v0, 0xf

    .line 135
    const/4 v4, 0x0

    .line 136
    invoke-virtual {p0, v3, v0, v4}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 139
    move-result-object v0

    .line 140
    const-string/jumbo v4, "package"

    .line 143
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 146
    move-result-object v4

    .line 147
    invoke-static {v4}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    .line 150
    move-result-object v4

    .line 151
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 154
    move-result-wide v6

    .line 155
    :try_start_0
    array-length v8, v0

    .line 156
    :goto_2
    if-ge v5, v8, :cond_3

    .line 158
    aget-object v9, v0, v5

    .line 160
    invoke-virtual {v9}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 163
    move-result-object v9

    .line 164
    invoke-virtual {v9}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 167
    move-result-object v9

    .line 168
    iget v10, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 170
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    .line 173
    move-result v10

    .line 174
    const-wide/16 v11, 0x0

    .line 176
    invoke-interface {v4, v9, v11, v12, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 179
    move-result-object v9

    .line 180
    if-eqz v9, :cond_2

    .line 182
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 184
    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    .line 187
    move-result v9
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    if-ne v2, v9, :cond_2

    .line 190
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 193
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 195
    const/4 v2, 0x1

    .line 196
    invoke-static {v0, v2}, Lcom/android/server/enterprise/firewall/Firewall;->createDenyAllRule(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Z)Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {p0, v0, v3, p2}, Lcom/android/server/enterprise/firewall/Firewall;->enableOrDisableRuleAsAdmin(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 203
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 205
    invoke-static {v0, v2}, Lcom/android/server/enterprise/firewall/Firewall;->createDenyAllRule(Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;Z)Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {p0, v0, v3, p2}, Lcom/android/server/enterprise/firewall/Firewall;->enableOrDisableRuleAsAdmin(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)V

    .line 212
    goto/16 :goto_1

    .line 214
    :catchall_0
    move-exception p0

    .line 215
    goto :goto_5

    .line 216
    :catch_0
    move-exception v0

    .line 217
    goto :goto_4

    .line 218
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 220
    goto :goto_2

    .line 221
    :cond_3
    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    goto/16 :goto_1

    .line 226
    :goto_4
    :try_start_1
    const-string v2, "adminHaveSystemRule() - Remote Exception on get getApplicationInfo"

    .line 228
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    goto :goto_3

    .line 232
    :goto_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 235
    throw p0

    .line 236
    :cond_4
    return-void
.end method

.method public final clearAllDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 7
    sget-object v0, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->CLEAR_ALL:Ljava/util/List;

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->removeDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final declared-synchronized clearFirewallRulesFromDb(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "Firewall"

    .line 4
    const-string/jumbo v1, "clearFirewallRulesFromDb()"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    if-nez p1, :cond_0

    .line 12
    const-string p1, "Firewall"

    .line 14
    const-string/jumbo p2, "clearFirewallRulesFromDb() - Rule type is null"

    .line 17
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 22
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 24
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 26
    const-string v1, "The specified package name is not installed."

    .line 28
    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    .line 32
    return-object p1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    :try_start_1
    iget p2, p2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 37
    new-instance v0, Landroid/content/ContentValues;

    .line 39
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 42
    const-string v1, "adminUid"

    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 51
    const-string/jumbo p2, "ruleType"

    .line 54
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 63
    const-string p2, "FirewallRule"

    .line 65
    invoke-virtual {p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 68
    move-result p1

    .line 69
    const/4 p2, -0x1

    .line 70
    if-ne p1, p2, :cond_1

    .line 72
    const-string p1, "Firewall"

    .line 74
    const-string/jumbo p2, "clearFirewallRulesFromDb() - Failed to clear rules from database"

    .line 77
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 82
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 84
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 86
    const-string v1, "Failed to clear rules from database."

    .line 88
    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    monitor-exit p0

    .line 92
    return-object p1

    .line 93
    :cond_1
    if-nez p1, :cond_2

    .line 95
    :try_start_2
    const-string p1, "Firewall"

    .line 97
    const-string/jumbo p2, "clearFirewallRulesFromDb() - Rules already cleared"

    .line 100
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 105
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 107
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 109
    const-string v1, "The rules are already cleared."

    .line 111
    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    monitor-exit p0

    .line 115
    return-object p1

    .line 116
    :cond_2
    :try_start_3
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 118
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 120
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 122
    const-string v1, "Rules successfully cleared."

    .line 124
    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    monitor-exit p0

    .line 128
    return-object p1

    .line 129
    :goto_0
    monitor-exit p0

    .line 130
    throw p1
.end method

.method public final declared-synchronized clearRuleByType(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;ILcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 4
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 7
    move-result v0

    .line 8
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 10
    const/4 v2, 0x2

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x1

    .line 13
    if-ne p1, v1, :cond_0

    .line 15
    move v1, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 19
    if-ne p1, v1, :cond_1

    .line 21
    move v1, v4

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 25
    if-ne p1, v1, :cond_2

    .line 27
    const/4 v1, 0x4

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 31
    if-ne p1, v1, :cond_3

    .line 33
    const/16 v1, 0x8

    .line 35
    goto :goto_0

    .line 36
    :cond_3
    move v1, v3

    .line 37
    :goto_0
    and-int v5, p2, v1

    .line 39
    if-eqz v5, :cond_b

    .line 41
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/firewall/Firewall;->isFirewallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_a

    .line 47
    if-ne v1, v2, :cond_4

    .line 49
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 51
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    :try_start_1
    iput v4, v5, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I

    .line 54
    invoke-virtual {v5, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addOrRemoveIcmpAllowRule(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    monitor-exit v5

    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    monitor-exit v5

    .line 61
    throw p1

    .line 62
    :catchall_1
    move-exception p1

    .line 63
    goto/16 :goto_5

    .line 65
    :cond_4
    :goto_1
    if-ne v1, v2, :cond_5

    .line 67
    invoke-virtual {p0, p3, v0}, Lcom/android/server/enterprise/firewall/Firewall;->removeExemptRules(Lcom/samsung/android/knox/ContextInfo;I)V

    .line 70
    :cond_5
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 72
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v5, p1, v6}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->flushChain(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Ljava/lang/Integer;)Z

    .line 79
    move-result v5

    .line 80
    if-nez v5, :cond_6

    .line 82
    const-string p1, "Firewall"

    .line 84
    const-string/jumbo p2, "clearRuleByType() - Failed to disable firewall rules"

    .line 87
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 92
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 94
    sget-object p3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 96
    const-string v0, " failed to disable. Error: "

    .line 98
    invoke-direct {p1, p2, p3, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    monitor-exit p0

    .line 102
    return-object p1

    .line 103
    :cond_6
    if-ne v1, v4, :cond_8

    .line 105
    :try_start_3
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 107
    monitor-enter v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 108
    :try_start_4
    iget v6, v5, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 110
    if-lez v6, :cond_7

    .line 112
    move v6, v4

    .line 113
    goto :goto_2

    .line 114
    :cond_7
    move v6, v3

    .line 115
    :goto_2
    :try_start_5
    monitor-exit v5

    .line 116
    if-eqz v6, :cond_8

    .line 118
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 120
    monitor-enter v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 121
    :try_start_6
    iget v6, v5, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I

    .line 123
    iput v3, v5, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I

    .line 125
    invoke-virtual {v5, v4}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addOrRemoveIcmpAllowRule(Z)V

    .line 128
    iput v6, v5, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mIcmpAllowRuleApplies:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 130
    :try_start_7
    monitor-exit v5

    .line 131
    goto :goto_3

    .line 132
    :catchall_2
    move-exception p1

    .line 133
    monitor-exit v5

    .line 134
    throw p1

    .line 135
    :catchall_3
    move-exception p1

    .line 136
    monitor-exit v5

    .line 137
    throw p1

    .line 138
    :cond_8
    :goto_3
    if-ne v1, v4, :cond_a

    .line 140
    and-int/2addr p2, v2

    .line 141
    if-nez p2, :cond_a

    .line 143
    iget-object p2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallExemptions:Ljava/util/Map;

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    move-result-object v0

    .line 149
    check-cast p2, Ljava/util/HashMap;

    .line 151
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    move-result-object p2

    .line 155
    check-cast p2, Ljava/util/Map;

    .line 157
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 160
    move-result-object p2

    .line 161
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 164
    move-result-object p2

    .line 165
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_a

    .line 171
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    move-result-object v0

    .line 175
    check-cast v0, Lcom/android/server/enterprise/firewall/FirewallExemption;

    .line 177
    iget-boolean v1, v0, Lcom/android/server/enterprise/firewall/FirewallExemption;->mIsApplied:Z

    .line 179
    if-nez v1, :cond_9

    .line 181
    goto :goto_4

    .line 182
    :cond_9
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 184
    invoke-virtual {v1, v0, v4, p3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addOrRemoveExemptRules(Lcom/android/server/enterprise/firewall/FirewallExemption;ZLcom/samsung/android/knox/ContextInfo;)V

    .line 187
    goto :goto_4

    .line 188
    :cond_a
    invoke-virtual {p0, p1, p3}, Lcom/android/server/enterprise/firewall/Firewall;->clearFirewallRulesFromDb(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 191
    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 192
    monitor-exit p0

    .line 193
    return-object p1

    .line 194
    :cond_b
    :try_start_8
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 196
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 198
    sget-object p3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 200
    const-string v0, "Clear was not requested for this RuleType."

    .line 202
    invoke-direct {p1, p2, p3, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 205
    monitor-exit p0

    .line 206
    return-object p1

    .line 207
    :goto_5
    monitor-exit p0

    .line 208
    throw p1
.end method

.method public final declared-synchronized clearRules(Lcom/samsung/android/knox/ContextInfo;I)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 5
    move-result-object p1

    .line 6
    const-string v0, "Firewall"

    .line 8
    const-string/jumbo v1, "clearRules()"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-static {}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->values()[Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 17
    move-result-object v0

    .line 18
    array-length v0, v0

    .line 19
    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 21
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 23
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/enterprise/firewall/Firewall;->clearRuleByType(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;ILcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x0

    .line 28
    aput-object v1, v0, v2

    .line 30
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 32
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/enterprise/firewall/Firewall;->clearRuleByType(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;ILcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 35
    move-result-object v1

    .line 36
    const/4 v2, 0x1

    .line 37
    aput-object v1, v0, v2

    .line 39
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 41
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/enterprise/firewall/Firewall;->clearRuleByType(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;ILcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x2

    .line 46
    aput-object v1, v0, v2

    .line 48
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 50
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/enterprise/firewall/Firewall;->clearRuleByType(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;ILcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 53
    move-result-object p1

    .line 54
    const/4 p2, 0x3

    .line 55
    aput-object p1, v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    .line 58
    return-object v0

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    monitor-exit p0

    .line 61
    throw p1
.end method

.method public final declared-synchronized deleteFirewallRuleFromDb(Landroid/content/ContentValues;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "Firewall"

    .line 4
    const-string/jumbo v1, "deleteFirewallRuleFromDb()"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 12
    const-string v1, "FirewallRule"

    .line 14
    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 17
    move-result p1

    .line 18
    const/4 v0, -0x1

    .line 19
    if-ne p1, v0, :cond_0

    .line 21
    const-string p1, "Firewall"

    .line 23
    const-string/jumbo v0, "deleteFirewallRuleFromDb() - Failed to remove rule from database"

    .line 26
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 31
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 33
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 35
    const-string v2, "Failed to remove/update rule from the database."

    .line 37
    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    .line 41
    return-object p1

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    if-nez p1, :cond_1

    .line 46
    :try_start_1
    const-string p1, "Firewall"

    .line 48
    const-string/jumbo v0, "deleteFirewallRuleFromDb() - Firewall rule not found"

    .line 51
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 56
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 58
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 60
    const-string v2, "The specified FirewallRule was not found."

    .line 62
    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    monitor-exit p0

    .line 66
    return-object p1

    .line 67
    :cond_1
    :try_start_2
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 69
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 71
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 73
    const-string v2, "The rule was successfuly removed/updated."

    .line 75
    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    monitor-exit p0

    .line 79
    return-object p1

    .line 80
    :goto_0
    monitor-exit p0

    .line 81
    throw p1
.end method

.method public final declared-synchronized disableFirewall(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 10

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "Firewall"

    .line 4
    const-string/jumbo v1, "disableFirewall()"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 12
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 15
    move-result v1

    .line 16
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/Firewall;->getFirewallOwner(I)I

    .line 19
    move-result v2

    .line 20
    if-eq v2, v0, :cond_0

    .line 22
    const-string p1, "Firewall"

    .line 24
    const-string/jumbo v0, "disableFirewall() - FAILED! NOT_AUTHORIZED_ERROR ADMINUID_IS_NOT_THE_OWNER"

    .line 27
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 32
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 34
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 36
    const-string v2, "This administrator can\'t execute this operation because he is not the owner."

    .line 38
    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    .line 42
    return-object p1

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto/16 :goto_3

    .line 46
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    .line 48
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 51
    const-string v3, "adminUid"

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    const-string/jumbo v0, "userID"

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 72
    const-string v3, "FirewallStatus"

    .line 74
    invoke-virtual {v0, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_1

    .line 80
    const-string p1, "Firewall"

    .line 82
    const-string/jumbo v0, "disableFirewall() - FAILED! DATABASE_ERROR FAIL_TO_DISABLE_FIREWALL_IN_THE_DATABASE"

    .line 85
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 90
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 92
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 94
    const-string v2, "Fail to disable Firewall in the database."

    .line 96
    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    monitor-exit p0

    .line 100
    return-object p1

    .line 101
    :cond_1
    const/16 v0, 0xf

    .line 103
    const/4 v2, 0x0

    .line 104
    :try_start_2
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 107
    move-result-object v0

    .line 108
    array-length v2, v0

    .line 109
    if-lez v2, :cond_6

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    .line 113
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    array-length v3, v0

    .line 117
    new-array v4, v3, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 119
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->flushAllChains(Ljava/lang/Integer;)Z

    .line 128
    move-result v4

    .line 129
    const/4 v5, 0x0

    .line 130
    if-nez v4, :cond_3

    .line 132
    :goto_0
    if-ge v5, v3, :cond_2

    .line 134
    const-string p1, "Rule with Id = "

    .line 136
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    aget-object p1, v0, v5

    .line 141
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getId()I

    .line 144
    move-result p1

    .line 145
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    const-string p1, " failed to disable. Error: "

    .line 150
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string p1, "Unexpected error"

    .line 155
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    add-int/lit8 v5, v5, 0x1

    .line 160
    goto :goto_0

    .line 161
    :cond_2
    const-string p1, "Firewall"

    .line 163
    const-string/jumbo v0, "disableFirewall() - Failed to disable Firewall"

    .line 166
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 171
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 173
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object v2

    .line 179
    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    monitor-exit p0

    .line 183
    return-object p1

    .line 184
    :cond_3
    :try_start_3
    array-length v4, v0

    .line 185
    move v6, v5

    .line 186
    :goto_1
    if-ge v6, v4, :cond_4

    .line 188
    aget-object v7, v0, v6

    .line 190
    iget-object v8, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 192
    sget-object v9, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 194
    invoke-virtual {v8, v7, v9, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;Lcom/samsung/android/knox/ContextInfo;)V

    .line 197
    add-int/lit8 v6, v6, 0x1

    .line 199
    goto :goto_1

    .line 200
    :cond_4
    :goto_2
    if-ge v5, v3, :cond_5

    .line 202
    const-string v4, "Rule with Id = "

    .line 204
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    aget-object v4, v0, v5

    .line 209
    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getId()I

    .line 212
    move-result v4

    .line 213
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    const-string v4, " successfully disabled.\n"

    .line 218
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    add-int/lit8 v5, v5, 0x1

    .line 223
    goto :goto_2

    .line 224
    :cond_5
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/firewall/Firewall;->removeExemptRules(Lcom/samsung/android/knox/ContextInfo;I)V

    .line 227
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 229
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 231
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 233
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    move-result-object v2

    .line 237
    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 240
    monitor-exit p0

    .line 241
    return-object p1

    .line 242
    :cond_6
    :try_start_4
    const-string p1, "Firewall"

    .line 244
    const-string/jumbo v0, "disableFirewall() - Firewall successfully disabled"

    .line 247
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 252
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 254
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 256
    const-string v2, "The firewall was successfully disabled."

    .line 258
    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 261
    monitor-exit p0

    .line 262
    return-object p1

    .line 263
    :goto_3
    monitor-exit p0

    .line 264
    throw p1
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    iget-object v2, v0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    .line 7
    const-string v3, "android.permission.DUMP"

    .line 9
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 15
    const-string v0, "Permission Denial: can\'t dump Firewall"

    .line 17
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v2, v0, Lcom/android/server/enterprise/firewall/Firewall;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 23
    const-string/jumbo v15, "direction"

    .line 26
    const-string/jumbo v16, "protocol"

    .line 29
    const-string v3, "adminUid"

    .line 31
    const-string/jumbo v4, "ruleType"

    .line 34
    const-string/jumbo v5, "status"

    .line 37
    const-string v6, "addressType"

    .line 39
    const-string/jumbo v7, "ipAddress"

    .line 42
    const-string/jumbo v8, "portNumber"

    .line 45
    const-string/jumbo v9, "portLocation"

    .line 48
    const-string/jumbo v10, "packageName"

    .line 51
    const-string/jumbo v11, "signature"

    .line 54
    const-string/jumbo v12, "networkInterface"

    .line 57
    const-string/jumbo v13, "targetIpAddress"

    .line 60
    const-string/jumbo v14, "targetPortNumber"

    .line 63
    filled-new-array/range {v3 .. v16}, [Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    const-string v4, "FirewallRule"

    .line 69
    const/4 v5, 0x0

    .line 70
    invoke-virtual {v2, v1, v4, v3, v5}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 73
    iget-object v2, v0, Lcom/android/server/enterprise/firewall/Firewall;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 75
    const-string/jumbo v10, "dns2"

    .line 78
    const-string/jumbo v11, "networkId"

    .line 81
    const-string v6, "adminUid"

    .line 83
    const-string/jumbo v7, "packageName"

    .line 86
    const-string/jumbo v8, "signature"

    .line 89
    const-string/jumbo v9, "dns1"

    .line 92
    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    .line 95
    move-result-object v3

    .line 96
    const-string v4, "DomainFilterTable"

    .line 98
    invoke-virtual {v2, v1, v4, v3, v5}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 101
    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 103
    const-string/jumbo v2, "typeList"

    .line 106
    const-string/jumbo v3, "domain"

    .line 109
    const-string v4, "adminUid"

    .line 111
    const-string/jumbo v6, "packageName"

    .line 114
    filled-new-array {v4, v6, v2, v3}, [Ljava/lang/String;

    .line 117
    move-result-object v2

    .line 118
    const-string v3, "DomainFilterListTable"

    .line 120
    invoke-virtual {v0, v1, v3, v2, v5}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public final declared-synchronized enableDomainFilterOnIptables(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 5
    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->enableDomainFilterOnIptables(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 11
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return-object p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1
.end method

.method public final declared-synchronized enableDomainFilterReport(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 5
    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->enableDomainFilterReport(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 11
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return-object p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1
.end method

.method public final declared-synchronized enableFirewall(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 11

    monitor-enter p0

    .line 4
    :try_start_0
    const-string v0, "Firewall"

    const-string/jumbo v1, "enableFirewall()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 6
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 7
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/Firewall;->getFirewallOwner(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-eq v2, v0, :cond_0

    .line 8
    const-string p1, "Firewall"

    const-string/jumbo v0, "enableFirewall() - Failed! NOT_AUTHORIZED_ERROR ADMINUID_IS_NOT_THE_OWNER"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v2, "This administrator can\'t execute this operation because he is not the owner."

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    if-ne v2, v3, :cond_1

    .line 10
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 11
    const-string v3, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12
    const-string/jumbo v0, "userID"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "FirewallStatus"

    invoke-virtual {v0, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 14
    const-string p1, "Firewall"

    const-string/jumbo v0, "enableFirewall() - Failed! DATABASE_ERROR FAILED_TO_ENABLE_FIREWALL_IN_THE_DATABASE"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v2, "Failed to enable Firewall in the database."

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    const/16 v0, 0xf

    const/4 v2, 0x0

    .line 16
    :try_start_2
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-result-object v0

    .line 17
    array-length v2, v0

    if-lez v2, :cond_b

    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/firewall/Firewall;->enableFirewallRules(Lcom/samsung/android/knox/ContextInfo;[Lcom/samsung/android/knox/net/firewall/FirewallRule;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object v2

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    .line 20
    :goto_0
    array-length v8, v2

    const/4 v9, 0x1

    if-ge v5, v8, :cond_5

    .line 21
    aget-object v8, v2, v5

    invoke-virtual {v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v8

    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-virtual {v8, v10}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 22
    sget-object v8, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INPUT_CHAIN_NOT_SUPPORTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    aget-object v10, v2, v5

    invoke-virtual {v10}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getErrorCode()Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 23
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rule with Id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v0, v5

    invoke-virtual {v8}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "Rule not applied to INPUT chain for Direction.All."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, v9

    goto :goto_1

    .line 24
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rule with Id = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v0, v5

    invoke-virtual {v9}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " successfully enabled.\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 25
    :cond_3
    aget-object v8, v2, v5

    invoke-virtual {v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    move-result-object v8

    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    invoke-virtual {v8, v10}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 26
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Rule with Id =  "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v0, v5

    invoke-virtual {v8}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getId()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " failed to enable. Error: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v2, v5

    .line 27
    invoke-virtual {v8}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 28
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v9

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_5
    if-eqz v6, :cond_6

    .line 29
    const-string p1, "Firewall"

    const-string/jumbo v0, "enableFirewall() - Failed to enable Firewall"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->UNEXPECTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 31
    :cond_6
    :try_start_3
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/Firewall;->shouldApplyExemptRules([Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 32
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/firewall/Firewall;->applyExemptRules(Lcom/samsung/android/knox/ContextInfo;I)V

    .line 33
    :cond_7
    array-length p1, v0

    :goto_2
    if-ge v4, p1, :cond_9

    aget-object v1, v0, v4

    .line 34
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/Firewall;->shouldApplyIcmpAllowRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 35
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    invoke-virtual {v1, v9}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addOrRemoveIcmpAllowRule(Z)V

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 36
    :cond_9
    const-string p1, "Firewall"

    const-string/jumbo v0, "enableFirewall() - Firewall successfully enabled"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_a

    .line 37
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INPUT_CHAIN_NOT_SUPPORTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    monitor-exit p0

    return-object p1

    .line 40
    :cond_a
    :try_start_4
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 42
    monitor-exit p0

    return-object p1

    .line 43
    :cond_b
    :try_start_5
    const-string p1, "Firewall"

    const-string/jumbo v0, "enableFirewall() - Firewall successfully enabled (no rules)"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    const-string v2, "The firewall was successfully enabled."

    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized enableFirewall(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enableFirewall(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->disableFirewall(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized enableFirewallRules(Lcom/samsung/android/knox/ContextInfo;[Lcom/samsung/android/knox/net/firewall/FirewallRule;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 5
    move-result-object v3

    .line 6
    const-string p1, "Firewall"

    .line 8
    const-string/jumbo v0, "enableFirewallRules()"

    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    .line 16
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    const/4 v0, 0x0

    .line 20
    move v1, v0

    .line 21
    :goto_0
    array-length v2, p2

    .line 22
    if-ge v1, v2, :cond_1

    .line 24
    aget-object v2, p2, v1

    .line 26
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    iget v4, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 36
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 39
    move-result v4

    .line 40
    invoke-static {v4, v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->verifyPackageName(ILjava/lang/String;)Z

    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 48
    aget-object v4, p2, v1

    .line 50
    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 52
    invoke-virtual {v2, v4, v5, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->updateStatusOnDB(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;Lcom/samsung/android/knox/ContextInfo;)V

    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_3

    .line 58
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 71
    move-result v1

    .line 72
    new-array v1, v1, [Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 74
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 77
    move-result v2

    .line 78
    if-ge v0, v2, :cond_2

    .line 80
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Ljava/lang/Integer;

    .line 86
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 89
    move-result v2

    .line 90
    aget-object v2, p2, v2

    .line 92
    aput-object v2, v1, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    .line 96
    goto :goto_2

    .line 97
    :cond_2
    const-string p1, "Firewall"

    .line 99
    const-string/jumbo p2, "enableFirewallRules()"

    .line 102
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 107
    const/4 v2, 0x0

    .line 108
    const/4 v5, 0x1

    .line 109
    const/4 v4, 0x1

    .line 110
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableOrDisableIptablesRule([Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;ZZ)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 113
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    monitor-exit p0

    .line 115
    return-object p1

    .line 116
    :goto_3
    monitor-exit p0

    .line 117
    throw p1
.end method

.method public final enableOrDisableRuleAsAdmin(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)V
    .locals 10

    .line 1
    const-string v0, "Firewall"

    .line 3
    const-string/jumbo v1, "enableOrDisableRuleAsAdmin()"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const/4 v1, 0x0

    .line 10
    move v8, v1

    .line 11
    :goto_0
    const/4 v2, 0x5

    .line 12
    if-ge v8, v2, :cond_2

    .line 14
    if-eqz p3, :cond_0

    .line 16
    const-string/jumbo v2, "enableOrDisableRuleAsAdmin() - Block the traffic until applying rules process is finished"

    .line 19
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    const/4 v3, 0x1

    .line 28
    new-array v3, v3, [Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 30
    const/4 v9, 0x0

    .line 31
    aput-object p1, v3, v9

    .line 33
    const/4 v7, 0x1

    .line 34
    const/4 v4, 0x1

    .line 35
    move-object v5, p2

    .line 36
    move v6, v1

    .line 37
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableOrDisableIptablesRule([Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;ZZ)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 40
    move-result-object v2

    .line 41
    aget-object v2, v2, v9

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    const-string/jumbo v2, "enableOrDisableRuleAsAdmin() - Applying rules process is finished. Unblock the traffic"

    .line 47
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 52
    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->disableIpTablesRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 55
    move-result-object v2

    .line 56
    :goto_1
    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 61
    move-result-object v2

    .line 62
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 64
    if-ne v2, v3, :cond_1

    .line 66
    const-string/jumbo p0, "enableOrDisableRuleAsAdmin() - success"

    .line 69
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    goto :goto_2

    .line 73
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    :goto_2
    return-void
.end method

.method public final enforceFirewallPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mInjector:Lcom/android/server/enterprise/firewall/Firewall$Injector;

    .line 7
    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall$Injector;->mCtx:Landroid/content/Context;

    .line 9
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_FIREWALL"

    .line 22
    filled-new-array {v1}, [Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 33
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 36
    move-result-object p0

    .line 37
    return-object p0
.end method

.method public final getDefaulCaptivePortalURL()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    move-result-object p0

    .line 15
    const-string/jumbo v0, "captive_portal_server"

    .line 18
    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    if-nez p0, :cond_0

    .line 24
    const-string/jumbo p0, "connectivitycheck.gstatic.com"

    .line 27
    :cond_0
    const-string/jumbo v0, "http://"

    .line 30
    const-string v1, "/generate_204"

    .line 32
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    :goto_0
    return-object p0
.end method

.method public final getDomainFilterReport(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string v0, "DomainFilter"

    .line 12
    const-string/jumbo v1, "getDomainFilterReport()"

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 20
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 23
    move-result p1

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    .line 31
    check-cast v1, Ljava/util/HashSet;

    .line 33
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_4

    .line 39
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v2

    .line 45
    check-cast v1, Ljava/util/HashSet;

    .line 47
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_0

    .line 53
    goto :goto_2

    .line 54
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    .line 56
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 59
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    move-result-object p1

    .line 63
    const-string/jumbo v2, "userId"

    .line 66
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 71
    const-string p1, "DomainFilterReportTable"

    .line 73
    const/4 v2, 0x0

    .line 74
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Ljava/util/ArrayList;

    .line 80
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 83
    move-result-object p0

    .line 84
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_4

    .line 90
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Landroid/content/ContentValues;

    .line 96
    const-string/jumbo v1, "packageName"

    .line 99
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    if-eqz p2, :cond_2

    .line 105
    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 108
    move-result v2

    .line 109
    if-eqz v2, :cond_1

    .line 111
    :cond_2
    const-string/jumbo v2, "time"

    .line 114
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 117
    move-result-object v2

    .line 118
    new-instance v3, Lcom/samsung/android/knox/net/firewall/DomainFilterReport;

    .line 120
    if-eqz v2, :cond_3

    .line 122
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 125
    move-result-wide v4

    .line 126
    goto :goto_1

    .line 127
    :cond_3
    const-wide/16 v4, 0x0

    .line 129
    :goto_1
    const-string/jumbo v2, "url"

    .line 132
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    move-result-object p1

    .line 136
    invoke-direct {v3, v1, v4, v5, p1}, Lcom/samsung/android/knox/net/firewall/DomainFilterReport;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 139
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    goto :goto_0

    .line 143
    :cond_4
    :goto_2
    return-object v0
.end method

.method public final getDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)Ljava/util/List;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 8
    move-result-object v2

    .line 9
    const/4 v3, -0x1

    .line 10
    move/from16 v4, p3

    .line 12
    if-ne v4, v3, :cond_0

    .line 14
    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->getDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;

    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_0
    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 23
    iget-object v3, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterBrokenRules:Ljava/util/Map;

    .line 25
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v5

    .line 29
    check-cast v3, Ljava/util/HashMap;

    .line 31
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 34
    move-result v3

    .line 35
    const/4 v5, 0x0

    .line 36
    if-nez v3, :cond_2

    .line 38
    invoke-virtual {v0, v2, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->getDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;

    .line 41
    move-result-object v1

    .line 42
    move-object v2, v1

    .line 43
    check-cast v2, Ljava/util/ArrayList;

    .line 45
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 51
    goto/16 :goto_9

    .line 53
    :cond_1
    iget-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterBrokenRules:Ljava/util/Map;

    .line 55
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v3

    .line 59
    check-cast v2, Ljava/util/HashMap;

    .line 61
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_2
    iget-object v1, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterBrokenRules:Ljava/util/Map;

    .line 66
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v2

    .line 70
    check-cast v1, Ljava/util/HashMap;

    .line 72
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Ljava/util/List;

    .line 78
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_3

    .line 84
    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterBrokenRules:Ljava/util/Map;

    .line 86
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v1

    .line 90
    check-cast v0, Ljava/util/HashMap;

    .line 92
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    goto/16 :goto_9

    .line 97
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    .line 99
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    .line 104
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    new-instance v3, Ljava/util/ArrayList;

    .line 109
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 112
    const/4 v12, 0x0

    .line 113
    move v6, v12

    .line 114
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 117
    move-result v7

    .line 118
    if-nez v7, :cond_11

    .line 120
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 123
    move-result-object v7

    .line 124
    move-object v13, v7

    .line 125
    check-cast v13, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 127
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns1()Ljava/lang/String;

    .line 130
    move-result-object v14

    .line 131
    if-eqz v14, :cond_4

    .line 133
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 135
    invoke-virtual {v14, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 138
    move-result-object v7

    .line 139
    array-length v7, v7

    .line 140
    goto :goto_1

    .line 141
    :cond_4
    move v7, v12

    .line 142
    :goto_1
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDns2()Ljava/lang/String;

    .line 145
    move-result-object v15

    .line 146
    if-eqz v15, :cond_5

    .line 148
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 150
    invoke-virtual {v15, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 153
    move-result-object v8

    .line 154
    array-length v8, v8

    .line 155
    goto :goto_2

    .line 156
    :cond_5
    move v8, v12

    .line 157
    :goto_2
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 160
    move-result-object v16

    .line 161
    add-int/2addr v7, v8

    .line 162
    add-int/lit8 v7, v7, 0x8

    .line 164
    if-eqz v16, :cond_8

    .line 166
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 169
    move-result-object v8

    .line 170
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 173
    move-result-object v9

    .line 174
    if-eqz v8, :cond_6

    .line 176
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 178
    invoke-virtual {v8, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 181
    move-result-object v8

    .line 182
    array-length v8, v8

    .line 183
    goto :goto_3

    .line 184
    :cond_6
    move v8, v12

    .line 185
    :goto_3
    if-eqz v9, :cond_7

    .line 187
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 189
    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 192
    move-result-object v9

    .line 193
    array-length v9, v9

    .line 194
    goto :goto_4

    .line 195
    :cond_7
    move v9, v12

    .line 196
    :goto_4
    add-int/2addr v7, v8

    .line 197
    add-int/2addr v7, v9

    .line 198
    :cond_8
    add-int v17, v6, v7

    .line 200
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    .line 203
    move-result-object v11

    .line 204
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    .line 207
    move-result-object v10

    .line 208
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 211
    move-result v6

    .line 212
    if-eqz v6, :cond_9

    .line 214
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 217
    move-result v6

    .line 218
    if-eqz v6, :cond_9

    .line 220
    new-instance v9, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 222
    move-object v6, v9

    .line 223
    move-object/from16 v7, v16

    .line 225
    move-object v8, v2

    .line 226
    move-object v12, v9

    .line 227
    move-object v9, v3

    .line 228
    move-object v4, v10

    .line 229
    move-object v10, v14

    .line 230
    move-object/from16 p1, v11

    .line 232
    move-object v11, v15

    .line 233
    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>(Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    goto :goto_5

    .line 240
    :cond_9
    move-object v4, v10

    .line 241
    move-object/from16 p1, v11

    .line 243
    :goto_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    .line 246
    move-result v6

    .line 247
    sget v7, Lcom/android/server/enterprise/firewall/DomainFilter;->MAX_LIST_SIZE_IN_BYTES:I

    .line 249
    if-nez v6, :cond_b

    .line 251
    move-object/from16 v12, p1

    .line 253
    const/4 v6, 0x0

    .line 254
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 257
    move-result-object v8

    .line 258
    check-cast v8, Ljava/lang/String;

    .line 260
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 262
    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 265
    move-result-object v9

    .line 266
    array-length v9, v9

    .line 267
    add-int v9, v17, v9

    .line 269
    if-gt v9, v7, :cond_a

    .line 271
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-interface {v12, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 277
    move/from16 v17, v9

    .line 279
    move-object/from16 p1, v12

    .line 281
    goto :goto_5

    .line 282
    :cond_a
    new-instance v4, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 284
    move-object v6, v4

    .line 285
    move-object/from16 v7, v16

    .line 287
    move-object v8, v2

    .line 288
    move-object v9, v3

    .line 289
    move-object v10, v14

    .line 290
    move-object v11, v15

    .line 291
    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>(Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 300
    invoke-virtual {v13, v12}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setDenyDomains(Ljava/util/List;)V

    .line 303
    goto/16 :goto_8

    .line 305
    :cond_b
    if-eqz v4, :cond_d

    .line 307
    :goto_6
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 310
    move-result v6

    .line 311
    if-nez v6, :cond_d

    .line 313
    const/4 v6, 0x0

    .line 314
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 317
    move-result-object v8

    .line 318
    check-cast v8, Ljava/lang/String;

    .line 320
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 322
    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 325
    move-result-object v9

    .line 326
    array-length v9, v9

    .line 327
    add-int v9, v17, v9

    .line 329
    if-gt v9, v7, :cond_c

    .line 331
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-interface {v4, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 337
    move/from16 v17, v9

    .line 339
    goto :goto_6

    .line 340
    :cond_c
    new-instance v12, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 342
    move-object v6, v12

    .line 343
    move-object/from16 v7, v16

    .line 345
    move-object v8, v2

    .line 346
    move-object v9, v3

    .line 347
    move-object v10, v14

    .line 348
    move-object v11, v15

    .line 349
    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>(Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 358
    invoke-virtual {v13, v4}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->setAllowDomains(Ljava/util/List;)V

    .line 361
    goto :goto_8

    .line 362
    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 365
    move-result v4

    .line 366
    if-eqz v4, :cond_e

    .line 368
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 371
    move-result v4

    .line 372
    if-nez v4, :cond_f

    .line 374
    :cond_e
    new-instance v4, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 376
    move-object v6, v4

    .line 377
    move-object/from16 v7, v16

    .line 379
    move-object v8, v2

    .line 380
    move-object v9, v3

    .line 381
    move-object v10, v14

    .line 382
    move-object v11, v15

    .line 383
    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;-><init>(Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 392
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 395
    :cond_f
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    .line 398
    move-result-object v4

    .line 399
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 402
    move-result v4

    .line 403
    if-eqz v4, :cond_10

    .line 405
    invoke-virtual {v13}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    .line 408
    move-result-object v4

    .line 409
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 412
    move-result v4

    .line 413
    if-eqz v4, :cond_10

    .line 415
    const/4 v4, 0x0

    .line 416
    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 419
    goto :goto_7

    .line 420
    :cond_10
    const/4 v4, 0x0

    .line 421
    :goto_7
    move v12, v4

    .line 422
    move/from16 v6, v17

    .line 424
    move/from16 v4, p3

    .line 426
    goto/16 :goto_0

    .line 428
    :cond_11
    :goto_8
    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterBrokenRules:Ljava/util/Map;

    .line 430
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 433
    move-result-object v2

    .line 434
    check-cast v0, Ljava/util/HashMap;

    .line 436
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    :goto_9
    return-object v5
.end method

.method public final getFirewallOwner(I)I
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
    const-string/jumbo v1, "userID"

    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 16
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 18
    const-string p1, "FirewallStatus"

    .line 20
    sget-object v1, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_POLICY_STATUS_COLUMNS:[Ljava/lang/String;

    .line 22
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Ljava/util/ArrayList;

    .line 28
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 31
    move-result p1

    .line 32
    const/4 v0, -0x1

    .line 33
    if-eqz p1, :cond_0

    .line 35
    return v0

    .line 36
    :cond_0
    const/4 p1, 0x0

    .line 37
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Landroid/content/ContentValues;

    .line 43
    const-string p1, "adminUid"

    .line 45
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 48
    move-result-object p0

    .line 49
    if-eqz p0, :cond_1

    .line 51
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 54
    move-result v0

    .line 55
    :cond_1
    return v0
.end method

.method public final getRuleByType(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;ILcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .locals 3

    .line 1
    iget p3, p3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 5
    if-ne p1, v0, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 11
    if-ne p1, v0, :cond_1

    .line 13
    const/4 v0, 0x2

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 17
    if-ne p1, v0, :cond_2

    .line 19
    const/4 v0, 0x4

    .line 20
    goto :goto_0

    .line 21
    :cond_2
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 23
    if-ne p1, v0, :cond_3

    .line 25
    const/16 v0, 0x8

    .line 27
    goto :goto_0

    .line 28
    :cond_3
    const/4 v0, 0x0

    .line 29
    :goto_0
    new-instance v1, Landroid/content/ContentValues;

    .line 31
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 34
    const/16 v2, 0x3e8

    .line 36
    if-eq p3, v2, :cond_4

    .line 38
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object p3

    .line 42
    const-string v2, "adminUid"

    .line 44
    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    :cond_4
    if-eqz p4, :cond_5

    .line 49
    const-string/jumbo p3, "status"

    .line 52
    invoke-virtual {v1, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_5
    and-int/2addr p2, v0

    .line 56
    if-eqz p2, :cond_6

    .line 58
    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    .line 61
    move-result-object p2

    .line 62
    const-string/jumbo p3, "ruleType"

    .line 65
    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 70
    const-string p2, "FirewallRule"

    .line 72
    sget-object p3, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_RULE_COLUMNS:[Ljava/lang/String;

    .line 74
    invoke-virtual {p0, p2, p3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 77
    move-result-object p0

    .line 78
    invoke-static {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getRuleFromContentValues(Ljava/util/List;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 81
    move-result-object p0

    .line 82
    goto :goto_1

    .line 83
    :cond_6
    const/4 p0, 0x0

    .line 84
    :goto_1
    return-object p0
.end method

.method public final getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 7
    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/android/server/enterprise/firewall/Firewall;->getRuleByType(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;ILcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 13
    invoke-virtual {p0, v1, p2, p1, p3}, Lcom/android/server/enterprise/firewall/Firewall;->getRuleByType(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;ILcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 16
    move-result-object v1

    .line 17
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 19
    invoke-virtual {p0, v2, p2, p1, p3}, Lcom/android/server/enterprise/firewall/Firewall;->getRuleByType(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;ILcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 22
    move-result-object v2

    .line 23
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 25
    invoke-virtual {p0, v3, p2, p1, p3}, Lcom/android/server/enterprise/firewall/Firewall;->getRuleByType(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;ILcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 28
    move-result-object p0

    .line 29
    const/4 p1, 0x0

    .line 30
    if-eqz v0, :cond_0

    .line 32
    array-length p2, v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move p2, p1

    .line 35
    :goto_0
    if-eqz v1, :cond_1

    .line 37
    array-length p3, v1

    .line 38
    add-int/2addr p2, p3

    .line 39
    :cond_1
    if-eqz v2, :cond_2

    .line 41
    array-length p3, v2

    .line 42
    add-int/2addr p2, p3

    .line 43
    :cond_2
    if-eqz p0, :cond_3

    .line 45
    array-length p3, p0

    .line 46
    add-int/2addr p2, p3

    .line 47
    :cond_3
    new-array p2, p2, [Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 49
    if-eqz v0, :cond_4

    .line 51
    move p3, p1

    .line 52
    move v3, p3

    .line 53
    :goto_1
    array-length v4, v0

    .line 54
    if-ge p3, v4, :cond_5

    .line 56
    add-int/lit8 v4, v3, 0x1

    .line 58
    aget-object v5, v0, p3

    .line 60
    aput-object v5, p2, v3

    .line 62
    add-int/lit8 p3, p3, 0x1

    .line 64
    move v3, v4

    .line 65
    goto :goto_1

    .line 66
    :cond_4
    move v3, p1

    .line 67
    :cond_5
    if-eqz v1, :cond_6

    .line 69
    move p3, p1

    .line 70
    :goto_2
    array-length v0, v1

    .line 71
    if-ge p3, v0, :cond_6

    .line 73
    add-int/lit8 v0, v3, 0x1

    .line 75
    aget-object v4, v1, p3

    .line 77
    aput-object v4, p2, v3

    .line 79
    add-int/lit8 p3, p3, 0x1

    .line 81
    move v3, v0

    .line 82
    goto :goto_2

    .line 83
    :cond_6
    if-eqz v2, :cond_7

    .line 85
    move p3, p1

    .line 86
    :goto_3
    array-length v0, v2

    .line 87
    if-ge p3, v0, :cond_7

    .line 89
    add-int/lit8 v0, v3, 0x1

    .line 91
    aget-object v1, v2, p3

    .line 93
    aput-object v1, p2, v3

    .line 95
    add-int/lit8 p3, p3, 0x1

    .line 97
    move v3, v0

    .line 98
    goto :goto_3

    .line 99
    :cond_7
    if-eqz p0, :cond_8

    .line 101
    :goto_4
    array-length p3, p0

    .line 102
    if-ge p1, p3, :cond_8

    .line 104
    add-int/lit8 p3, v3, 0x1

    .line 106
    aget-object v0, p0, p1

    .line 108
    aput-object v0, p2, v3

    .line 110
    add-int/lit8 p1, p1, 0x1

    .line 112
    move v3, p3

    .line 113
    goto :goto_4

    .line 114
    :cond_8
    return-object p2
.end method

.method public final getRulesByAdminUidAndPackage(ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .locals 7

    .line 1
    const-string/jumbo v0, "packageName"

    .line 4
    invoke-static {v0, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 7
    move-result-object p2

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object p1

    .line 12
    const-string v0, "adminUid"

    .line 14
    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 17
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 19
    const-string p1, "FirewallRule"

    .line 21
    sget-object v0, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_RULE_COLUMNS:[Ljava/lang/String;

    .line 23
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 26
    move-result-object p0

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    new-instance p2, Ljava/util/ArrayList;

    .line 34
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    .line 39
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    .line 44
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    check-cast p0, Ljava/util/ArrayList;

    .line 49
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v2

    .line 53
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_5

    .line 59
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Landroid/content/ContentValues;

    .line 65
    const-string/jumbo v4, "ruleType"

    .line 68
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 71
    move-result v5

    .line 72
    if-nez v5, :cond_0

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object v4

    .line 79
    invoke-static {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 82
    move-result-object v4

    .line 83
    sget-object v5, Lcom/android/server/enterprise/firewall/Firewall$5;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    .line 85
    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ordinal()I

    .line 88
    move-result v4

    .line 89
    aget v4, v5, v4

    .line 91
    const/4 v5, 0x1

    .line 92
    if-eq v4, v5, :cond_4

    .line 94
    const/4 v5, 0x2

    .line 95
    if-eq v4, v5, :cond_3

    .line 97
    const/4 v5, 0x3

    .line 98
    if-eq v4, v5, :cond_2

    .line 100
    const/4 v5, 0x4

    .line 101
    if-eq v4, v5, :cond_1

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    goto :goto_0

    .line 112
    :cond_3
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    goto :goto_0

    .line 116
    :cond_4
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    goto :goto_0

    .line 120
    :cond_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 123
    move-result p0

    .line 124
    new-array p0, p0, [Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 126
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 128
    invoke-static {p1, v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getRuleFromContentValues(Ljava/util/List;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 131
    move-result-object p1

    .line 132
    const/4 v2, 0x0

    .line 133
    move v3, v2

    .line 134
    move v4, v3

    .line 135
    :goto_1
    array-length v5, p1

    .line 136
    if-ge v3, v5, :cond_6

    .line 138
    add-int/lit8 v5, v4, 0x1

    .line 140
    aget-object v6, p1, v3

    .line 142
    aput-object v6, p0, v4

    .line 144
    add-int/lit8 v3, v3, 0x1

    .line 146
    move v4, v5

    .line 147
    goto :goto_1

    .line 148
    :cond_6
    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 150
    invoke-static {p2, p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getRuleFromContentValues(Ljava/util/List;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 153
    move-result-object p1

    .line 154
    move p2, v2

    .line 155
    :goto_2
    array-length v3, p1

    .line 156
    if-ge p2, v3, :cond_7

    .line 158
    add-int/lit8 v3, v4, 0x1

    .line 160
    aget-object v5, p1, p2

    .line 162
    aput-object v5, p0, v4

    .line 164
    add-int/lit8 p2, p2, 0x1

    .line 166
    move v4, v3

    .line 167
    goto :goto_2

    .line 168
    :cond_7
    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 170
    invoke-static {v0, p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getRuleFromContentValues(Ljava/util/List;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 173
    move-result-object p1

    .line 174
    move p2, v2

    .line 175
    :goto_3
    array-length v0, p1

    .line 176
    if-ge p2, v0, :cond_8

    .line 178
    add-int/lit8 v0, v4, 0x1

    .line 180
    aget-object v3, p1, p2

    .line 182
    aput-object v3, p0, v4

    .line 184
    add-int/lit8 p2, p2, 0x1

    .line 186
    move v4, v0

    .line 187
    goto :goto_3

    .line 188
    :cond_8
    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 190
    invoke-static {v1, p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getRuleFromContentValues(Ljava/util/List;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 193
    move-result-object p1

    .line 194
    :goto_4
    array-length p2, p1

    .line 195
    if-ge v2, p2, :cond_9

    .line 197
    add-int/lit8 p2, v4, 0x1

    .line 199
    aget-object v0, p1, v2

    .line 201
    aput-object v0, p0, v4

    .line 203
    add-int/lit8 v2, v2, 0x1

    .line 205
    move v4, p2

    .line 206
    goto :goto_4

    .line 207
    :cond_9
    return-object p0
.end method

.method public final handleExemptionListOnPkgEvent(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mInitializingExemptionListLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 6
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_4

    .line 12
    iget-object p4, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallExemptions:Ljava/util/Map;

    .line 14
    check-cast p4, Ljava/util/HashMap;

    .line 16
    invoke-virtual {p4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p4

    .line 20
    check-cast p4, Ljava/util/Map;

    .line 22
    if-nez p4, :cond_0

    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto/16 :goto_1

    .line 29
    :cond_0
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object p4

    .line 33
    check-cast p4, Lcom/android/server/enterprise/firewall/FirewallExemption;

    .line 35
    if-nez p4, :cond_1

    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :cond_1
    iget-boolean v1, p4, Lcom/android/server/enterprise/firewall/FirewallExemption;->mIsApplied:Z

    .line 41
    if-eqz v1, :cond_3

    .line 43
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 46
    move-result v1

    .line 47
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/Firewall;->getFirewallOwner(I)I

    .line 50
    move-result v1

    .line 51
    if-gez v1, :cond_2

    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :cond_2
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    .line 57
    invoke-direct {v2, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 60
    iget-object v1, p4, Lcom/android/server/enterprise/firewall/FirewallExemption;->mExemptionRule:Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 62
    invoke-virtual {v1, p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPackageUid(I)V

    .line 65
    iget-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-virtual {p1, p4, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addOrRemoveExemptRules(Lcom/android/server/enterprise/firewall/FirewallExemption;ZLcom/samsung/android/knox/ContextInfo;)V

    .line 71
    :cond_3
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallExemptions:Ljava/util/Map;

    .line 73
    check-cast p0, Ljava/util/HashMap;

    .line 75
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-result-object p0

    .line 79
    check-cast p0, Ljava/util/Map;

    .line 81
    invoke-interface {p0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    goto :goto_0

    .line 85
    :cond_4
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 87
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_8

    .line 93
    sget-object p1, Lcom/android/server/enterprise/firewall/FirewallDefinitions;->EXEMPT_PACKAGE_LIST:Ljava/util/List;

    .line 95
    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_5

    .line 101
    monitor-exit v0

    .line 102
    return-void

    .line 103
    :cond_5
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/firewall/Firewall;->addAppToExemptList(Ljava/lang/Integer;Ljava/lang/String;)Z

    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_6

    .line 109
    monitor-exit v0

    .line 110
    return-void

    .line 111
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 114
    move-result p1

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->getFirewallOwner(I)I

    .line 118
    move-result p1

    .line 119
    if-gez p1, :cond_7

    .line 121
    monitor-exit v0

    .line 122
    return-void

    .line 123
    :cond_7
    new-instance p3, Lcom/samsung/android/knox/ContextInfo;

    .line 125
    invoke-direct {p3, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 128
    const/4 p1, 0x2

    .line 129
    const/4 p4, 0x0

    .line 130
    invoke-virtual {p0, p3, p1, p4}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 133
    move-result-object p1

    .line 134
    invoke-static {p1}, Lcom/android/server/enterprise/firewall/Firewall;->shouldApplyExemptRules([Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    .line 137
    move-result p1

    .line 138
    if-eqz p1, :cond_8

    .line 140
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 143
    move-result p1

    .line 144
    invoke-virtual {p0, p3, p1}, Lcom/android/server/enterprise/firewall/Firewall;->applyExemptRules(Lcom/samsung/android/knox/ContextInfo;I)V

    .line 147
    :cond_8
    :goto_0
    monitor-exit v0

    .line 148
    return-void

    .line 149
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    throw p0
.end method

.method public final isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final isDomainFilterReportEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 12
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 15
    move-result p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public final isFirewallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 4

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrUserUid(Lcom/samsung/android/knox/ContextInfo;)I

    .line 9
    move-result p1

    .line 10
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 13
    move-result v1

    .line 14
    const-string v2, "adminUid"

    .line 16
    const-string/jumbo v3, "userID"

    .line 19
    invoke-static {p1, v0, v2, v1, v3}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 22
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 24
    const-string p1, "FirewallStatus"

    .line 26
    sget-object v1, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_POLICY_STATUS_COLUMNS:[Ljava/lang/String;

    .line 28
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/util/ArrayList;

    .line 34
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 37
    move-result p0

    .line 38
    xor-int/lit8 p0, p0, 0x1

    .line 40
    return p0
.end method

.method public final listIptablesRules(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 12
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 15
    move-result p1

    .line 16
    const-string v0, "************ FILTER TABLE ************"

    .line 18
    invoke-static {v0}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 21
    move-result-object v1

    .line 22
    const-string/jumbo v2, "filter"

    .line 25
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesRestoreCommand(Ljava/lang/String;)Ljava/util/List;

    .line 28
    move-result-object v3

    .line 29
    const-string v4, "\n"

    .line 31
    invoke-static {v4, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    const/4 v5, 0x4

    .line 36
    invoke-virtual {p0, v5, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommandWithOutput(ILjava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    invoke-static {p1, v3}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v3, "************ NAT TABLE ************"

    .line 49
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    const-string/jumbo v3, "nat"

    .line 55
    invoke-static {v3}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesRestoreCommand(Ljava/lang/String;)Ljava/util/List;

    .line 58
    move-result-object v3

    .line 59
    invoke-static {v4, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {p0, v5, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommandWithOutput(ILjava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    invoke-static {p1, v3}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    const-string v3, "************ MANGLE TABLE ************"

    .line 76
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    const-string/jumbo v3, "mangle"

    .line 82
    invoke-static {v3}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesRestoreCommand(Ljava/lang/String;)Ljava/util/List;

    .line 85
    move-result-object v3

    .line 86
    invoke-static {v4, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {p0, v5, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommandWithOutput(ILjava/lang/String;)Ljava/lang/String;

    .line 93
    move-result-object v3

    .line 94
    invoke-static {p1, v3}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    const-string v3, "************ RAW TABLE ************"

    .line 103
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    const-string/jumbo v3, "raw"

    .line 109
    invoke-static {v3}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesRestoreCommand(Ljava/lang/String;)Ljava/util/List;

    .line 112
    move-result-object v3

    .line 113
    invoke-static {v4, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {p0, v5, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommandWithOutput(ILjava/lang/String;)Ljava/lang/String;

    .line 120
    move-result-object v3

    .line 121
    invoke-static {p1, v3}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    sget-boolean v3, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6FilterSupport:Z

    .line 130
    if-eqz v3, :cond_0

    .line 132
    const-string v3, "=============== IPV6 RULES ==============="

    .line 134
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/IptablesCommandBuilder;->getListIptablesRestoreCommand(Ljava/lang/String;)Ljava/util/List;

    .line 143
    move-result-object v0

    .line 144
    invoke-static {v4, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 148
    const/4 v2, 0x6

    .line 149
    invoke-virtual {p0, v2, v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->runShellCommandWithOutput(ILjava/lang/String;)Ljava/lang/String;

    .line 152
    move-result-object p0

    .line 153
    invoke-static {p1, p0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;

    .line 156
    move-result-object p0

    .line 157
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 163
    move-result p0

    .line 164
    new-array p0, p0, [Ljava/lang/String;

    .line 166
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 169
    move-result-object p0

    .line 170
    check-cast p0, [Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public final notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminAdded(I)V
    .locals 1

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v0, "onAdminAdded(uid = "

    .line 6
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string p1, ")"

    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    const-string p1, "Firewall"

    .line 23
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "onAdminRemoved(uid = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ")"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const-string v1, "Firewall"

    .line 23
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 28
    if-eqz p0, :cond_1

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    const-string v1, "adminRemoved() - adminUid: "

    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    const-string v1, "DomainFilter"

    .line 46
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 52
    move-result p1

    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    .line 65
    check-cast v1, Ljava/util/HashSet;

    .line 67
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    .line 75
    check-cast v1, Ljava/util/HashSet;

    .line 77
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 80
    new-instance v0, Landroid/content/ContentValues;

    .line 82
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object p1

    .line 89
    const-string/jumbo v1, "userId"

    .line 92
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 95
    iget-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 97
    const-string v1, "DomainFilterReportTable"

    .line 99
    invoke-virtual {p1, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->hasAnyRuleInDatabase()Z

    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_1

    .line 108
    const/4 v5, 0x0

    .line 109
    const/4 v6, 0x0

    .line 110
    const/4 v3, 0x5

    .line 111
    const-string v4, ""

    .line 113
    const/4 v7, 0x0

    .line 114
    const/4 v8, 0x0

    .line 115
    move-object v2, p0

    .line 116
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 119
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mServer:Ljava/lang/String;

    .line 121
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 124
    :cond_1
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "onPreAdminRemoval(uid = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ")"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    const-string v2, "Firewall"

    .line 23
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 28
    invoke-direct {v0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 31
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 34
    move-result v2

    .line 35
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/firewall/Firewall;->getFirewallOwner(I)I

    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x0

    .line 40
    if-ne v2, p1, :cond_0

    .line 42
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/firewall/Firewall;->blockOrUnblockAll(IZ)V

    .line 45
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 47
    iget-object v2, v2, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->mFirewallService:Lcom/android/server/enterprise/firewall/Firewall;

    .line 49
    invoke-virtual {v2, v0, v3}, Lcom/android/server/enterprise/firewall/Firewall;->enableFirewall(Lcom/samsung/android/knox/ContextInfo;Z)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 52
    const/16 v4, 0xf

    .line 54
    invoke-virtual {v2, v0, v4}, Lcom/android/server/enterprise/firewall/Firewall;->clearRules(Lcom/samsung/android/knox/ContextInfo;I)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 57
    const/4 v5, 0x0

    .line 58
    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 61
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 63
    if-eqz p0, :cond_1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    const-string/jumbo v2, "onPreAdminRemoval(adminUid = "

    .line 70
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    const-string v1, "DomainFilter"

    .line 89
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 95
    move-result v0

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    .line 99
    move-result v1

    .line 100
    const/4 v2, 0x1

    .line 101
    if-ne v1, v2, :cond_1

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 106
    move-result-object v8

    .line 107
    const/4 v11, 0x0

    .line 108
    const/4 v12, 0x0

    .line 109
    const/4 v7, 0x2

    .line 110
    const/4 v9, 0x0

    .line 111
    const/4 v10, 0x0

    .line 112
    move-object v6, p0

    .line 113
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->releaseNetworks(I)V

    .line 119
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 121
    invoke-direct {v1, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 124
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_1

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    move-result-object p1

    .line 134
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 136
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->flushDomainChains(Ljava/lang/Integer;Z)Z

    .line 139
    :cond_1
    return-void
.end method

.method public final populateDomainFilterBrokenRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterBrokenRules:Ljava/util/Map;

    .line 9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v0

    .line 13
    check-cast p1, Ljava/util/HashMap;

    .line 15
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/util/List;

    .line 21
    if-nez p1, :cond_0

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    .line 25
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    iget-object p2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainFilterBrokenRules:Ljava/util/Map;

    .line 36
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object p3

    .line 40
    check-cast p2, Ljava/util/HashMap;

    .line 42
    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :goto_1
    monitor-exit p0

    .line 48
    throw p1
.end method

.method public final populateFirewallExemptionList(Ljava/lang/Integer;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallExemptions:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Map;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 15
    const-string/jumbo v1, "netd"

    .line 18
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 24
    new-instance v2, Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 26
    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 28
    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 30
    invoke-direct {v2, v3, v4}, Lcom/samsung/android/knox/net/firewall/FirewallRule;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)V

    .line 33
    sget-object v3, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->OUTPUT:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    .line 35
    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setDirection(Lcom/samsung/android/knox/net/firewall/Firewall$Direction;)V

    .line 38
    new-instance v3, Lcom/samsung/android/knox/AppIdentity;

    .line 40
    const/4 v4, 0x0

    .line 41
    invoke-direct {v3, v1, v4}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setApplication(Lcom/samsung/android/knox/AppIdentity;)V

    .line 47
    const/16 v3, 0x41b

    .line 49
    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPackageUid(I)V

    .line 52
    new-instance v3, Lcom/android/server/enterprise/firewall/FirewallExemption;

    .line 54
    invoke-direct {v3, v2}, Lcom/android/server/enterprise/firewall/FirewallExemption;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallRule;)V

    .line 57
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallDefinitions;->EXEMPT_PACKAGE_LIST:Ljava/util/List;

    .line 62
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object v0

    .line 66
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_1

    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Ljava/lang/String;

    .line 78
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/firewall/Firewall;->addAppToExemptList(Ljava/lang/Integer;Ljava/lang/String;)Z

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    return-void
.end method

.method public final removeDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;I)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->reassembleDomainFilterBrokenRules(I)Ljava/util/List;

    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/DomainFilter;->removeDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 15
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-object p1

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0

    .line 20
    throw p1
.end method

.method public final removeExemptRules(Lcom/samsung/android/knox/ContextInfo;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallExemptions:Ljava/util/Map;

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p2

    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 9
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Ljava/util/Map;

    .line 15
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 18
    move-result-object p2

    .line 19
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p2

    .line 23
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 29
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/android/server/enterprise/firewall/FirewallExemption;

    .line 35
    iget-boolean v1, v0, Lcom/android/server/enterprise/firewall/FirewallExemption;->mIsApplied:Z

    .line 37
    if-nez v1, :cond_0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-virtual {v1, v0, v2, p1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addOrRemoveExemptRules(Lcom/android/server/enterprise/firewall/FirewallExemption;ZLcom/samsung/android/knox/ContextInfo;)V

    .line 46
    iput-boolean v2, v0, Lcom/android/server/enterprise/firewall/FirewallExemption;->mIsApplied:Z

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-void
.end method

.method public final declared-synchronized removeRule(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "Firewall"

    .line 4
    const-string/jumbo v1, "removeRule()"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 12
    invoke-static {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRuleValidator;->validateFirewallRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 19
    move-result-object v1

    .line 20
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 22
    if-ne v1, v2, :cond_0

    .line 24
    const-string p1, "Firewall"

    .line 26
    const-string/jumbo p2, "removeRule() - Invalid Firewall Rule"

    .line 29
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    .line 33
    return-object v0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 50
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 53
    move-result v0

    .line 54
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    .line 56
    const-string v3, "android"

    .line 58
    const/4 v4, 0x0

    .line 59
    invoke-static {v1, v3, v4, v0}, Lcom/android/server/enterprise/utils/Utils;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    .line 62
    move-result-object v0

    .line 63
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 66
    move-result-wide v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :try_start_2
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    .line 82
    move-result-object v3

    .line 83
    invoke-static {v4, v0, v1, v3}, Lcom/android/server/enterprise/utils/Utils;->comparePackageSignature(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 86
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    :try_start_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    if-nez v0, :cond_1

    .line 92
    const-string p1, "Firewall"

    .line 94
    const-string/jumbo p2, "removeRule() - Signature mismatch"

    .line 97
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 102
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 104
    const-string v0, "Given signature does not match with the application."

    .line 106
    invoke-direct {p1, v2, p2, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    monitor-exit p0

    .line 110
    return-object p1

    .line 111
    :catchall_1
    move-exception p1

    .line 112
    :try_start_4
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    throw p1

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 118
    invoke-static {p2, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->isRuleEnabled(Lcom/samsung/android/knox/net/firewall/FirewallRule;ILcom/android/server/enterprise/storage/EdmStorageProvider;)Z

    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_2

    .line 124
    const-string p1, "Firewall"

    .line 126
    const-string/jumbo p2, "removeRule() - Failed to remove rule. The rule must be disabled."

    .line 129
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance p1, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 134
    sget-object p2, Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 136
    const-string v0, "Disable the rule before remove it."

    .line 138
    invoke-direct {p1, v2, p2, v0}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 141
    monitor-exit p0

    .line 142
    return-object p1

    .line 143
    :cond_2
    :try_start_5
    invoke-static {p2, p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getContentValuesFromRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;I)Landroid/content/ContentValues;

    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->deleteFirewallRuleFromDb(Landroid/content/ContentValues;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 150
    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 151
    monitor-exit p0

    .line 152
    return-object p1

    .line 153
    :goto_0
    monitor-exit p0

    .line 154
    throw p1
.end method

.method public final declared-synchronized removeRules(Lcom/samsung/android/knox/ContextInfo;[Lcom/samsung/android/knox/net/firewall/FirewallRule;)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;
    .locals 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/Firewall;->enforceFirewallPermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 5
    move-result-object p1

    .line 6
    const-string v0, "Firewall"

    .line 8
    const-string/jumbo v1, "removeRules()"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const/4 v6, 0x0

    .line 15
    if-nez p2, :cond_0

    .line 17
    const-string p1, "Firewall"

    .line 19
    const-string/jumbo p2, "removeRules() - No rule specified"

    .line 22
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit p0

    .line 26
    return-object v6

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto/16 :goto_4

    .line 30
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v5, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    move-object v1, p2

    .line 36
    move-object v3, p1

    .line 37
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->enableOrDisableIptablesRule([Lcom/samsung/android/knox/net/firewall/FirewallRule;ZLcom/samsung/android/knox/ContextInfo;ZZ)[Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 40
    move-result-object v0

    .line 41
    array-length v1, p2

    .line 42
    new-array v1, v1, [Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 44
    const/4 v2, 0x0

    .line 45
    move v3, v2

    .line 46
    :goto_0
    array-length v4, p2

    .line 47
    if-ge v3, v4, :cond_4

    .line 49
    aget-object v4, v0, v3

    .line 51
    if-eqz v4, :cond_1

    .line 53
    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 56
    move-result-object v4

    .line 57
    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 59
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_1

    .line 65
    aget-object v4, p2, v3

    .line 67
    sget-object v5, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 69
    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setStatus(Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;)V

    .line 72
    :cond_1
    aget-object v4, p2, v3

    .line 74
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/firewall/Firewall;->removeRule(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/firewall/FirewallRule;)Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getResult()Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 81
    move-result-object v5

    .line 82
    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->SUCCESS:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 84
    invoke-virtual {v5, v7}, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v5

    .line 88
    if-nez v5, :cond_3

    .line 90
    new-instance v5, Lcom/samsung/android/knox/net/firewall/FirewallResponse;

    .line 92
    sget-object v7, Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;->FAILED:Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;

    .line 94
    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getErrorCode()Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;

    .line 97
    move-result-object v8

    .line 98
    new-instance v9, Ljava/lang/StringBuilder;

    .line 100
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    aget-object v10, v0, v3

    .line 105
    if-nez v10, :cond_2

    .line 107
    const-string v10, ""

    .line 109
    goto :goto_1

    .line 110
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    aget-object v11, v0, v3

    .line 117
    invoke-virtual {v11}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    .line 120
    move-result-object v11

    .line 121
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v11, "/"

    .line 126
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object v10

    .line 133
    :goto_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;->getMessage()Ljava/lang/String;

    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v4

    .line 147
    invoke-direct {v5, v7, v8, v4}, Lcom/samsung/android/knox/net/firewall/FirewallResponse;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallResponse$Result;Lcom/samsung/android/knox/net/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    .line 150
    aput-object v5, v1, v3

    .line 152
    goto :goto_2

    .line 153
    :cond_3
    aput-object v4, v1, v3

    .line 155
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 157
    goto :goto_0

    .line 158
    :cond_4
    array-length v0, p2

    .line 159
    move v3, v2

    .line 160
    :goto_3
    if-ge v3, v0, :cond_6

    .line 162
    aget-object v4, p2, v3

    .line 164
    invoke-static {v4}, Lcom/android/server/enterprise/firewall/Firewall;->shouldApplyIcmpAllowRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    .line 167
    move-result v4

    .line 168
    if-eqz v4, :cond_5

    .line 170
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    .line 172
    invoke-virtual {v4, v2}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->addOrRemoveIcmpAllowRule(Z)V

    .line 175
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 177
    goto :goto_3

    .line 178
    :cond_6
    const/4 p2, 0x2

    .line 179
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/enterprise/firewall/Firewall;->getRules(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 182
    move-result-object p2

    .line 183
    invoke-static {p2}, Lcom/android/server/enterprise/firewall/Firewall;->shouldApplyExemptRules([Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    .line 186
    move-result p2

    .line 187
    if-nez p2, :cond_7

    .line 189
    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 191
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 194
    move-result p2

    .line 195
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/Firewall;->removeExemptRules(Lcom/samsung/android/knox/ContextInfo;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    :cond_7
    monitor-exit p0

    .line 199
    return-object v1

    .line 200
    :goto_4
    monitor-exit p0

    .line 201
    throw p1
.end method

.method public final shouldBlockDownload(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    iget-object v0, v1, Lcom/android/server/enterprise/firewall/Firewall;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 14
    move-result v3

    .line 15
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_23

    .line 21
    array-length v3, v0

    .line 22
    if-lez v3, :cond_23

    .line 24
    const/4 v3, 0x0

    .line 25
    move v4, v3

    .line 26
    :goto_0
    array-length v5, v0

    .line 27
    if-ge v4, v5, :cond_23

    .line 29
    aget-object v5, v0, v4

    .line 31
    const-string/jumbo v6, "com.android.providers.downloads.ui"

    .line 34
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_1

    .line 40
    aget-object v5, v0, v4

    .line 42
    const-string/jumbo v6, "com.android.providers.downloads"

    .line 45
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_0

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    :goto_1
    const-string v4, "Firewall"

    .line 57
    if-nez v2, :cond_2

    .line 59
    const-string/jumbo v0, "shouldBlockDownload() false - package is null"

    .line 62
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return v3

    .line 66
    :cond_2
    :try_start_0
    new-instance v5, Ljava/net/URL;

    .line 68
    move-object/from16 v0, p2

    .line 70
    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    invoke-virtual {v5}, Ljava/net/URL;->getPort()I

    .line 76
    move-result v0

    .line 77
    const/4 v6, -0x1

    .line 78
    if-eq v0, v6, :cond_3

    .line 80
    invoke-virtual {v5}, Ljava/net/URL;->getPort()I

    .line 83
    move-result v0

    .line 84
    :goto_2
    move v7, v0

    .line 85
    goto :goto_3

    .line 86
    :cond_3
    invoke-virtual {v5}, Ljava/net/URL;->getDefaultPort()I

    .line 89
    move-result v0

    .line 90
    goto :goto_2

    .line 91
    :goto_3
    iget-object v0, v1, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 93
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 96
    move-result v8

    .line 97
    invoke-virtual {v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    .line 100
    move-result-object v0

    .line 101
    const/4 v8, 0x1

    .line 102
    new-array v9, v8, [Ljava/lang/String;

    .line 104
    const-string v10, "*"

    .line 106
    aput-object v10, v9, v3

    .line 108
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 111
    move-result-object v11

    .line 112
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_22

    .line 118
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Ljava/lang/Integer;

    .line 124
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 127
    move-result v12

    .line 128
    const/16 v13, 0x3e8

    .line 130
    if-ne v12, v13, :cond_4

    .line 132
    goto/16 :goto_b

    .line 134
    :cond_4
    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 137
    move-result-object v13

    .line 138
    new-instance v14, Lcom/samsung/android/knox/ContextInfo;

    .line 140
    invoke-direct {v14, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 143
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 146
    move-result-wide v15

    .line 147
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    .line 149
    filled-new-array/range {p1 .. p1}, [Ljava/lang/String;

    .line 152
    move-result-object v17

    .line 153
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 156
    move-result-object v8

    .line 157
    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 160
    invoke-virtual {v1, v14, v3, v6}, Lcom/android/server/enterprise/firewall/Firewall;->getDomainFilterRules(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)Ljava/util/List;

    .line 163
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 167
    sget-object v8, Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;->PASSED_NORULE:Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;

    .line 169
    sget-object v14, Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;->PASSED_BY_WHITELIST_RULE:Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;

    .line 171
    sget-object v15, Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;->BLOCKED_BY_BLACKLIST_RULE:Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;

    .line 173
    if-nez v3, :cond_6

    .line 175
    :cond_5
    move-object v3, v8

    .line 176
    goto/16 :goto_a

    .line 178
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 181
    move-result-object v3

    .line 182
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    move-result v16

    .line 186
    if-eqz v16, :cond_5

    .line 188
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    move-result-object v16

    .line 192
    check-cast v16, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;

    .line 194
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 197
    move-result-object v17

    .line 198
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 201
    move-result-object v6

    .line 202
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    move-result v6

    .line 206
    if-nez v6, :cond_8

    .line 208
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    .line 211
    move-result-object v6

    .line 212
    invoke-virtual {v6}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    .line 215
    move-result-object v6

    .line 216
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    move-result v6

    .line 220
    if-eqz v6, :cond_7

    .line 222
    goto :goto_6

    .line 223
    :cond_7
    move-object/from16 p3, v3

    .line 225
    goto :goto_9

    .line 226
    :cond_8
    :goto_6
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    .line 229
    move-result-object v6

    .line 230
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 233
    move-result-object v6

    .line 234
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 237
    move-result v17

    .line 238
    move-object/from16 p3, v3

    .line 240
    const-string v3, ".*"

    .line 242
    if-eqz v17, :cond_a

    .line 244
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 247
    move-result-object v17

    .line 248
    move-object/from16 v18, v6

    .line 250
    move-object/from16 v6, v17

    .line 252
    check-cast v6, Ljava/lang/String;

    .line 254
    invoke-virtual {v6, v10, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 257
    move-result-object v3

    .line 258
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 261
    move-result-object v3

    .line 262
    invoke-virtual {v3, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    .line 269
    move-result v3

    .line 270
    if-eqz v3, :cond_9

    .line 272
    move-object v3, v14

    .line 273
    goto :goto_a

    .line 274
    :cond_9
    move-object/from16 v3, p3

    .line 276
    move-object/from16 v6, v18

    .line 278
    goto :goto_7

    .line 279
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/knox/net/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    .line 282
    move-result-object v6

    .line 283
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 286
    move-result-object v6

    .line 287
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 290
    move-result v16

    .line 291
    if-eqz v16, :cond_c

    .line 293
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 296
    move-result-object v16

    .line 297
    move-object/from16 v17, v6

    .line 299
    move-object/from16 v6, v16

    .line 301
    check-cast v6, Ljava/lang/String;

    .line 303
    invoke-virtual {v6, v10, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 306
    move-result-object v6

    .line 307
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 310
    move-result-object v6

    .line 311
    invoke-virtual {v6, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 314
    move-result-object v6

    .line 315
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    .line 318
    move-result v6

    .line 319
    if-eqz v6, :cond_b

    .line 321
    move-object v3, v15

    .line 322
    goto :goto_a

    .line 323
    :cond_b
    move-object/from16 v6, v17

    .line 325
    goto :goto_8

    .line 326
    :cond_c
    :goto_9
    move-object/from16 v3, p3

    .line 328
    const/4 v6, -0x1

    .line 329
    goto/16 :goto_5

    .line 331
    :goto_a
    invoke-virtual {v3, v15}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 334
    move-result v6

    .line 335
    if-eqz v6, :cond_d

    .line 337
    const/4 v6, 0x1

    .line 338
    return v6

    .line 339
    :cond_d
    iget-object v6, v1, Lcom/android/server/enterprise/firewall/Firewall;->mDomainFilter:Lcom/android/server/enterprise/firewall/DomainFilter;

    .line 341
    new-instance v13, Lcom/samsung/android/knox/ContextInfo;

    .line 343
    invoke-direct {v13, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 346
    invoke-virtual {v6, v13}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterOnIptablesEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 349
    move-result v6

    .line 350
    if-eqz v6, :cond_e

    .line 352
    invoke-virtual {v3, v14}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 355
    move-result v3

    .line 356
    if-eqz v3, :cond_e

    .line 358
    const/4 v3, 0x0

    .line 359
    return v3

    .line 360
    :cond_e
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    .line 362
    invoke-direct {v3, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 365
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/firewall/Firewall;->isFirewallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 368
    move-result v3

    .line 369
    if-nez v3, :cond_f

    .line 371
    goto :goto_b

    .line 372
    :cond_f
    new-instance v3, Landroid/content/ContentValues;

    .line 374
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 377
    const-string v6, "adminUid"

    .line 379
    invoke-virtual {v3, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 382
    const-string/jumbo v0, "packageName"

    .line 385
    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->ENABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    .line 390
    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->toString()Ljava/lang/String;

    .line 393
    move-result-object v0

    .line 394
    const-string/jumbo v6, "status"

    .line 397
    invoke-virtual {v3, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, v1, Lcom/android/server/enterprise/firewall/Firewall;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 402
    const-string v6, "FirewallRule"

    .line 404
    sget-object v12, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_RULE_COLUMNS:[Ljava/lang/String;

    .line 406
    invoke-virtual {v0, v6, v12, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 409
    move-result-object v0

    .line 410
    move-object v3, v0

    .line 411
    check-cast v3, Ljava/util/ArrayList;

    .line 413
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 416
    move-result v0

    .line 417
    if-eqz v0, :cond_10

    .line 419
    :goto_b
    const/4 v3, 0x0

    .line 420
    const/4 v6, -0x1

    .line 421
    const/4 v8, 0x1

    .line 422
    goto/16 :goto_4

    .line 424
    :cond_10
    array-length v0, v9

    .line 425
    if-lez v0, :cond_12

    .line 427
    const/4 v6, 0x0

    .line 428
    aget-object v0, v9, v6

    .line 430
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 433
    move-result v0

    .line 434
    if-eqz v0, :cond_12

    .line 436
    new-instance v6, Ljava/util/ArrayList;

    .line 438
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 441
    :try_start_2
    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    .line 444
    move-result-object v0

    .line 445
    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 448
    move-result-object v0

    .line 449
    array-length v9, v0

    .line 450
    const/4 v12, 0x0

    .line 451
    :goto_c
    if-ge v12, v9, :cond_11

    .line 453
    aget-object v13, v0, v12

    .line 455
    invoke-virtual {v13}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 458
    move-result-object v13

    .line 459
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0

    .line 462
    add-int/lit8 v12, v12, 0x1

    .line 464
    goto :goto_c

    .line 465
    :catch_0
    move-exception v0

    .line 466
    const-string/jumbo v9, "shouldBlockDownload() - UnknownHostException was thrown."

    .line 469
    invoke-static {v4, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 472
    :cond_11
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 475
    move-result v0

    .line 476
    new-array v0, v0, [Ljava/lang/String;

    .line 478
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 481
    move-result-object v0

    .line 482
    check-cast v0, [Ljava/lang/String;

    .line 484
    move-object v9, v0

    .line 485
    :cond_12
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 488
    move-result-object v0

    .line 489
    array-length v6, v9

    .line 490
    const/4 v12, 0x0

    .line 491
    :goto_d
    if-ge v12, v6, :cond_20

    .line 493
    aget-object v13, v9, v12

    .line 495
    const-string v1, ":"

    .line 497
    invoke-virtual {v13, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 500
    move-result v1

    .line 501
    if-eqz v1, :cond_13

    .line 503
    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 505
    goto :goto_e

    .line 506
    :cond_13
    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 508
    :goto_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 511
    move-result-object v16

    .line 512
    :goto_f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 515
    move-result v17

    .line 516
    const-string/jumbo v2, "ruleType"

    .line 519
    if-eqz v17, :cond_19

    .line 521
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 524
    move-result-object v17

    .line 525
    move-object/from16 v18, v5

    .line 527
    move-object/from16 v5, v17

    .line 529
    check-cast v5, Landroid/content/ContentValues;

    .line 531
    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 534
    move-result-object v2

    .line 535
    move/from16 v17, v6

    .line 537
    sget-object v6, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 539
    move/from16 v19, v7

    .line 541
    invoke-virtual {v6}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    .line 544
    move-result-object v7

    .line 545
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 548
    move-result v2

    .line 549
    if-eqz v2, :cond_14

    .line 551
    const/4 v2, 0x1

    .line 552
    new-array v7, v2, [Landroid/content/ContentValues;

    .line 554
    const/4 v2, 0x0

    .line 555
    aput-object v5, v7, v2

    .line 557
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 560
    move-result-object v5

    .line 561
    invoke-static {v5, v6}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getRuleFromContentValues(Ljava/util/List;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 564
    move-result-object v5

    .line 565
    aget-object v5, v5, v2

    .line 567
    invoke-virtual {v5}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 570
    move-result-object v2

    .line 571
    if-eq v2, v1, :cond_15

    .line 573
    :cond_14
    move-object/from16 v2, p1

    .line 575
    move/from16 v6, v17

    .line 577
    move-object/from16 v5, v18

    .line 579
    move/from16 v7, v19

    .line 581
    goto :goto_f

    .line 582
    :cond_15
    invoke-virtual {v5}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 585
    move-result-object v2

    .line 586
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 589
    move-result v2

    .line 590
    if-nez v2, :cond_16

    .line 592
    invoke-virtual {v5}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 595
    move-result-object v2

    .line 596
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 599
    move-result v2

    .line 600
    if-nez v2, :cond_16

    .line 602
    invoke-static {v13, v5}, Lcom/android/server/enterprise/firewall/Firewall;->matchIpIntoIpRangeRule(Ljava/lang/String;Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    .line 605
    move-result v2

    .line 606
    if-eqz v2, :cond_14

    .line 608
    :cond_16
    invoke-virtual {v5}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    .line 611
    move-result-object v2

    .line 612
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 615
    move-result v2

    .line 616
    if-nez v2, :cond_17

    .line 618
    invoke-virtual {v5}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    .line 621
    move-result-object v2

    .line 622
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 625
    move-result v2

    .line 626
    if-nez v2, :cond_17

    .line 628
    invoke-static {v0, v5}, Lcom/android/server/enterprise/firewall/Firewall;->matchPortIntoPortRangeRule(Ljava/lang/String;Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    .line 631
    move-result v2

    .line 632
    if-eqz v2, :cond_14

    .line 634
    :cond_17
    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 636
    invoke-virtual {v5}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 639
    move-result-object v6

    .line 640
    invoke-virtual {v2, v6}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    .line 643
    move-result v2

    .line 644
    if-nez v2, :cond_18

    .line 646
    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->TCP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 648
    invoke-virtual {v5}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 651
    move-result-object v5

    .line 652
    invoke-virtual {v2, v5}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    .line 655
    move-result v2

    .line 656
    if-eqz v2, :cond_14

    .line 658
    :cond_18
    move-object v8, v14

    .line 659
    goto/16 :goto_11

    .line 661
    :cond_19
    move-object/from16 v18, v5

    .line 663
    move/from16 v17, v6

    .line 665
    move/from16 v19, v7

    .line 667
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 670
    move-result-object v5

    .line 671
    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 674
    move-result v6

    .line 675
    if-eqz v6, :cond_1f

    .line 677
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 680
    move-result-object v6

    .line 681
    check-cast v6, Landroid/content/ContentValues;

    .line 683
    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 686
    move-result-object v7

    .line 687
    move-object/from16 p3, v2

    .line 689
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 691
    move-object/from16 v16, v3

    .line 693
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    .line 696
    move-result-object v3

    .line 697
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 700
    move-result v3

    .line 701
    if-eqz v3, :cond_1a

    .line 703
    const/4 v3, 0x1

    .line 704
    new-array v7, v3, [Landroid/content/ContentValues;

    .line 706
    const/4 v3, 0x0

    .line 707
    aput-object v6, v7, v3

    .line 709
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 712
    move-result-object v6

    .line 713
    invoke-static {v6, v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getRuleFromContentValues(Ljava/util/List;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 716
    move-result-object v2

    .line 717
    aget-object v2, v2, v3

    .line 719
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    .line 722
    move-result-object v3

    .line 723
    if-eq v3, v1, :cond_1b

    .line 725
    :cond_1a
    move-object/from16 v2, p3

    .line 727
    move-object/from16 v3, v16

    .line 729
    goto :goto_10

    .line 730
    :cond_1b
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 733
    move-result-object v3

    .line 734
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 737
    move-result v3

    .line 738
    if-nez v3, :cond_1c

    .line 740
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    .line 743
    move-result-object v3

    .line 744
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 747
    move-result v3

    .line 748
    if-nez v3, :cond_1c

    .line 750
    invoke-static {v13, v2}, Lcom/android/server/enterprise/firewall/Firewall;->matchIpIntoIpRangeRule(Ljava/lang/String;Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    .line 753
    move-result v3

    .line 754
    if-eqz v3, :cond_1a

    .line 756
    :cond_1c
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    .line 759
    move-result-object v3

    .line 760
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 763
    move-result v3

    .line 764
    if-nez v3, :cond_1d

    .line 766
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    .line 769
    move-result-object v3

    .line 770
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 773
    move-result v3

    .line 774
    if-nez v3, :cond_1d

    .line 776
    invoke-static {v0, v2}, Lcom/android/server/enterprise/firewall/Firewall;->matchPortIntoPortRangeRule(Ljava/lang/String;Lcom/samsung/android/knox/net/firewall/FirewallRule;)Z

    .line 779
    move-result v3

    .line 780
    if-eqz v3, :cond_1a

    .line 782
    :cond_1d
    sget-object v3, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 784
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 787
    move-result-object v6

    .line 788
    invoke-virtual {v3, v6}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    .line 791
    move-result v3

    .line 792
    if-nez v3, :cond_1e

    .line 794
    sget-object v3, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->TCP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 796
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    .line 799
    move-result-object v2

    .line 800
    invoke-virtual {v3, v2}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->equals(Ljava/lang/Object;)Z

    .line 803
    move-result v2

    .line 804
    if-eqz v2, :cond_1a

    .line 806
    :cond_1e
    move-object v8, v15

    .line 807
    goto :goto_11

    .line 808
    :cond_1f
    move-object/from16 v16, v3

    .line 810
    add-int/lit8 v12, v12, 0x1

    .line 812
    move-object/from16 v1, p0

    .line 814
    move-object/from16 v2, p1

    .line 816
    move/from16 v6, v17

    .line 818
    move-object/from16 v5, v18

    .line 820
    move/from16 v7, v19

    .line 822
    goto/16 :goto_d

    .line 824
    :cond_20
    move-object/from16 v18, v5

    .line 826
    move/from16 v19, v7

    .line 828
    :goto_11
    invoke-virtual {v8, v15}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    .line 831
    move-result v0

    .line 832
    if-eqz v0, :cond_21

    .line 834
    const/4 v1, 0x1

    .line 835
    return v1

    .line 836
    :cond_21
    move-object/from16 v1, p0

    .line 838
    move-object/from16 v2, p1

    .line 840
    move-object/from16 v5, v18

    .line 842
    move/from16 v7, v19

    .line 844
    goto/16 :goto_b

    .line 846
    :catchall_0
    move-exception v0

    .line 847
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 850
    throw v0

    .line 851
    :cond_22
    move v1, v3

    .line 852
    return v1

    .line 853
    :catch_1
    move-exception v0

    .line 854
    move v1, v3

    .line 855
    const-string/jumbo v2, "shouldBlockDownload() false - MalformedURLException was thrown."

    .line 858
    invoke-static {v4, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 861
    return v1

    .line 862
    :cond_23
    new-instance v0, Ljava/lang/SecurityException;

    .line 864
    const-string v1, "Caller is not allowed to call this method"

    .line 866
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 869
    throw v0
.end method

.method public final systemReady()V
    .locals 1

    .line 1
    const-string p0, "Firewall"

    .line 3
    const-string/jumbo v0, "systemReady()"

    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    return-void
.end method
