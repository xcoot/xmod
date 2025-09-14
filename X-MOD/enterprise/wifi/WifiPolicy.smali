.class public final Lcom/android/server/enterprise/wifi/WifiPolicy;
.super Lcom/samsung/android/knox/net/wifi/IWifiPolicy$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final ACCEPTABLE_SECURITY_LEVELS:[Ljava/lang/String;

.field public static final EAP_STRINGS:[Ljava/lang/String;

.field public static final EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

.field public static final HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

.field public static final PHASE2_STRINGS:[Ljava/lang/String;

.field public static final SECURITY_LEVELS:[Ljava/lang/String;


# instance fields
.field public mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field public final mBroadcastReceiver:Lcom/android/server/enterprise/wifi/WifiPolicy$1;

.field public final mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public volatile mIsAPSettingFromAdmin:Z

.field public final mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 1
    const-string v7, "WFA-UNAUTH-TLS"

    .line 3
    const-string v8, "WAPI_CERT"

    .line 5
    const-string v0, "PEAP"

    .line 7
    const-string v1, "TLS"

    .line 9
    const-string v2, "TTLS"

    .line 11
    const-string v3, "PWD"

    .line 13
    const-string v4, "SIM"

    .line 15
    const-string v5, "AKA"

    .line 17
    const-string v6, "AKA\'"

    .line 19
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->EAP_STRINGS:[Ljava/lang/String;

    .line 25
    const-string v7, "AKA"

    .line 27
    const-string v8, "AKA\'"

    .line 29
    const-string v1, "NULL"

    .line 31
    const-string v2, "PAP"

    .line 33
    const-string v3, "MSCHAP"

    .line 35
    const-string v4, "MSCHAPV2"

    .line 37
    const-string v5, "GTC"

    .line 39
    const-string v6, "SIM"

    .line 41
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->PHASE2_STRINGS:[Ljava/lang/String;

    .line 47
    const-string v31, ""

    .line 49
    const-string v32, "SAE"

    .line 51
    const-string v1, "NONE"

    .line 53
    const-string v2, "WEP"

    .line 55
    const-string v3, "PSK"

    .line 57
    const-string v4, ""

    .line 59
    const-string v5, ""

    .line 61
    const-string v6, "EAP-PEAP"

    .line 63
    const-string v7, "EAP-TTLS"

    .line 65
    const-string v8, "EAP-TLS"

    .line 67
    const-string v9, ""

    .line 69
    const-string v10, ""

    .line 71
    const-string v11, ""

    .line 73
    const-string v12, ""

    .line 75
    const-string v13, ""

    .line 77
    const-string v14, ""

    .line 79
    const-string v15, ""

    .line 81
    const-string v16, ""

    .line 83
    const-string v17, ""

    .line 85
    const-string v18, ""

    .line 87
    const-string v19, ""

    .line 89
    const-string v20, "EAP-PWD"

    .line 91
    const-string v21, ""

    .line 93
    const-string v22, ""

    .line 95
    const-string v23, "EAP-SIM"

    .line 97
    const-string v24, ""

    .line 99
    const-string v25, ""

    .line 101
    const-string v26, "EAP-AKA"

    .line 103
    const-string v27, ""

    .line 105
    const-string v28, ""

    .line 107
    const-string v29, "EAP-AKA\'"

    .line 109
    const-string v30, ""

    .line 111
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->ACCEPTABLE_SECURITY_LEVELS:[Ljava/lang/String;

    .line 117
    const-string v31, "EAP-AKA\'-CCKM"

    .line 119
    const-string v32, "SAE"

    .line 121
    const-string v1, "NONE"

    .line 123
    const-string v2, "WEP"

    .line 125
    const-string v3, "PSK"

    .line 127
    const-string v4, "EAP-LEAP"

    .line 129
    const-string v5, "EAP-FAST"

    .line 131
    const-string v6, "EAP-PEAP"

    .line 133
    const-string v7, "EAP-TTLS"

    .line 135
    const-string v8, "EAP-TLS"

    .line 137
    const-string v9, "FT-PSK"

    .line 139
    const-string v10, "EAP-PEAP-FT"

    .line 141
    const-string v11, "EAP-PEAP-CCKM"

    .line 143
    const-string v12, "EAP-TTLS-FT"

    .line 145
    const-string v13, "EAP-TTLS-CCKM"

    .line 147
    const-string v14, "EAP-TLS-FT"

    .line 149
    const-string v15, "EAP-TLS-CCKM"

    .line 151
    const-string v16, "EAP-LEAP-FT"

    .line 153
    const-string v17, "EAP-LEAP-CCKM"

    .line 155
    const-string v18, "EAP-FAST-FT"

    .line 157
    const-string v19, "EAP-FAST-CCKM"

    .line 159
    const-string v20, "EAP-PWD"

    .line 161
    const-string v21, "EAP-PWD-FT"

    .line 163
    const-string v22, "EAP-PWD-CCKM"

    .line 165
    const-string v23, "EAP-SIM"

    .line 167
    const-string v24, "EAP-SIM-FT"

    .line 169
    const-string v25, "EAP-SIM-CCKM"

    .line 171
    const-string v26, "EAP-AKA"

    .line 173
    const-string v27, "EAP-AKA-FT"

    .line 175
    const-string v28, "EAP-AKA-CCKM"

    .line 177
    const-string v29, "EAP-AKA\'"

    .line 179
    const-string v30, "EAP-AKA\'-FT"

    .line 181
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    .line 184
    move-result-object v0

    .line 185
    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->SECURITY_LEVELS:[Ljava/lang/String;

    .line 187
    const-string v0, "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

    .line 189
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 192
    move-result-object v0

    .line 193
    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 195
    const-string v0, "^$|^[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*(,[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*(\\.[a-zA-Z0-9*]+(\\-[a-zA-Z0-9*]+)*)*)*$"

    .line 197
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 200
    move-result-object v0

    .line 201
    sput-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy$Stub;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 7
    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mIsAPSettingFromAdmin:Z

    .line 12
    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 14
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    const/4 v2, 0x4

    .line 17
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 20
    iput-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 24
    new-instance v0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;

    .line 26
    invoke-direct {v0, p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$1;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy;)V

    .line 29
    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 34
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 36
    invoke-direct {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 41
    const-string v1, "application_policy"

    .line 43
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 49
    iput-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 51
    new-instance v1, Landroid/content/IntentFilter;

    .line 53
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 56
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 58
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v2, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 63
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 69
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v2, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 74
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const/4 v2, 0x2

    .line 78
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 81
    invoke-static {p1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 87
    const-string/jumbo v0, "user"

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Landroid/os/UserManager;

    .line 96
    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mUserManager:Landroid/os/UserManager;

    .line 98
    const-class p1, Lcom/android/server/pm/UserManagerInternal;

    .line 100
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Lcom/android/server/pm/UserManagerInternal;

    .line 106
    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 108
    return-void
.end method

.method public static computeprefixLength(Ljava/net/InetAddress;)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v2, v0, :cond_2

    .line 11
    aget-byte v4, p0, v2

    .line 13
    move v5, v1

    .line 14
    :goto_1
    const/16 v6, 0x8

    .line 16
    if-ge v5, v6, :cond_1

    .line 18
    const/4 v6, 0x1

    .line 19
    shl-int/2addr v6, v5

    .line 20
    and-int/2addr v6, v4

    .line 21
    if-eqz v6, :cond_0

    .line 23
    add-int/lit8 v3, v3, 0x1

    .line 25
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    return v3
.end method

.method public static convertArrayToString([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    if-eqz p0, :cond_2

    .line 3
    array-length v0, p0

    .line 4
    if-nez v0, :cond_0

    .line 6
    goto :goto_1

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 12
    array-length v1, p0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_1

    .line 16
    aget-object v3, p0, v2

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v3, ","

    .line 28
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 44
    move-result p0

    .line 45
    add-int/lit8 p0, p0, -0x1

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_2
    :goto_1
    const-string p0, ""

    .line 57
    return-object p0
.end method

.method public static convertStringToArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, ","

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 18
    new-array p0, p0, [Ljava/lang/String;

    .line 20
    return-object p0
.end method

.method public static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/16 v2, 0x22

    .line 12
    if-le v0, v1, :cond_1

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 18
    move-result v3

    .line 19
    if-ne v3, v2, :cond_1

    .line 21
    sub-int/2addr v0, v1

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 25
    move-result v0

    .line 26
    if-ne v0, v2, :cond_1

    .line 28
    return-object p0

    .line 29
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "\""

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public static createProxyProperties(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/samsung/android/knox/net/ProxyProperties;
    .locals 2

    .line 1
    new-instance v0, Lcom/samsung/android/knox/net/ProxyProperties;

    .line 3
    invoke-direct {v0}, Lcom/samsung/android/knox/net/ProxyProperties;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne p5, v1, :cond_0

    .line 9
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/net/ProxyProperties;->setHostname(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/net/ProxyProperties;->setPortNumber(I)V

    .line 15
    invoke-virtual {v0, p3}, Lcom/samsung/android/knox/net/ProxyProperties;->setAuthConfigList(Ljava/util/List;)V

    .line 18
    invoke-virtual {v0, p4}, Lcom/samsung/android/knox/net/ProxyProperties;->setExclusionList(Ljava/util/List;)V

    .line 21
    return-object v0

    .line 22
    :cond_0
    const/4 p0, 0x2

    .line 23
    if-ne p5, p0, :cond_1

    .line 25
    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/net/ProxyProperties;->setPacFileUrl(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p3}, Lcom/samsung/android/knox/net/ProxyProperties;->setAuthConfigList(Ljava/util/List;)V

    .line 31
    invoke-virtual {v0, p4}, Lcom/samsung/android/knox/net/ProxyProperties;->setExclusionList(Ljava/util/List;)V

    .line 34
    return-object v0

    .line 35
    :cond_1
    const/4 p0, 0x0

    .line 36
    return-object p0
.end method

.method public static createStaticIpConfigurationFromSourceAndGateway(Landroid/net/StaticIpConfiguration;Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/StaticIpConfiguration$Builder;

    .line 3
    invoke-direct {v0}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    .line 6
    invoke-virtual {p0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p1}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0}, Landroid/net/StaticIpConfiguration;->getDomains()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Landroid/net/StaticIpConfiguration$Builder;->setDomains(Ljava/lang/String;)Landroid/net/StaticIpConfiguration$Builder;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p1, p0}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static createStaticIpConfigurationFromSourceAndIpAddress(Landroid/net/StaticIpConfiguration;Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration;
    .locals 1

    .line 1
    new-instance v0, Landroid/net/StaticIpConfiguration$Builder;

    .line 3
    invoke-direct {v0}, Landroid/net/StaticIpConfiguration$Builder;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Landroid/net/StaticIpConfiguration$Builder;->setIpAddress(Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration$Builder;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Landroid/net/StaticIpConfiguration$Builder;->setGateway(Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration$Builder;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0}, Landroid/net/StaticIpConfiguration;->getDomains()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Landroid/net/StaticIpConfiguration$Builder;->setDomains(Ljava/lang/String;)Landroid/net/StaticIpConfiguration$Builder;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p1, p0}, Landroid/net/StaticIpConfiguration$Builder;->setDnsServers(Ljava/lang/Iterable;)Landroid/net/StaticIpConfiguration$Builder;

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/net/StaticIpConfiguration$Builder;->build()Landroid/net/StaticIpConfiguration;

    .line 42
    move-result-object p0

    .line 43
    return-object p0
.end method

.method public static getSecurityLevel(I)I
    .locals 1

    .line 1
    const/16 v0, 0x13

    .line 3
    if-eq p0, v0, :cond_2

    .line 5
    const/16 v0, 0x16

    .line 7
    if-eq p0, v0, :cond_1

    .line 9
    const/16 v0, 0x19

    .line 11
    if-eq p0, v0, :cond_1

    .line 13
    const/16 v0, 0x1c

    .line 15
    if-eq p0, v0, :cond_1

    .line 17
    const/16 v0, 0x1f

    .line 19
    if-eq p0, v0, :cond_0

    .line 21
    packed-switch p0, :pswitch_data_0

    .line 24
    const/4 p0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :pswitch_0
    const/4 p0, 0x6

    .line 27
    goto :goto_0

    .line 28
    :pswitch_1
    const/4 p0, 0x3

    .line 29
    goto :goto_0

    .line 30
    :pswitch_2
    const/4 p0, 0x2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x4

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    :pswitch_3
    const/4 p0, 0x7

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    :pswitch_4
    const/4 p0, 0x5

    .line 37
    :goto_0
    return p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static getValidStr$3(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_1

    .line 4
    :cond_0
    move-object p0, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 13
    move-result v1

    .line 14
    if-lez v1, :cond_0

    .line 16
    :goto_0
    return-object p0
.end method

.method public static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    array-length v1, p1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v2, v1}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    .line 11
    move-result-object p0

    .line 12
    const/4 v1, -0x1

    .line 13
    move v2, v1

    .line 14
    :goto_0
    add-int/lit8 v2, v2, 0x1

    .line 16
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    .line 19
    move-result v2

    .line 20
    if-eq v2, v1, :cond_0

    .line 22
    aget-object v3, p1, v2

    .line 24
    const/16 v4, 0x5f

    .line 26
    const/16 v5, 0x2d

    .line 28
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    const/16 v3, 0x20

    .line 37
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    .line 44
    move-result p0

    .line 45
    if-lez p0, :cond_1

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 50
    move-result p0

    .line 51
    add-int/lit8 p0, p0, -0x1

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 56
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method public static setDns1AndDns2(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 7
    const-string v2, "WifiPolicyService"

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 12
    :try_start_0
    invoke-static {p1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 15
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    return v3

    .line 22
    :cond_0
    const-string p1, "8.8.8.8"

    .line 24
    invoke-static {p1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 38
    invoke-virtual {p0}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    .line 41
    move-result-object p1

    .line 42
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Ljava/net/InetAddress;

    .line 48
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 50
    invoke-virtual {p0}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {p0}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    .line 63
    move-result-object v0

    .line 64
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {p0}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    .line 71
    move-result-object v0

    .line 72
    invoke-interface {v0, v3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_3
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    move-result p1

    .line 79
    const/4 v0, 0x1

    .line 80
    if-nez p1, :cond_5

    .line 82
    :try_start_1
    invoke-static {p2}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p0}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    .line 89
    move-result-object p2

    .line 90
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 93
    move-result p2

    .line 94
    if-ne p2, v0, :cond_4

    .line 96
    invoke-virtual {p0}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    .line 99
    move-result-object p0

    .line 100
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    goto :goto_3

    .line 104
    :catch_1
    move-exception p0

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    invoke-virtual {p0}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    .line 109
    move-result-object p2

    .line 110
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 113
    move-result p2

    .line 114
    const/4 v4, 0x2

    .line 115
    if-ne p2, v4, :cond_5

    .line 117
    invoke-virtual {p0}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    .line 120
    move-result-object p0

    .line 121
    invoke-interface {p0, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    goto :goto_3

    .line 125
    :goto_2
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    return v3

    .line 129
    :cond_5
    :goto_3
    return v0
.end method

.method public static setGateway(Landroid/net/StaticIpConfiguration;Ljava/lang/String;)Landroid/net/StaticIpConfiguration;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    :try_start_0
    invoke-static {p1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 10
    move-result-object p1

    .line 11
    invoke-static {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->createStaticIpConfigurationFromSourceAndGateway(Landroid/net/StaticIpConfiguration;Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration;

    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string p1, "WifiPolicyService"

    .line 19
    const-string v0, ""

    .line 21
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0

    .line 26
    :cond_0
    const-string p1, "192.168.1.1"

    .line 28
    invoke-static {p1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_1

    .line 38
    invoke-static {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->createStaticIpConfigurationFromSourceAndGateway(Landroid/net/StaticIpConfiguration;Ljava/net/InetAddress;)Landroid/net/StaticIpConfiguration;

    .line 41
    move-result-object p0

    .line 42
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static setIpAndSubnetMask(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/StaticIpConfiguration;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x18

    .line 7
    if-nez v0, :cond_2

    .line 9
    :try_start_0
    invoke-static {p1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 12
    move-result-object p1

    .line 13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 19
    invoke-static {p2}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 22
    move-result-object p2

    .line 23
    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->computeprefixLength(Ljava/net/InetAddress;)I

    .line 26
    move-result v1

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    .line 33
    move-result-object p2

    .line 34
    if-eqz p2, :cond_1

    .line 36
    invoke-virtual {p0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p2}, Landroid/net/LinkAddress;->getPrefixLength()I

    .line 43
    move-result v1

    .line 44
    :cond_1
    :goto_0
    new-instance p2, Landroid/net/LinkAddress;

    .line 46
    invoke-direct {p2, p1, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 49
    invoke-static {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->createStaticIpConfigurationFromSourceAndIpAddress(Landroid/net/StaticIpConfiguration;Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration;

    .line 52
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-object p0

    .line 54
    :goto_1
    const-string p1, "WifiPolicyService"

    .line 56
    const-string p2, ""

    .line 58
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    const/4 p0, 0x0

    .line 62
    return-object p0

    .line 63
    :cond_2
    const-string p1, "192.168.1.100"

    .line 65
    invoke-static {p1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_3

    .line 75
    invoke-virtual {p0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p0}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getPrefixLength()I

    .line 90
    move-result v1

    .line 91
    :cond_3
    if-eqz p2, :cond_4

    .line 93
    invoke-static {p2}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 96
    move-result-object p2

    .line 97
    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->computeprefixLength(Ljava/net/InetAddress;)I

    .line 100
    move-result v1

    .line 101
    :cond_4
    new-instance p2, Landroid/net/LinkAddress;

    .line 103
    invoke-direct {p2, p1, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 106
    invoke-static {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->createStaticIpConfigurationFromSourceAndIpAddress(Landroid/net/StaticIpConfiguration;Landroid/net/LinkAddress;)Landroid/net/StaticIpConfiguration;

    .line 109
    move-result-object p0

    .line 110
    return-object p0
.end method

.method public static setMinimumRequiredWifiSecurityLevel(Landroid/content/ComponentName;II)V
    .locals 5

    .line 1
    const-string v0, "WifiPolicyService"

    .line 3
    if-nez p0, :cond_0

    .line 5
    const-string/jumbo p0, "setMinimumRequiredWifiSecurityLevel - component name is null"

    .line 8
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    if-eqz p2, :cond_3

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eq p2, v2, :cond_2

    .line 18
    const/4 v3, 0x2

    .line 19
    if-eq p2, v3, :cond_2

    .line 21
    const/4 v4, 0x5

    .line 22
    if-eq p2, v4, :cond_1

    .line 24
    const/4 v4, 0x6

    .line 25
    if-eq p2, v4, :cond_1

    .line 27
    const/4 v4, 0x7

    .line 28
    if-eq p2, v4, :cond_1

    .line 30
    const/16 v4, 0x13

    .line 32
    if-eq p2, v4, :cond_1

    .line 34
    const/16 v4, 0x16

    .line 36
    if-eq p2, v4, :cond_1

    .line 38
    const/16 v4, 0x19

    .line 40
    if-eq p2, v4, :cond_1

    .line 42
    const/16 v4, 0x1c

    .line 44
    if-eq p2, v4, :cond_1

    .line 46
    const/16 v3, 0x1f

    .line 48
    if-eq p2, v3, :cond_2

    .line 50
    const-string/jumbo p2, "security level not mapped! Set as open"

    .line 53
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move v1, v3

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    move v1, v2

    .line 60
    :cond_3
    :goto_0
    const-class p2, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 62
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 68
    if-nez p2, :cond_4

    .line 70
    const-string/jumbo p0, "setMinimumRequiredWifiSecurityLevel - fail to retrieve dpmi object"

    .line 73
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void

    .line 77
    :cond_4
    invoke-virtual {p2, p0, v1, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->setMinimumRequiredWifiSecurityLevel(Landroid/content/ComponentName;II)V

    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    .line 82
    const-string/jumbo v2, "setMinimumRequiredWifiSecurityLevel - who: "

    .line 85
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    const-string p0, ", userId: "

    .line 93
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    const-string p0, ", securityLevel: "

    .line 101
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-static {p2, v1, v0}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 107
    return-void
.end method

.method public static updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_d

    .line 4
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_d

    .line 12
    const-string/jumbo v1, "phase2"

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_3

    .line 21
    const/4 p1, 0x0

    .line 22
    move v1, p1

    .line 23
    :goto_0
    const/16 v2, 0x8

    .line 25
    if-ge v1, v2, :cond_1

    .line 27
    sget-object v2, Lcom/android/server/enterprise/wifi/WifiPolicy;->PHASE2_STRINGS:[Ljava/lang/String;

    .line 29
    aget-object v2, v2, v1

    .line 31
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 37
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 39
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 42
    goto/16 :goto_2

    .line 44
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string v1, "None"

    .line 49
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_2

    .line 55
    iget-object p2, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 57
    invoke-virtual {p2, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 60
    goto/16 :goto_2

    .line 62
    :cond_2
    return-object v0

    .line 63
    :cond_3
    const-string/jumbo v1, "phase1"

    .line 66
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v1

    .line 70
    const-string v2, "WifiPolicyService"

    .line 72
    if-eqz v1, :cond_4

    .line 74
    const-string p1, "PHASE1 is no longer supported"

    .line 76
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    goto/16 :goto_2

    .line 81
    :cond_4
    const-string/jumbo v1, "identity"

    .line 84
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v1

    .line 88
    const/16 v3, 0xc8

    .line 90
    if-eqz v1, :cond_6

    .line 92
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 95
    move-result p1

    .line 96
    if-le p1, v3, :cond_5

    .line 98
    const-string p0, "Identity value excedes maximum length 200"

    .line 100
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-object v0

    .line 104
    :cond_5
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 106
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 109
    goto :goto_2

    .line 110
    :cond_6
    const-string v1, "anonymous_identity"

    .line 112
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_7

    .line 118
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 120
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 123
    goto :goto_2

    .line 124
    :cond_7
    const-string/jumbo v1, "password"

    .line 127
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_9

    .line 133
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 136
    move-result p1

    .line 137
    if-le p1, v3, :cond_8

    .line 139
    const-string p0, "Password excedes maximum length 200"

    .line 141
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-object v0

    .line 145
    :cond_8
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 147
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 150
    goto :goto_2

    .line 151
    :cond_9
    const-string/jumbo v1, "client_cert"

    .line 154
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    move-result v1

    .line 158
    if-nez v1, :cond_c

    .line 160
    const-string/jumbo v1, "key_id"

    .line 163
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_a

    .line 169
    goto :goto_1

    .line 170
    :cond_a
    const-string/jumbo v1, "ca_cert"

    .line 173
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_b

    .line 179
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 181
    filled-new-array {p2}, [Ljava/lang/String;

    .line 184
    move-result-object p2

    .line 185
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 188
    goto :goto_2

    .line 189
    :cond_b
    return-object v0

    .line 190
    :cond_c
    :goto_1
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 192
    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 195
    :goto_2
    return-object p0

    .line 196
    :cond_d
    return-object v0
.end method

.method public static updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_9

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    move v0, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v0, "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

    .line 21
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 32
    move-result v0

    .line 33
    :goto_0
    if-nez v0, :cond_1

    .line 35
    goto :goto_3

    .line 36
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    .line 43
    move-result-object v3

    .line 44
    if-nez v3, :cond_2

    .line 46
    new-instance v3, Landroid/net/StaticIpConfiguration;

    .line 48
    invoke-direct {v3}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 51
    :cond_2
    const-string/jumbo v4, "networkStaticIp"

    .line 54
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v4

    .line 58
    const/4 v5, 0x1

    .line 59
    if-eqz v4, :cond_3

    .line 61
    invoke-static {v3, p1, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setIpAndSubnetMask(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/StaticIpConfiguration;

    .line 64
    move-result-object v3

    .line 65
    if-eqz v3, :cond_7

    .line 67
    :goto_1
    move v2, v5

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    const-string/jumbo v4, "networkStaticGateway"

    .line 72
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_4

    .line 78
    invoke-static {v3, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setGateway(Landroid/net/StaticIpConfiguration;Ljava/lang/String;)Landroid/net/StaticIpConfiguration;

    .line 81
    move-result-object v3

    .line 82
    if-eqz v3, :cond_7

    .line 84
    goto :goto_1

    .line 85
    :cond_4
    const-string/jumbo v4, "networkStaticPrimaryDns"

    .line 88
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_5

    .line 94
    invoke-static {v3, p1, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setDns1AndDns2(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    .line 97
    move-result v2

    .line 98
    goto :goto_2

    .line 99
    :cond_5
    const-string/jumbo v4, "networkStaticSecondaryDns"

    .line 102
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v4

    .line 106
    if-eqz v4, :cond_6

    .line 108
    invoke-static {v3, v1, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setDns1AndDns2(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    .line 111
    move-result v2

    .line 112
    goto :goto_2

    .line 113
    :cond_6
    const-string/jumbo v4, "networkStaticSubnetMask"

    .line 116
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result p2

    .line 120
    if-eqz p2, :cond_7

    .line 122
    invoke-static {v3, v1, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setIpAndSubnetMask(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/StaticIpConfiguration;

    .line 125
    move-result-object v3

    .line 126
    if-eqz v3, :cond_7

    .line 128
    goto :goto_1

    .line 129
    :cond_7
    :goto_2
    if-nez v2, :cond_8

    .line 131
    return-object v1

    .line 132
    :cond_8
    invoke-virtual {v0, v3}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 135
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 138
    return-object p0

    .line 139
    :cond_9
    :goto_3
    const-string p0, "Invalid ip address provided: "

    .line 141
    const-string p2, "WifiPolicyService"

    .line 143
    invoke-static {p0, p1, p2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-object v1
.end method

.method public static updateNetworkProxyInfo(Landroid/net/wifi/WifiConfiguration;Landroid/net/ProxyInfo;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    new-instance v0, Landroid/net/IpConfiguration;

    .line 9
    invoke-direct {v0}, Landroid/net/IpConfiguration;-><init>()V

    .line 12
    :cond_0
    invoke-virtual {v0, p1}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 15
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 18
    return-void
.end method

.method public static updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    return-object v1

    .line 11
    :cond_0
    if-eqz p2, :cond_5

    .line 13
    if-ltz p1, :cond_5

    .line 15
    const/4 v0, 0x3

    .line 16
    if-le p1, v0, :cond_1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    if-nez p1, :cond_2

    .line 21
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 27
    return-object v1

    .line 28
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 31
    move-result v0

    .line 32
    const/16 v1, 0xa

    .line 34
    if-eq v0, v1, :cond_3

    .line 36
    const/16 v1, 0x1a

    .line 38
    if-eq v0, v1, :cond_3

    .line 40
    const/16 v1, 0x3a

    .line 42
    if-ne v0, v1, :cond_4

    .line 44
    :cond_3
    const-string v0, "[0-9A-Fa-f]*"

    .line 46
    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_4

    .line 52
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 54
    aput-object p2, v0, p1

    .line 56
    goto :goto_0

    .line 57
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 59
    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object p2

    .line 63
    aput-object p2, v0, p1

    .line 65
    :goto_0
    return-object p0

    .line 66
    :cond_5
    :goto_1
    return-object v1
.end method

.method public static validateSSIDList(Ljava/util/List;)Ljava/util/List;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 13
    move-result-object v0

    .line 14
    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 17
    move-result v0

    .line 18
    const-string v2, "WifiPolicyService"

    .line 20
    if-eqz v0, :cond_1

    .line 22
    const-string/jumbo v0, "validateSSIDList() : ssid list removed null "

    .line 25
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object p0

    .line 32
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_4

    .line 38
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/lang/String;

    .line 44
    if-eqz v0, :cond_3

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    :goto_1
    const-string/jumbo v0, "isvalidSSIDName() : SSID is invalid"

    .line 60
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    goto :goto_0

    .line 64
    :cond_4
    return-object v1
.end method


# virtual methods
.method public final activateWifiSsidRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "WifiPolicyService"

    .line 13
    if-nez v0, :cond_0

    .line 15
    const-string p0, "activateWifiSsidRestriction - not a valid caller, aborting!"

    .line 17
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 24
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 26
    const/4 v6, 0x0

    .line 27
    const-string v3, "WIFI"

    .line 29
    const-string/jumbo v7, "wifiSsidRestriction"

    .line 32
    move v5, p2

    .line 33
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_1

    .line 39
    const-string p0, "activateWifiSsidRestriction - fail to store value to database"

    .line 41
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return v2

    .line 45
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 48
    move-result-wide v2

    .line 49
    :try_start_0
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 51
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 54
    move-result v4

    .line 55
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 57
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v5

    .line 61
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    move-result-object v6

    .line 65
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    .line 68
    move-result-object v5

    .line 69
    const/16 v6, 0x44

    .line 71
    invoke-static {v4, v6, v5}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    const-string v3, "activateWifiSsidRestriction - caller uid: "

    .line 81
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    const-string v3, ", enforced caller uid: "

    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    const-string v3, ", enable = "

    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v2

    .line 111
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 116
    check-cast v1, Landroid/content/ComponentName;

    .line 118
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 120
    check-cast v0, Ljava/lang/Integer;

    .line 122
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 125
    move-result v0

    .line 126
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 129
    move-result v0

    .line 130
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 132
    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setSsidAllowDenyList(Landroid/content/ComponentName;IIZ)Z

    .line 135
    move-result p0

    .line 136
    return p0

    .line 137
    :catchall_0
    move-exception p0

    .line 138
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 141
    throw p0
.end method

.method public final addNetworkWithRandomizationState(Landroid/net/wifi/WifiConfiguration;Z)I
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    const-string v1, "WifiPolicyService"

    .line 4
    if-nez p1, :cond_0

    .line 6
    const-string p0, "addNetworkWithRandomizationState() : config is null"

    .line 8
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return v0

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    .line 14
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_INTERNAL_EXCEPTION"

    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 24
    move-result-wide v2

    .line 25
    if-eqz p2, :cond_1

    .line 27
    const/4 p2, 0x0

    .line 28
    :try_start_0
    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_2

    .line 33
    :catch_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 37
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 40
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 44
    return p0

    .line 45
    :goto_1
    :try_start_1
    const-string p1, "addNetworkWithRandomizationState() failed"

    .line 47
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    return v0

    .line 54
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    throw p0
.end method

.method public final addWifiSsidToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 12

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "WifiPolicyService"

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 16
    const-string p0, "addWifiSsidToBlackList - not a valid caller, aborting!"

    .line 18
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return v2

    .line 22
    :cond_0
    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->validateSSIDList(Ljava/util/List;)Ljava/util/List;

    .line 25
    move-result-object p2

    .line 26
    if-eqz p2, :cond_7

    .line 28
    check-cast p2, Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 36
    goto/16 :goto_2

    .line 38
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v3

    .line 42
    const/4 v4, 0x1

    .line 43
    move v5, v4

    .line 44
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_4

    .line 50
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v6

    .line 54
    check-cast v6, Ljava/lang/String;

    .line 56
    const-string v7, "WIFI_SSID"

    .line 58
    invoke-static {v7, v6}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 61
    move-result-object v7

    .line 62
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 64
    const-string v9, "adminUid"

    .line 66
    const-string v10, "WIFI_LIST_TYPE"

    .line 68
    const-string v11, "BLACKLIST"

    .line 70
    invoke-static {v8, v7, v9, v10, v11}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    if-eqz v5, :cond_3

    .line 75
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 77
    const-string v8, "WIFI_SSID_BLACK_WHITE_LIST"

    .line 79
    invoke-virtual {v5, v8, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_3

    .line 85
    move v5, v4

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    move v5, v2

    .line 88
    :goto_1
    if-eqz v5, :cond_2

    .line 90
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 93
    move-result-wide v7

    .line 94
    :try_start_0
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 96
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    .line 99
    move-result v9

    .line 100
    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 102
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    move-result-object v10

    .line 106
    filled-new-array {v10, v6}, [Ljava/lang/Object;

    .line 109
    move-result-object v6

    .line 110
    const/16 v10, 0x3e

    .line 112
    invoke-static {v9, v10, v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    goto :goto_0

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    throw p0

    .line 124
    :cond_4
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 126
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(I)Z

    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_6

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    .line 134
    const-string v6, "addWifiSsidToBlackList - caller uid: "

    .line 136
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 141
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    const-string v6, ", enforced caller uid: "

    .line 146
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 151
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    const-string v6, ", list size: "

    .line 156
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 162
    move-result p2

    .line 163
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object p2

    .line 170
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    if-eqz v5, :cond_5

    .line 175
    iget-object p2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 177
    check-cast p2, Landroid/content/ComponentName;

    .line 179
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 181
    check-cast v0, Ljava/lang/Integer;

    .line 183
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 186
    move-result v0

    .line 187
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 190
    move-result v0

    .line 191
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 193
    invoke-virtual {p0, p2, v0, p1, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setSsidAllowDenyList(Landroid/content/ComponentName;IIZ)Z

    .line 196
    move-result p0

    .line 197
    if-eqz p0, :cond_5

    .line 199
    move v2, v4

    .line 200
    :cond_5
    move v5, v2

    .line 201
    :cond_6
    return v5

    .line 202
    :cond_7
    :goto_2
    const-string p0, "addWifiSsidToBlackList - failed with invalid request"

    .line 204
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return v2
.end method

.method public final addWifiSsidToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 12

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "WifiPolicyService"

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 16
    const-string p0, "addWifiSsidToWhiteList - not a valid caller, aborting!"

    .line 18
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return v2

    .line 22
    :cond_0
    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->validateSSIDList(Ljava/util/List;)Ljava/util/List;

    .line 25
    move-result-object p2

    .line 26
    if-eqz p2, :cond_7

    .line 28
    check-cast p2, Ljava/util/ArrayList;

    .line 30
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 36
    goto/16 :goto_2

    .line 38
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    move-result-object v3

    .line 42
    const/4 v4, 0x1

    .line 43
    move v5, v4

    .line 44
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v6

    .line 48
    if-eqz v6, :cond_4

    .line 50
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v6

    .line 54
    check-cast v6, Ljava/lang/String;

    .line 56
    const-string v7, "WIFI_SSID"

    .line 58
    invoke-static {v7, v6}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 61
    move-result-object v7

    .line 62
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 64
    const-string v9, "adminUid"

    .line 66
    const-string v10, "WIFI_LIST_TYPE"

    .line 68
    const-string v11, "WHITELIST"

    .line 70
    invoke-static {v8, v7, v9, v10, v11}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    if-eqz v5, :cond_3

    .line 75
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 77
    const-string v8, "WIFI_SSID_BLACK_WHITE_LIST"

    .line 79
    invoke-virtual {v5, v8, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_3

    .line 85
    move v5, v4

    .line 86
    goto :goto_1

    .line 87
    :cond_3
    move v5, v2

    .line 88
    :goto_1
    if-eqz v5, :cond_2

    .line 90
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 93
    move-result-wide v7

    .line 94
    :try_start_0
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 96
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    .line 99
    move-result v9

    .line 100
    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 102
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    move-result-object v10

    .line 106
    filled-new-array {v10, v6}, [Ljava/lang/Object;

    .line 109
    move-result-object v6

    .line 110
    const/16 v10, 0x41

    .line 112
    invoke-static {v9, v10, v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    goto :goto_0

    .line 119
    :catchall_0
    move-exception p0

    .line 120
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 123
    throw p0

    .line 124
    :cond_4
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 126
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(I)Z

    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_6

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    .line 134
    const-string v6, "addWifiSsidToWhiteList - caller uid: "

    .line 136
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 141
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    const-string v6, ", enforced caller uid: "

    .line 146
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 151
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    const-string v6, ", list size: "

    .line 156
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 162
    move-result p2

    .line 163
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object p2

    .line 170
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    if-eqz v5, :cond_5

    .line 175
    iget-object p2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 177
    check-cast p2, Landroid/content/ComponentName;

    .line 179
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 181
    check-cast v0, Ljava/lang/Integer;

    .line 183
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 186
    move-result v0

    .line 187
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 190
    move-result v0

    .line 191
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 193
    invoke-virtual {p0, p2, v0, p1, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setSsidAllowDenyList(Landroid/content/ComponentName;IIZ)Z

    .line 196
    move-result p0

    .line 197
    if-eqz p0, :cond_5

    .line 199
    move v2, v4

    .line 200
    :cond_5
    move v5, v2

    .line 201
    :cond_6
    return v5

    .line 202
    :cond_7
    :goto_2
    const-string p0, "addWifiSsidToWhiteList - failed with invalid request"

    .line 204
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return v2
.end method

.method public final allowOpenWifiAp(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "allowOpenWifiAp - caller uid: "

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, ", enable: "

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    const-string v1, "WifiPolicyService"

    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    if-nez p2, :cond_2

    .line 36
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 39
    move-result-wide v0

    .line 40
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 42
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_1

    .line 48
    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 59
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    .line 62
    move-result v2

    .line 63
    const/16 v4, 0xd

    .line 65
    if-eq v2, v4, :cond_0

    .line 67
    const/16 v4, 0xc

    .line 69
    if-ne v2, v4, :cond_1

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    .line 73
    const-string/jumbo v4, "sem_wifi"

    .line 76
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Lcom/samsung/android/wifi/SemWifiManager;

    .line 82
    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    goto :goto_1

    .line 92
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    goto :goto_2

    .line 96
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    throw p0

    .line 100
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 102
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 104
    const/4 v6, 0x0

    .line 105
    const-string v3, "WIFI"

    .line 107
    const-string v7, "allowOpenWifi"

    .line 109
    move v5, p2

    .line 110
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 113
    move-result p0

    .line 114
    return p0
.end method

.method public final allowWifiApSettingUserModification(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "allowWifiApSettingUserModification - caller uid: "

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, ", enable: "

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    const-string v1, "WifiPolicyService"

    .line 31
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 36
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 38
    const/4 v6, 0x0

    .line 39
    const-string v3, "WIFI"

    .line 41
    const-string v7, "allowWifiApSettingModification"

    .line 43
    move v5, p2

    .line 44
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 47
    move-result p0

    .line 48
    return p0
.end method

.method public final allowWifiScanning(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    const-string/jumbo v2, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    .line 20
    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    .line 23
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    move-result-object v2

    .line 31
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 34
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 37
    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 46
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 48
    const-string v2, "WIFI"

    .line 50
    const-string v6, "allowWifiScanning"

    .line 52
    const/4 v5, 0x0

    .line 53
    move v4, p2

    .line 54
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 57
    move-result p0

    .line 58
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 61
    move-result-wide v1

    .line 62
    if-nez p2, :cond_1

    .line 64
    :try_start_0
    const-string/jumbo p1, "wifi_scan_always_enabled"

    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-static {v0, p1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    throw p0

    .line 77
    :cond_1
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    .line 82
    const-string v0, "allowWifiScanning - "

    .line 84
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p1

    .line 94
    const-string p2, "WifiPolicyService"

    .line 96
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return p0
.end method

.method public final clearWifiSsidBlackList(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "WifiPolicyService"

    .line 14
    if-nez v0, :cond_0

    .line 16
    const-string/jumbo p0, "clearWifiSsidBlackList - not a valid caller, aborting!"

    .line 19
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return v1

    .line 23
    :cond_0
    const-string v3, "adminUid"

    .line 25
    const-string v4, "WIFI_LIST_TYPE"

    .line 27
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 33
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 36
    move-result-object v4

    .line 37
    const-string v5, "BLACKLIST"

    .line 39
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 43
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 45
    const-string v6, "WIFI_SSID_BLACK_WHITE_LIST"

    .line 47
    invoke-virtual {v5, v6, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 53
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 56
    move-result-wide v4

    .line 57
    :try_start_0
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 59
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 62
    move-result v6

    .line 63
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 65
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v7

    .line 69
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 72
    move-result-object v7

    .line 73
    const/16 v8, 0x40

    .line 75
    invoke-static {v6, v8, v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    throw p0

    .line 87
    :cond_1
    :goto_0
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 89
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(I)Z

    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_3

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    .line 97
    const-string/jumbo v5, "clearWifiSsidBlackList - caller uid: "

    .line 100
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 105
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    const-string v5, ", enforced caller uid: "

    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 115
    invoke-static {v4, v5, v2}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 118
    if-eqz v3, :cond_2

    .line 120
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 122
    check-cast v2, Landroid/content/ComponentName;

    .line 124
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 126
    check-cast v0, Ljava/lang/Integer;

    .line 128
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 131
    move-result v0

    .line 132
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 135
    move-result v0

    .line 136
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 138
    const/4 v3, 0x1

    .line 139
    invoke-virtual {p0, v2, v0, p1, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setSsidAllowDenyList(Landroid/content/ComponentName;IIZ)Z

    .line 142
    move-result p0

    .line 143
    if-eqz p0, :cond_2

    .line 145
    move v1, v3

    .line 146
    :cond_2
    move v3, v1

    .line 147
    :cond_3
    return v3
.end method

.method public final clearWifiSsidWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "WifiPolicyService"

    .line 14
    if-nez v0, :cond_0

    .line 16
    const-string/jumbo p0, "clearWifiSsidWhiteList - not a valid caller, aborting!"

    .line 19
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return v1

    .line 23
    :cond_0
    const-string v3, "adminUid"

    .line 25
    const-string v4, "WIFI_LIST_TYPE"

    .line 27
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 33
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 36
    move-result-object v4

    .line 37
    const-string v5, "WHITELIST"

    .line 39
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 42
    move-result-object v4

    .line 43
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 45
    const-string v6, "WIFI_SSID_BLACK_WHITE_LIST"

    .line 47
    invoke-virtual {v5, v6, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 53
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 56
    move-result-wide v4

    .line 57
    :try_start_0
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 59
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 62
    move-result v6

    .line 63
    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 65
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v7

    .line 69
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 72
    move-result-object v7

    .line 73
    const/16 v8, 0x43

    .line 75
    invoke-static {v6, v8, v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 86
    throw p0

    .line 87
    :cond_1
    :goto_0
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 89
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(I)Z

    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_3

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    .line 97
    const-string/jumbo v5, "clearWifiSsidWhiteList - caller uid: "

    .line 100
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 105
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    const-string v5, ", enforced caller uid: "

    .line 110
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 115
    invoke-static {v4, v5, v2}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 118
    if-eqz v3, :cond_2

    .line 120
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 122
    check-cast v2, Landroid/content/ComponentName;

    .line 124
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 126
    check-cast v0, Ljava/lang/Integer;

    .line 128
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 131
    move-result v0

    .line 132
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 135
    move-result v0

    .line 136
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 138
    const/4 v3, 0x1

    .line 139
    invoke-virtual {p0, v2, v0, p1, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setSsidAllowDenyList(Landroid/content/ComponentName;IIZ)Z

    .line 142
    move-result p0

    .line 143
    if-eqz p0, :cond_2

    .line 145
    move v1, v3

    .line 146
    :cond_2
    move v3, v1

    .line 147
    :cond_3
    return v3
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    .line 3
    const-string p3, "android.permission.DUMP"

    .line 5
    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 11
    const-string p0, "Permission Denial: can\'t dump WifiPolicyService"

    .line 13
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    new-instance p3, Ljava/lang/StringBuilder;

    .line 24
    const-string v0, "[WifiPolicyService]"

    .line 26
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p3

    .line 40
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    new-instance p3, Ljava/lang/StringBuilder;

    .line 45
    const-string v0, "  mWifiAllowed : "

    .line 47
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x0

    .line 51
    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 55
    move-result v2

    .line 56
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p3

    .line 70
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    new-instance p3, Ljava/lang/StringBuilder;

    .line 75
    const-string v2, "  mAllowStateChange : "

    .line 77
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 83
    move-result v2

    .line 84
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p3

    .line 98
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    new-instance p3, Ljava/lang/StringBuilder;

    .line 103
    const-string v2, "  mAllowAutomaticConnections : "

    .line 105
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 111
    move-result v2

    .line 112
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p3

    .line 126
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    new-instance p3, Ljava/lang/StringBuilder;

    .line 131
    const-string v2, "  mAllowUserChanges : "

    .line 133
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 139
    move-result v2

    .line 140
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 143
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object p3

    .line 154
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    new-instance p3, Ljava/lang/StringBuilder;

    .line 159
    const-string v2, "  mPromptCredentialsEnabled : "

    .line 161
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 167
    move-result v2

    .line 168
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 171
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object p3

    .line 182
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    new-instance p3, Ljava/lang/StringBuilder;

    .line 187
    const-string v2, "  mAllowUserProfiles : "

    .line 189
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserProfiles(Lcom/samsung/android/knox/ContextInfo;ZI)Z

    .line 195
    move-result v0

    .line 196
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 199
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    move-result-object p3

    .line 210
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    new-instance p3, Ljava/lang/StringBuilder;

    .line 215
    const-string v0, "  ssidBlockList : "

    .line 217
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    .line 222
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 227
    const-string v3, "WIFI_SSID_BLACK_WHITE_LIST"

    .line 229
    const-string v4, "adminUid"

    .line 231
    invoke-virtual {v2, v1, v1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 234
    move-result-object v2

    .line 235
    new-instance v5, Ljava/util/TreeSet;

    .line 237
    invoke-direct {v5, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 240
    invoke-virtual {v5}, Ljava/util/TreeSet;->isEmpty()Z

    .line 243
    move-result v2

    .line 244
    if-eqz v2, :cond_1

    .line 246
    new-instance v2, Ljava/util/ArrayList;

    .line 248
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 251
    goto/16 :goto_2

    .line 253
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    .line 255
    invoke-virtual {v5}, Ljava/util/TreeSet;->size()I

    .line 258
    move-result v6

    .line 259
    invoke-direct {v2, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 262
    invoke-virtual {v5}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 265
    move-result-object v5

    .line 266
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 269
    move-result v6

    .line 270
    if-eqz v6, :cond_2

    .line 272
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 275
    move-result-object v6

    .line 276
    check-cast v6, Ljava/lang/Integer;

    .line 278
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 281
    move-result v7

    .line 282
    const/4 v8, 0x1

    .line 283
    invoke-virtual {p0, v7, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiNetworkSsidBlackWhitelist(IZ)Ljava/util/Map;

    .line 286
    move-result-object v7

    .line 287
    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    goto :goto_0

    .line 291
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    .line 293
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 296
    move-result-object v6

    .line 297
    invoke-interface {v6}, Ljava/util/Set;->size()I

    .line 300
    move-result v6

    .line 301
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 304
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 307
    move-result-object v2

    .line 308
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 311
    move-result-object v2

    .line 312
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 315
    move-result v6

    .line 316
    if-eqz v6, :cond_3

    .line 318
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 321
    move-result-object v6

    .line 322
    check-cast v6, Ljava/util/Map$Entry;

    .line 324
    new-instance v7, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;

    .line 326
    invoke-direct {v7}, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;-><init>()V

    .line 329
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 332
    move-result-object v8

    .line 333
    check-cast v8, Ljava/lang/Integer;

    .line 335
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 338
    move-result v8

    .line 339
    iget-object v9, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 341
    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    .line 344
    move-result-object v8

    .line 345
    iput-object v8, v7, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->adminPackageName:Ljava/lang/String;

    .line 347
    new-instance v8, Ljava/util/ArrayList;

    .line 349
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 352
    move-result-object v6

    .line 353
    check-cast v6, Ljava/util/Map;

    .line 355
    const-string v9, "BLACKLIST"

    .line 357
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    move-result-object v6

    .line 361
    check-cast v6, Ljava/util/Collection;

    .line 363
    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 366
    iput-object v8, v7, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->entries:Ljava/util/List;

    .line 368
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    goto :goto_1

    .line 372
    :cond_3
    move-object v2, v5

    .line 373
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 376
    move-result v5

    .line 377
    const-string v6, "  "

    .line 379
    const-string v7, " : "

    .line 381
    const-string v8, "No item found"

    .line 383
    if-nez v5, :cond_4

    .line 385
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    goto :goto_4

    .line 389
    :cond_4
    move v5, v1

    .line 390
    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 393
    move-result v9

    .line 394
    if-ge v5, v9, :cond_5

    .line 396
    new-instance v9, Ljava/lang/StringBuilder;

    .line 398
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 404
    move-result-object v10

    .line 405
    check-cast v10, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;

    .line 407
    iget-object v10, v10, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->adminPackageName:Ljava/lang/String;

    .line 409
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 418
    move-result-object v10

    .line 419
    check-cast v10, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;

    .line 421
    iget-object v10, v10, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->entries:Ljava/util/List;

    .line 423
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    move-result-object v9

    .line 433
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    add-int/lit8 v5, v5, 0x1

    .line 438
    goto :goto_3

    .line 439
    :cond_5
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 442
    move-result-object v0

    .line 443
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 449
    move-result-object v0

    .line 450
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    move-result-object p3

    .line 457
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    new-instance p3, Ljava/lang/StringBuilder;

    .line 462
    const-string v0, "  ssidAllowList : "

    .line 464
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    .line 469
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 472
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 474
    invoke-virtual {v2, v1, v1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 477
    move-result-object v2

    .line 478
    new-instance v3, Ljava/util/TreeSet;

    .line 480
    invoke-direct {v3, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 483
    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    .line 486
    move-result v2

    .line 487
    if-eqz v2, :cond_6

    .line 489
    new-instance p0, Ljava/util/ArrayList;

    .line 491
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 494
    goto/16 :goto_7

    .line 496
    :cond_6
    new-instance v2, Ljava/util/HashMap;

    .line 498
    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    .line 501
    move-result v4

    .line 502
    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 505
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 508
    move-result-object v3

    .line 509
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 512
    move-result v4

    .line 513
    if-eqz v4, :cond_7

    .line 515
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 518
    move-result-object v4

    .line 519
    check-cast v4, Ljava/lang/Integer;

    .line 521
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 524
    move-result v5

    .line 525
    invoke-virtual {p0, v5, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiNetworkSsidBlackWhitelist(IZ)Ljava/util/Map;

    .line 528
    move-result-object v5

    .line 529
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    goto :goto_5

    .line 533
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    .line 535
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 538
    move-result-object v4

    .line 539
    invoke-interface {v4}, Ljava/util/Set;->size()I

    .line 542
    move-result v4

    .line 543
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 546
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 549
    move-result-object v2

    .line 550
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 553
    move-result-object v2

    .line 554
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 557
    move-result v4

    .line 558
    if-eqz v4, :cond_8

    .line 560
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 563
    move-result-object v4

    .line 564
    check-cast v4, Ljava/util/Map$Entry;

    .line 566
    new-instance v5, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;

    .line 568
    invoke-direct {v5}, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;-><init>()V

    .line 571
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 574
    move-result-object v9

    .line 575
    check-cast v9, Ljava/lang/Integer;

    .line 577
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 580
    move-result v9

    .line 581
    iget-object v10, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 583
    invoke-virtual {v10, v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    .line 586
    move-result-object v9

    .line 587
    iput-object v9, v5, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->adminPackageName:Ljava/lang/String;

    .line 589
    new-instance v9, Ljava/util/ArrayList;

    .line 591
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 594
    move-result-object v4

    .line 595
    check-cast v4, Ljava/util/Map;

    .line 597
    const-string v10, "WHITELIST"

    .line 599
    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    move-result-object v4

    .line 603
    check-cast v4, Ljava/util/Collection;

    .line 605
    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 608
    iput-object v9, v5, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->entries:Ljava/util/List;

    .line 610
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    goto :goto_6

    .line 614
    :cond_8
    move-object p0, v3

    .line 615
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 618
    move-result v2

    .line 619
    if-nez v2, :cond_9

    .line 621
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    goto :goto_9

    .line 625
    :cond_9
    :goto_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 628
    move-result v2

    .line 629
    if-ge v1, v2, :cond_a

    .line 631
    new-instance v2, Ljava/lang/StringBuilder;

    .line 633
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 636
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 639
    move-result-object v3

    .line 640
    check-cast v3, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;

    .line 642
    iget-object v3, v3, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->adminPackageName:Ljava/lang/String;

    .line 644
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 653
    move-result-object v3

    .line 654
    check-cast v3, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;

    .line 656
    iget-object v3, v3, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->entries:Ljava/util/List;

    .line 658
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 667
    move-result-object v2

    .line 668
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    add-int/lit8 v1, v1, 0x1

    .line 673
    goto :goto_8

    .line 674
    :cond_a
    :goto_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 677
    move-result-object p0

    .line 678
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 684
    move-result-object p0

    .line 685
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 691
    move-result-object p0

    .line 692
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 698
    move-result-object p0

    .line 699
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 702
    return-void
.end method

.method public final enableNetworkAndMaybeConnect(I)V
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq v0, p1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 6
    if-nez v0, :cond_0

    .line 8
    goto :goto_3

    .line 9
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x3

    .line 14
    if-ne v0, v1, :cond_2

    .line 16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    move-result-wide v0

    .line 20
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v2, p1, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v2

    .line 33
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    const-string v4, "Failed to enable network "

    .line 37
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    const-string v3, "WifiManagerAdapter"

    .line 53
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    .line 58
    const-class v3, Landroid/net/ConnectivityManager;

    .line 60
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 66
    const/4 v3, 0x1

    .line 67
    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_1

    .line 77
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->connect(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    goto :goto_1

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    goto :goto_2

    .line 88
    :cond_1
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    return-void

    .line 92
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 95
    throw p0

    .line 96
    :cond_2
    :goto_3
    return-void
.end method

.method public final enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_WIFI"

    .line 20
    filled-new-array {v1}, [Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public final evaluateAndMigrateDPMAPIs(Landroid/database/Cursor;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "evaluateAndMigrateDPMAPIs - END"

    .line 4
    const-string v1, "WifiPolicyService"

    .line 6
    const-string/jumbo v2, "evaluateAndMigrateDPMAPIs - START"

    .line 9
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 15
    :cond_0
    const-string v2, "adminUid"

    .line 17
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 20
    move-result v2

    .line 21
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 24
    move-result v2

    .line 25
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    .line 28
    move-result-object v3

    .line 29
    if-nez v3, :cond_1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const-string/jumbo v4, "minimumRequiredSecurity"

    .line 35
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 38
    move-result v4

    .line 39
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_2

    .line 45
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 47
    check-cast v5, Landroid/content/ComponentName;

    .line 49
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 51
    check-cast v6, Ljava/lang/Integer;

    .line 53
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 56
    move-result v6

    .line 57
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 60
    move-result v6

    .line 61
    invoke-static {v5, v6, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setMinimumRequiredWifiSecurityLevel(Landroid/content/ComponentName;II)V

    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_5

    .line 67
    :catch_0
    move-exception p0

    .line 68
    goto :goto_3

    .line 69
    :cond_2
    :goto_0
    const-string/jumbo v4, "wifiSsidRestriction"

    .line 72
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 75
    move-result v4

    .line 76
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 79
    move-result v4

    .line 80
    const/4 v5, 0x1

    .line 81
    if-ne v4, v5, :cond_3

    .line 83
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 85
    check-cast v4, Landroid/content/ComponentName;

    .line 87
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 89
    check-cast v3, Ljava/lang/Integer;

    .line 91
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 94
    move-result v3

    .line 95
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 98
    move-result v3

    .line 99
    invoke-virtual {p0, v4, v3, v2, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setSsidAllowDenyList(Landroid/content/ComponentName;IIZ)Z

    .line 102
    :cond_3
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 105
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    if-nez v2, :cond_0

    .line 108
    :goto_2
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    goto :goto_4

    .line 112
    :goto_3
    :try_start_1
    const-string/jumbo p1, "evaluateAndMigrateDPMAPIs"

    .line 115
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    goto :goto_2

    .line 119
    :goto_4
    return-void

    .line 120
    :goto_5
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    throw p0
.end method

.method public final evaluateAndMigrateUserRestrictionAPIs(Landroid/database/Cursor;)V
    .locals 10

    .line 1
    const-string/jumbo v0, "evaluateAndMigrateUserRestrictionAPIs - END"

    .line 4
    const-string v1, "WifiPolicyService"

    .line 6
    const-string/jumbo v2, "evaluateAndMigrateUserRestrictionAPIs - START"

    .line 9
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 15
    const/4 v2, -0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    move v7, v2

    .line 18
    move v4, v3

    .line 19
    move v5, v4

    .line 20
    move v6, v5

    .line 21
    :cond_0
    const-string v8, "allowWifi"

    .line 23
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 26
    move-result v8

    .line 27
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 30
    move-result v8

    .line 31
    const/4 v9, 0x1

    .line 32
    if-eqz v8, :cond_1

    .line 34
    const-string v8, "allowWifiStateChanges"

    .line 36
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 39
    move-result v8

    .line 40
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 43
    move-result v8

    .line 44
    if-nez v8, :cond_2

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_4

    .line 49
    :catch_0
    move-exception p0

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    :goto_0
    move v4, v9

    .line 52
    :cond_2
    const-string v8, "allowUserProfiles"

    .line 54
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 57
    move-result v8

    .line 58
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 61
    move-result v8

    .line 62
    if-nez v8, :cond_3

    .line 64
    move v5, v9

    .line 65
    :cond_3
    const-string v8, "allowAutomaticConnection"

    .line 67
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 70
    move-result v8

    .line 71
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    .line 74
    move-result v8

    .line 75
    if-nez v8, :cond_4

    .line 77
    const-string v6, "adminUid"

    .line 79
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 82
    move-result v6

    .line 83
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 86
    move-result v7

    .line 87
    move v6, v9

    .line 88
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 91
    move-result v8

    .line 92
    if-nez v8, :cond_0

    .line 94
    if-eqz v4, :cond_5

    .line 96
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setChangeWifiStateUserRestriction(Z)V

    .line 99
    :cond_5
    if-eqz v5, :cond_6

    .line 101
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setAddWifiConfigUserRestriction(Z)V

    .line 104
    :cond_6
    if-eqz v6, :cond_7

    .line 106
    if-eq v7, v2, :cond_7

    .line 108
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    .line 111
    move-result-object p1

    .line 112
    if-eqz p1, :cond_7

    .line 114
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 116
    check-cast v2, Ljava/lang/Integer;

    .line 118
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 121
    move-result v2

    .line 122
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 124
    check-cast p1, Landroid/content/ComponentName;

    .line 126
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setAllowAutojoinGlobal(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_7
    :goto_1
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    goto :goto_3

    .line 137
    :goto_2
    :try_start_1
    const-string/jumbo p1, "evaluateAndMigrateUserRestrictionAPIs"

    .line 140
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    goto :goto_1

    .line 144
    :goto_3
    return-void

    .line 145
    :goto_4
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    throw p0
.end method

.method public final getAllNetworksByAdminUid()Ljava/util/Map;
    .locals 18

    .line 1
    const-string v0, "adminUid"

    .line 3
    const-string/jumbo v1, "networkSSID"

    .line 6
    const-string/jumbo v2, "networkKeyMgmt"

    .line 9
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    .line 12
    move-result-object v3

    .line 13
    move-object/from16 v4, p0

    .line 15
    iget-object v4, v4, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 17
    const-string v5, "WIFI_CONF"

    .line 19
    const/4 v6, 0x0

    .line 20
    invoke-virtual {v4, v5, v3, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    move-result v4

    .line 30
    const-string v5, "WifiPolicyService"

    .line 32
    if-eqz v4, :cond_0

    .line 34
    const-string/jumbo v0, "getAllNetworksByAdminUid - cv is empty or null"

    .line 37
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-object v6

    .line 41
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    const-string/jumbo v6, "getAllNetworksByAdminUid - cv entries: "

    .line 46
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 52
    move-result v6

    .line 53
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v4

    .line 60
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v4, Landroid/util/ArrayMap;

    .line 65
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 68
    const/4 v7, 0x0

    .line 69
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 72
    move-result v8

    .line 73
    if-ge v7, v8, :cond_a

    .line 75
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    move-result-object v8

    .line 79
    check-cast v8, Landroid/content/ContentValues;

    .line 81
    if-nez v8, :cond_1

    .line 83
    :goto_1
    move-object/from16 v16, v0

    .line 85
    move-object/from16 v17, v1

    .line 87
    goto/16 :goto_5

    .line 89
    :cond_1
    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 92
    move-result-object v9

    .line 93
    if-nez v9, :cond_2

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {v8, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    move-result-object v10

    .line 100
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    move-result v11

    .line 104
    if-eqz v11, :cond_3

    .line 106
    goto :goto_1

    .line 107
    :cond_3
    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object v8

    .line 111
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 114
    move-result v11

    .line 115
    if-eqz v11, :cond_4

    .line 117
    goto :goto_1

    .line 118
    :cond_4
    new-instance v11, Landroid/net/wifi/WifiConfiguration;

    .line 120
    invoke-direct {v11}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 123
    iput-object v10, v11, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 125
    sget-object v10, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    .line 127
    new-instance v12, Ljava/util/BitSet;

    .line 129
    invoke-direct {v12}, Ljava/util/BitSet;-><init>()V

    .line 132
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 135
    move-result v13

    .line 136
    if-nez v13, :cond_8

    .line 138
    const-string v13, " "

    .line 140
    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 143
    move-result-object v8

    .line 144
    array-length v13, v8

    .line 145
    const/4 v14, 0x0

    .line 146
    :goto_2
    if-ge v14, v13, :cond_8

    .line 148
    aget-object v15, v8, v14

    .line 150
    array-length v6, v10

    .line 151
    move-object/from16 v16, v0

    .line 153
    const/16 v0, 0x2d

    .line 155
    move-object/from16 v17, v1

    .line 157
    const/16 v1, 0x5f

    .line 159
    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 162
    move-result-object v0

    .line 163
    const/4 v1, 0x0

    .line 164
    :goto_3
    if-ge v1, v6, :cond_6

    .line 166
    aget-object v15, v10, v1

    .line 168
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    move-result v15

    .line 172
    if-eqz v15, :cond_5

    .line 174
    goto :goto_4

    .line 175
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 177
    goto :goto_3

    .line 178
    :cond_6
    const/4 v1, -0x1

    .line 179
    :goto_4
    if-ltz v1, :cond_7

    .line 181
    invoke-virtual {v12, v1}, Ljava/util/BitSet;->set(I)V

    .line 184
    :cond_7
    add-int/lit8 v14, v14, 0x1

    .line 186
    move-object/from16 v0, v16

    .line 188
    move-object/from16 v1, v17

    .line 190
    goto :goto_2

    .line 191
    :cond_8
    move-object/from16 v16, v0

    .line 193
    move-object/from16 v17, v1

    .line 195
    iput-object v12, v11, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 197
    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    move-result-object v0

    .line 201
    if-nez v0, :cond_9

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    .line 205
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    invoke-virtual {v4, v9, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 213
    const-string/jumbo v1, "getAllNetworksByAdminUid - adding network for admin: "

    .line 216
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    move-result-object v0

    .line 226
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    move-result-object v0

    .line 233
    check-cast v0, Ljava/util/List;

    .line 235
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 240
    move-object/from16 v0, v16

    .line 242
    move-object/from16 v1, v17

    .line 244
    goto/16 :goto_0

    .line 246
    :cond_a
    return-object v4
.end method

.method public final getAllWifiSsidBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    const/4 v0, 0x0

    .line 7
    const-string v1, "WIFI_SSID_BLACK_WHITE_LIST"

    .line 9
    const-string v2, "adminUid"

    .line 11
    invoke-virtual {p1, v0, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 14
    move-result-object p1

    .line 15
    new-instance v1, Ljava/util/TreeSet;

    .line 17
    invoke-direct {v1, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 20
    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 26
    new-instance p0, Ljava/util/ArrayList;

    .line 28
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    return-object p0

    .line 32
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    .line 34
    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    .line 37
    move-result v2

    .line 38
    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 41
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v1

    .line 45
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/lang/Integer;

    .line 57
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 60
    move-result v3

    .line 61
    invoke-virtual {p0, v3, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiNetworkSsidBlackWhitelist(IZ)Ljava/util/Map;

    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 71
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 74
    move-result-object v1

    .line 75
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 78
    move-result v1

    .line 79
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 85
    move-result-object p1

    .line 86
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 89
    move-result-object p1

    .line 90
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_2

    .line 96
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Ljava/util/Map$Entry;

    .line 102
    new-instance v2, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;

    .line 104
    invoke-direct {v2}, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;-><init>()V

    .line 107
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Ljava/lang/Integer;

    .line 113
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 116
    move-result v3

    .line 117
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 119
    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    .line 122
    move-result-object v3

    .line 123
    iput-object v3, v2, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->adminPackageName:Ljava/lang/String;

    .line 125
    new-instance v3, Ljava/util/ArrayList;

    .line 127
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Ljava/util/Map;

    .line 133
    const-string v4, "BLACKLIST"

    .line 135
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Ljava/util/Collection;

    .line 141
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 144
    iput-object v3, v2, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->entries:Ljava/util/List;

    .line 146
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    goto :goto_1

    .line 150
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 152
    const-string/jumbo p1, "getAllWifiSsidBlackLists: list size = "

    .line 155
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 161
    move-result p1

    .line 162
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object p0

    .line 169
    const-string p1, "WifiPolicyService"

    .line 171
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-object v0
.end method

.method public final getAllWifiSsidWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 6
    const/4 v0, 0x0

    .line 7
    const-string v1, "WIFI_SSID_BLACK_WHITE_LIST"

    .line 9
    const-string v2, "adminUid"

    .line 11
    invoke-virtual {p1, v0, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 14
    move-result-object p1

    .line 15
    new-instance v1, Ljava/util/TreeSet;

    .line 17
    invoke-direct {v1, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 20
    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 26
    new-instance p0, Ljava/util/ArrayList;

    .line 28
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    return-object p0

    .line 32
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    .line 34
    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    .line 37
    move-result v2

    .line 38
    invoke-direct {p1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 41
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v1

    .line 45
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/lang/Integer;

    .line 57
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 60
    move-result v3

    .line 61
    invoke-virtual {p0, v3, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiNetworkSsidBlackWhitelist(IZ)Ljava/util/Map;

    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 71
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 74
    move-result-object v1

    .line 75
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 78
    move-result v1

    .line 79
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 85
    move-result-object p1

    .line 86
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 89
    move-result-object p1

    .line 90
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_2

    .line 96
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Ljava/util/Map$Entry;

    .line 102
    new-instance v2, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;

    .line 104
    invoke-direct {v2}, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;-><init>()V

    .line 107
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 110
    move-result-object v3

    .line 111
    check-cast v3, Ljava/lang/Integer;

    .line 113
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 116
    move-result v3

    .line 117
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 119
    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    .line 122
    move-result-object v3

    .line 123
    iput-object v3, v2, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->adminPackageName:Ljava/lang/String;

    .line 125
    new-instance v3, Ljava/util/ArrayList;

    .line 127
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Ljava/util/Map;

    .line 133
    const-string v4, "WHITELIST"

    .line 135
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Ljava/util/Collection;

    .line 141
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 144
    iput-object v3, v2, Lcom/samsung/android/knox/net/wifi/WifiControlInfo;->entries:Ljava/util/List;

    .line 146
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    goto :goto_1

    .line 150
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 152
    const-string/jumbo p1, "getAllWifiSsidWhiteLists: list size = "

    .line 155
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 161
    move-result p1

    .line 162
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    move-result-object p0

    .line 169
    const-string p1, "WifiPolicyService"

    .line 171
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-object v0
.end method

.method public final getAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string p1, "WIFI"

    .line 5
    const-string v0, "allowUserChanges"

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p0

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Boolean;

    .line 28
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, 0x1

    .line 36
    :goto_0
    const-string/jumbo p0, "getAllowUserPolicyChanges: "

    .line 39
    const-string v0, "WifiPolicyService"

    .line 41
    invoke-static {p0, v0, p1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    return p1
.end method

.method public final getAllowUserProfiles(Lcom/samsung/android/knox/ContextInfo;ZI)Z
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p3, v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 7
    move-result p3

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 10
    const-string p1, "WIFI"

    .line 12
    const-string v0, "allowUserProfiles"

    .line 14
    invoke-virtual {p0, p3, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p0

    .line 22
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_2

    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Ljava/lang/Boolean;

    .line 34
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 p1, 0x1

    .line 42
    :goto_0
    if-nez p1, :cond_3

    .line 44
    if-eqz p2, :cond_3

    .line 46
    const p0, 0x104049a

    .line 49
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 52
    :cond_3
    const-string/jumbo p0, "getAllowUserProfiles: "

    .line 55
    const-string p2, "WifiPolicyService"

    .line 57
    invoke-static {p0, p2, p1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 60
    return p1
.end method

.method public final getAuthConfigFromDb(Ljava/lang/String;)Ljava/util/List;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-string/jumbo v1, "host"

    .line 9
    const-string/jumbo v2, "port"

    .line 12
    const-string/jumbo v3, "username"

    .line 15
    const-string/jumbo v4, "password"

    .line 18
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    .line 21
    move-result-object v5

    .line 22
    const-string/jumbo v6, "networkSSID"

    .line 25
    invoke-static {v6, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 28
    move-result-object p1

    .line 29
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 31
    const-string v6, "WifiProxyAuthTable"

    .line 33
    invoke-virtual {p0, v6, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object p0

    .line 43
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/content/ContentValues;

    .line 55
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v7

    .line 67
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    if-nez v6, :cond_0

    .line 73
    sget v6, Lcom/samsung/android/knox/net/AuthConfig;->ANY_PORT:I

    .line 75
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object v6

    .line 79
    :cond_0
    new-instance v8, Lcom/samsung/android/knox/net/AuthConfig;

    .line 81
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 84
    move-result v6

    .line 85
    invoke-direct {v8, v5, v6, v7, p1}, Lcom/samsung/android/knox/net/AuthConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    return-object v0
.end method

.method public final getAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string p1, "WIFI"

    .line 5
    const-string v0, "allowAutomaticConnection"

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p0

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Boolean;

    .line 28
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, 0x1

    .line 36
    :goto_0
    const-string/jumbo p0, "getAutomaticConnectionToWifi: "

    .line 39
    const-string v0, "WifiPolicyService"

    .line 41
    invoke-static {p0, v0, p1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    return p1
.end method

.method public final getBlockedList$1(I)Ljava/util/Set;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "WIFI"

    .line 6
    const-string/jumbo v2, "blockedSSIDList"

    .line 9
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    new-instance p1, Ljava/util/HashSet;

    .line 15
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 18
    if-eqz p0, :cond_0

    .line 20
    const-string v1, ","

    .line 22
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    array-length v1, p0

    .line 27
    :goto_0
    if-ge v0, v1, :cond_0

    .line 29
    aget-object v2, p0, v0

    .line 31
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-object p1
.end method

.method public final getBlockedNetworks(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    new-instance p1, Ljava/util/LinkedList;

    .line 6
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 9
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 11
    const-string/jumbo v0, "blockedSSIDList"

    .line 14
    const/4 v1, 0x0

    .line 15
    const-string v2, "WIFI"

    .line 17
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 20
    move-result-object p0

    .line 21
    new-instance v0, Ljava/util/HashSet;

    .line 23
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 26
    check-cast p0, Ljava/util/ArrayList;

    .line 28
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object p0

    .line 32
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 38
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/lang/String;

    .line 44
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_0

    .line 50
    const-string v2, ","

    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 59
    move-result-object v1

    .line 60
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 67
    move-result-object p0

    .line 68
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 74
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/String;

    .line 80
    invoke-static {v0}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    return-object p1
.end method

.method public final getCallerInfoFromUid(I)Landroid/util/Pair;
    .locals 10

    .line 1
    const-string/jumbo v0, "getCallerInfoFromUid START - parentUid = "

    .line 4
    const-string v1, "WifiPolicyService"

    .line 6
    invoke-static {p1, v0, v1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string v0, "adminName"

    .line 11
    const-string/jumbo v2, "isPseudoAdmin"

    .line 14
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 18
    const-string v4, "adminUid"

    .line 20
    filled-new-array {v4}, [Ljava/lang/String;

    .line 23
    move-result-object v5

    .line 24
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 27
    move-result-object v6

    .line 28
    filled-new-array {v6}, [Ljava/lang/String;

    .line 31
    move-result-object v6

    .line 32
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 34
    const-string v8, "ADMIN_INFO"

    .line 36
    invoke-virtual {v7, v8, v5, v6, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 43
    move-result v5

    .line 44
    const/4 v6, 0x0

    .line 45
    if-eqz v5, :cond_0

    .line 47
    const-string/jumbo p0, "getCallerInfoFromUid - cv is empty or null"

    .line 50
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-object v6

    .line 54
    :cond_0
    const/4 v5, 0x0

    .line 55
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v7

    .line 59
    check-cast v7, Landroid/content/ContentValues;

    .line 61
    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v7

    .line 65
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    move-result-object v3

    .line 69
    check-cast v3, Landroid/content/ContentValues;

    .line 71
    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 74
    move-result-object v3

    .line 75
    const/4 v9, -0x1

    .line 76
    if-eqz v3, :cond_3

    .line 78
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    move-result v3

    .line 82
    if-eqz v3, :cond_3

    .line 84
    filled-new-array {v4}, [Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    const-string v2, "0"

    .line 94
    filled-new-array {v7, v2}, [Ljava/lang/String;

    .line 97
    move-result-object v2

    .line 98
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 100
    invoke-virtual {p0, v8, v0, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_1

    .line 110
    const-string/jumbo p0, "getWorkProfileUid - cv is empty or null"

    .line 113
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    move p1, v9

    .line 117
    goto :goto_1

    .line 118
    :cond_1
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    move-result-object p0

    .line 122
    check-cast p0, Landroid/content/ContentValues;

    .line 124
    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 127
    move-result-object p0

    .line 128
    if-nez p0, :cond_2

    .line 130
    move p0, v9

    .line 131
    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 135
    move-result p0

    .line 136
    :goto_0
    move p1, p0

    .line 137
    :cond_3
    :goto_1
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 140
    move-result-object p0

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    .line 143
    const-string/jumbo v2, "getCallerInfoFromUid END - profileUid = "

    .line 146
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    const-string v2, ", componentName = "

    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    move-result-object v0

    .line 164
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    if-eqz p0, :cond_5

    .line 169
    if-ne p1, v9, :cond_4

    .line 171
    goto :goto_2

    .line 172
    :cond_4
    new-instance v0, Landroid/util/Pair;

    .line 174
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    move-result-object p1

    .line 178
    invoke-direct {v0, p1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    return-object v0

    .line 182
    :cond_5
    :goto_2
    return-object v6
.end method

.method public final getMinimumRequiredSecurity(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string p1, "WIFI"

    .line 5
    const-string/jumbo v0, "minimumRequiredSecurity"

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getIntListAsUser(IILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Integer;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result p1

    .line 33
    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getSecurityLevel(I)I

    .line 36
    move-result v0

    .line 37
    invoke-static {v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getSecurityLevel(I)I

    .line 40
    move-result v2

    .line 41
    if-le v0, v2, :cond_0

    .line 43
    move v1, p1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string/jumbo p0, "getMinimumRequiredSecurity: "

    .line 48
    const-string p1, "WifiPolicyService"

    .line 50
    invoke-static {v1, p0, p1}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    return v1
.end method

.method public final getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 12

    .line 1
    const-string v0, "adminUid"

    .line 3
    const-string/jumbo v1, "networkSSID"

    .line 6
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    invoke-static {p2}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 18
    filled-new-array {v2, p2}, [Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 22
    const-string/jumbo v5, "networProxyName"

    .line 25
    const-string/jumbo v6, "networkProxyPort"

    .line 28
    const-string/jumbo v2, "networkSSID"

    .line 31
    const-string/jumbo v3, "networkKeyMgmt"

    .line 34
    const-string/jumbo v4, "networkProxyState"

    .line 37
    const-string/jumbo v7, "networkProxyExclList"

    .line 40
    const-string/jumbo v8, "networkProxyPacUrl"

    .line 43
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 49
    const-string v4, "WIFI_CONF"

    .line 51
    invoke-virtual {v3, v4, v0, p2, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 58
    move-result v0

    .line 59
    const/4 v2, 0x0

    .line 60
    const-string v3, "WifiPolicyService"

    .line 62
    if-eqz v0, :cond_0

    .line 64
    const-string/jumbo p0, "getNetworkConfiguration - cv is empty or null"

    .line 67
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-object v2

    .line 71
    :cond_0
    const/4 v0, 0x0

    .line 72
    move v4, v0

    .line 73
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 76
    move-result v5

    .line 77
    if-ge v4, v5, :cond_6

    .line 79
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v5

    .line 83
    check-cast v5, Landroid/content/ContentValues;

    .line 85
    if-nez v5, :cond_1

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object v6

    .line 92
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    move-result v7

    .line 96
    if-eqz v7, :cond_2

    .line 98
    goto :goto_1

    .line 99
    :cond_2
    const-string/jumbo v7, "networkKeyMgmt"

    .line 102
    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object v7

    .line 106
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    move-result v8

    .line 110
    if-eqz v8, :cond_3

    .line 112
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 114
    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {p0, v6, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkFromWifiModule(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    .line 118
    move-result-object p0

    .line 119
    const-string/jumbo p1, "networkProxyState"

    .line 122
    invoke-virtual {v5, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 125
    move-result-object p1

    .line 126
    if-eqz p1, :cond_5

    .line 128
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    .line 131
    move-result-object p2

    .line 132
    if-eqz p2, :cond_5

    .line 134
    const-string/jumbo p2, "networkProxyPort"

    .line 137
    invoke-virtual {v5, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 140
    move-result-object p2

    .line 141
    const-string/jumbo v1, "networProxyName"

    .line 144
    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    move-result-object v6

    .line 148
    if-eqz p2, :cond_4

    .line 150
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 153
    move-result v0

    .line 154
    :cond_4
    move v7, v0

    .line 155
    const-string/jumbo p2, "networkProxyPacUrl"

    .line 158
    invoke-virtual {v5, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    move-result-object v8

    .line 162
    const-string/jumbo p2, "networkProxyExclList"

    .line 165
    invoke-virtual {v5, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    move-result-object p2

    .line 169
    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertStringToArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 172
    move-result-object p2

    .line 173
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 176
    move-result-object v10

    .line 177
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 180
    move-result v11

    .line 181
    const/4 v9, 0x0

    .line 182
    invoke-static/range {v6 .. v11}, Lcom/android/server/enterprise/wifi/WifiPolicy;->createProxyProperties(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/samsung/android/knox/net/ProxyProperties;

    .line 185
    move-result-object p1

    .line 186
    invoke-static {p1}, Lcom/android/server/enterprise/utils/NetworkUtils;->convertToProxyInfo(Lcom/samsung/android/knox/net/ProxyProperties;)Landroid/net/ProxyInfo;

    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 193
    :cond_5
    return-object p0

    .line 194
    :cond_6
    const-string/jumbo p0, "getNetworkConfiguration - network not found in database - callingUid: "

    .line 197
    invoke-static {p1, p0, v3}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 200
    return-object v2
.end method

.method public final getNetworkFromWifiModule(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    move-result-wide v2

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->getConfiguredNetworks()Ljava/util/List;

    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_3

    .line 22
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p0

    .line 26
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_3

    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 38
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 40
    if-eqz v4, :cond_1

    .line 42
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    .line 45
    move-result v4

    .line 46
    if-nez v4, :cond_1

    .line 48
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_2

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_1

    .line 67
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    move-result v4

    .line 71
    if-nez v4, :cond_1

    .line 73
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 75
    sget-object v5, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    .line 77
    invoke-static {v4, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    if-eqz v4, :cond_1

    .line 87
    move-object v1, v0

    .line 88
    goto :goto_1

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    return-object v1

    .line 95
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    throw p0
.end method

.method public final getNetworkSSIDList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    const-string/jumbo v0, "networkSSID"

    .line 12
    filled-new-array {v0}, [Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 18
    const-string v2, "WIFI_CONF"

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {p0, v2, v3, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 24
    move-result-object p0

    .line 25
    const/4 v1, 0x0

    .line 26
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 29
    move-result v2

    .line 30
    if-ge v1, v2, :cond_0

    .line 32
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Landroid/content/ContentValues;

    .line 38
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    return-object p1
.end method

.method public final getPasswordHidden(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string p1, "WIFI"

    .line 5
    const-string/jumbo v0, "passwordHidden"

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Boolean;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    move-result p1

    .line 33
    const/4 v0, 0x1

    .line 34
    if-ne p1, v0, :cond_0

    .line 36
    move v1, p1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-string/jumbo p0, "getPasswordHidden: "

    .line 41
    const-string p1, "WifiPolicyService"

    .line 43
    invoke-static {p0, p1, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 46
    return v1
.end method

.method public final getPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string p1, "WIFI"

    .line 5
    const-string/jumbo v0, "promptCredentials"

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 17
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Boolean;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x1

    .line 37
    :goto_0
    const-string/jumbo p0, "getPromptCredentialsEnabled: "

    .line 40
    const-string v0, "WifiPolicyService"

    .line 42
    invoke-static {p0, v0, p1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    return p1
.end method

.method public final getWifiApSetting(Lcom/samsung/android/knox/ContextInfo;)Landroid/net/wifi/WifiConfiguration;
    .locals 7

    .line 1
    const-string v0, "Convert fail, unsupported security type :"

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 9
    move-result-wide v1

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 20
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    const-string p1, "WifiPolicyService"

    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz p0, :cond_3

    .line 26
    :try_start_1
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    .line 28
    invoke-direct {v4}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 31
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    .line 34
    move-result-object v5

    .line 35
    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_2

    .line 43
    const/4 v6, 0x1

    .line 44
    if-eq v5, v6, :cond_1

    .line 46
    const/4 v6, 0x3

    .line 47
    if-eq v5, v6, :cond_0

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    .line 57
    move-result p0

    .line 58
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    return-object v3

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    :try_start_2
    iget-object p0, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 76
    const/16 v0, 0x8

    .line 78
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    iget-object p0, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 84
    const/4 v0, 0x4

    .line 85
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    iget-object p0, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 91
    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    :goto_0
    move-object v3, v4

    .line 96
    :cond_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 99
    const-string/jumbo p0, "getWifiApSetting"

    .line 102
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-object v3

    .line 106
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 109
    throw p0
.end method

.method public final getWifiProfile(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 6
    move-result-object v1

    .line 7
    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v2

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_0

    .line 16
    return-object v3

    .line 17
    :cond_0
    move-object/from16 v2, p2

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_1

    .line 25
    return-object v3

    .line 26
    :cond_1
    new-instance v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;

    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-direct {v4, v5}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;-><init>(I)V

    .line 32
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 34
    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    .line 37
    move-result-object v6

    .line 38
    const-string v7, ""

    .line 40
    if-eqz v6, :cond_3

    .line 42
    invoke-static {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->isUcsStoreUri(Ljava/lang/String;)Z

    .line 45
    move-result v8

    .line 46
    if-eqz v8, :cond_2

    .line 48
    invoke-static {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v8

    .line 52
    if-eqz v8, :cond_3

    .line 54
    new-instance v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;

    .line 56
    invoke-direct {v4, v8}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-static {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v6

    .line 63
    iput-object v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    const-string/jumbo v8, "keystore://USRCERT_"

    .line 69
    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 72
    move-result-object v6

    .line 73
    iput-object v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    .line 75
    :cond_3
    :goto_0
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 77
    invoke-static {v6}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object v6

    .line 81
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    move-result v8

    .line 85
    if-nez v8, :cond_4

    .line 87
    iput-object v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    .line 89
    :cond_4
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 91
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    move-result v8

    .line 95
    if-nez v8, :cond_5

    .line 97
    iput-object v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->psk:Ljava/lang/String;

    .line 99
    :cond_5
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 101
    aget-object v6, v6, v5

    .line 103
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    move-result v8

    .line 107
    if-nez v8, :cond_6

    .line 109
    iput-object v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    .line 111
    :cond_6
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 113
    const/4 v8, 0x1

    .line 114
    aget-object v6, v6, v8

    .line 116
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    move-result v9

    .line 120
    if-nez v9, :cond_7

    .line 122
    iput-object v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    .line 124
    :cond_7
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 126
    const/4 v9, 0x2

    .line 127
    aget-object v6, v6, v9

    .line 129
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 132
    move-result v10

    .line 133
    if-nez v10, :cond_8

    .line 135
    iput-object v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    .line 137
    :cond_8
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 139
    const/4 v10, 0x3

    .line 140
    aget-object v6, v6, v10

    .line 142
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    move-result v11

    .line 146
    if-nez v11, :cond_9

    .line 148
    iput-object v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    .line 150
    :cond_9
    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 152
    add-int/2addr v6, v8

    .line 153
    iput v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    .line 155
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 157
    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    .line 160
    move-result-object v6

    .line 161
    if-eqz v6, :cond_a

    .line 163
    iput-object v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    .line 165
    :cond_a
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 167
    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    .line 170
    move-result-object v6

    .line 171
    if-eqz v6, :cond_b

    .line 173
    iput-object v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    .line 175
    :cond_b
    sget-object v6, Lcom/android/server/enterprise/wifi/WifiPolicy;->PHASE2_STRINGS:[Ljava/lang/String;

    .line 177
    iget-object v11, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 179
    invoke-virtual {v11}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    .line 182
    move-result v11

    .line 183
    aget-object v6, v6, v11

    .line 185
    if-eqz v6, :cond_e

    .line 187
    const-string v11, "NULL"

    .line 189
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    move-result v11

    .line 193
    if-nez v11, :cond_d

    .line 195
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    move-result v11

    .line 199
    if-eqz v11, :cond_c

    .line 201
    goto :goto_1

    .line 202
    :cond_c
    const-string v11, "auth="

    .line 204
    invoke-virtual {v6, v11, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 207
    move-result-object v6

    .line 208
    iput-object v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase2:Ljava/lang/String;

    .line 210
    goto :goto_2

    .line 211
    :cond_d
    :goto_1
    const-string v6, "None"

    .line 213
    iput-object v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase2:Ljava/lang/String;

    .line 215
    :cond_e
    :goto_2
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 217
    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    .line 220
    move-result-object v6

    .line 221
    if-eqz v6, :cond_f

    .line 223
    array-length v11, v6

    .line 224
    if-lez v11, :cond_f

    .line 226
    aget-object v6, v6, v5

    .line 228
    iput-object v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    .line 230
    if-eqz v6, :cond_f

    .line 232
    const-string/jumbo v11, "keystore://CACERT_"

    .line 235
    invoke-virtual {v6, v11, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 238
    move-result-object v6

    .line 239
    iput-object v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    .line 241
    :cond_f
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 243
    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    .line 246
    move-result-object v6

    .line 247
    if-eqz v6, :cond_12

    .line 249
    iput-object v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 251
    const-string/jumbo v11, "keystore://"

    .line 254
    invoke-virtual {v6, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 257
    move-result v6

    .line 258
    if-eqz v6, :cond_10

    .line 260
    iget-object v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 262
    const-string/jumbo v11, "keystore://USRPKEY_"

    .line 265
    invoke-virtual {v6, v11, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 268
    move-result-object v6

    .line 269
    iput-object v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 271
    goto :goto_3

    .line 272
    :cond_10
    iget-object v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 274
    invoke-static {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->isUcsStoreUri(Ljava/lang/String;)Z

    .line 277
    move-result v6

    .line 278
    if-eqz v6, :cond_11

    .line 280
    iget-object v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 282
    invoke-static {v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    .line 285
    move-result-object v6

    .line 286
    iput-object v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 288
    goto :goto_3

    .line 289
    :cond_11
    iget-object v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 291
    const-string v11, "USRPKEY_"

    .line 293
    invoke-virtual {v6, v11, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 296
    move-result-object v6

    .line 297
    iput-object v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 299
    :cond_12
    :goto_3
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 301
    invoke-virtual {v6, v5}, Ljava/util/BitSet;->get(I)Z

    .line 304
    move-result v6

    .line 305
    const/4 v7, -0x1

    .line 306
    if-eqz v6, :cond_14

    .line 308
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 310
    invoke-virtual {v6, v8}, Ljava/util/BitSet;->get(I)Z

    .line 313
    move-result v6

    .line 314
    if-eqz v6, :cond_13

    .line 316
    move v10, v8

    .line 317
    goto/16 :goto_5

    .line 319
    :cond_13
    move v10, v5

    .line 320
    goto/16 :goto_5

    .line 322
    :cond_14
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 324
    invoke-virtual {v6, v8}, Ljava/util/BitSet;->get(I)Z

    .line 327
    move-result v6

    .line 328
    if-eqz v6, :cond_15

    .line 330
    move v10, v9

    .line 331
    goto/16 :goto_5

    .line 333
    :cond_15
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 335
    const/4 v11, 0x6

    .line 336
    invoke-virtual {v6, v11}, Ljava/util/BitSet;->get(I)Z

    .line 339
    move-result v6

    .line 340
    const/16 v12, 0x8

    .line 342
    if-eqz v6, :cond_16

    .line 344
    :goto_4
    move v10, v12

    .line 345
    goto/16 :goto_5

    .line 347
    :cond_16
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 349
    invoke-virtual {v6, v12}, Ljava/util/BitSet;->get(I)Z

    .line 352
    move-result v6

    .line 353
    if-eqz v6, :cond_17

    .line 355
    const/16 v10, 0x1f

    .line 357
    goto/16 :goto_5

    .line 359
    :cond_17
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 361
    invoke-virtual {v6, v9}, Ljava/util/BitSet;->get(I)Z

    .line 364
    move-result v6

    .line 365
    const/4 v12, 0x7

    .line 366
    const/4 v13, 0x4

    .line 367
    const/16 v14, 0x12

    .line 369
    const/16 v15, 0x13

    .line 371
    const/4 v3, 0x5

    .line 372
    if-eqz v6, :cond_20

    .line 374
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 376
    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    .line 379
    move-result v6

    .line 380
    if-nez v6, :cond_18

    .line 382
    move v10, v3

    .line 383
    goto/16 :goto_5

    .line 385
    :cond_18
    if-ne v6, v9, :cond_19

    .line 387
    move v10, v11

    .line 388
    goto/16 :goto_5

    .line 390
    :cond_19
    if-ne v6, v8, :cond_1a

    .line 392
    goto :goto_4

    .line 393
    :cond_1a
    if-ne v6, v15, :cond_1b

    .line 395
    goto/16 :goto_5

    .line 397
    :cond_1b
    if-ne v6, v14, :cond_1c

    .line 399
    move v10, v13

    .line 400
    goto/16 :goto_5

    .line 402
    :cond_1c
    if-ne v6, v10, :cond_1d

    .line 404
    move v10, v15

    .line 405
    goto/16 :goto_5

    .line 407
    :cond_1d
    if-ne v6, v3, :cond_1e

    .line 409
    const/16 v10, 0x19

    .line 411
    goto/16 :goto_5

    .line 413
    :cond_1e
    if-ne v6, v11, :cond_1f

    .line 415
    const/16 v10, 0x1c

    .line 417
    goto/16 :goto_5

    .line 419
    :cond_1f
    if-ne v6, v13, :cond_32

    .line 421
    const/16 v10, 0x16

    .line 423
    goto/16 :goto_5

    .line 425
    :cond_20
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 427
    invoke-virtual {v6, v12}, Ljava/util/BitSet;->get(I)Z

    .line 430
    move-result v6

    .line 431
    if-eqz v6, :cond_29

    .line 433
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 435
    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    .line 438
    move-result v6

    .line 439
    if-nez v6, :cond_21

    .line 441
    const/16 v10, 0x9

    .line 443
    goto/16 :goto_5

    .line 445
    :cond_21
    if-ne v6, v9, :cond_22

    .line 447
    const/16 v10, 0xb

    .line 449
    goto/16 :goto_5

    .line 451
    :cond_22
    if-ne v6, v8, :cond_23

    .line 453
    const/16 v10, 0xd

    .line 455
    goto/16 :goto_5

    .line 457
    :cond_23
    if-ne v6, v15, :cond_24

    .line 459
    const/16 v10, 0xf

    .line 461
    goto/16 :goto_5

    .line 463
    :cond_24
    if-ne v6, v14, :cond_25

    .line 465
    const/16 v10, 0x11

    .line 467
    goto :goto_5

    .line 468
    :cond_25
    if-ne v6, v10, :cond_26

    .line 470
    const/16 v10, 0x14

    .line 472
    goto :goto_5

    .line 473
    :cond_26
    if-ne v6, v3, :cond_27

    .line 475
    const/16 v10, 0x1a

    .line 477
    goto :goto_5

    .line 478
    :cond_27
    if-ne v6, v11, :cond_28

    .line 480
    const/16 v10, 0x1d

    .line 482
    goto :goto_5

    .line 483
    :cond_28
    if-ne v6, v13, :cond_32

    .line 485
    const/16 v10, 0x17

    .line 487
    goto :goto_5

    .line 488
    :cond_29
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 490
    const/16 v12, 0x18

    .line 492
    invoke-virtual {v6, v12}, Ljava/util/BitSet;->get(I)Z

    .line 495
    move-result v6

    .line 496
    if-eqz v6, :cond_32

    .line 498
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 500
    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    .line 503
    move-result v6

    .line 504
    if-nez v6, :cond_2a

    .line 506
    const/16 v10, 0xa

    .line 508
    goto :goto_5

    .line 509
    :cond_2a
    if-ne v6, v9, :cond_2b

    .line 511
    const/16 v10, 0xc

    .line 513
    goto :goto_5

    .line 514
    :cond_2b
    if-ne v6, v8, :cond_2c

    .line 516
    const/16 v10, 0xe

    .line 518
    goto :goto_5

    .line 519
    :cond_2c
    if-ne v6, v15, :cond_2d

    .line 521
    const/16 v10, 0x10

    .line 523
    goto :goto_5

    .line 524
    :cond_2d
    if-ne v6, v14, :cond_2e

    .line 526
    move v10, v14

    .line 527
    goto :goto_5

    .line 528
    :cond_2e
    if-ne v6, v10, :cond_2f

    .line 530
    const/16 v10, 0x15

    .line 532
    goto :goto_5

    .line 533
    :cond_2f
    if-ne v6, v3, :cond_30

    .line 535
    const/16 v10, 0x1b

    .line 537
    goto :goto_5

    .line 538
    :cond_30
    if-ne v6, v11, :cond_31

    .line 540
    const/16 v10, 0x1e

    .line 542
    goto :goto_5

    .line 543
    :cond_31
    if-ne v6, v13, :cond_32

    .line 545
    goto/16 :goto_4

    .line 547
    :cond_32
    move v10, v7

    .line 548
    :goto_5
    if-eq v10, v7, :cond_33

    .line 550
    sget-object v3, Lcom/android/server/enterprise/wifi/WifiPolicy;->SECURITY_LEVELS:[Ljava/lang/String;

    .line 552
    aget-object v3, v3, v10

    .line 554
    goto :goto_6

    .line 555
    :cond_33
    const/4 v3, 0x0

    .line 556
    :goto_6
    iput-object v3, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    .line 558
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    .line 561
    move-result-object v3

    .line 562
    invoke-virtual {v3}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    .line 565
    move-result-object v6

    .line 566
    sget-object v10, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    .line 568
    if-ne v6, v10, :cond_34

    .line 570
    move v6, v8

    .line 571
    goto :goto_7

    .line 572
    :cond_34
    move v6, v5

    .line 573
    :goto_7
    iput-boolean v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticIpEnabled:Z

    .line 575
    if-eqz v6, :cond_38

    .line 577
    invoke-virtual {v3}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    .line 580
    move-result-object v3

    .line 581
    if-eqz v3, :cond_38

    .line 583
    invoke-virtual {v3}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    .line 586
    move-result-object v6

    .line 587
    if-eqz v6, :cond_35

    .line 589
    invoke-virtual {v3}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    .line 592
    move-result-object v6

    .line 593
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 596
    move-result-object v6

    .line 597
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 600
    move-result-object v6

    .line 601
    if-eqz v6, :cond_35

    .line 603
    invoke-virtual {v3}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    .line 606
    move-result-object v6

    .line 607
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    .line 610
    move-result-object v6

    .line 611
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 614
    move-result-object v6

    .line 615
    iput-object v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticIp:Ljava/lang/String;

    .line 617
    invoke-virtual {v3}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    .line 620
    move-result-object v6

    .line 621
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getPrefixLength()I

    .line 624
    move-result v6

    .line 625
    invoke-static {v6}, Lcom/android/net/module/util/Inet4AddressUtils;->prefixLengthToV4NetmaskIntHTL(I)I

    .line 628
    move-result v6

    .line 629
    invoke-static {v6}, Lcom/android/net/module/util/Inet4AddressUtils;->intToInet4AddressHTL(I)Ljava/net/Inet4Address;

    .line 632
    move-result-object v6

    .line 633
    invoke-virtual {v6}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    .line 636
    move-result-object v6

    .line 637
    iput-object v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    .line 639
    :cond_35
    invoke-virtual {v3}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    .line 642
    move-result-object v6

    .line 643
    if-eqz v6, :cond_36

    .line 645
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 648
    move-result-object v6

    .line 649
    iput-object v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    .line 651
    :cond_36
    invoke-virtual {v3}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    .line 654
    move-result-object v3

    .line 655
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 658
    move-result-object v3

    .line 659
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 662
    move-result v6

    .line 663
    if-eqz v6, :cond_37

    .line 665
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 668
    move-result-object v6

    .line 669
    check-cast v6, Ljava/net/InetAddress;

    .line 671
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 674
    move-result-object v6

    .line 675
    iput-object v6, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    .line 677
    :cond_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 680
    move-result v6

    .line 681
    if-eqz v6, :cond_38

    .line 683
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 686
    move-result-object v3

    .line 687
    check-cast v3, Ljava/net/InetAddress;

    .line 689
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 692
    move-result-object v3

    .line 693
    iput-object v3, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    .line 695
    :cond_38
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    .line 698
    move-result-object v3

    .line 699
    if-nez v3, :cond_39

    .line 701
    goto :goto_8

    .line 702
    :cond_39
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    .line 705
    move-result-object v3

    .line 706
    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    .line 709
    move-result-object v3

    .line 710
    if-eqz v3, :cond_3a

    .line 712
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    .line 715
    move-result-object v3

    .line 716
    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    .line 719
    move-result-object v3

    .line 720
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 723
    move-result-object v3

    .line 724
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 727
    move-result v3

    .line 728
    if-nez v3, :cond_3a

    .line 730
    move v5, v9

    .line 731
    goto :goto_8

    .line 732
    :cond_3a
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    .line 735
    move-result-object v3

    .line 736
    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    .line 739
    move-result-object v3

    .line 740
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 743
    move-result v3

    .line 744
    if-nez v3, :cond_3b

    .line 746
    move v5, v8

    .line 747
    :cond_3b
    :goto_8
    iput v5, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyState:I

    .line 749
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    .line 752
    move-result-object v1

    .line 753
    if-eqz v1, :cond_40

    .line 755
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    .line 758
    move-result-object v3

    .line 759
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 762
    move-result v5

    .line 763
    if-nez v5, :cond_3c

    .line 765
    iput-object v3, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyHostname:Ljava/lang/String;

    .line 767
    :cond_3c
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPort()I

    .line 770
    move-result v3

    .line 771
    if-eq v3, v7, :cond_3d

    .line 773
    iput v3, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPort:I

    .line 775
    :cond_3d
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    .line 778
    move-result-object v3

    .line 779
    invoke-static {v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertArrayToString([Ljava/lang/String;)Ljava/lang/String;

    .line 782
    move-result-object v3

    .line 783
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 786
    move-result v5

    .line 787
    if-nez v5, :cond_3e

    .line 789
    invoke-static {v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertStringToArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 792
    move-result-object v3

    .line 793
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 796
    move-result-object v3

    .line 797
    iput-object v3, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    .line 799
    :cond_3e
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    .line 802
    move-result-object v1

    .line 803
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 806
    move-result-object v1

    .line 807
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 810
    move-result v3

    .line 811
    if-nez v3, :cond_3f

    .line 813
    iput-object v1, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPacUrl:Ljava/lang/String;

    .line 815
    :cond_3f
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 818
    move-result-object v1

    .line 819
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAuthConfigFromDb(Ljava/lang/String;)Ljava/util/List;

    .line 822
    move-result-object v0

    .line 823
    move-object v1, v0

    .line 824
    check-cast v1, Ljava/util/ArrayList;

    .line 826
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 829
    move-result v1

    .line 830
    if-nez v1, :cond_40

    .line 832
    iput-object v0, v4, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    .line 834
    :cond_40
    return-object v4
.end method

.method public final handleUpgradeUserRestrictionAPIs(Landroid/database/Cursor;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "upgradeUserRestrictionAPIs - END"

    .line 4
    const-string/jumbo v1, "upgradeUserRestrictionAPIs - START"

    .line 7
    const-string v2, "WifiPolicyService"

    .line 9
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 15
    const/4 v1, 0x0

    .line 16
    move v3, v1

    .line 17
    move v4, v3

    .line 18
    :cond_0
    const-string v5, "allowWifi"

    .line 20
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 23
    move-result v5

    .line 24
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 27
    move-result v5

    .line 28
    const/4 v6, 0x1

    .line 29
    if-eqz v5, :cond_1

    .line 31
    const-string v5, "allowWifiStateChanges"

    .line 33
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 36
    move-result v5

    .line 37
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 40
    move-result v5

    .line 41
    if-nez v5, :cond_2

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_4

    .line 46
    :catch_0
    move-exception p0

    .line 47
    goto :goto_2

    .line 48
    :cond_1
    :goto_0
    move v3, v6

    .line 49
    :cond_2
    const-string v5, "allowUserProfiles"

    .line 51
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 54
    move-result v5

    .line 55
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 58
    move-result v5

    .line 59
    if-nez v5, :cond_3

    .line 61
    move v4, v6

    .line 62
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 65
    move-result v5

    .line 66
    if-nez v5, :cond_0

    .line 68
    if-eqz v3, :cond_4

    .line 70
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mUserManager:Landroid/os/UserManager;

    .line 72
    const-string/jumbo v3, "no_change_wifi_state"

    .line 75
    invoke-virtual {p1, v3, v1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;Z)V

    .line 78
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setChangeWifiStateUserRestriction(Z)V

    .line 81
    :cond_4
    if-eqz v4, :cond_5

    .line 83
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mUserManager:Landroid/os/UserManager;

    .line 85
    const-string/jumbo v3, "no_add_wifi_config"

    .line 88
    invoke-virtual {p1, v3, v1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;Z)V

    .line 91
    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setAddWifiConfigUserRestriction(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_5
    :goto_1
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    goto :goto_3

    .line 98
    :goto_2
    :try_start_1
    const-string/jumbo p1, "exception inside handleUpgradeUserRestrictionAPIs"

    .line 101
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    goto :goto_1

    .line 105
    :goto_3
    return-void

    .line 106
    :goto_4
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    throw p0
.end method

.method public final isOpenWifiApAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string p1, "WIFI"

    .line 5
    const-string v0, "allowOpenWifi"

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p0

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Boolean;

    .line 28
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, 0x1

    .line 36
    :goto_0
    const-string/jumbo p0, "isOpenWifiApAllowed: "

    .line 39
    const-string v0, "WifiPolicyService"

    .line 41
    invoke-static {p0, v0, p1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    return p1
.end method

.method public final isSecurityLevelSupported(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const-string v0, "SAE"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    const-string v1, "WifiPolicyService"

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 14
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 20
    const-string p0, "SAE is not supported on this device"

    .line 22
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return v2

    .line 26
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->ACCEPTABLE_SECURITY_LEVELS:[Ljava/lang/String;

    .line 28
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    .line 30
    const-class v3, Landroid/telephony/TelephonyManager;

    .line 32
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 38
    const/4 v3, 0x1

    .line 39
    if-nez p0, :cond_1

    .line 41
    move p0, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    .line 46
    move-result p0

    .line 47
    xor-int/2addr p0, v3

    .line 48
    :goto_0
    if-eqz p0, :cond_2

    .line 50
    const/16 p0, 0x16

    .line 52
    const-string v4, ""

    .line 54
    aput-object v4, v0, p0

    .line 56
    const/16 p0, 0x17

    .line 58
    aput-object v4, v0, p0

    .line 60
    const/16 p0, 0x19

    .line 62
    aput-object v4, v0, p0

    .line 64
    const/16 p0, 0x1a

    .line 66
    aput-object v4, v0, p0

    .line 68
    const/16 p0, 0x1c

    .line 70
    aput-object v4, v0, p0

    .line 72
    const/16 p0, 0x1d

    .line 74
    aput-object v4, v0, p0

    .line 76
    :cond_2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 79
    move-result-object p0

    .line 80
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 83
    move-result p0

    .line 84
    if-nez p0, :cond_3

    .line 86
    const-string/jumbo p0, "security level not supported"

    .line 89
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return v2

    .line 93
    :cond_3
    return v3
.end method

.method public final isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string p1, "WIFI"

    .line 5
    const-string p2, "allowWifi"

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p0

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Boolean;

    .line 28
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, 0x1

    .line 36
    :goto_0
    const-string/jumbo p0, "isWifiAllowed: "

    .line 39
    const-string p2, "WifiPolicyService"

    .line 41
    invoke-static {p0, p2, p1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    return p1
.end method

.method public final isWifiApSettingUserModificationAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mIsAPSettingFromAdmin:Z

    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p1, :cond_0

    .line 6
    return v0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 9
    const-string p1, "WIFI"

    .line 11
    const-string v1, "allowWifiApSettingModification"

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object p0

    .line 22
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_2

    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Ljava/lang/Boolean;

    .line 34
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_1

    .line 40
    move v0, p1

    .line 41
    :cond_2
    const-string/jumbo p0, "isWifiApSettingUserModificationAllowed: "

    .line 44
    const-string p1, "WifiPolicyService"

    .line 46
    invoke-static {p0, p1, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 49
    return v0
.end method

.method public final isWifiMigrationNeeded(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string/jumbo v0, "isWifiMigrationNeeded - type = "

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "WifiPolicyService"

    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    const-string/jumbo v0, "wifi_network_migration"

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v0, :cond_0

    .line 23
    const-string/jumbo v0, "wifi_policy_migration"

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 32
    return v2

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 35
    invoke-virtual {p0, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    if-eqz p0, :cond_1

    .line 41
    const-string/jumbo p1, "ok"

    .line 44
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_1

    .line 50
    const-string p0, "Migration is not needed"

    .line 52
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return v2

    .line 56
    :cond_1
    const-string p0, "Migration is needed"

    .line 58
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 p0, 0x1

    .line 62
    return p0
.end method

.method public final isWifiScanningAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string p1, "WIFI"

    .line 5
    const-string v0, "allowWifiScanning"

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p0

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Boolean;

    .line 28
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, 0x1

    .line 36
    :goto_0
    return p1
.end method

.method public final isWifiSsidRestrictionActive(I)Z
    .locals 5

    .line 3
    const-string v0, "WifiPolicyService"

    const-string/jumbo v1, "isWifiSsidRestrictionActive("

    const/4 v2, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WIFI"

    const-string/jumbo v4, "wifiSsidRestriction"

    .line 4
    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Landroid/util/AndroidException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final isWifiSsidRestrictionActive(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(I)Z

    move-result p0

    return p0
.end method

.method public final isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string p1, "WIFI"

    .line 5
    const-string v0, "allowWifiStateChanges"

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p0

    .line 16
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljava/lang/Boolean;

    .line 28
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, 0x1

    .line 36
    :goto_0
    const-string/jumbo p0, "isWifiStateChangeAllowed: "

    .line 39
    const-string v0, "WifiPolicyService"

    .line 41
    invoke-static {p0, v0, p1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 44
    return p1
.end method

.method public final declared-synchronized loadWifiNetworkSsidBlackWhitelist(IZ)Ljava/util/Map;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    .line 4
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7
    const-string v1, "adminUid"

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 16
    const-string v1, "WIFI_LIST_TYPE"

    .line 18
    const-string v2, "WIFI_SSID"

    .line 20
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 26
    const-string v3, "WIFI_SSID_BLACK_WHITE_LIST"

    .line 28
    invoke-virtual {v2, v3, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Ljava/util/TreeSet;

    .line 34
    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 37
    if-eqz p2, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getBlockedList$1(I)Ljava/util/Set;

    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Ljava/util/HashSet;

    .line 45
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 48
    move-result-object p2

    .line 49
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 55
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Ljava/lang/String;

    .line 61
    invoke-static {v2}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 68
    goto :goto_0

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    goto :goto_2

    .line 71
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    .line 73
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 76
    const-string v2, "BLACKLIST"

    .line 78
    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "WHITELIST"

    .line 83
    new-instance v2, Ljava/util/TreeSet;

    .line 85
    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 88
    invoke-virtual {p2, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    check-cast v0, Ljava/util/ArrayList;

    .line 93
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_1

    .line 99
    const-string v0, "WifiPolicyService"

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    const-string v2, "Black/white list table is empty - uid: "

    .line 108
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    .line 122
    return-object p2

    .line 123
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 126
    move-result-object p1

    .line 127
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_2

    .line 133
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Landroid/content/ContentValues;

    .line 139
    const-string v1, "WIFI_LIST_TYPE"

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Ljava/util/Set;

    .line 151
    const-string v2, "WIFI_SSID"

    .line 153
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    move-result-object v0

    .line 157
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    goto :goto_1

    .line 161
    :cond_2
    monitor-exit p0

    .line 162
    return-object p2

    .line 163
    :goto_2
    monitor-exit p0

    .line 164
    throw p1
.end method

.method public final notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    .line 7
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 10
    move-result p1

    .line 11
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 14
    move-result v0

    .line 15
    if-ne p1, v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 21
    move-result v2

    .line 22
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiStateChangeAllowedSystemUI(IZ)V

    .line 25
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 28
    move-result v1

    .line 29
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiAllowedSystemUI(IZ)V

    .line 32
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateWifiProxy(Ljava/util/Map;)V

    .line 37
    :cond_0
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 13

    .line 1
    const-string/jumbo v0, "resetWifiPolicyAPIs - START"

    .line 4
    const-string v1, "WifiPolicyService"

    .line 6
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const-string/jumbo v0, "resetUserRestrictionAPIs - END"

    .line 12
    const-string/jumbo v2, "resetUserRestrictionAPIs - "

    .line 15
    const-string/jumbo v3, "resetUserRestrictionAPIs - START"

    .line 18
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const-string v3, "adminUid"

    .line 23
    const-string v4, "allowWifi"

    .line 25
    const-string v5, "allowWifiStateChanges"

    .line 27
    const-string v6, "allowUserProfiles"

    .line 29
    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    .line 32
    move-result-object v7

    .line 33
    const/4 v8, 0x0

    .line 34
    :try_start_0
    iget-object v9, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 36
    const-string v10, "WIFI"

    .line 38
    invoke-virtual {v9, v10, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    .line 41
    move-result-object v8

    .line 42
    if-eqz v8, :cond_8

    .line 44
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    .line 47
    move-result v7

    .line 48
    if-gtz v7, :cond_0

    .line 50
    goto :goto_3

    .line 51
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 54
    const/4 v2, 0x0

    .line 55
    move v7, v2

    .line 56
    move v9, v7

    .line 57
    :cond_1
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 60
    move-result v10

    .line 61
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 64
    move-result v10

    .line 65
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 68
    move-result v11

    .line 69
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 72
    move-result v11

    .line 73
    const/4 v12, -0x1

    .line 74
    if-eqz v11, :cond_2

    .line 76
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 79
    move-result v11

    .line 80
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 83
    move-result v11

    .line 84
    if-nez v11, :cond_4

    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    goto/16 :goto_9

    .line 90
    :catch_0
    move-exception p0

    .line 91
    goto :goto_6

    .line 92
    :cond_2
    :goto_0
    if-nez v7, :cond_3

    .line 94
    move v7, v10

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    if-eq v7, v12, :cond_4

    .line 98
    move v7, v12

    .line 99
    :cond_4
    :goto_1
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 102
    move-result v11

    .line 103
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 106
    move-result v11

    .line 107
    if-nez v11, :cond_6

    .line 109
    if-nez v9, :cond_5

    .line 111
    move v9, v10

    .line 112
    goto :goto_2

    .line 113
    :cond_5
    if-eq v9, v12, :cond_6

    .line 115
    move v9, v12

    .line 116
    :cond_6
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 119
    move-result v10

    .line 120
    if-nez v10, :cond_1

    .line 122
    if-ne v7, p1, :cond_7

    .line 124
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setChangeWifiStateUserRestriction(Z)V

    .line 127
    :cond_7
    if-ne v9, p1, :cond_a

    .line 129
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setAddWifiConfigUserRestriction(Z)V

    .line 132
    goto :goto_5

    .line 133
    :cond_8
    :goto_3
    if-nez v8, :cond_9

    .line 135
    const-string p0, "Cursor is null"

    .line 137
    goto :goto_4

    .line 138
    :cond_9
    const-string p0, "Cursor is empty"

    .line 140
    :goto_4
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    move-result-object p0

    .line 144
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    if-eqz v8, :cond_b

    .line 149
    :cond_a
    :goto_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 152
    :cond_b
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    goto :goto_7

    .line 156
    :goto_6
    :try_start_1
    const-string/jumbo p1, "resetUserRestrictionAPIs"

    .line 159
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    if-eqz v8, :cond_b

    .line 164
    goto :goto_5

    .line 165
    :goto_7
    const-class p0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 167
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 170
    move-result-object p0

    .line 171
    check-cast p0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 173
    if-nez p0, :cond_c

    .line 175
    const-string/jumbo p0, "resetWifiPolicyAPIs - fail to retrieve dpmi object"

    .line 178
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    goto :goto_8

    .line 182
    :cond_c
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManagerInternal;->notifyChangesOnWifiPolicy()V

    .line 185
    :goto_8
    const-string/jumbo p0, "resetWifiPolicyAPIs - END"

    .line 188
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void

    .line 192
    :goto_9
    if-eqz v8, :cond_d

    .line 194
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_d
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    throw p0
.end method

.method public final removeBlockedNetwork(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    if-nez p2, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 11
    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getBlockedList$1(I)Ljava/util/Set;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Ljava/util/HashSet;

    .line 21
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v2

    .line 33
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/lang/String;

    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v3, ","

    .line 55
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v5

    .line 72
    const-string/jumbo v4, "blockedSSIDList"

    .line 75
    const/4 v2, 0x0

    .line 76
    const-string v3, "WIFI"

    .line 78
    move-object v0, p0

    .line 79
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 82
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 85
    move-result-wide v0

    .line 86
    :try_start_0
    iget p0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 88
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 91
    move-result p0

    .line 92
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 94
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object p1

    .line 98
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 101
    move-result-object p1

    .line 102
    const/16 p2, 0x3c

    .line 104
    invoke-static {p0, p2, p1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 110
    const/4 p0, 0x1

    .line 111
    return p0

    .line 112
    :catchall_0
    move-exception p0

    .line 113
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    throw p0
.end method

.method public final removeNetworkConfiguration(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeNetworkConfigurationInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final removeNetworkConfigurationInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .locals 10

    .line 1
    const-string v0, "Removing network id "

    .line 3
    const-string v1, "WifiPolicyService"

    .line 5
    const-string v2, ">>> removeNetworkConfiguration "

    .line 7
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    invoke-static {p2}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p2

    .line 14
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p2, 0x0

    .line 22
    :goto_0
    const/4 v2, 0x0

    .line 23
    if-nez p2, :cond_1

    .line 25
    return v2

    .line 26
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 29
    move-result v3

    .line 30
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    .line 33
    move-result v3

    .line 34
    const/16 v4, 0x3e8

    .line 36
    if-eq v3, v4, :cond_2

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 41
    move-result-object p1

    .line 42
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 47
    const-string v3, "WIFI_CONF"

    .line 49
    const-string/jumbo v4, "networkSSID"

    .line 52
    invoke-virtual {p1, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    move-result p1

    .line 56
    :goto_1
    const/4 v3, -0x1

    .line 57
    if-ne p1, v3, :cond_3

    .line 59
    const-string v4, "No admin found for the given SSID"

    .line 61
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_3
    if-ne p1, v3, :cond_4

    .line 66
    return v2

    .line 67
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 70
    move-result v4

    .line 71
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 74
    move-result v5

    .line 75
    if-eq v4, v5, :cond_c

    .line 77
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 80
    move-result-wide v4

    .line 81
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    .line 84
    move-result-object v6

    .line 85
    if-eqz v6, :cond_b

    .line 87
    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 89
    if-nez v7, :cond_5

    .line 91
    goto/16 :goto_5

    .line 93
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeNetworkConfigurationMDM(ILjava/lang/String;)Z

    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_6

    .line 99
    const-string p0, "Could not remove network from database"

    .line 101
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    return v2

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    goto/16 :goto_6

    .line 111
    :cond_6
    :try_start_1
    iget-object p2, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 113
    invoke-virtual {p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    .line 116
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    const/4 v7, 0x1

    .line 118
    const-string v8, ""

    .line 120
    if-eqz p2, :cond_7

    .line 122
    :try_start_2
    array-length v9, p2

    .line 123
    if-lez v9, :cond_7

    .line 125
    aget-object p2, p2, v2

    .line 127
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 130
    move-result p2

    .line 131
    if-nez p2, :cond_7

    .line 133
    iget-object p2, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 135
    filled-new-array {v8}, [Ljava/lang/String;

    .line 138
    move-result-object v9

    .line 139
    invoke-virtual {p2, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 142
    move p2, v7

    .line 143
    goto :goto_2

    .line 144
    :cond_7
    move p2, v2

    .line 145
    :goto_2
    iget-object v9, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 147
    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    .line 150
    move-result-object v9

    .line 151
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 154
    move-result v9

    .line 155
    if-nez v9, :cond_8

    .line 157
    iget-object p2, v6, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 159
    invoke-virtual {p2, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 162
    goto :goto_3

    .line 163
    :cond_8
    move v7, p2

    .line 164
    :goto_3
    iget p2, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 166
    if-ltz p2, :cond_a

    .line 168
    if-eqz v7, :cond_9

    .line 170
    const p1, 0x7fffffff

    .line 173
    iput p1, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 175
    invoke-virtual {p0, v6, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->save(Landroid/net/wifi/WifiConfiguration;I)I

    .line 178
    :cond_9
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    :try_start_3
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 185
    iget p1, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 187
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 190
    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 191
    goto :goto_4

    .line 192
    :catch_0
    :try_start_4
    const-string p0, "WifiManagerAdapter"

    .line 194
    const-string/jumbo p1, "forget - failed to get wifi service"

    .line 197
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 202
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    iget p1, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 207
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    const-string p1, ", ret = "

    .line 212
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object p0

    .line 222
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 225
    move p1, v2

    .line 226
    :cond_a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 229
    return p1

    .line 230
    :cond_b
    :goto_5
    :try_start_5
    const-string p0, "Not a valid MDM SSID"

    .line 232
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 235
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 238
    return v2

    .line 239
    :goto_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 242
    throw p0

    .line 243
    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeNetworkConfigurationMDM(ILjava/lang/String;)Z

    .line 246
    move-result p0

    .line 247
    return p0
.end method

.method public final removeNetworkConfigurationMDM(ILjava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string v1, "WIFI_CONF"

    .line 5
    const-string/jumbo v2, "networkSSID"

    .line 8
    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 14
    const-string/jumbo v0, "networkSSID"

    .line 17
    invoke-static {v0, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 23
    const-string v2, "WifiProxyAuthTable"

    .line 25
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 28
    new-instance v0, Landroid/content/ContentValues;

    .line 30
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 33
    const-string/jumbo v1, "networkSSID"

    .line 36
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 41
    const-string v2, "WifiProxyTable"

    .line 43
    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 46
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    const-string p0, "LocalProxyManager"

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    const-string v1, "Removing wifi proxy for ssid "

    .line 57
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object p0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->mProxyLock:Ljava/lang/Object;

    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/proxy/LocalProxyManager;->sWifiProxyInfoMapCache:Ljava/util/Map;

    .line 75
    check-cast v0, Landroid/util/ArrayMap;

    .line 77
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    monitor-exit p0

    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw p1

    .line 85
    :cond_0
    :goto_0
    return p1
.end method

.method public final removeWifiSsidFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "WifiPolicyService"

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 16
    const-string/jumbo p0, "removeWifiSsidFromBlackList - not a valid caller, aborting!"

    .line 19
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return v2

    .line 23
    :cond_0
    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->validateSSIDList(Ljava/util/List;)Ljava/util/List;

    .line 26
    move-result-object p2

    .line 27
    if-eqz p2, :cond_7

    .line 29
    check-cast p2, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 37
    goto/16 :goto_2

    .line 39
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v3

    .line 43
    const/4 v4, 0x1

    .line 44
    move v5, v4

    .line 45
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v6

    .line 49
    if-eqz v6, :cond_4

    .line 51
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Ljava/lang/String;

    .line 57
    const-string v7, "WIFI_LIST_TYPE"

    .line 59
    const-string v8, "adminUid"

    .line 61
    const-string v9, "WIFI_SSID"

    .line 63
    filled-new-array {v8, v9, v7}, [Ljava/lang/String;

    .line 66
    move-result-object v7

    .line 67
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 69
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 72
    move-result-object v8

    .line 73
    const-string v9, "BLACKLIST"

    .line 75
    filled-new-array {v8, v6, v9}, [Ljava/lang/String;

    .line 78
    move-result-object v8

    .line 79
    if-eqz v5, :cond_3

    .line 81
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 83
    const-string v9, "WIFI_SSID_BLACK_WHITE_LIST"

    .line 85
    invoke-virtual {v5, v9, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_3

    .line 91
    move v5, v4

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    move v5, v2

    .line 94
    :goto_1
    if-eqz v5, :cond_2

    .line 96
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 99
    move-result-wide v7

    .line 100
    :try_start_0
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 102
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    .line 105
    move-result v9

    .line 106
    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 108
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    move-result-object v10

    .line 112
    filled-new-array {v10, v6}, [Ljava/lang/Object;

    .line 115
    move-result-object v6

    .line 116
    const/16 v10, 0x3f

    .line 118
    invoke-static {v9, v10, v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    goto :goto_0

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    throw p0

    .line 130
    :cond_4
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 132
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(I)Z

    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_6

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    .line 140
    const-string/jumbo v6, "removeWifiSsidFromBlackList - caller uid: "

    .line 143
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 148
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    const-string v6, ", enforced caller uid: "

    .line 153
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 158
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    const-string v6, ", list size: "

    .line 163
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 169
    move-result p2

    .line 170
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    move-result-object p2

    .line 177
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-eqz v5, :cond_5

    .line 182
    iget-object p2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 184
    check-cast p2, Landroid/content/ComponentName;

    .line 186
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 188
    check-cast v0, Ljava/lang/Integer;

    .line 190
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 193
    move-result v0

    .line 194
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 197
    move-result v0

    .line 198
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 200
    invoke-virtual {p0, p2, v0, p1, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setSsidAllowDenyList(Landroid/content/ComponentName;IIZ)Z

    .line 203
    move-result p0

    .line 204
    if-eqz p0, :cond_5

    .line 206
    move v2, v4

    .line 207
    :cond_5
    move v5, v2

    .line 208
    :cond_6
    return v5

    .line 209
    :cond_7
    :goto_2
    const-string/jumbo p0, "removeWifiSsidFromBlackList - failed with invalid request"

    .line 212
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return v2
.end method

.method public final removeWifiSsidFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "WifiPolicyService"

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 16
    const-string/jumbo p0, "removeWifiSsidFromWhiteList - not a valid caller, aborting!"

    .line 19
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return v2

    .line 23
    :cond_0
    invoke-static {p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->validateSSIDList(Ljava/util/List;)Ljava/util/List;

    .line 26
    move-result-object p2

    .line 27
    if-eqz p2, :cond_7

    .line 29
    check-cast p2, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_1

    .line 37
    goto/16 :goto_2

    .line 39
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object v3

    .line 43
    const/4 v4, 0x1

    .line 44
    move v5, v4

    .line 45
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v6

    .line 49
    if-eqz v6, :cond_4

    .line 51
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Ljava/lang/String;

    .line 57
    const-string v7, "WIFI_LIST_TYPE"

    .line 59
    const-string v8, "adminUid"

    .line 61
    const-string v9, "WIFI_SSID"

    .line 63
    filled-new-array {v8, v9, v7}, [Ljava/lang/String;

    .line 66
    move-result-object v7

    .line 67
    iget v8, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 69
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 72
    move-result-object v8

    .line 73
    const-string v9, "WHITELIST"

    .line 75
    filled-new-array {v8, v6, v9}, [Ljava/lang/String;

    .line 78
    move-result-object v8

    .line 79
    if-eqz v5, :cond_3

    .line 81
    iget-object v5, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 83
    const-string v9, "WIFI_SSID_BLACK_WHITE_LIST"

    .line 85
    invoke-virtual {v5, v9, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 88
    move-result v5

    .line 89
    if-eqz v5, :cond_3

    .line 91
    move v5, v4

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    move v5, v2

    .line 94
    :goto_1
    if-eqz v5, :cond_2

    .line 96
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 99
    move-result-wide v7

    .line 100
    :try_start_0
    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 102
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    .line 105
    move-result v9

    .line 106
    iget v10, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 108
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    move-result-object v10

    .line 112
    filled-new-array {v10, v6}, [Ljava/lang/Object;

    .line 115
    move-result-object v6

    .line 116
    const/16 v10, 0x42

    .line 118
    invoke-static {v9, v10, v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    goto :goto_0

    .line 125
    :catchall_0
    move-exception p0

    .line 126
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    throw p0

    .line 130
    :cond_4
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 132
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiSsidRestrictionActive(I)Z

    .line 135
    move-result v3

    .line 136
    if-eqz v3, :cond_6

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    .line 140
    const-string/jumbo v6, "removeWifiSsidFromWhiteList - caller uid: "

    .line 143
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 148
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    const-string v6, ", enforced caller uid: "

    .line 153
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 158
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    const-string v6, ", list size: "

    .line 163
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 169
    move-result p2

    .line 170
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    move-result-object p2

    .line 177
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-eqz v5, :cond_5

    .line 182
    iget-object p2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 184
    check-cast p2, Landroid/content/ComponentName;

    .line 186
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 188
    check-cast v0, Ljava/lang/Integer;

    .line 190
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 193
    move-result v0

    .line 194
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 197
    move-result v0

    .line 198
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 200
    invoke-virtual {p0, p2, v0, p1, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setSsidAllowDenyList(Landroid/content/ComponentName;IIZ)Z

    .line 203
    move-result p0

    .line 204
    if-eqz p0, :cond_5

    .line 206
    move v2, v4

    .line 207
    :cond_5
    move v5, v2

    .line 208
    :cond_6
    return v5

    .line 209
    :cond_7
    :goto_2
    const-string/jumbo p0, "removeWifiSsidFromWhiteList - failed with invalid request"

    .line 212
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return v2
.end method

.method public final resetAutomaticConnectionPolicy(I)V
    .locals 9

    .line 1
    const-string/jumbo v0, "resetAutomaticConnectionPolicy - END"

    .line 4
    const-string/jumbo v1, "resetAutomaticConnectionPolicy - "

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 10
    move-result v2

    .line 11
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 14
    move-result v3

    .line 15
    if-ne v2, v3, :cond_a

    .line 17
    const-string v2, "WifiPolicyService"

    .line 19
    const-string/jumbo v3, "resetAutomaticConnectionPolicy - START"

    .line 22
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const-string v3, "adminUid"

    .line 27
    const-string v4, "allowAutomaticConnection"

    .line 29
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 32
    move-result-object v5

    .line 33
    const/4 v6, 0x0

    .line 34
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 36
    const-string v8, "WIFI"

    .line 38
    invoke-virtual {v7, v8, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    .line 41
    move-result-object v6

    .line 42
    if-eqz v6, :cond_6

    .line 44
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 47
    move-result v5

    .line 48
    if-gtz v5, :cond_0

    .line 50
    goto :goto_3

    .line 51
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 54
    const/4 v1, 0x0

    .line 55
    :cond_1
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 58
    move-result v5

    .line 59
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 62
    move-result v5

    .line 63
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 66
    move-result v7

    .line 67
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 70
    move-result v7

    .line 71
    if-nez v7, :cond_3

    .line 73
    if-nez v1, :cond_2

    .line 75
    :goto_0
    move v1, v5

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const/4 v5, -0x1

    .line 78
    if-eq v1, v5, :cond_3

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 84
    move-result v5

    .line 85
    if-nez v5, :cond_1

    .line 87
    if-ne v1, p1, :cond_4

    .line 89
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_4

    .line 95
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 97
    check-cast v1, Ljava/lang/Integer;

    .line 99
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 102
    move-result v1

    .line 103
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 105
    check-cast p1, Landroid/content/ComponentName;

    .line 107
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    const/4 v3, 0x1

    .line 112
    invoke-virtual {p0, v1, p1, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setAllowAutojoinGlobal(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    goto :goto_2

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    goto :goto_7

    .line 118
    :catch_0
    move-exception p0

    .line 119
    goto :goto_5

    .line 120
    :cond_4
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_5
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    goto :goto_6

    .line 127
    :cond_6
    :goto_3
    if-nez v6, :cond_7

    .line 129
    :try_start_1
    const-string p0, "Cursor is null"

    .line 131
    goto :goto_4

    .line 132
    :cond_7
    const-string p0, "Cursor is empty"

    .line 134
    :goto_4
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    move-result-object p0

    .line 138
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    if-eqz v6, :cond_8

    .line 143
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 146
    :cond_8
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void

    .line 150
    :goto_5
    :try_start_2
    const-string/jumbo p1, "resetAutomaticConnectionPolicy"

    .line 153
    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    if-eqz v6, :cond_5

    .line 158
    goto :goto_2

    .line 159
    :goto_6
    return-void

    .line 160
    :goto_7
    if-eqz v6, :cond_9

    .line 162
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_9
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    throw p0

    .line 169
    :cond_a
    new-instance p0, Ljava/lang/SecurityException;

    .line 171
    const-string p1, "Can only be called by system process"

    .line 173
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 176
    throw p0
.end method

.method public final save(Landroid/net/wifi/WifiConfiguration;I)I
    .locals 7

    .line 1
    const-string v0, "WifiPolicyService"

    .line 3
    const-string/jumbo v1, "getNetworkCreatorInfo - START"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const/4 v1, -0x1

    .line 10
    if-ne p2, v1, :cond_2

    .line 12
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 14
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 16
    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    .line 18
    invoke-static {v2, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    const-string/jumbo v3, "getNetworkUidFromDatabase - START"

    .line 25
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const-string v3, "adminUid"

    .line 30
    filled-new-array {v3}, [Ljava/lang/String;

    .line 33
    move-result-object v4

    .line 34
    const-string/jumbo v5, "networkSSID"

    .line 37
    const-string/jumbo v6, "networkKeyMgmt"

    .line 40
    filled-new-array {v5, v6}, [Ljava/lang/String;

    .line 43
    move-result-object v5

    .line 44
    invoke-static {p2}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object p2

    .line 48
    filled-new-array {p2, v2}, [Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 52
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 54
    const-string v6, "WIFI_CONF"

    .line 56
    invoke-virtual {v2, v6, v5, p2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_0

    .line 66
    const-string/jumbo p2, "getNetworkUidFromDatabase - cv is empty or null"

    .line 69
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const/4 v2, 0x0

    .line 74
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 77
    move-result-object p2

    .line 78
    check-cast p2, Landroid/content/ContentValues;

    .line 80
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 83
    move-result-object p2

    .line 84
    if-nez p2, :cond_1

    .line 86
    :goto_0
    move p2, v1

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 91
    move-result p2

    .line 92
    :cond_2
    :goto_1
    if-ne p2, v1, :cond_3

    .line 94
    const-string/jumbo p2, "getNetworkCreatorInfo - Invalid adminUid, aborting..."

    .line 97
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 p2, 0x0

    .line 101
    goto :goto_2

    .line 102
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    .line 105
    move-result-object p2

    .line 106
    :goto_2
    if-nez p2, :cond_4

    .line 108
    const-string/jumbo p0, "save - Could not get network creator information"

    .line 111
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return v1

    .line 115
    :cond_4
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 117
    check-cast v0, Ljava/lang/Integer;

    .line 119
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 122
    move-result v0

    .line 123
    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 125
    check-cast v1, Landroid/content/ComponentName;

    .line 127
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 130
    move-result-object v1

    .line 131
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    .line 133
    const-string/jumbo v3, "device_policy"

    .line 136
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    move-result-object v2

    .line 140
    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 142
    if-eqz v2, :cond_5

    .line 144
    invoke-virtual {v2, v1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    .line 147
    move-result v1

    .line 148
    if-nez v1, :cond_6

    .line 150
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_5

    .line 156
    goto :goto_3

    .line 157
    :cond_5
    const/16 v0, 0x3e8

    .line 159
    :cond_6
    :goto_3
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    .line 161
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 163
    check-cast p2, Landroid/content/ComponentName;

    .line 165
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 168
    move-result-object p2

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    invoke-static {p1, v0, p2}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->save(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)I

    .line 175
    move-result p0

    .line 176
    return p0
.end method

.method public final setAddWifiConfigUserRestriction(Z)V
    .locals 5

    .line 1
    const-string/jumbo v0, "setAddWifiConfigUserRestriction - value = "

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v1

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 10
    const-string/jumbo v3, "no_add_wifi_config"

    .line 13
    const/4 v4, -0x1

    .line 14
    invoke-virtual {p0, v4, v3, p1}, Lcom/android/server/pm/UserManagerInternal;->setUserRestriction(ILjava/lang/String;Z)V

    .line 17
    const-string p0, "WifiPolicyService"

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    throw p0
.end method

.method public final setAllowAutojoinGlobal(ILjava/lang/String;Z)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setAllowAutojoinGlobal - uid = "

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v1

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    .line 10
    invoke-static {p0, p2, p1}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->retrieveWifiManagerObjectWithAttributionSource(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/wifi/WifiManager;

    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0, p3}, Landroid/net/wifi/WifiManager;->allowAutojoinGlobal(Z)V

    .line 17
    const-string p0, "WifiPolicyService"

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    const-string p1, ", packageName = "

    .line 29
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string p1, ", allowAutojoin = "

    .line 37
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p1

    .line 47
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    throw p0
.end method

.method public final setAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "setAllowUserPolicyChanges - caller uid: "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, ", enable: "

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const-string v1, "WifiPolicyService"

    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 37
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 39
    const/4 v6, 0x0

    .line 40
    const-string v3, "WIFI"

    .line 42
    const-string v7, "allowUserChanges"

    .line 44
    move v5, p2

    .line 45
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public final setAllowUserProfiles(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    const-string/jumbo v2, "com.samsung.android.knox.permission.KNOX_WIFI"

    .line 20
    filled-new-array {v2}, [Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 38
    move-result v0

    .line 39
    sget-object v1, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 41
    const-class v2, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 43
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 49
    check-cast v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 57
    move-result v0

    .line 58
    const/4 v1, 0x0

    .line 59
    if-eqz v0, :cond_1

    .line 61
    return v1

    .line 62
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v2, "setAllowUserProfiles - caller uid: "

    .line 67
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    const-string v2, ", enable: "

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    const-string v2, "WifiPolicyService"

    .line 89
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 94
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 96
    const-string v4, "WIFI"

    .line 98
    const-string v8, "allowUserProfiles"

    .line 100
    const/4 v7, 0x0

    .line 101
    move v6, p2

    .line 102
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_2

    .line 108
    const-string/jumbo p0, "setAllowUserProfiles - fail to store value to database"

    .line 111
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return p1

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 117
    const-string p2, "WIFI"

    .line 119
    const-string v0, "allowUserProfiles"

    .line 121
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 128
    move-result-object p1

    .line 129
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 132
    move-result p2

    .line 133
    const/4 v0, 0x1

    .line 134
    if-eqz p2, :cond_4

    .line 136
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    move-result-object p2

    .line 140
    check-cast p2, Ljava/lang/Boolean;

    .line 142
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 145
    move-result p2

    .line 146
    if-nez p2, :cond_3

    .line 148
    goto :goto_0

    .line 149
    :cond_4
    move p2, v0

    .line 150
    :goto_0
    xor-int/lit8 p1, p2, 0x1

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setAddWifiConfigUserRestriction(Z)V

    .line 155
    return v0
.end method

.method public final setAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "WifiPolicyService"

    .line 13
    if-nez v0, :cond_0

    .line 15
    const-string/jumbo p0, "setAutomaticConnectionToWifi - not a valid caller, aborting!"

    .line 18
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 25
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 27
    const/4 v6, 0x0

    .line 28
    const-string v3, "WIFI"

    .line 30
    const-string v7, "allowAutomaticConnection"

    .line 32
    move v5, p2

    .line 33
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_1

    .line 39
    const-string/jumbo p0, "setAutomaticConnectionToWifi - fail to store value to database"

    .line 42
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return p1

    .line 46
    :cond_1
    iget-object p1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 48
    check-cast p1, Ljava/lang/Integer;

    .line 50
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 53
    move-result p1

    .line 54
    iget-object p2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 56
    check-cast p2, Landroid/content/ComponentName;

    .line 58
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 61
    move-result-object p2

    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAutomaticConnectionToWifi(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 66
    move-result v0

    .line 67
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setAllowAutojoinGlobal(ILjava/lang/String;Z)V

    .line 70
    const/4 p0, 0x1

    .line 71
    return p0
.end method

.method public final setChangeWifiStateUserRestriction(Z)V
    .locals 5

    .line 1
    const-string/jumbo v0, "setChangeWifiStateUserRestriction - value = "

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v1

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 10
    const-string/jumbo v3, "no_change_wifi_state"

    .line 13
    const/4 v4, -0x1

    .line 14
    invoke-virtual {p0, v4, v3, p1}, Lcom/android/server/pm/UserManagerInternal;->setUserRestriction(ILjava/lang/String;Z)V

    .line 17
    const-string p0, "WifiPolicyService"

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    throw p0
.end method

.method public final setMinimumRequiredSecurity(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "WifiPolicyService"

    .line 14
    if-nez v0, :cond_0

    .line 16
    const-string/jumbo p0, "setMinimumRequiredSecurity - not a valid caller, aborting!"

    .line 19
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return v1

    .line 23
    :cond_0
    if-ltz p2, :cond_3

    .line 25
    const/16 v3, 0x1f

    .line 27
    if-gt p2, v3, :cond_3

    .line 29
    sget-object v3, Lcom/android/server/enterprise/wifi/WifiPolicy;->ACCEPTABLE_SECURITY_LEVELS:[Ljava/lang/String;

    .line 31
    aget-object v3, v3, p2

    .line 33
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isSecurityLevelSupported(Ljava/lang/String;)Z

    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 42
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 44
    const-string v8, "WIFI"

    .line 46
    const-string/jumbo v9, "minimumRequiredSecurity"

    .line 49
    const/4 v6, 0x0

    .line 50
    move v7, p2

    .line 51
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 54
    move-result p0

    .line 55
    if-nez p0, :cond_2

    .line 57
    const-string/jumbo p1, "setMinimumRequiredSecurity - fail to store security type to database"

    .line 60
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return p0

    .line 64
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 66
    const-string/jumbo v1, "setMinimumRequiredSecurity - caller uid: "

    .line 69
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ", enforced caller uid: "

    .line 79
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 84
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    const-string p1, ", secType: "

    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 99
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object p0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 104
    check-cast p0, Landroid/content/ComponentName;

    .line 106
    iget-object p1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 108
    check-cast p1, Ljava/lang/Integer;

    .line 110
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 113
    move-result p1

    .line 114
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 117
    move-result p1

    .line 118
    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setMinimumRequiredWifiSecurityLevel(Landroid/content/ComponentName;II)V

    .line 121
    const/4 p0, 0x1

    .line 122
    return p0

    .line 123
    :cond_3
    :goto_0
    const-string/jumbo p0, "setMinimumRequiredSecurity - security level not supported"

    .line 126
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return v1
.end method

.method public final setPasswordHidden(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "setPasswordHidden - caller uid: "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, ", value: "

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const-string v1, "WifiPolicyService"

    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 37
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 39
    const/4 v6, 0x0

    .line 40
    const-string v3, "WIFI"

    .line 42
    const-string/jumbo v7, "passwordHidden"

    .line 45
    move v5, p2

    .line 46
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 49
    move-result p0

    .line 50
    return p0
.end method

.method public final setPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "setPromptCredentialsEnabled - caller uid: "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, ", enable: "

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const-string v1, "WifiPolicyService"

    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 37
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 39
    const/4 v6, 0x0

    .line 40
    const-string v3, "WIFI"

    .line 42
    const-string/jumbo v7, "promptCredentials"

    .line 45
    move v5, p2

    .line 46
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 49
    move-result p0

    .line 50
    return p0
.end method

.method public final setSsidAllowDenyList(Landroid/content/ComponentName;IIZ)Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "WifiPolicyService"

    .line 4
    if-nez p1, :cond_0

    .line 6
    const-string/jumbo p0, "setSsidAllowDenyList - component name is null"

    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return v0

    .line 13
    :cond_0
    const-class v2, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 15
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 21
    if-nez v2, :cond_1

    .line 23
    const-string/jumbo p0, "setSsidAllowDenyList - fail to retrieve dpmi object"

    .line 26
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return v0

    .line 30
    :cond_1
    const-string/jumbo v3, "setWifiSsidPolicy(null) - who: "

    .line 33
    const/4 v4, 0x1

    .line 34
    const-string v5, ", enforced caller uid: "

    .line 36
    const-string v6, ", userId: "

    .line 38
    const/4 v7, 0x0

    .line 39
    if-eqz p4, :cond_8

    .line 41
    invoke-virtual {p0, p3, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->loadWifiNetworkSsidBlackWhitelist(IZ)Ljava/util/Map;

    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Ljava/util/HashMap;

    .line 47
    const-string p4, "WHITELIST"

    .line 49
    invoke-virtual {p0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object p4

    .line 53
    check-cast p4, Ljava/util/Set;

    .line 55
    const-string v8, "BLACKLIST"

    .line 57
    invoke-virtual {p0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Ljava/util/Set;

    .line 63
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    .line 66
    move-result v8

    .line 67
    const-string v9, "*"

    .line 69
    if-nez v8, :cond_4

    .line 71
    invoke-interface {p4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 74
    move-result p0

    .line 75
    if-nez p0, :cond_3

    .line 77
    new-instance p0, Landroid/util/ArraySet;

    .line 79
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 82
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 85
    move-result-object p4

    .line 86
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_2

    .line 92
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Ljava/lang/String;

    .line 98
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 100
    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 103
    move-result-object v3

    .line 104
    invoke-static {v3}, Landroid/net/wifi/WifiSsid;->fromBytes([B)Landroid/net/wifi/WifiSsid;

    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 111
    goto :goto_0

    .line 112
    :cond_2
    new-instance v7, Landroid/app/admin/WifiSsidPolicy;

    .line 114
    invoke-direct {v7, v0, p0}, Landroid/app/admin/WifiSsidPolicy;-><init>(ILjava/util/Set;)V

    .line 117
    :cond_3
    invoke-virtual {v2, p1, v7, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->setWifiSsidPolicy(Landroid/content/ComponentName;Landroid/app/admin/WifiSsidPolicy;I)V

    .line 120
    new-instance p0, Ljava/lang/StringBuilder;

    .line 122
    const-string/jumbo p4, "setWifiSsidPolicy(ALLOWLIST) - who: "

    .line 125
    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-static {p0, p3, v1}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 143
    goto/16 :goto_2

    .line 145
    :cond_4
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 148
    move-result p4

    .line 149
    if-nez p4, :cond_7

    .line 151
    invoke-interface {p0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 154
    move-result p4

    .line 155
    if-nez p4, :cond_6

    .line 157
    new-instance p4, Landroid/util/ArraySet;

    .line 159
    invoke-direct {p4}, Landroid/util/ArraySet;-><init>()V

    .line 162
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 165
    move-result-object p0

    .line 166
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_5

    .line 172
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Ljava/lang/String;

    .line 178
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 180
    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 183
    move-result-object v0

    .line 184
    invoke-static {v0}, Landroid/net/wifi/WifiSsid;->fromBytes([B)Landroid/net/wifi/WifiSsid;

    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {p4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 191
    goto :goto_1

    .line 192
    :cond_5
    new-instance v7, Landroid/app/admin/WifiSsidPolicy;

    .line 194
    invoke-direct {v7, v4, p4}, Landroid/app/admin/WifiSsidPolicy;-><init>(ILjava/util/Set;)V

    .line 197
    :cond_6
    invoke-virtual {v2, p1, v7, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->setWifiSsidPolicy(Landroid/content/ComponentName;Landroid/app/admin/WifiSsidPolicy;I)V

    .line 200
    new-instance p0, Ljava/lang/StringBuilder;

    .line 202
    const-string/jumbo p4, "setWifiSsidPolicy(DENYLIST) - who: "

    .line 205
    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-static {p0, p3, v1}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 223
    goto :goto_2

    .line 224
    :cond_7
    invoke-virtual {v2, p1, v7, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->setWifiSsidPolicy(Landroid/content/ComponentName;Landroid/app/admin/WifiSsidPolicy;I)V

    .line 227
    new-instance p0, Ljava/lang/StringBuilder;

    .line 229
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    const-string p1, ", ssid restriction is activated but there is no allow/deny list in database"

    .line 249
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    move-result-object p0

    .line 256
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    goto :goto_2

    .line 260
    :cond_8
    invoke-virtual {v2, p1, v7, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->setWifiSsidPolicy(Landroid/content/ComponentName;Landroid/app/admin/WifiSsidPolicy;I)V

    .line 263
    new-instance p0, Ljava/lang/StringBuilder;

    .line 265
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    const-string p1, ", ssid restriction is not activated"

    .line 285
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    move-result-object p0

    .line 292
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_2
    return v4
.end method

.method public final setWifi(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    move-result-wide v0

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 11
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 13
    const-string v3, "WIFI"

    .line 15
    const-string v7, "allowWifi"

    .line 17
    const/4 v6, 0x0

    .line 18
    move v5, p2

    .line 19
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {p0, p1, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 27
    move-result v4

    .line 28
    if-eqz p2, :cond_0

    .line 30
    if-eqz v4, :cond_0

    .line 32
    iget-object p2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 34
    const/4 v3, 0x1

    .line 35
    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    iget-object p2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 43
    invoke-virtual {p2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 49
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 52
    move-result p1

    .line 53
    if-eqz v2, :cond_1

    .line 55
    if-nez p1, :cond_1

    .line 57
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiAllowedSystemUI(IZ)V

    .line 60
    :cond_1
    return v2

    .line 61
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    throw p0
.end method

.method public final setWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v7, p2

    .line 4
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 7
    move-result-object v8

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    const-string/jumbo v2, "setWifiAllowed - caller uid: "

    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    iget v2, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, ", enable: "

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    const-string v9, "WifiPolicyService"

    .line 35
    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v10, 0x0

    .line 39
    invoke-virtual {p0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 42
    move-result v1

    .line 43
    const/4 v11, 0x0

    .line 44
    if-nez v1, :cond_0

    .line 46
    return v11

    .line 47
    :cond_0
    const-string/jumbo v12, "setWifiAllowed - fail to store value to database"

    .line 50
    const/4 v13, 0x1

    .line 51
    if-nez v7, :cond_3

    .line 53
    iget-object v1, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 55
    if-nez v1, :cond_2

    .line 57
    const-string/jumbo v1, "setWifiAllowed - mWifiManager = null"

    .line 60
    invoke-static {v9, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v1, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 65
    iget v3, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 67
    const/4 v5, 0x0

    .line 68
    const-string v2, "WIFI"

    .line 70
    const-string v6, "allowWifi"

    .line 72
    move/from16 v4, p2

    .line 74
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_1

    .line 80
    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v1

    .line 84
    :cond_1
    invoke-virtual {p0, v10, v11}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 87
    move-result v1

    .line 88
    xor-int/2addr v1, v13

    .line 89
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setChangeWifiStateUserRestriction(Z)V

    .line 92
    return v13

    .line 93
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 96
    move-result-wide v1

    .line 97
    :try_start_0
    iget-object v3, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 99
    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 102
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    move v14, v3

    .line 107
    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    .line 109
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 112
    throw v0

    .line 113
    :cond_3
    move v14, v13

    .line 114
    :goto_0
    iget-object v1, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 116
    iget v3, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 118
    const/4 v5, 0x0

    .line 119
    const-string v2, "WIFI"

    .line 121
    const-string v6, "allowWifi"

    .line 123
    move/from16 v4, p2

    .line 125
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 128
    move-result v1

    .line 129
    and-int/2addr v1, v14

    .line 130
    if-nez v1, :cond_4

    .line 132
    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return v1

    .line 136
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 139
    move-result-wide v1

    .line 140
    :try_start_1
    iget v3, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 142
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 145
    move-result v3

    .line 146
    iget v4, v8, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 148
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    move-result-object v4

    .line 152
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 155
    move-result-object v5

    .line 156
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 159
    move-result-object v4

    .line 160
    const/16 v5, 0x3d

    .line 162
    invoke-static {v3, v5, v4}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 165
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 168
    invoke-virtual {p0, v10, v11}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 171
    move-result v1

    .line 172
    xor-int/2addr v1, v13

    .line 173
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setChangeWifiStateUserRestriction(Z)V

    .line 176
    invoke-static {v8}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 179
    move-result v1

    .line 180
    if-nez v1, :cond_5

    .line 182
    invoke-virtual {p0, v8, v11}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 185
    move-result v2

    .line 186
    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiAllowedSystemUI(IZ)V

    .line 189
    :cond_5
    return v13

    .line 190
    :catchall_1
    move-exception v0

    .line 191
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    throw v0
.end method

.method public final setWifiAllowedSystemUI(IZ)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setWifiAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception p0

    .line 21
    :try_start_1
    const-string p1, "WifiPolicyService"

    .line 23
    const-string/jumbo p2, "setWifiAllowedSystemUI() failed. "

    .line 26
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :goto_1
    return-void

    .line 31
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    throw p0
.end method

.method public final setWifiApSetting(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    const-string/jumbo v0, "setWifiApSetting"

    .line 7
    const-string v1, "WifiPolicyService"

    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 19
    const-string p0, "SSID is empty"

    .line 21
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return v2

    .line 25
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 27
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 30
    move-result-object v0

    .line 31
    array-length v0, v0

    .line 32
    const/4 v3, 0x1

    .line 33
    if-lt v0, v3, :cond_10

    .line 35
    const/16 v4, 0x20

    .line 37
    if-le v0, v4, :cond_1

    .line 39
    goto/16 :goto_5

    .line 41
    :cond_1
    const-string v0, "Open"

    .line 43
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v4

    .line 47
    const-string v5, ") is not valid"

    .line 49
    const-string v6, "Security Type ("

    .line 51
    const-string v7, "WPA2_PSK"

    .line 53
    const-string v8, "SAE"

    .line 55
    if-nez v4, :cond_2

    .line 57
    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v4

    .line 61
    if-nez v4, :cond_2

    .line 63
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_2

    .line 69
    new-instance p0, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return v2

    .line 88
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    .line 90
    const-string/jumbo v9, "sem_wifi"

    .line 93
    invoke-virtual {v4, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Lcom/samsung/android/wifi/SemWifiManager;

    .line 99
    if-eqz v4, :cond_3

    .line 101
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v9

    .line 105
    if-eqz v9, :cond_4

    .line 107
    invoke-virtual {v4}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiApWpa3Supported()Z

    .line 110
    move-result v4

    .line 111
    if-nez v4, :cond_4

    .line 113
    const-string p0, "Wi-Fi AP WPA3 is not supported"

    .line 115
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v2

    .line 119
    :cond_3
    const-string/jumbo v4, "semWifiManager is null"

    .line 122
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isOpenWifiApAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 128
    move-result p1

    .line 129
    if-nez p1, :cond_5

    .line 131
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    move-result p1

    .line 135
    if-eqz p1, :cond_5

    .line 137
    new-instance p0, Ljava/lang/StringBuilder;

    .line 139
    invoke-direct {p0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object p0

    .line 152
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v2

    .line 156
    :cond_5
    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    move-result p1

    .line 160
    if-nez p1, :cond_6

    .line 162
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    move-result p1

    .line 166
    if-eqz p1, :cond_7

    .line 168
    :cond_6
    if-eqz p4, :cond_f

    .line 170
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 173
    move-result p1

    .line 174
    const/16 v0, 0x8

    .line 176
    if-lt p1, v0, :cond_f

    .line 178
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 181
    move-result p1

    .line 182
    const/16 v0, 0x3f

    .line 184
    if-le p1, v0, :cond_7

    .line 186
    goto/16 :goto_4

    .line 188
    :cond_7
    iput-boolean v3, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mIsAPSettingFromAdmin:Z

    .line 190
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 193
    move-result-wide v0

    .line 194
    :try_start_0
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    .line 196
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    sget-object p1, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 201
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    .line 204
    move-result-object p1

    .line 205
    new-instance v4, Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 207
    invoke-direct {v4, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 210
    invoke-virtual {v4, p2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 213
    invoke-virtual {v4, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setHiddenSsid(Z)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 216
    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    move-result p1

    .line 220
    if-eqz p1, :cond_8

    .line 222
    invoke-virtual {v4, p4, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 225
    goto :goto_0

    .line 226
    :catchall_0
    move-exception p1

    .line 227
    goto/16 :goto_3

    .line 229
    :cond_8
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    move-result p1

    .line 233
    if-eqz p1, :cond_9

    .line 235
    const/4 p1, 0x3

    .line 236
    invoke-virtual {v4, p4, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 239
    goto :goto_0

    .line 240
    :cond_9
    const/4 p1, 0x0

    .line 241
    invoke-virtual {v4, p1, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 244
    :goto_0
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 249
    move-result-object p1

    .line 250
    const-string/jumbo p2, "wifi_ap_last_2g_channel"

    .line 253
    invoke-static {p1, p2, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 256
    move-result p1

    .line 257
    if-nez p1, :cond_a

    .line 259
    invoke-virtual {v4, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 262
    goto :goto_1

    .line 263
    :cond_a
    invoke-virtual {v4, p1, v3}, Landroid/net/wifi/SoftApConfiguration$Builder;->setChannel(II)Landroid/net/wifi/SoftApConfiguration$Builder;

    .line 266
    :goto_1
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    .line 268
    invoke-virtual {v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    .line 271
    move-result-object p2

    .line 272
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 275
    sget-object p1, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 277
    invoke-virtual {p1, p2}, Lcom/samsung/android/wifi/SemWifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)V

    .line 280
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    .line 282
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    sget-object p1, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 287
    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    .line 290
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    const/16 p2, 0xd

    .line 293
    if-eq p1, p2, :cond_b

    .line 295
    const/16 p2, 0xc

    .line 297
    if-ne p1, p2, :cond_c

    .line 299
    :cond_b
    const-wide/16 p1, 0x64

    .line 301
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    goto :goto_2

    .line 305
    :catch_0
    move-exception p1

    .line 306
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 309
    :goto_2
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    .line 311
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    sget-object p1, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 316
    new-instance p2, Landroid/os/Message;

    .line 318
    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    .line 321
    invoke-virtual {p1, p2}, Lcom/samsung/android/wifi/SemWifiManager;->resetSoftAp(Landroid/os/Message;)V

    .line 324
    :cond_c
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    .line 326
    invoke-static {p1}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    .line 329
    move-result-object p1

    .line 330
    if-eqz p1, :cond_e

    .line 332
    invoke-virtual {p1}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->isSettingPolicyApplied()Z

    .line 335
    move-result p1

    .line 336
    if-nez p1, :cond_e

    .line 338
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 340
    if-nez p1, :cond_d

    .line 342
    const-string p1, "application_policy"

    .line 344
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 347
    move-result-object p1

    .line 348
    check-cast p1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 350
    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 352
    :cond_d
    iget-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 354
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    .line 356
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 359
    move-result p3

    .line 360
    invoke-direct {p2, p3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 363
    const-string/jumbo p3, "com.android.settings"

    .line 366
    invoke-virtual {p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->stopApp(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 369
    :cond_e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 372
    iput-boolean v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mIsAPSettingFromAdmin:Z

    .line 374
    return v3

    .line 375
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 378
    iput-boolean v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mIsAPSettingFromAdmin:Z

    .line 380
    throw p1

    .line 381
    :cond_f
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 383
    const-string p1, "Password does not meet requirements for "

    .line 385
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const-string p1, " security type"

    .line 393
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    move-result-object p0

    .line 400
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return v2

    .line 404
    :cond_10
    :goto_5
    const-string p0, "SSID has more than 32 characters"

    .line 406
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return v2
.end method

.method public final setWifiProfile(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;)Z
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    const-string v2, "WifiPolicyService"

    const-string/jumbo v3, "setWifiProfile - entered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 3
    const-string v0, "WifiAdminProfile provided is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_0
    iget-object v5, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    const-string v0, "WifiAdminProfile::ssid provided is empty/null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    .line 6
    :cond_1
    iget v11, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    iget-object v5, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    .line 8
    iget-object v6, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WIFI_CONF"

    const-string/jumbo v12, "networkSSID"

    invoke-virtual {v6, v7, v12, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v13, 0x1

    if-ne v11, v5, :cond_2

    move v5, v13

    goto :goto_1

    :cond_2
    move v5, v4

    .line 9
    :goto_1
    const-string v6, "Is admin editing its previous configuration ? "

    .line 10
    invoke-static {v6, v2, v5}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v5, :cond_7

    .line 11
    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    .line 12
    iget-object v8, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 13
    invoke-virtual {v8, v4, v7, v12}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 14
    invoke-static {v6}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 15
    const-string v0, "Network belongs to another admin - cannot edit it"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    if-nez v6, :cond_4

    goto :goto_3

    .line 16
    :cond_4
    const-class v7, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 18
    :try_start_0
    iget-object v10, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v10, :cond_7

    .line 20
    invoke-static {v6}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 21
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 22
    iget-object v10, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    if-eqz v7, :cond_5

    iget v9, v9, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 23
    invoke-virtual {v7, v9}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveDeviceOwner(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 24
    const-string v6, "The profile creator is a Device Owner"

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v6, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    .line 26
    iget-object v7, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "device_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/DevicePolicyManager;

    if-eqz v7, :cond_6

    .line 27
    invoke-virtual {v7, v6}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnCallingUser(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    .line 28
    :cond_6
    const-string v0, "Attempt to modify/override network created by device owner"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v4

    :catchall_0
    move-exception v0

    .line 29
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    throw v0

    .line 31
    :cond_7
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->getEngineId()I

    move-result v6

    if-ne v13, v6, :cond_8

    .line 32
    const-string v0, "WifiAdminProfile::ENGINE_SECPKCS11 engine is no longer supported!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 33
    :cond_8
    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->privateKey:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 34
    const-string v0, "WifiAdminProfile::privateKey is deprecated and shall not be used. Please use WifiAdminProfile::clientCertification instead."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 35
    :cond_9
    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyUsername:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 36
    const-string v0, "WifiAdminProfile::proxyUsername is deprecated and shall not be used. Please use WifiAdminProfile::proxyAuthConfigList instead."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 37
    :cond_a
    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPassword:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    .line 38
    const-string v0, "WifiAdminProfile::proxyPassword is deprecated and shall not be used. Please use WifiAdminProfile::proxyAuthConfigList instead."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 39
    :cond_b
    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    if-nez v6, :cond_c

    .line 40
    const-string v0, "Profile not set, security is null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 41
    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "setWifiProfile - sec "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isSecurityLevelSupported(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    goto/16 :goto_5

    .line 43
    :cond_d
    const-string v7, "PSK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "SAE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    :cond_e
    iget-object v7, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->psk:Ljava/lang/String;

    .line 44
    invoke-static {v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_f

    .line 45
    const-string v0, "PSK not set"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 46
    :cond_f
    const-string v7, "WEP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz v6, :cond_15

    .line 47
    iget v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    if-lt v6, v13, :cond_14

    if-le v6, v7, :cond_10

    goto :goto_4

    :cond_10
    if-ne v6, v13, :cond_11

    .line 48
    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 49
    const-string/jumbo v0, "wepkey1 not set but index is set to 1"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 50
    :cond_11
    iget v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    if-ne v6, v9, :cond_12

    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 51
    const-string/jumbo v0, "wepkey2 not set but index is set to 2"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 52
    :cond_12
    iget v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    if-ne v6, v8, :cond_13

    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 53
    const-string/jumbo v0, "wepkey3 not set but index is set to 3"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 54
    :cond_13
    iget v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    if-ne v6, v7, :cond_15

    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 55
    const-string/jumbo v0, "wepkey4 not set but index is set to 4"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 56
    :cond_14
    :goto_4
    const-string v0, "WebKeyId invalid"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 57
    :cond_15
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->getEngineId()I

    move-result v6

    if-ne v9, v6, :cond_16

    .line 58
    const-string v0, "WifiAdminProfile::ENGINE_UCM is no longer supported from Tiramisu!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 59
    :cond_16
    iget v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyState:I

    if-ne v6, v9, :cond_17

    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPacUrl:Ljava/lang/String;

    .line 60
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 61
    const-string v0, "Empty proxyPacUrl provided with PROXY_STATE_AUTO_CONFIGURE"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 62
    :cond_17
    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    if-eqz v6, :cond_1a

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1a

    .line 63
    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_18
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/knox/net/AuthConfig;

    if-eqz v10, :cond_19

    .line 64
    invoke-virtual {v10}, Lcom/samsung/android/knox/net/AuthConfig;->isValid()Z

    move-result v10

    if-nez v10, :cond_18

    .line 65
    :cond_19
    const-string v0, "Invalid auth config provided in proxyAuthConfigList"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return v4

    .line 66
    :cond_1a
    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    .line 67
    const-string/jumbo v10, "createNetworkSSID - START"

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/4 v15, -0x1

    if-eqz v10, :cond_1b

    .line 69
    const-string v6, "SSID is empty"

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const/4 v14, 0x0

    goto :goto_7

    .line 70
    :cond_1b
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    array-length v10, v10

    const/16 v14, 0x20

    if-le v10, v14, :cond_1c

    .line 71
    const-string v6, "SSID exceeds maximum length 32"

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 72
    :cond_1c
    new-instance v10, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v10}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 73
    invoke-static {v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 74
    iput v15, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 75
    iput-boolean v13, v10, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 76
    iget-object v6, v10, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6}, Ljava/util/BitSet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 77
    iget-object v6, v10, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v4}, Ljava/util/BitSet;->set(I)V

    .line 78
    :cond_1d
    const-string/jumbo v6, "createNetworkSSID - exited"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v14, v10

    :goto_7
    if-eqz v14, :cond_1e

    .line 79
    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1e

    .line 80
    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    invoke-static {v14, v4, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    :cond_1e
    if-eqz v14, :cond_1f

    .line 81
    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1f

    .line 82
    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    invoke-static {v14, v13, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    :cond_1f
    if-eqz v14, :cond_20

    .line 83
    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_20

    .line 84
    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    invoke-static {v14, v9, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    :cond_20
    if-eqz v14, :cond_21

    .line 85
    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_21

    .line 86
    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    invoke-static {v14, v8, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkWEPKey(Landroid/net/wifi/WifiConfiguration;ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    move-object v14, v6

    :cond_21
    if-eqz v14, :cond_24

    .line 87
    iget v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->wepKeyId:I

    if-eq v6, v15, :cond_24

    if-lt v6, v13, :cond_23

    if-le v6, v7, :cond_22

    goto :goto_8

    .line 88
    :cond_22
    iget-object v10, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_23

    sub-int/2addr v6, v13

    .line 89
    iput v6, v14, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    goto :goto_9

    :cond_23
    :goto_8
    const/4 v14, 0x0

    .line 90
    :cond_24
    :goto_9
    const-string/jumbo v10, "password"

    if-eqz v14, :cond_25

    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->password:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_25

    .line 91
    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->password:Ljava/lang/String;

    invoke-static {v14, v10, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    move-object v14, v6

    :cond_25
    if-eqz v14, :cond_33

    .line 92
    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_33

    .line 93
    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    if-nez v6, :cond_26

    :goto_a
    const/4 v14, 0x0

    goto/16 :goto_b

    .line 94
    :cond_26
    iget-object v15, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_27

    .line 95
    const-string/jumbo v6, "specified profile not found"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 96
    :cond_27
    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isSecurityLevelSupported(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_28

    goto :goto_a

    .line 97
    :cond_28
    const-string/jumbo v15, "updateWifiConfigLinkSecurity: "

    invoke-virtual {v15, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v2, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v15, Lcom/android/server/enterprise/wifi/WifiPolicy;->ACCEPTABLE_SECURITY_LEVELS:[Ljava/lang/String;

    aget-object v8, v15, v4

    invoke-virtual {v6, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 99
    invoke-virtual {v14, v4}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto/16 :goto_b

    .line 100
    :cond_29
    aget-object v8, v15, v13

    invoke-virtual {v6, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 101
    invoke-virtual {v14, v13}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto/16 :goto_b

    .line 102
    :cond_2a
    aget-object v8, v15, v9

    invoke-virtual {v6, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 103
    invoke-virtual {v14, v9}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto/16 :goto_b

    :cond_2b
    const/16 v8, 0x1f

    .line 104
    aget-object v8, v15, v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 105
    invoke-virtual {v14, v7}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_b

    :cond_2c
    const/4 v8, 0x3

    .line 106
    invoke-virtual {v14, v8}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    const/4 v8, 0x6

    .line 107
    aget-object v4, v15, v8

    invoke-virtual {v6, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 108
    iget-object v4, v14, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_b

    :cond_2d
    const/4 v4, 0x7

    .line 109
    aget-object v4, v15, v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 110
    iget-object v4, v14, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_b

    :cond_2e
    const/16 v4, 0x13

    .line 111
    aget-object v4, v15, v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 112
    iget-object v4, v14, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_b

    :cond_2f
    const/16 v4, 0x16

    .line 113
    aget-object v4, v15, v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 114
    iget-object v4, v14, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_b

    :cond_30
    const/16 v4, 0x19

    .line 115
    aget-object v4, v15, v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 116
    iget-object v4, v14, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_b

    :cond_31
    const/16 v4, 0x1c

    .line 117
    aget-object v4, v15, v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 118
    iget-object v4, v14, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_b

    .line 119
    :cond_32
    iget-object v4, v14, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    :cond_33
    :goto_b
    if-eqz v14, :cond_3b

    .line 120
    iget-object v4, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->psk:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3b

    .line 121
    iget-object v4, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->psk:Ljava/lang/String;

    if-nez v4, :cond_34

    .line 122
    const-string/jumbo v4, "updateNetworkPSK - value is null"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    const/4 v14, 0x0

    goto :goto_d

    .line 123
    :cond_34
    iget-object v6, v14, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    const/16 v7, 0x40

    const/16 v8, 0x8

    if-eqz v6, :cond_36

    .line 124
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v8, :cond_35

    .line 125
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_38

    .line 126
    :cond_35
    const-string v4, "Invalid PSK length for PSK security type"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 127
    :cond_36
    iget-object v6, v14, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 128
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v13, :cond_37

    .line 129
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v7, :cond_38

    .line 130
    :cond_37
    const-string v4, "Invalid PSK length for SAE security type"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 131
    :cond_38
    iget-object v6, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 132
    const-string v6, "[0-9A-Fa-f]{64}"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 133
    iput-object v4, v14, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_d

    .line 134
    :cond_39
    invoke-static {v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v14, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_d

    .line 135
    :cond_3a
    const-string v4, "No SSID provided"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_3b
    :goto_d
    if-eqz v14, :cond_3c

    .line 136
    iget-object v4, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3c

    .line 137
    const-string/jumbo v4, "ca_cert"

    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    invoke-static {v14, v4, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    :cond_3c
    if-eqz v14, :cond_3d

    .line 138
    iget-object v4, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3d

    .line 139
    iget-object v4, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    .line 140
    const-string/jumbo v6, "client_cert"

    invoke-static {v14, v6, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    :cond_3d
    if-eqz v14, :cond_3e

    .line 141
    iget-object v4, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase1:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3e

    .line 142
    const-string/jumbo v4, "phase1"

    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase1:Ljava/lang/String;

    invoke-static {v14, v4, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    :cond_3e
    if-eqz v14, :cond_3f

    .line 143
    iget-object v4, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase2:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3f

    .line 144
    const-string/jumbo v4, "phase2"

    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->phase2:Ljava/lang/String;

    invoke-static {v14, v4, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    :cond_3f
    if-eqz v14, :cond_40

    .line 145
    iget-object v4, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_40

    .line 146
    const-string/jumbo v4, "identity"

    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    invoke-static {v14, v4, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    :cond_40
    if-eqz v14, :cond_41

    .line 147
    iget-object v4, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_41

    .line 148
    const-string v4, "anonymous_identity"

    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    invoke-static {v14, v4, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateEnterpriseFieldValue(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    :cond_41
    if-eqz v14, :cond_49

    .line 149
    iget-boolean v4, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticIpEnabled:Z

    .line 150
    iget-object v6, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_42

    :goto_e
    const/4 v14, 0x0

    goto :goto_11

    .line 151
    :cond_42
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v6

    if-eqz v4, :cond_48

    .line 152
    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v6, v4}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 153
    invoke-virtual {v6}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v4

    if-nez v4, :cond_43

    .line 154
    new-instance v4, Landroid/net/StaticIpConfiguration;

    invoke-direct {v4}, Landroid/net/StaticIpConfiguration;-><init>()V

    :cond_43
    move-object v7, v4

    const/4 v4, 0x0

    .line 155
    invoke-static {v7, v4, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setIpAndSubnetMask(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/StaticIpConfiguration;

    move-result-object v7

    if-eqz v7, :cond_44

    .line 156
    invoke-static {v7, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setGateway(Landroid/net/StaticIpConfiguration;Ljava/lang/String;)Landroid/net/StaticIpConfiguration;

    move-result-object v7

    :cond_44
    if-nez v7, :cond_45

    goto :goto_f

    .line 157
    :cond_45
    invoke-static {v7, v4, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setDns1AndDns2(Landroid/net/StaticIpConfiguration;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_46

    const/4 v4, 0x0

    goto :goto_f

    :cond_46
    move-object v4, v7

    :goto_f
    if-nez v4, :cond_47

    goto :goto_e

    .line 158
    :cond_47
    invoke-virtual {v6, v4}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    goto :goto_10

    .line 159
    :cond_48
    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v6, v4}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 160
    :goto_10
    invoke-virtual {v14, v6}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 161
    :cond_49
    :goto_11
    const-string/jumbo v4, "networkStaticIp"

    if-eqz v14, :cond_4a

    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticIp:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4a

    .line 162
    iget-object v6, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticIp:Ljava/lang/String;

    invoke-static {v14, v6, v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    .line 163
    :cond_4a
    const-string/jumbo v6, "networkStaticGateway"

    if-eqz v14, :cond_4b

    iget-object v7, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4b

    .line 164
    iget-object v7, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticGateway:Ljava/lang/String;

    invoke-static {v14, v7, v6}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    .line 165
    :cond_4b
    const-string/jumbo v7, "networkStaticPrimaryDns"

    if-eqz v14, :cond_4c

    iget-object v8, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4c

    .line 166
    iget-object v8, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticPrimaryDns:Ljava/lang/String;

    invoke-static {v14, v8, v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    .line 167
    :cond_4c
    const-string/jumbo v8, "networkStaticSecondaryDns"

    if-eqz v14, :cond_4d

    iget-object v15, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    invoke-static {v15}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_4d

    .line 168
    iget-object v15, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSecondaryDns:Ljava/lang/String;

    invoke-static {v14, v15, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    .line 169
    :cond_4d
    const-string/jumbo v15, "networkStaticSubnetMask"

    if-eqz v14, :cond_4e

    iget-object v9, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4e

    .line 170
    iget-object v9, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->staticSubnetMask:Ljava/lang/String;

    invoke-static {v14, v9, v15}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkAddress(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    move-object v14, v9

    :cond_4e
    if-eqz v14, :cond_53

    .line 171
    iget v9, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyState:I

    .line 172
    iget-object v13, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_50

    move-object/from16 v18, v10

    :cond_4f
    const/4 v14, 0x0

    goto :goto_13

    .line 173
    :cond_50
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v13

    move-object/from16 v18, v10

    const/4 v10, 0x1

    if-ne v9, v10, :cond_51

    .line 174
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v13, v9}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    goto :goto_12

    :cond_51
    if-nez v9, :cond_52

    .line 175
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v13, v9}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    goto :goto_12

    :cond_52
    const/4 v10, 0x2

    if-ne v9, v10, :cond_4f

    .line 176
    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v13, v9}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 177
    :goto_12
    invoke-virtual {v14, v13}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    goto :goto_13

    :cond_53
    move-object/from16 v18, v10

    :goto_13
    if-eqz v14, :cond_5a

    .line 178
    iget-object v9, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyHostname:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5a

    iget v9, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyState:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5a

    .line 179
    iget-object v9, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyHostname:Ljava/lang/String;

    .line 180
    iget-object v10, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_55

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_54

    goto :goto_14

    .line 181
    :cond_54
    sget-object v10, Lcom/android/server/enterprise/wifi/WifiPolicy;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 182
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_56

    .line 183
    const-string v9, "Invalid host name provided for proxy, doesn\'t match expected format"

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    :goto_14
    const/4 v14, 0x0

    goto :goto_17

    .line 184
    :cond_56
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v10

    if-nez v10, :cond_57

    const/4 v13, 0x0

    .line 185
    invoke-static {v9, v13}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v9

    goto :goto_16

    .line 186
    :cond_57
    invoke-virtual {v10}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_59

    invoke-virtual {v10}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v13

    array-length v13, v13

    if-nez v13, :cond_58

    goto :goto_15

    .line 187
    :cond_58
    invoke-virtual {v10}, Landroid/net/ProxyInfo;->getPort()I

    move-result v13

    .line 188
    invoke-virtual {v10}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 189
    invoke-static {v9, v13, v10}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v9

    goto :goto_16

    .line 190
    :cond_59
    :goto_15
    invoke-virtual {v10}, Landroid/net/ProxyInfo;->getPort()I

    move-result v10

    invoke-static {v9, v10}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v9

    .line 191
    :goto_16
    invoke-static {v14, v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyInfo(Landroid/net/wifi/WifiConfiguration;Landroid/net/ProxyInfo;)V

    .line 192
    :cond_5a
    :goto_17
    const-string v9, "192.168.1.100"

    if-eqz v14, :cond_62

    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v10

    sget-object v13, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-eq v10, v13, :cond_62

    iget v10, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyState:I

    const/4 v13, 0x1

    if-ne v10, v13, :cond_62

    .line 193
    iget v10, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPort:I

    .line 194
    iget-object v13, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5b

    move-object/from16 v20, v8

    move-object/from16 v19, v15

    :goto_18
    const/4 v14, 0x0

    goto/16 :goto_1b

    .line 195
    :cond_5b
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v13

    move-object/from16 v19, v15

    sget-object v15, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v13, v15, :cond_5d

    if-lez v10, :cond_5c

    const v13, 0xffff

    if-le v10, v13, :cond_5d

    .line 196
    :cond_5c
    const-string v10, "Invalid port provided for proxy"

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v20, v8

    goto :goto_18

    .line 197
    :cond_5d
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v13

    if-nez v13, :cond_5e

    .line 198
    invoke-static {v9, v10}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v10

    move-object/from16 v20, v8

    goto :goto_1a

    .line 199
    :cond_5e
    invoke-virtual {v13}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5f

    move-object v15, v9

    goto :goto_19

    :cond_5f
    invoke-virtual {v13}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v15

    .line 200
    :goto_19
    invoke-virtual {v13}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_60

    move-object/from16 v20, v8

    invoke-virtual {v13}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_61

    .line 201
    invoke-virtual {v13}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 202
    invoke-static {v15, v10, v8}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v10

    goto :goto_1a

    :cond_60
    move-object/from16 v20, v8

    .line 203
    :cond_61
    invoke-static {v15, v10}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v10

    .line 204
    :goto_1a
    invoke-static {v14, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyInfo(Landroid/net/wifi/WifiConfiguration;Landroid/net/ProxyInfo;)V

    goto :goto_1b

    :cond_62
    move-object/from16 v20, v8

    move-object/from16 v19, v15

    .line 205
    :goto_1b
    const-string v13, ","

    if-eqz v14, :cond_6c

    iget-object v8, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    if-eqz v8, :cond_6c

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6c

    .line 206
    iget-object v8, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    .line 207
    iget-object v10, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 208
    invoke-static {v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 209
    iget-object v10, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_64

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_63

    goto :goto_1d

    .line 210
    :cond_63
    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 211
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_66

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v21, v10

    .line 212
    sget-object v10, Lcom/android/server/enterprise/wifi/WifiPolicy;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 213
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_65

    :cond_64
    :goto_1d
    move-object/from16 v21, v13

    const/4 v14, 0x0

    goto :goto_21

    :cond_65
    move-object/from16 v10, v21

    goto :goto_1c

    .line 214
    :cond_66
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 215
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v15

    if-eqz v15, :cond_68

    .line 216
    invoke-virtual {v15}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_67

    .line 217
    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    :cond_67
    move-object/from16 v21, v13

    .line 218
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v10, v13

    goto :goto_1e

    :cond_68
    move-object/from16 v21, v13

    .line 219
    :goto_1e
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_69
    :goto_1f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 220
    invoke-interface {v10, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_69

    .line 221
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_6a
    if-nez v15, :cond_6b

    const/4 v8, 0x0

    .line 222
    invoke-static {v9, v8, v10}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v9

    goto :goto_20

    .line 223
    :cond_6b
    invoke-virtual {v15}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15}, Landroid/net/ProxyInfo;->getPort()I

    move-result v9

    invoke-static {v8, v9, v10}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v9

    .line 224
    :goto_20
    invoke-static {v14, v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyInfo(Landroid/net/wifi/WifiConfiguration;Landroid/net/ProxyInfo;)V

    goto :goto_21

    :cond_6c
    move-object/from16 v21, v13

    :goto_21
    if-eqz v14, :cond_6e

    .line 225
    iget-object v8, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPacUrl:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getValidStr$3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6e

    .line 226
    iget-object v8, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPacUrl:Ljava/lang/String;

    .line 227
    iget-object v9, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6d

    const/4 v14, 0x0

    goto :goto_22

    .line 228
    :cond_6d
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v9

    sget-object v10, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-eq v9, v10, :cond_6e

    .line 229
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    move-result-object v8

    .line 230
    invoke-static {v14, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateNetworkProxyInfo(Landroid/net/wifi/WifiConfiguration;Landroid/net/ProxyInfo;)V

    :cond_6e
    :goto_22
    if-nez v14, :cond_6f

    .line 231
    const-string v0, "Wifi configuration cannot be created, some invalid configuration was provided"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    return v8

    :cond_6f
    const/4 v8, 0x0

    .line 232
    iget-object v9, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v5, :cond_70

    .line 233
    const-string v5, "Removing previous config"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v5, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeNetworkConfigurationInternal(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_70

    .line 235
    const-string v0, "Failed to remove previous configuration"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 236
    :cond_70
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v3

    if-eqz v3, :cond_71

    .line 237
    iget-object v3, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyHostname:Ljava/lang/String;

    iget v5, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPort:I

    iget-object v8, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyPacUrl:Ljava/lang/String;

    iget-object v9, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    iget-object v10, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyBypassList:Ljava/util/List;

    iget v15, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyState:I

    move-object/from16 v22, v3

    move/from16 v23, v5

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move/from16 v27, v15

    invoke-static/range {v22 .. v27}, Lcom/android/server/enterprise/wifi/WifiPolicy;->createProxyProperties(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/List;I)Lcom/samsung/android/knox/net/ProxyProperties;

    move-result-object v3

    goto :goto_23

    :cond_71
    const/4 v3, 0x0

    .line 238
    :goto_23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 239
    :try_start_1
    iget-object v5, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 240
    const-string v15, ""

    if-eqz v5, :cond_77

    .line 241
    :try_start_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_77

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v22, v5

    .line 242
    iget-object v5, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v13

    iget-object v13, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 243
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v5

    if-nez v5, :cond_76

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v5

    if-eqz v5, :cond_72

    goto :goto_26

    .line 244
    :cond_72
    iget-object v5, v10, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_73

    .line 245
    array-length v13, v5

    if-lez v13, :cond_73

    const/4 v13, 0x0

    aget-object v5, v5, v13

    .line 246
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_73

    .line 247
    iget-object v5, v10, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_25

    :catchall_1
    move-exception v0

    goto/16 :goto_3a

    :cond_73
    const/4 v5, 0x0

    .line 248
    :goto_25
    iget-object v13, v10, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_74

    .line 249
    iget-object v5, v10, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    const/4 v5, 0x1

    :cond_74
    if-eqz v5, :cond_75

    const v5, 0x7fffffff

    .line 250
    iput v5, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 251
    invoke-virtual {v0, v10, v11}, Lcom/android/server/enterprise/wifi/WifiPolicy;->save(Landroid/net/wifi/WifiConfiguration;I)I

    .line 252
    :cond_75
    iget-object v5, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 253
    :try_start_3
    sget-object v5, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v10, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v10}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_26

    .line 254
    :catch_0
    :try_start_4
    const-string v5, "WifiManagerAdapter"

    const-string/jumbo v10, "forget - failed to get wifi service"

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    :goto_26
    move-object/from16 v5, v22

    move-object/from16 v13, v23

    goto :goto_24

    :cond_77
    move-object/from16 v23, v13

    const/4 v5, -0x1

    .line 255
    iput v5, v14, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 256
    invoke-virtual {v0, v14, v11}, Lcom/android/server/enterprise/wifi/WifiPolicy;->save(Landroid/net/wifi/WifiConfiguration;I)I

    move-result v13

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Added network to wifi - id "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 258
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v5, -0x1

    if-eq v13, v5, :cond_92

    .line 259
    iget-object v5, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 260
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 261
    iget-object v5, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v12, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string/jumbo v5, "networkBSSID"

    iget-object v9, v14, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v5, v14, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v9, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    .line 264
    invoke-static {v5, v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 265
    const-string/jumbo v9, "networkKeyMgmt"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v5, v14, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    sget-object v9, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    .line 267
    invoke-static {v5, v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 268
    const-string/jumbo v9, "networkAllowedProtos"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v5, v14, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    sget-object v9, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    .line 270
    invoke-static {v5, v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 271
    const-string/jumbo v9, "networkAuthAlg"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v5, v14, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    sget-object v9, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    .line 273
    invoke-static {v5, v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 274
    const-string/jumbo v9, "networkAllowedPairwiseCiphers"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v5, v14, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    sget-object v9, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    .line 276
    invoke-static {v5, v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 277
    const-string/jumbo v9, "networkAllowedGroupProtocols"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string/jumbo v5, "networkPSK"

    iget-object v9, v14, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v8, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v5, v14, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v5, v5, v9

    const-string/jumbo v9, "networkWEPKey1"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v5, v14, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v9, 0x1

    aget-object v5, v5, v9

    const-string/jumbo v9, "networkWEPKey2"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v5, v14, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v5, v5, v9

    const-string/jumbo v9, "networkWEPKey3"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v5, v14, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v5, v5, v9

    const-string/jumbo v9, "networkWEPKey4"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget v5, v14, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v9, "networkWEPKeyId"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 284
    iget-object v5, v14, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    if-ltz v5, :cond_78

    .line 285
    sget-object v5, Lcom/android/server/enterprise/wifi/WifiPolicy;->EAP_STRINGS:[Ljava/lang/String;

    iget-object v9, v14, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v9

    aget-object v5, v5, v9

    const-string/jumbo v9, "networkEAP"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_78
    sget-object v5, Lcom/android/server/enterprise/wifi/WifiPolicy;->PHASE2_STRINGS:[Ljava/lang/String;

    iget-object v9, v14, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v9

    aget-object v5, v5, v9

    .line 287
    const-string v9, "NULL"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move-object/from16 v16, v10

    const-string/jumbo v10, "networkPhase2"

    if-nez v9, :cond_7a

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_79

    goto :goto_27

    .line 288
    :cond_79
    const-string v9, "auth="

    invoke-virtual {v5, v9, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 289
    :cond_7a
    :goto_27
    const-string v5, "None"

    invoke-virtual {v8, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :goto_28
    iget-object v5, v14, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "networkIdentity"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v5, v14, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "networkAnonymousId"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v5, v14, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "networkPassword"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v5, v14, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "networkClientCertification"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v5, v14, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "networkPrivateKey"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v5, v14, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v5

    .line 296
    const-string/jumbo v9, "networkCaCertificate"

    if-eqz v5, :cond_7b

    array-length v10, v5

    if-lez v10, :cond_7b

    const/4 v10, 0x0

    aget-object v5, v5, v10

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    goto :goto_29

    :cond_7b
    const/4 v5, 0x0

    .line 297
    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :goto_29
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v9

    sget-object v10, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v9, v10, :cond_7c

    const/4 v9, 0x1

    goto :goto_2a

    :cond_7c
    const/4 v9, 0x0

    :goto_2a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 299
    const-string/jumbo v10, "networkStaticIpEnabled"

    invoke-virtual {v8, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v9

    if-eqz v9, :cond_81

    .line 301
    invoke-virtual {v9}, Landroid/net/StaticIpConfiguration;->getIpAddress()Landroid/net/LinkAddress;

    move-result-object v10

    if-eqz v10, :cond_7d

    .line 302
    invoke-virtual {v10}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v17

    .line 303
    invoke-virtual {v10}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v10

    invoke-static {v10}, Lcom/android/net/module/util/Inet4AddressUtils;->prefixLengthToV4NetmaskIntHTL(I)I

    move-result v10

    .line 304
    invoke-static {v10}, Lcom/android/net/module/util/Inet4AddressUtils;->intToInet4AddressHTL(I)Ljava/net/Inet4Address;

    move-result-object v10

    .line 305
    invoke-virtual {v10}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    goto :goto_2b

    :cond_7d
    move-object v10, v5

    move-object/from16 v17, v10

    .line 306
    :goto_2b
    invoke-virtual {v9}, Landroid/net/StaticIpConfiguration;->getGateway()Ljava/net/InetAddress;

    move-result-object v22

    if-eqz v22, :cond_7e

    .line 307
    invoke-virtual/range {v22 .. v22}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v22

    goto :goto_2c

    :cond_7e
    move-object/from16 v22, v5

    .line 308
    :goto_2c
    invoke-virtual {v9}, Landroid/net/StaticIpConfiguration;->getDnsServers()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 309
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_7f

    .line 310
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/net/InetAddress;

    invoke-virtual/range {v24 .. v24}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v24

    goto :goto_2d

    :cond_7f
    move-object/from16 v24, v5

    .line 311
    :goto_2d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_80

    .line 312
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    :cond_80
    move-object/from16 p1, v15

    move-object/from16 v9, v22

    move-object v15, v5

    move-object/from16 v5, v17

    move/from16 v17, v13

    move-object v13, v10

    move-object/from16 v10, v24

    goto :goto_2e

    :cond_81
    move-object v9, v5

    move-object v10, v9

    move/from16 v17, v13

    move-object/from16 p1, v15

    move-object v13, v10

    move-object v15, v13

    .line 313
    :goto_2e
    invoke-virtual {v8, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v8, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v8, v7, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v20

    .line 316
    invoke-virtual {v8, v4, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v19

    .line 317
    invoke-virtual {v8, v4, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v4

    .line 319
    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v4, v5, :cond_82

    const/4 v6, 0x1

    goto :goto_2f

    :cond_82
    const/4 v6, 0x0

    :goto_2f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 320
    const-string/jumbo v7, "networkManualProxyEnabled"

    invoke-virtual {v8, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 321
    sget-object v6, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v4, v6, :cond_84

    :cond_83
    const/4 v9, 0x0

    goto :goto_30

    :cond_84
    if-ne v4, v5, :cond_85

    const/4 v9, 0x1

    goto :goto_30

    .line 322
    :cond_85
    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v4, v5, :cond_83

    const/4 v9, 0x2

    .line 323
    :goto_30
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "networkProxyState"

    invoke-virtual {v8, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 324
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    if-eqz v4, :cond_86

    .line 325
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "networProxyName"

    invoke-virtual {v8, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "networkProxyPort"

    invoke-virtual {v8, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    .line 328
    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v4

    .line 329
    invoke-static {v4}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "networkProxyExclList"

    invoke-virtual {v8, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "networkProxyPacUrl"

    invoke-virtual {v8, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_86
    const/4 v4, 0x0

    .line 331
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v4, "networkEngineID"

    invoke-virtual {v8, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    iget-object v5, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v4, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 333
    invoke-static {v4}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 334
    const-string v4, "WIFI_CONF"

    const-string/jumbo v9, "networkSSID"

    move v6, v11

    move-object v7, v8

    move-object v8, v4

    move-object/from16 v13, v16

    move-object/from16 v4, v18

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_87

    .line 335
    const-string v4, "Failed to persist new configuration"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    const/4 v1, 0x0

    goto/16 :goto_36

    .line 336
    :cond_87
    iget-object v5, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    const-string/jumbo v8, "port"

    const-string/jumbo v9, "host"

    const-string v10, "adminUid"

    if-eqz v5, :cond_8a

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8a

    .line 337
    iget-object v5, v1, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->proxyAuthConfigList:Ljava/util/List;

    .line 338
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v14, 0x1

    :goto_32
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_89

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/knox/net/AuthConfig;

    .line 339
    iget-object v6, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 340
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 341
    invoke-static {v11, v7, v10, v12, v13}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v5

    .line 342
    invoke-virtual {v15}, Lcom/samsung/android/knox/net/AuthConfig;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {v15}, Lcom/samsung/android/knox/net/AuthConfig;->getPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 344
    const-string/jumbo v5, "username"

    invoke-virtual {v15}, Lcom/samsung/android/knox/net/AuthConfig;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual {v15}, Lcom/samsung/android/knox/net/AuthConfig;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v1, "WifiProxyAuthTable"

    invoke-virtual {v6, v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v18, -0x1

    cmp-long v1, v5, v18

    if-nez v1, :cond_88

    const/4 v14, 0x0

    :cond_88
    move-object/from16 v1, p2

    move-object/from16 v5, v16

    goto :goto_32

    :cond_89
    if-nez v14, :cond_8a

    .line 347
    const-string v1, "Failed to persist auth config list"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :cond_8a
    if-eqz v3, :cond_8e

    .line 348
    invoke-static {v3}, Lcom/android/server/enterprise/utils/NetworkUtils;->convertToProxyInfo(Lcom/samsung/android/knox/net/ProxyProperties;)Landroid/net/ProxyInfo;

    move-result-object v1

    .line 349
    iget-object v4, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 350
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 351
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8b

    .line 352
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v6

    goto :goto_33

    :cond_8b
    move-object/from16 v6, p1

    .line 353
    :goto_33
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_8c

    .line 354
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_34

    :cond_8c
    move-object/from16 v7, p1

    .line 355
    :goto_34
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_8d

    .line 356
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_8d

    .line 357
    array-length v15, v14

    if-lez v15, :cond_8d

    move-object/from16 v15, v21

    .line 358
    invoke-static {v15, v14}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    goto :goto_35

    :cond_8d
    move-object/from16 v14, p1

    .line 359
    :goto_35
    invoke-static {v11, v5, v10, v12, v13}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v5, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 362
    const-string/jumbo v1, "pacfile"

    invoke-virtual {v5, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string/jumbo v1, "exclusion"

    invoke-virtual {v5, v1, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v1, "WifiProxyTable"

    invoke-virtual {v4, v1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_8e

    .line 365
    const-string v1, "Failed to persist proxy info"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31

    :cond_8e
    const/4 v1, 0x1

    :goto_36
    if-nez v1, :cond_8f

    .line 366
    const-string v0, "Enterprise wifi network persist failed"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 367
    :cond_8f
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v4, v23

    .line 368
    invoke-virtual {v1, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v3, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateWifiProxy(Ljava/util/Map;)V

    move/from16 v1, v17

    .line 370
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enableNetworkAndMaybeConnect(I)V

    .line 371
    const-string v0, " Client credentials "

    const-string v1, " CA certificate: "

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-object/from16 v5, p2

    .line 372
    :try_start_5
    iget-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    if-eqz v6, :cond_90

    .line 373
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_37

    :catchall_2
    move-exception v0

    goto :goto_39

    :cond_90
    move-object/from16 v1, p1

    .line 374
    :goto_37
    iget-object v6, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    if-eqz v6, :cond_91

    .line 375
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_38

    :cond_91
    move-object/from16 v15, p1

    .line 376
    :goto_38
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 377
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v5, v5, Lcom/samsung/android/knox/net/wifi/WifiAdminProfile;->security:Ljava/lang/String;

    filled-new-array {v6, v7, v5, v1, v15}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v5, 0x3b

    .line 378
    invoke-static {v0, v5, v1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 379
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 380
    const-string/jumbo v0, "setWifiProfile - exited "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    .line 381
    :goto_39
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 382
    throw v0

    .line 383
    :cond_92
    const-string v0, "Enterprise wifi network creation failed"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 384
    :goto_3a
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 385
    throw v0
.end method

.method public final setWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->enforceOwnerOnlyAndWifiPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "setWifiStateChangeAllowed - caller uid: "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, ", allow: "

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const-string v1, "WifiPolicyService"

    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v2, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 37
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 39
    const/4 v6, 0x0

    .line 40
    const-string v3, "WIFI"

    .line 42
    const-string v7, "allowWifiStateChanges"

    .line 44
    move v5, p2

    .line 45
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_0

    .line 51
    const-string/jumbo p0, "setWifiStateChangeAllowed - fail to store value to database"

    .line 54
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return v0

    .line 58
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 61
    move-result-wide v0

    .line 62
    :try_start_0
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 64
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 67
    move-result v2

    .line 68
    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v3

    .line 74
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 77
    move-result-object p2

    .line 78
    filled-new-array {v3, p2}, [Ljava/lang/Object;

    .line 81
    move-result-object p2

    .line 82
    const/16 v3, 0x45

    .line 84
    invoke-static {v2, v3, p2}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    const/4 p2, 0x0

    .line 91
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 94
    move-result p2

    .line 95
    const/4 v0, 0x1

    .line 96
    xor-int/2addr p2, v0

    .line 97
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setChangeWifiStateUserRestriction(Z)V

    .line 100
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 103
    move-result p2

    .line 104
    if-nez p2, :cond_1

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 109
    move-result p1

    .line 110
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setWifiStateChangeAllowedSystemUI(IZ)V

    .line 113
    :cond_1
    return v0

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 118
    throw p0
.end method

.method public final setWifiStateChangeAllowedSystemUI(IZ)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setWifiStateChangeAllowedAsUser(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :catch_0
    move-exception p0

    .line 21
    :try_start_1
    const-string p1, "WifiPolicyService"

    .line 23
    const-string/jumbo p2, "setWifiStateChangeAllowedSystemUI() failed. "

    .line 26
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    goto :goto_0

    .line 30
    :goto_1
    return-void

    .line 31
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    throw p0
.end method

.method public final systemReady()V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 3
    iget-object v0, v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    .line 5
    const-class v2, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    .line 10
    if-nez v3, :cond_0

    .line 12
    new-instance v3, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    .line 14
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 17
    sput-object v3, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    .line 19
    sput-object v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mContext:Landroid/content/Context;

    .line 21
    const-string/jumbo v3, "wifi"

    .line 24
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 30
    sput-object v3, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 32
    const-string/jumbo v3, "sem_wifi"

    .line 35
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 41
    sput-object v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto/16 :goto_19

    .line 47
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v2

    .line 50
    iput-object v0, v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiAdapter:Lcom/android/server/enterprise/adapterlayer/WifiManagerAdapter;

    .line 52
    iget-object v0, v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 54
    if-nez v0, :cond_1

    .line 56
    iget-object v0, v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->mContext:Landroid/content/Context;

    .line 58
    const-string/jumbo v2, "wifi"

    .line 61
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 67
    iput-object v0, v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 69
    :cond_1
    iget-object v0, v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 71
    new-instance v2, Landroid/util/ArrayMap;

    .line 73
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 76
    const-string/jumbo v3, "networkSSID"

    .line 79
    const-string/jumbo v4, "host"

    .line 82
    const-string/jumbo v5, "port"

    .line 85
    const-string/jumbo v6, "pacfile"

    .line 88
    const-string/jumbo v7, "exclusion"

    .line 91
    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    .line 94
    move-result-object v8

    .line 95
    iget-object v9, v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 97
    const-string v10, "WifiProxyTable"

    .line 99
    const/4 v11, 0x0

    .line 100
    invoke-virtual {v9, v10, v8, v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 103
    move-result-object v8

    .line 104
    check-cast v8, Ljava/util/ArrayList;

    .line 106
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 109
    move-result-object v8

    .line 110
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    move-result v9

    .line 114
    const/4 v10, 0x0

    .line 115
    if-eqz v9, :cond_7

    .line 117
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    move-result-object v9

    .line 121
    check-cast v9, Landroid/content/ContentValues;

    .line 123
    invoke-virtual {v9, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    move-result-object v12

    .line 127
    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    move-result-object v13

    .line 131
    invoke-virtual {v9, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 134
    move-result-object v14

    .line 135
    if-nez v14, :cond_2

    .line 137
    move v14, v10

    .line 138
    goto :goto_2

    .line 139
    :cond_2
    invoke-virtual {v9, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 142
    move-result-object v14

    .line 143
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 146
    move-result v14

    .line 147
    :goto_2
    invoke-virtual {v9, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 150
    move-result-object v15

    .line 151
    invoke-virtual {v9, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    move-result-object v9

    .line 155
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 158
    move-result v16

    .line 159
    if-eqz v16, :cond_3

    .line 161
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 164
    move-result v16

    .line 165
    if-eqz v16, :cond_3

    .line 167
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 169
    goto :goto_4

    .line 170
    :cond_3
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 173
    move-result v10

    .line 174
    if-nez v10, :cond_4

    .line 176
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 179
    move-result-object v9

    .line 180
    invoke-static {v9}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;)Landroid/net/ProxyInfo;

    .line 183
    move-result-object v9

    .line 184
    goto :goto_3

    .line 185
    :cond_4
    invoke-static {v9}, Lcom/android/server/enterprise/wifi/WifiPolicy;->convertStringToArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 188
    move-result-object v9

    .line 189
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 192
    move-result-object v9

    .line 193
    invoke-static {v13, v14, v9}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    .line 196
    move-result-object v9

    .line 197
    :goto_3
    invoke-virtual {v9}, Landroid/net/ProxyInfo;->isValid()Z

    .line 200
    move-result v10

    .line 201
    if-eqz v10, :cond_6

    .line 203
    new-instance v10, Lcom/samsung/android/knox/net/ProxyProperties;

    .line 205
    invoke-direct {v10}, Lcom/samsung/android/knox/net/ProxyProperties;-><init>()V

    .line 208
    invoke-virtual {v10, v13}, Lcom/samsung/android/knox/net/ProxyProperties;->setHostname(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v10, v14}, Lcom/samsung/android/knox/net/ProxyProperties;->setPortNumber(I)V

    .line 214
    invoke-virtual {v1, v12}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAuthConfigFromDb(Ljava/lang/String;)Ljava/util/List;

    .line 217
    move-result-object v13

    .line 218
    move-object v14, v13

    .line 219
    check-cast v14, Ljava/util/ArrayList;

    .line 221
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 224
    move-result v14

    .line 225
    if-nez v14, :cond_5

    .line 227
    invoke-virtual {v10, v13}, Lcom/samsung/android/knox/net/ProxyProperties;->setAuthConfigList(Ljava/util/List;)V

    .line 230
    :cond_5
    invoke-virtual {v9}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    .line 233
    move-result-object v9

    .line 234
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 237
    move-result-object v9

    .line 238
    invoke-virtual {v10, v9}, Lcom/samsung/android/knox/net/ProxyProperties;->setExclusionList(Ljava/util/List;)V

    .line 241
    invoke-virtual {v10, v15}, Lcom/samsung/android/knox/net/ProxyProperties;->setPacFileUrl(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v2, v12, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    goto/16 :goto_1

    .line 249
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    .line 251
    const-string v12, "Invalid proxy properties, ignoring: "

    .line 253
    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v9}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    .line 259
    move-result-object v9

    .line 260
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 266
    move-result-object v9

    .line 267
    const-string v10, "WifiPolicyService"

    .line 269
    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    goto/16 :goto_1

    .line 274
    :cond_7
    :goto_4
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/proxy/LocalProxyManager;->updateWifiProxy(Ljava/util/Map;)V

    .line 277
    iget-object v0, v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->mLocalProxyManager:Lcom/android/server/enterprise/proxy/LocalProxyManager;

    .line 279
    const-string/jumbo v2, "networkProxyUsername"

    .line 282
    const-string/jumbo v4, "networkProxyPassword"

    .line 285
    filled-new-array {v2, v4, v3}, [Ljava/lang/String;

    .line 288
    move-result-object v5

    .line 289
    iget-object v6, v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 291
    const-string v7, "WIFI_CONF"

    .line 293
    invoke-virtual {v6, v7, v5, v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 296
    move-result-object v5

    .line 297
    new-instance v6, Landroid/util/ArrayMap;

    .line 299
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 302
    check-cast v5, Ljava/util/ArrayList;

    .line 304
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 307
    move-result-object v5

    .line 308
    :cond_8
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 311
    move-result v7

    .line 312
    if-eqz v7, :cond_a

    .line 314
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 317
    move-result-object v7

    .line 318
    check-cast v7, Landroid/content/ContentValues;

    .line 320
    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 323
    move-result-object v8

    .line 324
    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 327
    move-result-object v9

    .line 328
    invoke-virtual {v7, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 331
    move-result-object v7

    .line 332
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 335
    move-result v12

    .line 336
    if-nez v12, :cond_8

    .line 338
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 341
    move-result v12

    .line 342
    if-nez v12, :cond_8

    .line 344
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 347
    move-result v12

    .line 348
    if-eqz v12, :cond_9

    .line 350
    goto :goto_5

    .line 351
    :cond_9
    new-instance v12, Lcom/samsung/android/knox/net/AuthConfig;

    .line 353
    invoke-direct {v12, v8, v9}, Lcom/samsung/android/knox/net/AuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {v6, v7, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    goto :goto_5

    .line 360
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    const-string v0, "LocalProxyManager"

    .line 365
    const-string v2, "Updating backwards wifi proxy cache"

    .line 367
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 373
    move-result v0

    .line 374
    if-eqz v0, :cond_b

    .line 376
    goto :goto_6

    .line 377
    :cond_b
    new-instance v0, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda1;

    .line 379
    const/4 v2, 0x1

    .line 380
    invoke-direct {v0, v2}, Lcom/android/server/enterprise/proxy/LocalProxyManager$$ExternalSyntheticLambda1;-><init>(I)V

    .line 383
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 386
    :goto_6
    const-string/jumbo v0, "migrateWifiRelatedAPIs - "

    .line 389
    const-string/jumbo v2, "wifi_policy_migration"

    .line 392
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiMigrationNeeded(Ljava/lang/String;)Z

    .line 395
    move-result v3

    .line 396
    const-string v4, "WifiPolicyService"

    .line 398
    if-nez v3, :cond_14

    .line 400
    const-string v0, "Wi-Fi policy migration is not needed, skipping..."

    .line 402
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v2, "WifiPolicyService"

    .line 407
    const-string/jumbo v0, "enforceAutomaticConnectionIfNeeded - "

    .line 410
    const-string v3, "adminUid"

    .line 412
    const-string v4, "allowAutomaticConnection"

    .line 414
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 417
    move-result-object v5

    .line 418
    :try_start_1
    iget-object v6, v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 420
    const-string v7, "WIFI"

    .line 422
    invoke-virtual {v6, v7, v5, v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    .line 425
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 426
    if-eqz v5, :cond_10

    .line 428
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    .line 431
    move-result v6

    .line 432
    if-gtz v6, :cond_c

    .line 434
    goto :goto_8

    .line 435
    :cond_c
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 438
    :cond_d
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 441
    move-result v0

    .line 442
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 445
    move-result v0

    .line 446
    const/4 v6, -0x1

    .line 447
    if-nez v0, :cond_e

    .line 449
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 452
    move-result v0

    .line 453
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 456
    move-result v0

    .line 457
    goto :goto_7

    .line 458
    :catchall_1
    move-exception v0

    .line 459
    move-object v11, v5

    .line 460
    goto :goto_c

    .line 461
    :catch_0
    move-exception v0

    .line 462
    goto :goto_b

    .line 463
    :cond_e
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 466
    move-result v0

    .line 467
    if-nez v0, :cond_d

    .line 469
    move v0, v6

    .line 470
    :goto_7
    if-ne v0, v6, :cond_f

    .line 472
    const-string/jumbo v0, "enforceAutomaticConnectionIfNeeded - no enforcement"

    .line 475
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    goto :goto_a

    .line 479
    :cond_f
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getCallerInfoFromUid(I)Landroid/util/Pair;

    .line 482
    move-result-object v0

    .line 483
    if-eqz v0, :cond_12

    .line 485
    const-string/jumbo v3, "enforceAutomaticConnectionIfNeeded - enforcing after reboot"

    .line 488
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 493
    check-cast v3, Ljava/lang/Integer;

    .line 495
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 498
    move-result v3

    .line 499
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 501
    check-cast v0, Landroid/content/ComponentName;

    .line 503
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 506
    move-result-object v0

    .line 507
    invoke-virtual {v1, v3, v0, v10}, Lcom/android/server/enterprise/wifi/WifiPolicy;->setAllowAutojoinGlobal(ILjava/lang/String;Z)V

    .line 510
    goto :goto_a

    .line 511
    :cond_10
    :goto_8
    if-nez v5, :cond_11

    .line 513
    const-string v3, "Cursor is null"

    .line 515
    goto :goto_9

    .line 516
    :cond_11
    const-string v3, "Cursor is empty"

    .line 518
    :goto_9
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 521
    move-result-object v0

    .line 522
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 525
    if-eqz v5, :cond_1a

    .line 527
    :cond_12
    :goto_a
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 530
    goto/16 :goto_12

    .line 532
    :catchall_2
    move-exception v0

    .line 533
    goto :goto_c

    .line 534
    :catch_1
    move-exception v0

    .line 535
    move-object v5, v11

    .line 536
    :goto_b
    :try_start_3
    const-string/jumbo v3, "enforceAutomaticConnectionIfNeeded"

    .line 539
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 542
    if-eqz v5, :cond_1a

    .line 544
    goto :goto_a

    .line 545
    :goto_c
    if-eqz v11, :cond_13

    .line 547
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 550
    :cond_13
    throw v0

    .line 551
    :cond_14
    const-string/jumbo v17, "minimumRequiredSecurity"

    .line 554
    const-string/jumbo v18, "wifiSsidRestriction"

    .line 557
    const-string v12, "adminUid"

    .line 559
    const-string v13, "allowWifi"

    .line 561
    const-string v14, "allowWifiStateChanges"

    .line 563
    const-string v15, "allowUserProfiles"

    .line 565
    const-string v16, "allowAutomaticConnection"

    .line 567
    filled-new-array/range {v12 .. v18}, [Ljava/lang/String;

    .line 570
    move-result-object v3

    .line 571
    :try_start_4
    iget-object v5, v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 573
    const-string v6, "WIFI"

    .line 575
    invoke-virtual {v5, v6, v3, v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    .line 578
    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 579
    if-eqz v3, :cond_17

    .line 581
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    .line 584
    move-result v5

    .line 585
    if-gtz v5, :cond_15

    .line 587
    goto :goto_d

    .line 588
    :cond_15
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->evaluateAndMigrateUserRestrictionAPIs(Landroid/database/Cursor;)V

    .line 591
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/wifi/WifiPolicy;->evaluateAndMigrateDPMAPIs(Landroid/database/Cursor;)V

    .line 594
    const-string/jumbo v0, "restriction_policy"

    .line 597
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 600
    move-result-object v0

    .line 601
    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 603
    if-nez v0, :cond_16

    .line 605
    const-string/jumbo v0, "migrateWifiRelatedAPIs - restrictionPolicy is null"

    .line 608
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    goto :goto_f

    .line 612
    :catchall_3
    move-exception v0

    .line 613
    move-object v11, v3

    .line 614
    goto/16 :goto_18

    .line 616
    :catch_2
    move-exception v0

    .line 617
    goto :goto_11

    .line 618
    :cond_16
    invoke-virtual {v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->evaluateAndMigrateWifiRelatedPolicyAPIs()V

    .line 621
    goto :goto_f

    .line 622
    :cond_17
    :goto_d
    if-nez v3, :cond_18

    .line 624
    const-string v5, "Cursor is null"

    .line 626
    goto :goto_e

    .line 627
    :cond_18
    const-string v5, "Cursor is empty"

    .line 629
    :goto_e
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 632
    move-result-object v0

    .line 633
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 636
    :goto_f
    if-eqz v3, :cond_19

    .line 638
    :goto_10
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 641
    :cond_19
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateWifiMigrationFlag(Ljava/lang/String;)V

    .line 644
    goto :goto_12

    .line 645
    :catchall_4
    move-exception v0

    .line 646
    goto :goto_18

    .line 647
    :catch_3
    move-exception v0

    .line 648
    move-object v3, v11

    .line 649
    :goto_11
    :try_start_6
    const-string/jumbo v5, "migrateWifiRelatedAPIs"

    .line 652
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 655
    if-eqz v3, :cond_19

    .line 657
    goto :goto_10

    .line 658
    :cond_1a
    :goto_12
    iget-object v0, v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 660
    const-string/jumbo v2, "wifi_restriction_policy_version"

    .line 663
    invoke-virtual {v0, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 666
    move-result-object v0

    .line 667
    if-eqz v0, :cond_1c

    .line 669
    const-string/jumbo v2, "version_1"

    .line 672
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 675
    move-result v0

    .line 676
    if-nez v0, :cond_1b

    .line 678
    goto :goto_13

    .line 679
    :cond_1b
    move v0, v10

    .line 680
    goto :goto_14

    .line 681
    :cond_1c
    :goto_13
    const/4 v0, 0x1

    .line 682
    :goto_14
    const-string/jumbo v2, "isWifiRestrictionMigrationNeeded : "

    .line 685
    const-string v3, "WifiPolicyService"

    .line 687
    invoke-static {v2, v3, v0}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 690
    if-eqz v0, :cond_1e

    .line 692
    :try_start_7
    const-string v0, "allowWifi"

    .line 694
    const-string v2, "allowWifiStateChanges"

    .line 696
    const-string v3, "allowUserProfiles"

    .line 698
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    .line 701
    move-result-object v0

    .line 702
    iget-object v2, v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 704
    const-string v3, "WIFI"

    .line 706
    invoke-virtual {v2, v3, v0, v11}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    .line 709
    move-result-object v11

    .line 710
    invoke-virtual {v1, v11}, Lcom/android/server/enterprise/wifi/WifiPolicy;->handleUpgradeUserRestrictionAPIs(Landroid/database/Cursor;)V

    .line 713
    iget-object v0, v1, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 715
    const-string/jumbo v1, "wifi_restriction_policy_version"

    .line 718
    const-string/jumbo v2, "version_1"

    .line 721
    invoke-virtual {v0, v10, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 724
    if-eqz v11, :cond_1e

    .line 726
    :goto_15
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 729
    goto :goto_17

    .line 730
    :catchall_5
    move-exception v0

    .line 731
    goto :goto_16

    .line 732
    :catch_4
    move-exception v0

    .line 733
    :try_start_8
    const-string v1, "WifiPolicyService"

    .line 735
    const-string v2, "Exception inside migrateWifiUserRestriction"

    .line 737
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 740
    if-eqz v11, :cond_1e

    .line 742
    goto :goto_15

    .line 743
    :goto_16
    if-eqz v11, :cond_1d

    .line 745
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 748
    :cond_1d
    throw v0

    .line 749
    :cond_1e
    :goto_17
    return-void

    .line 750
    :goto_18
    if-eqz v11, :cond_1f

    .line 752
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 755
    :cond_1f
    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->updateWifiMigrationFlag(Ljava/lang/String;)V

    .line 758
    throw v0

    .line 759
    :goto_19
    monitor-exit v2

    .line 760
    throw v0
.end method

.method public final updateWifiMigrationFlag(Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "Updating Wi-Fi migration flag - type = "

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "WifiPolicyService"

    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    const-string/jumbo v0, "wifi_network_migration"

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 21
    const-string/jumbo v0, "wifi_policy_migration"

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 30
    return-void

    .line 31
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 33
    const/4 v0, 0x0

    .line 34
    const-string/jumbo v1, "ok"

    .line 37
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 40
    return-void
.end method
