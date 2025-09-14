.class public final Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;


# instance fields
.field public final mConnection:Lcom/android/server/pm/DomainVerificationConnection;

.field public final mContext:Landroid/content/Context;

.field public final mVerifierComponent:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/DomainVerificationConnection;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mVerifierComponent:Landroid/content/ComponentName;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mVerifierComponent:Landroid/content/ComponentName;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isCallerVerifier(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mVerifierComponent:Landroid/content/ComponentName;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object p0, p0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    invoke-interface {p0, v0, v2, v3, v1}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-ne p1, p0, :cond_0

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    :goto_0
    return p0
.end method

.method public final runMessage(ILjava/lang/Object;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    move/from16 v2, p1

    .line 5
    .line 6
    if-eq v2, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return v0

    .line 10
    :cond_0
    move-object/from16 v2, p2

    .line 11
    .line 12
    check-cast v2, Ljava/util/Set;

    .line 13
    .line 14
    new-instance v3, Landroid/content/pm/verify/domain/DomainVerificationRequest;

    .line 15
    .line 16
    invoke-direct {v3, v2}, Landroid/content/pm/verify/domain/DomainVerificationRequest;-><init>(Ljava/util/Set;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 20
    .line 21
    iget-object v4, v2, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 22
    .line 23
    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const-string/jumbo v5, "verifier_timeout"

    .line 30
    .line 31
    .line 32
    const-wide/16 v6, 0x2710

    .line 33
    .line 34
    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    const-string v13, ""

    .line 47
    .line 48
    const/4 v11, 0x0

    .line 49
    const/16 v12, 0x134

    .line 50
    .line 51
    move-object v8, v6

    .line 52
    move-wide v9, v4

    .line 53
    invoke-virtual/range {v8 .. v13}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v2, v2, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 57
    .line 58
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 59
    .line 60
    const-class v7, Lcom/android/server/DeviceIdleInternal;

    .line 61
    .line 62
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 63
    .line 64
    invoke-interface {v2, v7}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    move-object v8, v2

    .line 69
    check-cast v8, Lcom/android/server/DeviceIdleInternal;

    .line 70
    .line 71
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    iget-object v2, v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mVerifierComponent:Landroid/content/ComponentName;

    .line 76
    .line 77
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    const/4 v13, 0x0

    .line 82
    const/4 v14, 0x1

    .line 83
    const/16 v15, 0x134

    .line 84
    .line 85
    const-string v16, "domain verification agent"

    .line 86
    .line 87
    move-wide v11, v4

    .line 88
    invoke-interface/range {v8 .. v16}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance v2, Landroid/content/Intent;

    .line 92
    .line 93
    const-string v4, "android.intent.action.DOMAINS_NEED_VERIFICATION"

    .line 94
    .line 95
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v4, v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mVerifierComponent:Landroid/content/ComponentName;

    .line 99
    .line 100
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    const-string v4, "android.content.pm.verify.domain.extra.VERIFICATION_REQUEST"

    .line 105
    .line 106
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    const/high16 v3, 0x10000000

    .line 111
    .line 112
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    iget-object v0, v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mContext:Landroid/content/Context;

    .line 117
    .line 118
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 119
    .line 120
    const/4 v4, 0x0

    .line 121
    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 126
    .line 127
    .line 128
    return v1
.end method

.method public final sendBroadcastForPackages(Ljava/util/Set;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/DomainVerificationConnection;->schedule(ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
