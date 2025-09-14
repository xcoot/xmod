.class public final Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public volatile activateState:I

.field public volatile admin_id:I

.field public volatile chainingEnabled:I

.field public volatile credentialsPredefined:Z

.field public volatile isUsbTetheringAuthEnabled:I

.field public volatile mDefaultInterface:Ljava/lang/String;

.field public final mExemptPackageList:Ljava/util/HashSet;

.field public volatile mInterfaceAddress:Ljava/lang/String;

.field public volatile mInterfaceName:Ljava/lang/String;

.field public volatile mInterfaceV6Address:Ljava/lang/String;

.field public volatile mInterface_type:I

.field public volatile mIpChainName:Ljava/lang/String;

.field public volatile mNetId:I

.field public final mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mPackageUidSet:Ljava/util/HashSet;

.field public volatile mPacurl:Landroid/net/Uri;

.field public volatile mProfileName:Ljava/lang/String;

.field public mProxyInfo:Landroid/net/ProxyInfo;

.field public volatile mProxyPassword:Ljava/lang/String;

.field public volatile mProxyPort:I

.field public volatile mProxyServer:Ljava/lang/String;

.field public volatile mProxyusername:Ljava/lang/String;

.field public volatile mUsbTethering:I

.field public volatile mVendorPkgName:Ljava/lang/String;

.field public volatile mVendorUid:I

.field public volatile mVpnClientType:I

.field public mVpnStartTimeToConnect:J

.field public volatile personaId:I

.field public volatile profileId:I

.field public volatile protocolType:Ljava/lang/String;

.field public volatile proxyAuthRequried:I

.field public volatile routeType:I

.field public volatile uidPidSearchEnabled:I

.field public volatile vpnConnectionType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVendorUid:I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mNetId:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyServer:Ljava/lang/String;

    .line 12
    .line 13
    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyPort:I

    .line 14
    .line 15
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyInfo:Landroid/net/ProxyInfo;

    .line 16
    .line 17
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyusername:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyPassword:Ljava/lang/String;

    .line 20
    .line 21
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPacurl:Landroid/net/Uri;

    .line 24
    .line 25
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceAddress:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mDefaultInterface:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterfaceV6Address:Ljava/lang/String;

    .line 30
    .line 31
    iput-boolean v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->credentialsPredefined:Z

    .line 32
    .line 33
    iput v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->proxyAuthRequried:I

    .line 34
    .line 35
    iput v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mVpnClientType:I

    .line 36
    .line 37
    iput v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mInterface_type:I

    .line 38
    .line 39
    iput v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mUsbTethering:I

    .line 40
    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    .line 48
    new-instance v0, Ljava/util/HashSet;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageUidSet:Ljava/util/HashSet;

    .line 54
    .line 55
    new-instance v0, Ljava/util/HashSet;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mExemptPackageList:Ljava/util/HashSet;

    .line 61
    .line 62
    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mIpChainName:Ljava/lang/String;

    .line 63
    .line 64
    iput v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->isUsbTetheringAuthEnabled:I

    .line 65
    .line 66
    return-void
.end method


# virtual methods
.method public final addPackageEntry(IILjava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p3, v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->mPersonaedPackageName:Ljava/lang/String;

    .line 7
    .line 8
    iput p1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->mUid:I

    .line 9
    .line 10
    iput p2, v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->mCid:I

    .line 11
    .line 12
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    invoke-virtual {p2, p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageUidSet:Ljava/util/HashSet;

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final getPackage(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 18
    .line 19
    return-object p0
.end method

.method public final getProfileName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProfileName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final declared-synchronized getProxyInfo()Landroid/net/ProxyInfo;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mProxyInfo:Landroid/net/ProxyInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final removePackageEntry(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnPackageInfo;->getUid()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageUidSet:Ljava/util/HashSet;

    .line 23
    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->mPackageMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-void
.end method
