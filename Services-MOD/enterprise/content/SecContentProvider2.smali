.class public Lcom/android/server/enterprise/content/SecContentProvider2;
.super Landroid/content/ContentProvider;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/UriMatcher;

    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 7
    sput-object v0, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 9
    const-string v1, "ApplicationPolicy"

    .line 11
    const/4 v2, 0x1

    .line 12
    const-string/jumbo v3, "com.sec.knox.provider2"

    .line 15
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 18
    const-string v1, "DeviceAccountPolicy"

    .line 20
    const/4 v2, 0x3

    .line 21
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 24
    const-string v1, "EmailPolicy"

    .line 26
    const/4 v2, 0x6

    .line 27
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    const-string v1, "EmailAccountPolicy"

    .line 32
    const/4 v2, 0x7

    .line 33
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    const-string v1, "EnterpriseDeviceManager"

    .line 38
    const/16 v2, 0xb

    .line 40
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    const-string v1, "ExchangeAccountPolicy"

    .line 45
    const/16 v2, 0xc

    .line 47
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    const-string v1, "KioskMode"

    .line 52
    const/16 v2, 0xd

    .line 54
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    const-string v1, "KnoxCustomManagerService1"

    .line 59
    const/16 v2, 0xe

    .line 61
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    const-string v1, "KnoxCustomManagerService2"

    .line 66
    const/16 v2, 0xf

    .line 68
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    const-string v1, "MiscPolicy"

    .line 73
    const/16 v2, 0x10

    .line 75
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    const-string v1, "MultiUserManager"

    .line 80
    const/16 v2, 0x11

    .line 82
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    const-string v1, "PhoneRestrictionPolicy"

    .line 87
    const/16 v2, 0x12

    .line 89
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    const-string/jumbo v1, "vpnPolicy"

    .line 95
    const/16 v2, 0x13

    .line 97
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    const-string v1, "WifiPolicy"

    .line 102
    const/16 v2, 0x14

    .line 104
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    const-string v1, "EnterpriseLicenseService"

    .line 109
    const/16 v2, 0x15

    .line 111
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 114
    const-string v1, "KnoxMUMContainerPolicy"

    .line 116
    const/16 v2, 0x16

    .line 118
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 7
    return-void
.end method

.method public static populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;
    .locals 1

    .line 1
    new-instance v0, Landroid/database/MatrixCursor;

    .line 3
    filled-new-array {p0}, [Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    move-result-object p0

    .line 14
    filled-new-array {p0}, [Ljava/lang/Boolean;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {v0, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 21
    return-object v0
.end method

.method public static queryDeviceAccount(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    const-string/jumbo v3, "device_account_policy"

    .line 7
    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v3

    .line 11
    check-cast v3, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v3, :cond_8

    .line 16
    if-eqz p0, :cond_8

    .line 18
    const/4 v5, 0x3

    .line 19
    const/4 v6, -0x1

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 23
    move-result v7

    .line 24
    sparse-switch v7, :sswitch_data_0

    .line 27
    goto :goto_0

    .line 28
    :sswitch_0
    const-string/jumbo v7, "isAccountAdditionAllowed"

    .line 31
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v7

    .line 35
    if-nez v7, :cond_0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v6, v2

    .line 39
    goto :goto_0

    .line 40
    :sswitch_1
    const-string/jumbo v7, "isAccountRemovalAllowedAsUser"

    .line 43
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v7

    .line 47
    if-nez v7, :cond_1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v6, v1

    .line 51
    goto :goto_0

    .line 52
    :sswitch_2
    const-string/jumbo v7, "isAccountRemovalAllowed"

    .line 55
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v7

    .line 59
    if-nez v7, :cond_2

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move v6, v0

    .line 63
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 66
    return-object v4

    .line 67
    :pswitch_0
    if-eqz p1, :cond_4

    .line 69
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 72
    move-result v6

    .line 73
    if-ge v6, v5, :cond_3

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    aget-object v0, p1, v0

    .line 78
    aget-object v1, p1, v1

    .line 80
    aget-object p1, p1, v2

    .line 82
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 85
    move-result p1

    .line 86
    invoke-virtual {v3, v0, v1, p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 89
    move-result p1

    .line 90
    invoke-static {p0, p1}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    .line 93
    move-result-object p0

    .line 94
    goto :goto_3

    .line 95
    :cond_4
    :goto_1
    return-object v4

    .line 96
    :pswitch_1
    if-eqz p1, :cond_6

    .line 98
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 101
    move-result v6

    .line 102
    const/4 v7, 0x4

    .line 103
    if-ge v6, v7, :cond_5

    .line 105
    goto :goto_2

    .line 106
    :cond_5
    aget-object v0, p1, v0

    .line 108
    aget-object v1, p1, v1

    .line 110
    aget-object v2, p1, v2

    .line 112
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 115
    move-result v2

    .line 116
    aget-object p1, p1, v5

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 121
    move-result p1

    .line 122
    invoke-virtual {v3, v0, v1, v2, p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowedAsUser(Ljava/lang/String;Ljava/lang/String;ZI)Z

    .line 125
    move-result p1

    .line 126
    invoke-static {p0, p1}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    .line 129
    move-result-object p0

    .line 130
    goto :goto_3

    .line 131
    :cond_6
    :goto_2
    return-object v4

    .line 132
    :pswitch_2
    if-eqz p1, :cond_8

    .line 134
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 137
    move-result v6

    .line 138
    if-ge v6, v5, :cond_7

    .line 140
    goto :goto_4

    .line 141
    :cond_7
    aget-object v0, p1, v0

    .line 143
    aget-object v1, p1, v1

    .line 145
    aget-object p1, p1, v2

    .line 147
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 150
    move-result p1

    .line 151
    invoke-virtual {v3, v0, v1, p1}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 154
    move-result p1

    .line 155
    invoke-static {p0, p1}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    .line 158
    move-result-object p0

    .line 159
    :goto_3
    return-object p0

    .line 160
    :cond_8
    :goto_4
    return-object v4

    .line 161
    :sswitch_data_0
    .sparse-switch
        -0x7117b61 -> :sswitch_2
        0x1562409c -> :sswitch_1
        0x4fb7d6e9 -> :sswitch_0
    .end sparse-switch

    .line 175
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static queryEmailAccount(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    .line 1
    const-string/jumbo v0, "email_account_policy"

    .line 4
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/server/enterprise/email/EmailAccountPolicy;

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_5

    .line 13
    if-eqz p0, :cond_5

    .line 15
    const/4 v2, 0x0

    .line 16
    const-string/jumbo v3, "getSecurityOutgoingServerPassword"

    .line 19
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_3

    .line 25
    const-string/jumbo v3, "getSecurityIncomingServerPassword"

    .line 28
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_0

    .line 34
    return-object v1

    .line 35
    :cond_0
    if-eqz p2, :cond_2

    .line 37
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 40
    move-result v3

    .line 41
    if-gtz v3, :cond_1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 46
    invoke-direct {v1, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 49
    aget-object p1, p2, v2

    .line 51
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 54
    move-result-wide p1

    .line 55
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    new-instance p2, Landroid/database/MatrixCursor;

    .line 61
    filled-new-array {p0}, [Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    invoke-direct {p2, p0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 68
    filled-new-array {p1}, [Ljava/lang/String;

    .line 71
    move-result-object p0

    .line 72
    invoke-virtual {p2, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    :goto_0
    return-object v1

    .line 77
    :cond_3
    if-eqz p2, :cond_5

    .line 79
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 82
    move-result v3

    .line 83
    if-gtz v3, :cond_4

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 88
    invoke-direct {v1, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 91
    aget-object p1, p2, v2

    .line 93
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 96
    move-result-wide p1

    .line 97
    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/enterprise/email/EmailAccountPolicy;->getSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    new-instance p2, Landroid/database/MatrixCursor;

    .line 103
    filled-new-array {p0}, [Ljava/lang/String;

    .line 106
    move-result-object p0

    .line 107
    invoke-direct {p2, p0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 110
    filled-new-array {p1}, [Ljava/lang/String;

    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p2, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 117
    :goto_1
    return-object p2

    .line 118
    :cond_5
    :goto_2
    return-object v1
.end method

.method public static queryEnterpriseLicense(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    .line 1
    const-string/jumbo v0, "enterprise_license_policy"

    .line 4
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const-string/jumbo v2, "isServiceAvailable"

    .line 19
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 25
    const-string p0, "SecContentProvider2"

    .line 27
    const-string p1, "ENTERPRISELICENSEPOLICY : return null"

    .line 29
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-object v1

    .line 33
    :cond_0
    if-eqz p1, :cond_2

    .line 35
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x1

    .line 40
    if-gt v2, v3, :cond_1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v1, 0x0

    .line 44
    aget-object v1, p1, v1

    .line 46
    aget-object p1, p1, v3

    .line 48
    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    .line 51
    move-result p1

    .line 52
    invoke-static {p0, p1}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_2
    :goto_0
    return-object v1
.end method

.method public static queryMisc(ILjava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .line 1
    const-string/jumbo v0, "misc_policy"

    .line 4
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/server/enterprise/general/MiscPolicy;

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_2

    .line 13
    if-eqz p1, :cond_2

    .line 15
    const-string/jumbo v2, "getCurrentLockScreenString"

    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_1

    .line 24
    const-string/jumbo p0, "isNFCStateChangeAllowed"

    .line 27
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_0

    .line 33
    return-object v1

    .line 34
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/enterprise/general/MiscPolicy;->isNFCStateChangeAllowed()Z

    .line 37
    move-result p0

    .line 38
    invoke-static {p1, p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    .line 41
    move-result-object p0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 45
    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/general/MiscPolicy;->getCurrentLockScreenString(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 52
    new-instance v0, Landroid/database/MatrixCursor;

    .line 54
    filled-new-array {p1}, [Ljava/lang/String;

    .line 57
    move-result-object p1

    .line 58
    invoke-direct {v0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 61
    filled-new-array {p0}, [Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {v0, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 68
    move-object p0, v0

    .line 69
    :goto_0
    return-object p0

    .line 70
    :cond_2
    return-object v1
.end method

.method public static queryMultiUser(ILjava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .line 1
    const-string/jumbo v0, "multi_user_manager_service"

    .line 4
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const-string/jumbo v2, "multipleUsersSupported"

    .line 19
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 25
    return-object v1

    .line 26
    :cond_0
    :try_start_0
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    .line 28
    invoke-direct {v2, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 31
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/multiuser/MultiUserManagerService;->multipleUsersSupported(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 34
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    invoke-static {p1, p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :catch_0
    :cond_1
    return-object v1
.end method

.method public static queryMumContainer(ILjava/lang/String;)Landroid/database/Cursor;
    .locals 4

    .line 1
    const-string/jumbo v0, "mum_container_policy"

    .line 4
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 10
    const/4 v1, 0x0

    .line 11
    const-string v2, "SecContentProvider2"

    .line 13
    if-nez v0, :cond_0

    .line 15
    const-string/jumbo p0, "container policy is null"

    .line 18
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-object v1

    .line 22
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    const-string/jumbo v3, "isNFCEnabled"

    .line 28
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_1

    .line 34
    const-string/jumbo p0, "queryMumContainer - no selection found!"

    .line 37
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 43
    invoke-direct {v1, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isNFCEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 49
    move-result p0

    .line 50
    invoke-static {p1, p0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    .line 53
    move-result-object v1

    .line 54
    :goto_0
    return-object v1
.end method

.method public static queryPhoneRestriction(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 3
    move/from16 v0, p1

    .line 5
    const-string/jumbo v2, "getDisclaimerText"

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v5, 0x1

    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x6

    .line 12
    const-string/jumbo v8, "isMmsAllowedFromSimSlot(0) result "

    .line 15
    const-string/jumbo v9, "isMmsAllowedFromSimSlot(1) result "

    .line 18
    const-string/jumbo v10, "isDataAllowedFromSimSlot(0) result "

    .line 21
    const-string/jumbo v11, "isDataAllowedFromSimSlot(1) result "

    .line 24
    const-string/jumbo v12, "phone_restriction_policy"

    .line 27
    invoke-static {v12}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    move-result-object v12

    .line 31
    check-cast v12, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 33
    const/4 v13, 0x0

    .line 34
    if-eqz v12, :cond_12

    .line 36
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    const-string v14, "SecurityException: "

    .line 41
    const-string v15, "SecContentProvider2"

    .line 43
    const/16 v16, -0x1

    .line 45
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    .line 48
    move-result v17

    .line 49
    sparse-switch v17, :sswitch_data_0

    .line 52
    goto/16 :goto_0

    .line 54
    :sswitch_0
    const-string/jumbo v4, "checkEnableUseOfPacketData"

    .line 57
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v4

    .line 61
    if-nez v4, :cond_0

    .line 63
    goto/16 :goto_0

    .line 65
    :cond_0
    const/16 v16, 0xb

    .line 67
    goto/16 :goto_0

    .line 69
    :sswitch_1
    const-string/jumbo v4, "isSimLockedByAdmin"

    .line 72
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v4

    .line 76
    if-nez v4, :cond_1

    .line 78
    goto/16 :goto_0

    .line 80
    :cond_1
    const/16 v16, 0xa

    .line 82
    goto/16 :goto_0

    .line 84
    :sswitch_2
    const-string/jumbo v4, "isDataAllowedFromSimSlot2"

    .line 87
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v4

    .line 91
    if-nez v4, :cond_2

    .line 93
    goto/16 :goto_0

    .line 95
    :cond_2
    const/16 v16, 0x9

    .line 97
    goto/16 :goto_0

    .line 99
    :sswitch_3
    const-string/jumbo v4, "isDataAllowedFromSimSlot1"

    .line 102
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result v4

    .line 106
    if-nez v4, :cond_3

    .line 108
    goto/16 :goto_0

    .line 110
    :cond_3
    const/16 v16, 0x8

    .line 112
    goto/16 :goto_0

    .line 114
    :sswitch_4
    const-string/jumbo v4, "isMmsAllowedFromSimSlot2"

    .line 117
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result v4

    .line 121
    if-nez v4, :cond_4

    .line 123
    goto :goto_0

    .line 124
    :cond_4
    const/16 v16, 0x7

    .line 126
    goto :goto_0

    .line 127
    :sswitch_5
    const-string/jumbo v4, "isMmsAllowedFromSimSlot1"

    .line 130
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    move-result v4

    .line 134
    if-nez v4, :cond_5

    .line 136
    goto :goto_0

    .line 137
    :cond_5
    move/from16 v16, v7

    .line 139
    goto :goto_0

    .line 140
    :sswitch_6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    move-result v4

    .line 144
    if-nez v4, :cond_6

    .line 146
    goto :goto_0

    .line 147
    :cond_6
    const/16 v16, 0x5

    .line 149
    goto :goto_0

    .line 150
    :sswitch_7
    const-string/jumbo v4, "isCopyContactToSimAllowed"

    .line 153
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    move-result v4

    .line 157
    if-nez v4, :cond_7

    .line 159
    goto :goto_0

    .line 160
    :cond_7
    const/16 v16, 0x4

    .line 162
    goto :goto_0

    .line 163
    :sswitch_8
    const-string/jumbo v4, "isIncomingMmsAllowed"

    .line 166
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    move-result v4

    .line 170
    if-nez v4, :cond_8

    .line 172
    goto :goto_0

    .line 173
    :cond_8
    move/from16 v16, v3

    .line 175
    goto :goto_0

    .line 176
    :sswitch_9
    const-string/jumbo v4, "isRCSEnabled"

    .line 179
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    move-result v4

    .line 183
    if-nez v4, :cond_9

    .line 185
    goto :goto_0

    .line 186
    :cond_9
    const/16 v16, 0x2

    .line 188
    goto :goto_0

    .line 189
    :sswitch_a
    const-string/jumbo v4, "getEmergencyCallOnly"

    .line 192
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    move-result v4

    .line 196
    if-nez v4, :cond_a

    .line 198
    goto :goto_0

    .line 199
    :cond_a
    move/from16 v16, v5

    .line 201
    goto :goto_0

    .line 202
    :sswitch_b
    const-string/jumbo v4, "isOutgoingMmsAllowed"

    .line 205
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    move-result v4

    .line 209
    if-nez v4, :cond_b

    .line 211
    goto :goto_0

    .line 212
    :cond_b
    move/from16 v16, v6

    .line 214
    :goto_0
    packed-switch v16, :pswitch_data_0

    .line 217
    const-string/jumbo v0, "return null"

    .line 220
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-object v13

    .line 224
    :pswitch_0
    if-eqz p2, :cond_c

    .line 226
    invoke-static/range {p2 .. p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 229
    move-result v0

    .line 230
    if-lez v0, :cond_c

    .line 232
    aget-object v0, p2, v6

    .line 234
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 237
    move-result v6

    .line 238
    :cond_c
    invoke-virtual {v12, v6}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    .line 241
    move-result v0

    .line 242
    invoke-static {v1, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    .line 245
    move-result-object v0

    .line 246
    goto/16 :goto_7

    .line 248
    :pswitch_1
    if-eqz p2, :cond_e

    .line 250
    invoke-static/range {p2 .. p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 253
    move-result v0

    .line 254
    if-gtz v0, :cond_d

    .line 256
    goto :goto_1

    .line 257
    :cond_d
    aget-object v0, p2, v6

    .line 259
    invoke-virtual {v12, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    .line 262
    move-result v0

    .line 263
    invoke-static {v1, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    .line 266
    move-result-object v0

    .line 267
    goto/16 :goto_7

    .line 269
    :cond_e
    :goto_1
    return-object v13

    .line 270
    :pswitch_2
    :try_start_0
    invoke-virtual {v12, v5, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    .line 273
    move-result v5

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    .line 276
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    move-result-object v0

    .line 286
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    goto :goto_2

    .line 290
    :catch_0
    move-exception v0

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    .line 293
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    move-result-object v0

    .line 303
    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :goto_2
    invoke-static {v1, v5}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    .line 309
    move-result-object v0

    .line 310
    goto/16 :goto_7

    .line 312
    :pswitch_3
    :try_start_1
    invoke-virtual {v12, v5, v6}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    .line 315
    move-result v5

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    .line 318
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    move-result-object v0

    .line 328
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 331
    goto :goto_3

    .line 332
    :catch_1
    move-exception v0

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    .line 335
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    move-result-object v0

    .line 345
    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :goto_3
    invoke-static {v1, v5}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    .line 351
    move-result-object v0

    .line 352
    goto/16 :goto_7

    .line 354
    :pswitch_4
    :try_start_2
    invoke-virtual {v12, v7, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    .line 357
    move-result v5

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    .line 360
    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    move-result-object v0

    .line 370
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 373
    goto :goto_4

    .line 374
    :catch_2
    move-exception v0

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    .line 377
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    move-result-object v0

    .line 387
    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_4
    invoke-static {v1, v5}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    .line 393
    move-result-object v0

    .line 394
    goto/16 :goto_7

    .line 396
    :pswitch_5
    :try_start_3
    invoke-virtual {v12, v7, v6}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    .line 399
    move-result v5

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    .line 402
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    move-result-object v0

    .line 412
    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    .line 415
    goto :goto_5

    .line 416
    :catch_3
    move-exception v0

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    .line 419
    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 428
    move-result-object v0

    .line 429
    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :goto_5
    invoke-static {v1, v5}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    .line 435
    move-result-object v0

    .line 436
    goto/16 :goto_7

    .line 438
    :pswitch_6
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    .line 440
    invoke-direct {v1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 443
    invoke-virtual {v12, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDisclaimerText(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    .line 446
    move-result-object v0

    .line 447
    new-instance v1, Landroid/database/MatrixCursor;

    .line 449
    filled-new-array {v2}, [Ljava/lang/String;

    .line 452
    move-result-object v2

    .line 453
    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 456
    filled-new-array {v0}, [Ljava/lang/String;

    .line 459
    move-result-object v0

    .line 460
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 463
    move-object v0, v1

    .line 464
    goto/16 :goto_7

    .line 466
    :pswitch_7
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    .line 468
    invoke-direct {v2, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 471
    invoke-virtual {v12, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCopyContactToSimAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 474
    move-result v0

    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    .line 477
    const-string/jumbo v3, "isCopyContactToSimAllowed = "

    .line 480
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    move-result-object v2

    .line 490
    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-static {v1, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    .line 496
    move-result-object v0

    .line 497
    goto :goto_7

    .line 498
    :pswitch_8
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    .line 500
    invoke-direct {v2, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 503
    const-string v0, "allowIncomingMms"

    .line 505
    invoke-virtual {v12, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    .line 508
    move-result v0

    .line 509
    invoke-static {v1, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    .line 512
    move-result-object v0

    .line 513
    goto :goto_7

    .line 514
    :pswitch_9
    invoke-static/range {p2 .. p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 517
    move-result v2

    .line 518
    if-eqz p2, :cond_11

    .line 520
    if-ge v2, v3, :cond_f

    .line 522
    goto :goto_6

    .line 523
    :cond_f
    aget-object v2, p2, v6

    .line 525
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 528
    move-result v2

    .line 529
    aget-object v3, p2, v5

    .line 531
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 534
    move-result v3

    .line 535
    const/4 v4, 0x2

    .line 536
    aget-object v4, p2, v4

    .line 538
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 541
    move-result v4

    .line 542
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    .line 544
    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 547
    const-string/jumbo v5, "enableRCS"

    .line 550
    invoke-virtual {v12, v2, v5, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSEnabledInternal(ILjava/lang/String;Z)Z

    .line 553
    move-result v5

    .line 554
    if-eqz v5, :cond_10

    .line 556
    new-instance v5, Lcom/samsung/android/knox/ContextInfo;

    .line 558
    invoke-direct {v5, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 561
    invoke-virtual {v12, v5, v2, v3, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSEnabledBySimSlot(Lcom/samsung/android/knox/ContextInfo;IZI)Z

    .line 564
    move-result v5

    .line 565
    :cond_10
    invoke-static {v1, v5}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    .line 568
    move-result-object v0

    .line 569
    goto :goto_7

    .line 570
    :cond_11
    :goto_6
    return-object v13

    .line 571
    :pswitch_a
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    .line 573
    invoke-direct {v2, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 576
    invoke-virtual {v12, v2, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 579
    move-result v0

    .line 580
    invoke-static {v1, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    .line 583
    move-result-object v0

    .line 584
    goto :goto_7

    .line 585
    :pswitch_b
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    .line 587
    invoke-direct {v2, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 590
    invoke-virtual {v12, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 593
    move-result v0

    .line 594
    invoke-static {v1, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    .line 597
    move-result-object v0

    .line 598
    :goto_7
    return-object v0

    .line 599
    :cond_12
    return-object v13

    .line 600
    nop

    .line 601
    :sswitch_data_0
    .sparse-switch
        -0x4b848555 -> :sswitch_b
        -0x45f6c0db -> :sswitch_a
        -0x36ade6b7 -> :sswitch_9
        -0xb24e11b -> :sswitch_8
        0x1134efad -> :sswitch_7
        0x174ab65e -> :sswitch_6
        0x2ef792e5 -> :sswitch_5
        0x2ef792e6 -> :sswitch_4
        0x30fbd25a -> :sswitch_3
        0x30fbd25b -> :sswitch_2
        0x617af081 -> :sswitch_1
        0x7be8d885 -> :sswitch_0
    .end sparse-switch

    .line 651
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static queryVPN(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string/jumbo v1, "vpn_policy"

    .line 5
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_6

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    const/4 v3, -0x1

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 21
    move-result v4

    .line 22
    sparse-switch v4, :sswitch_data_0

    .line 25
    goto :goto_0

    .line 26
    :sswitch_0
    const-string/jumbo v4, "isUserChangeProfilesAllowed"

    .line 29
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v4

    .line 33
    if-nez v4, :cond_0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v3, 0x2

    .line 37
    goto :goto_0

    .line 38
    :sswitch_1
    const-string/jumbo v4, "isUserSetAlwaysOnAllowed"

    .line 41
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v3, 0x1

    .line 49
    goto :goto_0

    .line 50
    :sswitch_2
    const-string/jumbo v4, "isUserAddProfilesAllowed"

    .line 53
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_2

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move v3, v0

    .line 61
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 64
    return-object v2

    .line 65
    :pswitch_0
    if-eqz p2, :cond_3

    .line 67
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 70
    move-result v2

    .line 71
    if-lez v2, :cond_3

    .line 73
    aget-object p2, p2, v0

    .line 75
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 78
    move-result v0

    .line 79
    :cond_3
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    .line 81
    invoke-direct {p2, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 84
    invoke-virtual {v1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserChangeProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 87
    move-result p1

    .line 88
    invoke-static {p0, p1}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    .line 91
    move-result-object p0

    .line 92
    goto :goto_1

    .line 93
    :pswitch_1
    if-eqz p2, :cond_4

    .line 95
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 98
    move-result v2

    .line 99
    if-lez v2, :cond_4

    .line 101
    aget-object p2, p2, v0

    .line 103
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 106
    move-result v0

    .line 107
    :cond_4
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    .line 109
    invoke-direct {p2, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 112
    invoke-virtual {v1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserSetAlwaysOnAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 115
    move-result p1

    .line 116
    invoke-static {p0, p1}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    .line 119
    move-result-object p0

    .line 120
    goto :goto_1

    .line 121
    :pswitch_2
    if-eqz p2, :cond_5

    .line 123
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 126
    move-result v2

    .line 127
    if-lez v2, :cond_5

    .line 129
    aget-object p2, p2, v0

    .line 131
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 134
    move-result v0

    .line 135
    :cond_5
    new-instance p2, Lcom/samsung/android/knox/ContextInfo;

    .line 137
    invoke-direct {p2, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 140
    invoke-virtual {v1, p2, v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->isUserAddProfilesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 143
    move-result p1

    .line 144
    invoke-static {p0, p1}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    .line 147
    move-result-object p0

    .line 148
    :goto_1
    return-object p0

    .line 149
    :cond_6
    return-object v2

    .line 150
    nop

    .line 151
    :sswitch_data_0
    .sparse-switch
        0x20e4e472 -> :sswitch_2
        0x528665ad -> :sswitch_1
        0x75693779 -> :sswitch_0
    .end sparse-switch

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getCallerName(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_0

    .line 13
    const-string/jumbo p0, "fail to get caller name"

    .line 16
    :cond_0
    return-object p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 7
    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 10
    move-result v1

    .line 11
    const/16 v2, 0xc

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eq v1, v2, :cond_3

    .line 16
    const/16 p2, 0x12

    .line 18
    if-eq v1, p2, :cond_2

    .line 20
    const/16 p2, 0xe

    .line 22
    const-string v0, "SecContentProvider2"

    .line 24
    if-eq v1, p2, :cond_1

    .line 26
    const/16 p2, 0xf

    .line 28
    if-eq v1, p2, :cond_0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 42
    const-string/jumbo p0, "do notifyChange() for knoxCustomManagerService2"

    .line 45
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 60
    const-string/jumbo p0, "do notifyChange() for knoxCustomManagerService1"

    .line 63
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    const-string/jumbo p0, "eas_account_policy"

    .line 82
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    move-result-object p0

    .line 86
    check-cast p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    .line 88
    if-eqz p0, :cond_4

    .line 90
    const-string p1, "API"

    .line 92
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    if-eqz p1, :cond_4

    .line 98
    const-string/jumbo v1, "setAccountEmailPassword"

    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_4

    .line 107
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .line 109
    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 112
    const-string/jumbo v0, "password"

    .line 115
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object p2

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    .line 122
    :cond_4
    :goto_0
    return-object v3
.end method

.method public final onCreate()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    .line 7
    const/4 p0, 0x1

    .line 8
    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 1
    const-string/jumbo v4, "getKioskHomePackage"

    const-string/jumbo v5, "getUltraPowerSavingPackages"

    const/4 v7, 0x7

    const/16 v16, 0x5

    const/4 v8, 0x6

    const/4 v11, 0x3

    const/16 v17, -0x1

    const/4 v12, 0x1

    const/4 v14, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 2
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    .line 3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "query(), uri = "

    invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Lcom/android/server/enterprise/content/SecContentProvider2;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v13, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " selection = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "SecContentProvider2"

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-virtual {v0, v15}, Lcom/android/server/enterprise/content/SecContentProvider2;->getCallerName(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v9, "called from "

    invoke-virtual {v9, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {v13, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const-string/jumbo v6, "return null"

    const/4 v9, 0x0

    if-eq v1, v12, :cond_9e

    if-eq v1, v11, :cond_9d

    if-eq v1, v8, :cond_89

    if-eq v1, v7, :cond_88

    const-string/jumbo v13, "knoxcustom"

    const-string v7, "Failed talking with KnoxCustomManager service"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_7d

    .line 6
    :pswitch_0
    invoke-static {v15, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryMumContainer(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 7
    :pswitch_1
    invoke-static/range {p3 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryEnterpriseLicense(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 8
    :pswitch_2
    const-string/jumbo v0, "wifi_policy"

    .line 9
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    if-eqz v0, :cond_d3

    if-eqz v2, :cond_d3

    .line 10
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move/from16 v16, v17

    goto :goto_1

    :sswitch_0
    const-string/jumbo v1, "isWifiScanningAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "getPromptCredentialsEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v16, 0x4

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "getAllowUserPolicyChanges"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v16, v11

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "getPasswordHidden"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v16, 0x2

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "isEnterpriseNetwork"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move/from16 v16, v12

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "isWifiStateChangeAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move/from16 v16, v14

    :cond_5
    :goto_1
    packed-switch v16, :pswitch_data_1

    return-object v9

    .line 11
    :pswitch_3
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiScanningAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 12
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_3

    .line 13
    :pswitch_4
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPromptCredentialsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 14
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_3

    .line 15
    :pswitch_5
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserPolicyChanges(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 16
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_3

    .line 17
    :pswitch_6
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPasswordHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 18
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_3

    :pswitch_7
    if-eqz v3, :cond_7

    .line 19
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_6

    goto :goto_2

    .line 20
    :cond_6
    aget-object v1, v3, v14

    .line 21
    iget-object v0, v0, Lcom/android/server/enterprise/wifi/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 22
    const-string/jumbo v3, "networkSSID"

    const-string v4, "WIFI_CONF"

    invoke-virtual {v0, v14, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getStringListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 23
    invoke-static {v1}, Lcom/android/server/enterprise/utils/NetworkUtils;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 24
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_3

    :cond_7
    :goto_2
    return-object v9

    .line 25
    :pswitch_8
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 26
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    :goto_3
    return-object v0

    .line 27
    :pswitch_9
    invoke-static {v2, v15, v3}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryVPN(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 28
    :pswitch_a
    invoke-static {v2, v15, v3}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryPhoneRestriction(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 29
    :pswitch_b
    invoke-static {v15, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryMultiUser(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 30
    :pswitch_c
    invoke-static {v15, v2}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryMisc(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 31
    :pswitch_d
    iget-object v1, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-nez v1, :cond_8

    .line 32
    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 33
    invoke-static {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 34
    :cond_8
    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-eqz v0, :cond_d3

    if-eqz v2, :cond_d3

    .line 35
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    :goto_4
    move/from16 v6, v17

    goto/16 :goto_5

    :sswitch_6
    const-string/jumbo v1, "getScreenOffOnStatusBarDoubleTapState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    const/16 v6, 0x1d

    goto/16 :goto_5

    :sswitch_7
    const-string/jumbo v1, "getVolumeButtonRotationState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_4

    :cond_a
    const/16 v6, 0x1c

    goto/16 :goto_5

    :sswitch_8
    const-string/jumbo v1, "getSettingsEnabledItems"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_4

    :cond_b
    const/16 v6, 0x1b

    goto/16 :goto_5

    :sswitch_9
    const-string/jumbo v1, "getLoadingLogoPath"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_4

    :cond_c
    const/16 v6, 0x1a

    goto/16 :goto_5

    :sswitch_a
    const-string/jumbo v1, "getScreenOffOnHomeLongPressState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_4

    :cond_d
    const/16 v6, 0x19

    goto/16 :goto_5

    :sswitch_b
    const-string/jumbo v1, "getToastGravityYOffset"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_4

    :cond_e
    const/16 v6, 0x18

    goto/16 :goto_5

    :sswitch_c
    const-string/jumbo v1, "getToastShowPackageNameState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_4

    :cond_f
    const/16 v6, 0x17

    goto/16 :goto_5

    :sswitch_d
    const-string/jumbo v1, "getToastGravity"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_4

    :cond_10
    const/16 v6, 0x16

    goto/16 :goto_5

    :sswitch_e
    const-string/jumbo v1, "getSealedHardKeyIntentState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_4

    :cond_11
    const/16 v6, 0x15

    goto/16 :goto_5

    :sswitch_f
    const-string/jumbo v1, "getUsbConnectionTypeInternal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_4

    :cond_12
    const/16 v6, 0x14

    goto/16 :goto_5

    :sswitch_10
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_4

    :cond_13
    const/16 v6, 0x13

    goto/16 :goto_5

    :sswitch_11
    const-string/jumbo v1, "getToastEnabledState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_4

    :cond_14
    const/16 v6, 0x12

    goto/16 :goto_5

    :sswitch_12
    const-string/jumbo v1, "getAppBlockDownloadState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_4

    :cond_15
    const/16 v6, 0x11

    goto/16 :goto_5

    :sswitch_13
    const-string/jumbo v1, "getToastGravityXOffset"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_4

    :cond_16
    const/16 v6, 0x10

    goto/16 :goto_5

    :sswitch_14
    const-string/jumbo v1, "getAutoCallNumberDelay"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_4

    :cond_17
    const/16 v6, 0xf

    goto/16 :goto_5

    :sswitch_15
    const-string/jumbo v1, "getUsbConnectionType"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_4

    :cond_18
    const/16 v6, 0xe

    goto/16 :goto_5

    :sswitch_16
    const-string/jumbo v1, "getAppBlockDownloadNamespaces"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_4

    :cond_19
    const/16 v6, 0xd

    goto/16 :goto_5

    :sswitch_17
    const-string/jumbo v1, "isDexAutoOpenLastApp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_4

    :cond_1a
    const/16 v6, 0xc

    goto/16 :goto_5

    :sswitch_18
    const-string/jumbo v1, "getToastGravityEnabledState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto/16 :goto_4

    :cond_1b
    const/16 v6, 0xb

    goto/16 :goto_5

    :sswitch_19
    const-string/jumbo v1, "getAutoCallPickupState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_4

    :cond_1c
    const/16 v6, 0xa

    goto/16 :goto_5

    :sswitch_1a
    const-string/jumbo v1, "getAutoCallNumberAnswerMode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto/16 :goto_4

    :cond_1d
    const/16 v6, 0x9

    goto/16 :goto_5

    :sswitch_1b
    const-string/jumbo v1, "getEthernetConfigurationType"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_4

    :cond_1e
    const/16 v6, 0x8

    goto/16 :goto_5

    :sswitch_1c
    const-string/jumbo v1, "getSealedVolumeKeyAppsList"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto/16 :goto_4

    :cond_1f
    const/4 v6, 0x7

    goto :goto_5

    :sswitch_1d
    const-string/jumbo v1, "getSealedVolumeKeyAppState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto/16 :goto_4

    :cond_20
    move v6, v8

    goto :goto_5

    :sswitch_1e
    const-string/jumbo v1, "getLockScreenHiddenItems"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    goto/16 :goto_4

    :cond_21
    move/from16 v6, v16

    goto :goto_5

    :sswitch_1f
    const-string/jumbo v1, "getAirGestureOptionState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    goto/16 :goto_4

    :cond_22
    const/4 v6, 0x4

    goto :goto_5

    :sswitch_20
    const-string/jumbo v1, "getEthernetState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    goto/16 :goto_4

    :cond_23
    move v6, v11

    goto :goto_5

    :sswitch_21
    const-string/jumbo v1, "getAutoCallNumberList"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto/16 :goto_4

    :cond_24
    const/4 v6, 0x2

    goto :goto_5

    :sswitch_22
    const-string/jumbo v1, "getDexHDMIAutoEnter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto/16 :goto_4

    :cond_25
    move v6, v12

    goto :goto_5

    :sswitch_23
    const-string/jumbo v1, "getGearNotificationState"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    goto/16 :goto_4

    :cond_26
    move v6, v14

    :goto_5
    packed-switch v6, :pswitch_data_2

    return-object v9

    .line 36
    :pswitch_e
    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenOffOnStatusBarDoubleTapState()Z

    move-result v14
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 37
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    :goto_6
    invoke-static {v2, v14}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_2a

    .line 39
    :pswitch_f
    :try_start_1
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeButtonRotationState()Z

    move-result v14
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 40
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    :goto_7
    invoke-static {v2, v14}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_2a

    .line 42
    :pswitch_10
    :try_start_2
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSettingsEnabledItems()I

    move-result v14
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 43
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    :goto_8
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 45
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a

    .line 47
    :pswitch_11
    :try_start_3
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLoadingLogoPath()Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v1, v0

    .line 48
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    :goto_9
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 50
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a

    .line 51
    :pswitch_12
    :try_start_4
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenOffOnHomeLongPressState()Z

    move-result v14
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_a

    :catch_4
    move-exception v0

    move-object v1, v0

    .line 52
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    :goto_a
    invoke-static {v2, v14}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_2a

    .line 54
    :pswitch_13
    :try_start_5
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityYOffset()I

    move-result v14
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_b

    :catch_5
    move-exception v0

    move-object v1, v0

    .line 55
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :goto_b
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 57
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a

    .line 59
    :pswitch_14
    :try_start_6
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastShowPackageNameState()Z

    move-result v14
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_c

    :catch_6
    move-exception v0

    move-object v1, v0

    .line 60
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    :goto_c
    invoke-static {v2, v14}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_2a

    .line 62
    :pswitch_15
    :try_start_7
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravity()I

    move-result v14
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_d

    :catch_7
    move-exception v0

    move-object v1, v0

    .line 63
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    :goto_d
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 65
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a

    .line 67
    :pswitch_16
    :try_start_8
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getHardKeyIntentState()Z

    move-result v14
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    move-object v1, v0

    .line 68
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    :goto_e
    invoke-static {v2, v14}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_2a

    .line 70
    :pswitch_17
    :try_start_9
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionTypeInternal()I

    move-result v14
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_f

    :catch_9
    move-exception v0

    move-object v1, v0

    .line 71
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    :goto_f
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 73
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a

    .line 75
    :pswitch_18
    :try_start_a
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUltraPowerSavingPackages()Ljava/util/List;

    move-result-object v9
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_10

    :catch_a
    move-exception v0

    move-object v1, v0

    .line 76
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    :goto_10
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v9, :cond_2b

    .line 78
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 79
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_11

    .line 81
    :pswitch_19
    :try_start_b
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastEnabledState()Z

    move-result v12
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_12

    :catch_b
    move-exception v0

    move-object v1, v0

    .line 82
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    :goto_12
    invoke-static {v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_2a

    .line 84
    :pswitch_1a
    :try_start_c
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppBlockDownloadState()Z

    move-result v14
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_13

    :catch_c
    move-exception v0

    move-object v1, v0

    .line 85
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    :goto_13
    invoke-static {v2, v14}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_2a

    .line 87
    :pswitch_1b
    :try_start_d
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityXOffset()I

    move-result v14
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_14

    :catch_d
    move-exception v0

    move-object v1, v0

    .line 88
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :goto_14
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 90
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a

    :pswitch_1c
    if-eqz v3, :cond_28

    .line 92
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_27

    goto :goto_16

    .line 93
    :cond_27
    :try_start_e
    aget-object v1, v3, v14

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberDelay(Ljava/lang/String;)I

    move-result v17
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_15

    :catch_e
    move-exception v0

    .line 94
    invoke-static {v10, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    :goto_15
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 96
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a

    :cond_28
    :goto_16
    return-object v9

    .line 98
    :pswitch_1d
    :try_start_f
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionType()I

    move-result v14
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_17

    :catch_f
    move-exception v0

    move-object v1, v0

    .line 99
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    :goto_17
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 101
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a

    .line 103
    :pswitch_1e
    :try_start_10
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAppBlockDownloadNamespaces()Ljava/util/List;

    move-result-object v9
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_18

    :catch_10
    move-exception v0

    move-object v1, v0

    .line 104
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    :goto_18
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v9, :cond_2b

    .line 106
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 107
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 108
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_19

    .line 109
    :pswitch_1f
    :try_start_11
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->isDexAutoOpenLastAppAllowed()I

    move-result v17
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_1a

    :catch_11
    move-exception v0

    move-object v1, v0

    .line 110
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    :goto_1a
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 112
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 113
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a

    .line 114
    :pswitch_20
    :try_start_12
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getToastGravityEnabledState()Z

    move-result v14
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_1b

    :catch_12
    move-exception v0

    move-object v1, v0

    .line 115
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    :goto_1b
    invoke-static {v2, v14}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_2a

    .line 117
    :pswitch_21
    :try_start_13
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallPickupState()I

    move-result v17
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_1c

    :catch_13
    move-exception v0

    move-object v1, v0

    .line 118
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    :goto_1c
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 120
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a

    :pswitch_22
    if-eqz v3, :cond_2a

    .line 122
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_29

    goto :goto_1e

    .line 123
    :cond_29
    :try_start_14
    aget-object v1, v3, v14

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberAnswerMode(Ljava/lang/String;)I

    move-result v17
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_1d

    :catch_14
    move-exception v0

    .line 124
    invoke-static {v10, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    :goto_1d
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 126
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a

    :cond_2a
    :goto_1e
    return-object v9

    .line 128
    :pswitch_23
    :try_start_15
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getEthernetConfigurationType()I

    move-result v14
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_1f

    :catch_15
    move-exception v0

    move-object v1, v0

    .line 129
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    :goto_1f
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 131
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a

    .line 133
    :pswitch_24
    :try_start_16
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppsList()Ljava/util/List;

    move-result-object v9
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_20

    :catch_16
    move-exception v0

    move-object v1, v0

    .line 134
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    :goto_20
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v9, :cond_2b

    .line 136
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 137
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 138
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_21

    .line 139
    :pswitch_25
    :try_start_17
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeKeyAppState()Z

    move-result v14
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_22

    :catch_17
    move-exception v0

    move-object v1, v0

    .line 140
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    :goto_22
    invoke-static {v2, v14}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_2a

    .line 142
    :pswitch_26
    :try_start_18
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLockScreenHiddenItems()I

    move-result v14
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_23

    :catch_18
    move-exception v0

    move-object v1, v0

    .line 143
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    :goto_23
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 145
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2a

    .line 147
    :pswitch_27
    :try_start_19
    invoke-interface {v0, v14}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAirGestureOptionState(I)Z

    move-result v12
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_24

    :catch_19
    move-exception v0

    move-object v1, v0

    .line 148
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    :goto_24
    invoke-static {v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_2a

    .line 150
    :pswitch_28
    :try_start_1a
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getEthernetState()Z

    move-result v12
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_25

    :catch_1a
    move-exception v0

    move-object v1, v0

    .line 151
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    :goto_25
    invoke-static {v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_2a

    .line 153
    :pswitch_29
    :try_start_1b
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getAutoCallNumberList()Ljava/util/List;

    move-result-object v9
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_26

    :catch_1b
    move-exception v0

    move-object v1, v0

    .line 154
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    :goto_26
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v9, :cond_2b

    .line 156
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 157
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 158
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_27

    .line 159
    :pswitch_2a
    :try_start_1c
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getDexHDMIAutoEnterState()I

    move-result v17
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_1c

    goto :goto_28

    :catch_1c
    move-exception v0

    move-object v1, v0

    .line 160
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    :goto_28
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 162
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2a

    .line 164
    :pswitch_2b
    :try_start_1d
    invoke-interface {v0}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getGearNotificationState()Z

    move-result v12
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_1d

    goto :goto_29

    :catch_1d
    move-exception v0

    move-object v1, v0

    .line 165
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    :goto_29
    invoke-static {v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    :cond_2b
    :goto_2a
    return-object v0

    .line 167
    :pswitch_2c
    iget-object v1, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-nez v1, :cond_2c

    .line 168
    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 169
    invoke-static {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 170
    :cond_2c
    iget-object v1, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mKnoxCustomManagerService:Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    if-eqz v1, :cond_d3

    if-eqz v2, :cond_d3

    .line 171
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_2

    :goto_2b
    move/from16 v8, v17

    goto/16 :goto_2c

    :sswitch_24
    const-string/jumbo v3, "getPowerMenuLockedState"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_2b

    :cond_2d
    const/16 v8, 0x10

    goto/16 :goto_2c

    :sswitch_25
    const-string/jumbo v3, "getVolumePanelEnabledState"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_2b

    :cond_2e
    const/16 v8, 0xf

    goto/16 :goto_2c

    :sswitch_26
    const-string/jumbo v3, "getStatusBarTextSize"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto :goto_2b

    :cond_2f
    const/16 v8, 0xe

    goto/16 :goto_2c

    :sswitch_27
    const-string/jumbo v3, "getLTESettingState"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_2b

    :cond_30
    const/16 v8, 0xd

    goto/16 :goto_2c

    :sswitch_28
    const-string/jumbo v3, "getScreenWakeupOnPowerState"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    goto :goto_2b

    :cond_31
    const/16 v8, 0xc

    goto/16 :goto_2c

    :sswitch_29
    const-string/jumbo v3, "getVolumeControlStream"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    goto :goto_2b

    :cond_32
    const/16 v8, 0xb

    goto/16 :goto_2c

    :sswitch_2a
    const-string/jumbo v3, "getStatusBarText"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    goto :goto_2b

    :cond_33
    const/16 v8, 0xa

    goto/16 :goto_2c

    :sswitch_2b
    const-string/jumbo v3, "getSealedUsbMassStorageState"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    goto :goto_2b

    :cond_34
    const/16 v8, 0x9

    goto/16 :goto_2c

    :sswitch_2c
    const-string/jumbo v3, "getPowerSavingMode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    goto :goto_2b

    :cond_35
    const/16 v8, 0x8

    goto/16 :goto_2c

    :sswitch_2d
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    goto/16 :goto_2b

    :cond_36
    const/4 v8, 0x7

    goto :goto_2c

    :sswitch_2e
    const-string/jumbo v3, "getTorchOnVolumeButtonsState"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    goto/16 :goto_2b

    :sswitch_2f
    const-string/jumbo v3, "getInfraredState"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    goto/16 :goto_2b

    :cond_37
    move/from16 v8, v16

    goto :goto_2c

    :sswitch_30
    const-string/jumbo v3, "getStatusBarTextStyle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    goto/16 :goto_2b

    :cond_38
    const/4 v8, 0x4

    goto :goto_2c

    :sswitch_31
    const-string/jumbo v3, "getCallScreenDisabledItems"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    goto/16 :goto_2b

    :cond_39
    move v8, v11

    goto :goto_2c

    :sswitch_32
    const-string/jumbo v3, "getSensorDisabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    goto/16 :goto_2b

    :cond_3a
    const/4 v8, 0x2

    goto :goto_2c

    :sswitch_33
    const-string/jumbo v3, "getSealedState"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto/16 :goto_2b

    :cond_3b
    move v8, v12

    goto :goto_2c

    :sswitch_34
    const-string/jumbo v3, "getChargingLEDState"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    goto/16 :goto_2b

    :cond_3c
    move v8, v14

    :cond_3d
    :goto_2c
    packed-switch v8, :pswitch_data_3

    return-object v9

    .line 172
    :pswitch_2d
    :try_start_1e
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getPowerMenuLockedState()Z

    move-result v12
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_1e

    goto :goto_2d

    :catch_1e
    move-exception v0

    move-object v1, v0

    .line 173
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    :goto_2d
    invoke-static {v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_3f

    .line 175
    :pswitch_2e
    :try_start_1f
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumePanelEnabledState()Z

    move-result v12
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_1f

    goto :goto_2e

    :catch_1f
    move-exception v0

    move-object v1, v0

    .line 176
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    :goto_2e
    invoke-static {v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_3f

    .line 178
    :pswitch_2f
    :try_start_20
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextSize()I

    move-result v14
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_20

    goto :goto_2f

    :catch_20
    move-exception v0

    move-object v1, v0

    .line 179
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    :goto_2f
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 181
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3f

    .line 183
    :pswitch_30
    :try_start_21
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getLTESettingState()Z

    move-result v14
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_21

    goto :goto_30

    :catch_21
    move-exception v0

    move-object v1, v0

    .line 184
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    :goto_30
    invoke-static {v2, v14}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_3f

    .line 186
    :pswitch_31
    :try_start_22
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getScreenWakeupOnPowerState()Z

    move-result v12
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_22

    goto :goto_31

    :catch_22
    move-exception v0

    move-object v1, v0

    .line 187
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    :goto_31
    invoke-static {v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_3f

    .line 189
    :pswitch_32
    :try_start_23
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getVolumeControlStream()I

    move-result v14
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_23

    goto :goto_32

    :catch_23
    move-exception v0

    move-object v1, v0

    .line 190
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    :goto_32
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 192
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 193
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3f

    .line 194
    :pswitch_33
    :try_start_24
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarText()Ljava/lang/String;

    move-result-object v9
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_24

    goto :goto_33

    :catch_24
    move-exception v0

    move-object v1, v0

    .line 195
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    :goto_33
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 197
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3f

    .line 198
    :pswitch_34
    :try_start_25
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbMassStorageState()Z

    move-result v12
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_25

    goto :goto_34

    :catch_25
    move-exception v0

    move-object v1, v0

    .line 199
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    :goto_34
    invoke-static {v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_3f

    .line 201
    :pswitch_35
    iget-object v1, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "ultra_powersaving_mode"

    invoke-static {v1, v3, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3e

    const/4 v12, 0x2

    goto :goto_35

    .line 202
    :cond_3e
    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    .line 203
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "powersaving_switch"

    .line 204
    invoke-static {v0, v1, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3f

    move v12, v14

    .line 205
    :cond_3f
    :goto_35
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 206
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3f

    .line 208
    :pswitch_36
    :try_start_26
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUltraPowerSavingPackages()Ljava/util/List;

    move-result-object v9
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_26

    goto :goto_36

    :catch_26
    move-exception v0

    move-object v1, v0

    .line 209
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    :goto_36
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v9, :cond_42

    .line 211
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_42

    .line 212
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 213
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_37

    .line 214
    :pswitch_37
    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    .line 215
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "torchlight_enable"

    .line 216
    invoke-static {v0, v1, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_38

    :cond_40
    move v12, v14

    .line 217
    :goto_38
    invoke-static {v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_3f

    .line 218
    :pswitch_38
    :try_start_27
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getInfraredState()Z

    move-result v12
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_27

    goto :goto_39

    :catch_27
    move-exception v0

    move-object v1, v0

    .line 219
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    :goto_39
    invoke-static {v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_3f

    .line 221
    :pswitch_39
    :try_start_28
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getStatusBarTextStyle()I

    move-result v14
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_28} :catch_28

    goto :goto_3a

    :catch_28
    move-exception v0

    move-object v1, v0

    .line 222
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    :goto_3a
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 224
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3f

    .line 226
    :pswitch_3a
    :try_start_29
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getCallScreenDisabledItems()I

    move-result v14
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_29

    goto :goto_3b

    :catch_29
    move-exception v0

    move-object v1, v0

    .line 227
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    :goto_3b
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 229
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 230
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3f

    .line 231
    :pswitch_3b
    :try_start_2a
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getSensorDisabled()I

    move-result v14
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2a} :catch_2a

    goto :goto_3c

    :catch_2a
    move-exception v0

    move-object v1, v0

    .line 232
    invoke-static {v10, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    :goto_3c
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 234
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 235
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3f

    .line 236
    :pswitch_3c
    :try_start_2b
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getProKioskState()Z

    move-result v14
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2b} :catch_2b

    goto :goto_3d

    :catch_2b
    move-exception v0

    move-object v1, v0

    .line 237
    const-string v0, "Failed talking with knoxCustomManager service"

    invoke-static {v10, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    :goto_3d
    invoke-static {v2, v14}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_3f

    .line 239
    :pswitch_3d
    iget-object v0, v0, Lcom/android/server/enterprise/content/SecContentProvider2;->mContext:Landroid/content/Context;

    .line 240
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "led_indicator_charing"

    .line 241
    invoke-static {v0, v1, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_3e

    :cond_41
    move v12, v14

    .line 242
    :goto_3e
    invoke-static {v2, v12}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    :cond_42
    :goto_3f
    return-object v0

    .line 243
    :pswitch_3e
    const-string/jumbo v0, "kioskmode"

    .line 244
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    if-eqz v0, :cond_d3

    .line 245
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3

    goto/16 :goto_40

    :sswitch_35
    const-string/jumbo v1, "isNightClockAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    goto/16 :goto_40

    :cond_43
    const/16 v17, 0xc

    goto/16 :goto_40

    :sswitch_36
    const-string/jumbo v1, "isInformationStreamAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    goto/16 :goto_40

    :cond_44
    const/16 v17, 0xb

    goto/16 :goto_40

    :sswitch_37
    const-string/jumbo v1, "isAirCommandModeAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    goto/16 :goto_40

    :cond_45
    const/16 v17, 0xa

    goto/16 :goto_40

    :sswitch_38
    const-string/jumbo v1, "isAppsEdgeAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    goto/16 :goto_40

    :cond_46
    const/16 v17, 0x9

    goto/16 :goto_40

    :sswitch_39
    const-string/jumbo v1, "isNavigationBarHidden"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    goto/16 :goto_40

    :cond_47
    const/16 v17, 0x8

    goto/16 :goto_40

    :sswitch_3a
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    goto/16 :goto_40

    :cond_48
    const/16 v17, 0x7

    goto :goto_40

    :sswitch_3b
    const-string/jumbo v1, "isMultiWindowModeAllowedAsUser"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    goto :goto_40

    :cond_49
    move/from16 v17, v8

    goto :goto_40

    :sswitch_3c
    const-string/jumbo v1, "isAirViewModeAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    goto :goto_40

    :cond_4a
    move/from16 v17, v16

    goto :goto_40

    :sswitch_3d
    const-string/jumbo v1, "isMultiWindowModeAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    goto :goto_40

    :cond_4b
    const/16 v17, 0x4

    goto :goto_40

    :sswitch_3e
    const-string/jumbo v1, "isKioskModeEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    goto :goto_40

    :cond_4c
    move/from16 v17, v11

    goto :goto_40

    :sswitch_3f
    const-string/jumbo v1, "isPeopleEdgeAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    goto :goto_40

    :cond_4d
    const/16 v17, 0x2

    goto :goto_40

    :sswitch_40
    const-string/jumbo v1, "isEdgeAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    goto :goto_40

    :cond_4e
    move/from16 v17, v12

    goto :goto_40

    :sswitch_41
    const-string/jumbo v1, "isEdgeLightingAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    goto :goto_40

    :cond_4f
    move/from16 v17, v14

    :goto_40
    packed-switch v17, :pswitch_data_4

    goto/16 :goto_47

    .line 246
    :pswitch_3f
    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    move-result v0

    .line 247
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v9

    goto/16 :goto_47

    :pswitch_40
    const/4 v1, 0x4

    .line 248
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    move-result v0

    .line 249
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v9

    goto/16 :goto_47

    :pswitch_41
    if-nez v3, :cond_50

    .line 250
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto :goto_41

    .line 251
    :cond_50
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    aget-object v4, v3, v14

    .line 252
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 253
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirCommandModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isAirCommandModeAllowed uid = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v3, v14

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_41
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isAirCommandModeAllowed return = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v9

    goto/16 :goto_47

    :pswitch_42
    const/16 v4, 0x10

    .line 257
    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    move-result v0

    .line 258
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v9

    goto/16 :goto_47

    .line 259
    :pswitch_43
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isNavigationBarHidden(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 260
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v9

    goto/16 :goto_47

    .line 261
    :pswitch_44
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->getKioskHomePackage(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0

    .line 262
    new-instance v9, Landroid/database/MatrixCursor;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 263
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_47

    :pswitch_45
    if-eqz v3, :cond_52

    .line 264
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v1, v12, :cond_51

    goto :goto_42

    .line 265
    :cond_51
    aget-object v1, v3, v14

    .line 266
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 267
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowedAsUser(I)Z

    move-result v0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isMultiWindowModeAllowedAsUser return = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v9

    goto/16 :goto_47

    :cond_52
    :goto_42
    return-object v9

    :pswitch_46
    if-nez v3, :cond_53

    .line 270
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto :goto_43

    .line 271
    :cond_53
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    aget-object v4, v3, v14

    .line 272
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 273
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isAirViewModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isAirViewModeAllowed uid = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v3, v14

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :goto_43
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isAirViewModeAllowed return = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v9

    goto/16 :goto_47

    :pswitch_47
    if-eqz v3, :cond_55

    .line 277
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_54

    goto :goto_44

    .line 278
    :cond_54
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v14

    .line 279
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 280
    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isMultiWindowModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 281
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v9

    goto/16 :goto_47

    :cond_55
    :goto_44
    return-object v9

    :pswitch_48
    if-nez v3, :cond_56

    .line 282
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto :goto_46

    .line 283
    :cond_56
    aget-object v1, v3, v14

    .line 284
    array-length v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_58

    aget-object v3, v3, v12

    const-string/jumbo v4, "emergency"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 285
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 286
    sget-boolean v3, Lcom/android/server/enterprise/kioskmode/KioskModeService;->mProcessing:Z

    if-eqz v3, :cond_57

    goto :goto_45

    .line 287
    :cond_57
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v12

    .line 288
    :goto_45
    const-string/jumbo v0, "isKioskModeEnabled param EMERGENCY"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v12

    goto :goto_46

    .line 289
    :cond_58
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    .line 290
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 291
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isKioskModeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 292
    const-string/jumbo v3, "isKioskModeEnabled param UID: "

    .line 293
    invoke-static {v3, v1, v10}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_46
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isKioskModeEnabled return = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v9

    goto :goto_47

    :pswitch_49
    const/4 v1, 0x2

    .line 296
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    move-result v0

    .line 297
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v9

    goto :goto_47

    .line 298
    :pswitch_4a
    invoke-virtual {v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeAllowed()Z

    move-result v0

    .line 299
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v9

    goto :goto_47

    :pswitch_4b
    const/16 v5, 0x8

    .line 300
    invoke-virtual {v0, v5}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isEdgeScreenFunctionalityAllowed(I)Z

    move-result v0

    .line 301
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v9

    :goto_47
    return-object v9

    :pswitch_4c
    const/4 v1, 0x4

    const/16 v5, 0x8

    .line 302
    const-string/jumbo v0, "eas_account_policy"

    .line 303
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    if-eqz v0, :cond_d3

    if-eqz v2, :cond_d3

    .line 304
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_4

    :goto_48
    move/from16 v11, v17

    goto/16 :goto_49

    :sswitch_42
    const-string/jumbo v1, "getMaxEmailHTMLBodyTruncationSize"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    goto :goto_48

    :cond_59
    const/16 v11, 0xd

    goto/16 :goto_49

    :sswitch_43
    const-string/jumbo v1, "getMaxCalendarAgeFilter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    goto :goto_48

    :cond_5a
    const/16 v11, 0xc

    goto/16 :goto_49

    :sswitch_44
    const-string/jumbo v1, "getMaxEmailBodyTruncationSize"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    goto :goto_48

    :cond_5b
    const/16 v11, 0xb

    goto/16 :goto_49

    :sswitch_45
    const-string/jumbo v1, "getForceSMIMECertificateForSigning"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    goto :goto_48

    :cond_5c
    const/16 v11, 0xa

    goto/16 :goto_49

    :sswitch_46
    const-string/jumbo v1, "isIncomingAttachmentsAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    goto :goto_48

    :cond_5d
    const/16 v11, 0x9

    goto/16 :goto_49

    :sswitch_47
    const-string/jumbo v1, "getForceSMIMECertificate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    goto :goto_48

    :cond_5e
    move v11, v5

    goto/16 :goto_49

    :sswitch_48
    const-string/jumbo v1, "getAccountEmailPassword"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    goto :goto_48

    :cond_5f
    const/4 v11, 0x7

    goto :goto_49

    :sswitch_49
    const-string/jumbo v1, "getRequiredEncryptedMIMEMessages"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    goto :goto_48

    :cond_60
    move v11, v8

    goto :goto_49

    :sswitch_4a
    const-string/jumbo v1, "getForceSMIMECertificateForEncryption"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_61

    goto :goto_48

    :cond_61
    move/from16 v11, v16

    goto :goto_49

    :sswitch_4b
    const-string/jumbo v4, "getAccountCertificatePassword"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_62

    goto/16 :goto_48

    :cond_62
    move v11, v1

    goto :goto_49

    :sswitch_4c
    const-string/jumbo v1, "getRequiredSignedMIMEMessages"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    goto/16 :goto_48

    :sswitch_4d
    const-string/jumbo v1, "getMaxEmailAgeFilter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    goto/16 :goto_48

    :cond_63
    const/4 v11, 0x2

    goto :goto_49

    :sswitch_4e
    const-string/jumbo v1, "setAccountEmailPassword"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    goto/16 :goto_48

    :cond_64
    move v11, v12

    goto :goto_49

    :sswitch_4f
    const-string/jumbo v1, "getIncomingAttachmentSize"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    goto/16 :goto_48

    :cond_65
    move v11, v14

    :cond_66
    :goto_49
    packed-switch v11, :pswitch_data_5

    .line 305
    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :pswitch_4d
    if-eqz v3, :cond_68

    .line 306
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_67

    goto :goto_4a

    .line 307
    :cond_67
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v14

    .line 308
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 309
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailHTMLBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0

    .line 310
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 311
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 312
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_57

    :cond_68
    :goto_4a
    return-object v9

    :pswitch_4e
    if-eqz v3, :cond_6a

    .line 313
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_69

    goto :goto_4b

    .line 314
    :cond_69
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v14

    .line 315
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 316
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxCalendarAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0

    .line 317
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 318
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 319
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_57

    :cond_6a
    :goto_4b
    return-object v9

    :pswitch_4f
    if-eqz v3, :cond_6c

    .line 320
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_6b

    goto :goto_4c

    .line 321
    :cond_6b
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v14

    .line 322
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 323
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailBodyTruncationSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0

    .line 324
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 325
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 326
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_57

    :cond_6c
    :goto_4c
    return-object v9

    :pswitch_50
    if-eqz v3, :cond_6e

    .line 327
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_6d

    goto :goto_4d

    .line 328
    :cond_6d
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v14

    .line 329
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 330
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    .line 331
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v1

    goto/16 :goto_57

    :cond_6e
    :goto_4d
    return-object v9

    :pswitch_51
    if-eqz v3, :cond_70

    .line 332
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_6f

    goto :goto_4e

    .line 333
    :cond_6f
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v14

    .line 334
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 335
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->isIncomingAttachmentsAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    .line 336
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v1

    goto/16 :goto_57

    :cond_70
    :goto_4e
    return-object v9

    :pswitch_52
    if-eqz v3, :cond_72

    .line 337
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_71

    goto :goto_4f

    .line 338
    :cond_71
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v14

    .line 339
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 340
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    .line 341
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v1

    goto/16 :goto_57

    :cond_72
    :goto_4f
    return-object v9

    :pswitch_53
    if-eqz v3, :cond_74

    .line 342
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_73

    goto :goto_50

    .line 343
    :cond_73
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v14

    .line 344
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 345
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v0

    .line 346
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 347
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_57

    :cond_74
    :goto_50
    return-object v9

    :pswitch_54
    if-eqz v3, :cond_76

    .line 348
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_75

    goto :goto_51

    .line 349
    :cond_75
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v14

    .line 350
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 351
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getRequireEncryptedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    .line 352
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v1

    goto/16 :goto_57

    :cond_76
    :goto_51
    return-object v9

    :pswitch_55
    if-eqz v3, :cond_78

    .line 353
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_77

    goto :goto_52

    .line 354
    :cond_77
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v14

    .line 355
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 356
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    .line 357
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v1

    goto/16 :goto_57

    :cond_78
    :goto_52
    return-object v9

    :pswitch_56
    if-eqz v3, :cond_7a

    .line 358
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_79

    goto :goto_53

    .line 359
    :cond_79
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v14

    .line 360
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 361
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getAccountCertificatePassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object v0

    .line 362
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 363
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_57

    :cond_7a
    :goto_53
    return-object v9

    :pswitch_57
    if-eqz v3, :cond_7c

    .line 364
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_7b

    goto :goto_54

    .line 365
    :cond_7b
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v14

    .line 366
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 367
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getRequireSignedSMIMEMessages(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    .line 368
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v1

    goto/16 :goto_57

    :cond_7c
    :goto_54
    return-object v9

    :pswitch_58
    if-eqz v3, :cond_7e

    .line 369
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_7d

    goto :goto_55

    .line 370
    :cond_7d
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v14

    .line 371
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 372
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getMaxEmailAgeFilter(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0

    .line 373
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 374
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 375
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_57

    :cond_7e
    :goto_55
    return-object v9

    :pswitch_59
    if-eqz v3, :cond_80

    .line 376
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v1, v12, :cond_7f

    goto :goto_56

    .line 377
    :cond_7f
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v14

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->setAccountEmailPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v0

    .line 378
    new-instance v3, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 379
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v1, v3

    goto :goto_57

    :cond_80
    :goto_56
    return-object v9

    :pswitch_5a
    if-eqz v3, :cond_82

    .line 381
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_81

    goto :goto_58

    .line 382
    :cond_81
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v14

    .line 383
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 384
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->getIncomingAttachmentsSize(Lcom/samsung/android/knox/ContextInfo;J)I

    move-result v0

    .line 385
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 386
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 387
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_57
    return-object v1

    :cond_82
    :goto_58
    return-object v9

    .line 388
    :pswitch_5b
    sget v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->$r8$clinit:I

    .line 389
    sget-object v0, Lcom/android/server/enterprise/EnterpriseService;->sEdmsInstance:Ljava/lang/Object;

    .line 390
    check-cast v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    if-eqz v0, :cond_d3

    if-eqz v2, :cond_d3

    .line 391
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_5

    goto :goto_59

    :sswitch_50
    const-string/jumbo v1, "isMdmAdminPresent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_83

    goto :goto_59

    :cond_83
    const/16 v17, 0x2

    goto :goto_59

    :sswitch_51
    const-string/jumbo v1, "getEnterpriseSdkVer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_84

    goto :goto_59

    :cond_84
    move/from16 v17, v12

    goto :goto_59

    :sswitch_52
    const-string/jumbo v1, "getActiveAdmins"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    goto :goto_59

    :cond_85
    move/from16 v17, v14

    :goto_59
    packed-switch v17, :pswitch_data_6

    goto :goto_5b

    .line 392
    :pswitch_5c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 393
    :try_start_2c
    invoke-virtual {v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->isMdmAdminPresent()Z

    move-result v0

    .line 394
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v9
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    .line 395
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5b

    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 396
    throw v0

    .line 397
    :pswitch_5d
    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    .line 398
    new-instance v9, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 399
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 400
    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_5b

    :pswitch_5e
    if-eqz v3, :cond_87

    .line 401
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_86

    goto :goto_5b

    .line 402
    :cond_86
    aget-object v1, v3, v14

    .line 403
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->getActiveAdmins(I)Ljava/util/List;

    move-result-object v0

    .line 404
    new-instance v9, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_87

    .line 405
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_87

    .line 406
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 407
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-virtual {v9, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_5a

    :cond_87
    :goto_5b
    return-object v9

    .line 409
    :cond_88
    invoke-static {v2, v15, v3}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryEmailAccount(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_89
    const/4 v1, 0x4

    .line 410
    const-string/jumbo v0, "email_policy"

    .line 411
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/email/EmailPolicy;

    if-eqz v0, :cond_d3

    if-eqz v2, :cond_d3

    .line 412
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_6

    :goto_5c
    move/from16 v16, v17

    goto :goto_5d

    :sswitch_53
    const-string/jumbo v1, "isAccountAdditionAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8a

    goto :goto_5c

    :cond_8a
    move/from16 v16, v8

    goto :goto_5d

    :sswitch_54
    const-string/jumbo v1, "getAllowEmailForwarding"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    goto :goto_5c

    :sswitch_55
    const-string/jumbo v4, "isEmailNotificationsEnabled"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8b

    goto :goto_5c

    :cond_8b
    move/from16 v16, v1

    goto :goto_5d

    :sswitch_56
    const-string/jumbo v1, "isEmailSettingsChangesAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    goto :goto_5c

    :cond_8c
    move/from16 v16, v11

    goto :goto_5d

    :sswitch_57
    const-string/jumbo v1, "getEnterpriseEmailAccountObject"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8d

    goto :goto_5c

    :cond_8d
    const/16 v16, 0x2

    goto :goto_5d

    :sswitch_58
    const-string/jumbo v1, "getEnterpriseExchangeAccountObject"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8e

    goto :goto_5c

    :cond_8e
    move/from16 v16, v12

    goto :goto_5d

    :sswitch_59
    const-string/jumbo v1, "getAllowHtmlEmail"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8f

    goto :goto_5c

    :cond_8f
    move/from16 v16, v14

    :cond_90
    :goto_5d
    packed-switch v16, :pswitch_data_7

    return-object v9

    .line 413
    :pswitch_5f
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/email/EmailPolicy;->isAccountAdditionAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 414
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_64

    :pswitch_60
    if-eqz v3, :cond_92

    .line 415
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_91

    goto :goto_5e

    .line 416
    :cond_91
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v14

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/email/EmailPolicy;->getAllowEmailForwarding(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 417
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_64

    :cond_92
    :goto_5e
    return-object v9

    :pswitch_61
    if-eqz v3, :cond_94

    .line 418
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_93

    goto :goto_5f

    .line 419
    :cond_93
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v14

    .line 420
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 421
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/EmailPolicy;->isEmailNotificationsEnabled(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    .line 422
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_64

    :cond_94
    :goto_5f
    return-object v9

    :pswitch_62
    if-eqz v3, :cond_96

    .line 423
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_95

    goto :goto_60

    .line 424
    :cond_95
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v14

    .line 425
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 426
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/enterprise/email/EmailPolicy;->isEmailSettingsChangeAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result v0

    .line 427
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_64

    :cond_96
    :goto_60
    return-object v9

    :pswitch_63
    if-eqz v3, :cond_98

    .line 428
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_97

    goto :goto_62

    .line 429
    :cond_97
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v0, v3, v14

    .line 430
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 431
    invoke-static {v0, v1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getEmailAccountObject(J)Landroid/sec/enterprise/email/EnterpriseEmailAccount;

    move-result-object v0

    .line 432
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 433
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 434
    const-string/jumbo v3, "email.account"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 435
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->setExtras(Landroid/os/Bundle;)V

    :goto_61
    move-object v0, v1

    goto :goto_64

    :cond_98
    :goto_62
    return-object v9

    :pswitch_64
    if-eqz v3, :cond_9a

    .line 436
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_99

    goto :goto_63

    .line 437
    :cond_99
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v0, v3, v14

    .line 438
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 439
    invoke-static {v0, v1}, Lcom/android/server/enterprise/email/EmailProviderHelper;->getExchangeAccountObject(J)Landroid/sec/enterprise/email/EnterpriseExchangeAccount;

    move-result-object v0

    .line 440
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 441
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 442
    const-string/jumbo v3, "eas.account"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 443
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->setExtras(Landroid/os/Bundle;)V

    goto :goto_61

    :cond_9a
    :goto_63
    return-object v9

    :pswitch_65
    if-eqz v3, :cond_9c

    .line 444
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_9b

    goto :goto_65

    .line 445
    :cond_9b
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v3, v3, v14

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/email/EmailPolicy;->getAllowHTMLEmail(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 446
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    :goto_64
    return-object v0

    :cond_9c
    :goto_65
    return-object v9

    .line 447
    :cond_9d
    invoke-static/range {p3 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider2;->queryDeviceAccount(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_9e
    const/4 v1, 0x4

    const/16 v4, 0x10

    const/16 v5, 0x8

    .line 448
    const-string v0, "application_policy"

    .line 449
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v7, :cond_d3

    .line 450
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "getApplicationInstallUninstallList null"

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_7

    goto/16 :goto_66

    :sswitch_5a
    const-string/jumbo v1, "getApplicationUninstallationEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9f

    goto/16 :goto_66

    :cond_9f
    const/16 v17, 0x12

    goto/16 :goto_66

    :sswitch_5b
    const-string/jumbo v1, "getApplicationStateDisabledList"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a0

    goto/16 :goto_66

    :cond_a0
    const/16 v17, 0x11

    goto/16 :goto_66

    :sswitch_5c
    const-string/jumbo v1, "isPackageUpdateAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a1

    goto/16 :goto_66

    :cond_a1
    move/from16 v17, v4

    goto/16 :goto_66

    :sswitch_5d
    const-string/jumbo v1, "getPackagesFromDisableClipboardBlackList"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a2

    goto/16 :goto_66

    :cond_a2
    const/16 v17, 0xf

    goto/16 :goto_66

    :sswitch_5e
    const-string/jumbo v1, "isChangeSmsDefaultAppAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a3

    goto/16 :goto_66

    :cond_a3
    const/16 v17, 0xe

    goto/16 :goto_66

    :sswitch_5f
    const-string/jumbo v1, "isApplicationSetToDefault"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a4

    goto/16 :goto_66

    :cond_a4
    const/16 v17, 0xd

    goto/16 :goto_66

    :sswitch_60
    const-string/jumbo v1, "getApplicationStateEnabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a5

    goto/16 :goto_66

    :cond_a5
    const/16 v17, 0xc

    goto/16 :goto_66

    :sswitch_61
    const-string/jumbo v1, "isApplicationClearCacheDisabled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a6

    goto/16 :goto_66

    :cond_a6
    const/16 v17, 0xb

    goto/16 :goto_66

    :sswitch_62
    const-string/jumbo v1, "getApplicationNameFromDb"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a7

    goto/16 :goto_66

    :cond_a7
    const/16 v17, 0xa

    goto/16 :goto_66

    :sswitch_63
    const-string/jumbo v1, "getDefaultApplicationInternal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a8

    goto/16 :goto_66

    :cond_a8
    const/16 v17, 0x9

    goto/16 :goto_66

    :sswitch_64
    const-string/jumbo v1, "getAllPackagesFromBatteryOptimizationWhiteList"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a9

    goto/16 :goto_66

    :cond_a9
    move/from16 v17, v5

    goto/16 :goto_66

    :sswitch_65
    const-string/jumbo v1, "isChangeAssistDefaultAppAllowed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_aa

    goto/16 :goto_66

    :cond_aa
    const/16 v17, 0x7

    goto :goto_66

    :sswitch_66
    const-string/jumbo v1, "getApplicationInstallUninstallListAsUser"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ab

    goto :goto_66

    :cond_ab
    move/from16 v17, v8

    goto :goto_66

    :sswitch_67
    const-string/jumbo v1, "getApplicationUninstallationMode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ac

    goto :goto_66

    :cond_ac
    move/from16 v17, v16

    goto :goto_66

    :sswitch_68
    const-string/jumbo v4, "getApplicationInstallUninstallList"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ad

    goto :goto_66

    :cond_ad
    move/from16 v17, v1

    goto :goto_66

    :sswitch_69
    const-string/jumbo v1, "getPackagesFromDisableClipboardBlackListPerUidInternal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ae

    goto :goto_66

    :cond_ae
    move/from16 v17, v11

    goto :goto_66

    :sswitch_6a
    const-string/jumbo v1, "getPackagesFromDisableClipboardWhiteListPerUidInternal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_af

    goto :goto_66

    :cond_af
    const/16 v17, 0x2

    goto :goto_66

    :sswitch_6b
    const-string/jumbo v1, "getPackagesFromDisableClipboardWhiteList"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b0

    goto :goto_66

    :cond_b0
    move/from16 v17, v12

    goto :goto_66

    :sswitch_6c
    const-string/jumbo v1, "getAppInstallationMode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b1

    goto/16 :goto_66

    :cond_b1
    move/from16 v17, v14

    :goto_66
    packed-switch v17, :pswitch_data_8

    .line 451
    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :pswitch_66
    if-eqz v3, :cond_b3

    .line 452
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_b2

    goto :goto_67

    .line 453
    :cond_b2
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v1, v3, v14

    invoke-virtual {v7, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 454
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_7c

    :cond_b3
    :goto_67
    return-object v9

    .line 455
    :pswitch_67
    invoke-virtual {v7, v15}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateDisabledList(I)Ljava/util/List;

    move-result-object v0

    .line 456
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b5

    .line 457
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_68
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 459
    const-string/jumbo v3, "getApplicationStateDisabledList value = "

    .line 460
    invoke-static {v3, v2, v10}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_68

    :cond_b4
    :goto_69
    move-object v0, v1

    goto/16 :goto_7c

    .line 462
    :cond_b5
    const-string/jumbo v0, "getApplicationStateDisabledList null"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :pswitch_68
    if-eqz v3, :cond_b7

    .line 463
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v12, :cond_b6

    goto :goto_6a

    .line 464
    :cond_b6
    aget-object v0, v3, v14

    aget-object v1, v3, v12

    .line 465
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 466
    invoke-virtual {v7, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isPackageUpdateAllowed(Ljava/lang/String;Z)Z

    move-result v0

    .line 467
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_7c

    :cond_b7
    :goto_6a
    return-object v9

    :pswitch_69
    if-eqz v3, :cond_b8

    .line 468
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_b8

    .line 469
    aget-object v0, v3, v14

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 470
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 471
    invoke-virtual {v7, v1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardBlackListAsUserInternal(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v0

    goto :goto_6b

    .line 472
    :cond_b8
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 473
    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    .line 474
    :goto_6b
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 475
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b9

    .line 476
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 477
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_6c

    :cond_b9
    return-object v9

    :pswitch_6a
    if-eqz v3, :cond_bb

    .line 478
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_ba

    goto :goto_6d

    .line 479
    :cond_ba
    aget-object v0, v3, v14

    aget-object v1, v3, v12

    .line 480
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 481
    invoke-virtual {v7, v1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isChangeSmsDefaultAppAllowed(ILjava/lang/String;)Z

    move-result v0

    .line 482
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_7c

    :cond_bb
    :goto_6d
    return-object v9

    :pswitch_6b
    if-eqz v3, :cond_bd

    .line 483
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_bc

    goto :goto_6e

    .line 484
    :cond_bc
    aget-object v0, v3, v14

    aget-object v1, v3, v12

    .line 485
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 486
    invoke-virtual {v7, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationSetToDefault(Ljava/lang/String;I)Z

    move-result v0

    .line 487
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_7c

    :cond_bd
    :goto_6e
    return-object v9

    :pswitch_6c
    if-eqz v3, :cond_bf

    .line 488
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_be

    goto :goto_6f

    .line 489
    :cond_be
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v1, v3, v14

    invoke-virtual {v7, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 490
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_7c

    :cond_bf
    :goto_6f
    return-object v9

    :pswitch_6d
    if-eqz v3, :cond_c1

    .line 491
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_c0

    goto :goto_70

    .line 492
    :cond_c0
    aget-object v0, v3, v14

    aget-object v4, v3, v12

    .line 493
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v1, v3, v1

    .line 494
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 495
    invoke-virtual {v7, v0, v4, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z

    move-result v0

    .line 496
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_7c

    :cond_c1
    :goto_70
    return-object v9

    :pswitch_6e
    if-eqz v3, :cond_c3

    .line 497
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-gt v0, v12, :cond_c2

    goto :goto_71

    .line 498
    :cond_c2
    aget-object v0, v3, v14

    aget-object v1, v3, v12

    .line 499
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 500
    invoke-virtual {v7, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 501
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 502
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_69

    :cond_c3
    :goto_71
    return-object v9

    :pswitch_6f
    if-eqz v3, :cond_c5

    .line 503
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_c4

    goto :goto_73

    .line 504
    :cond_c4
    :try_start_2d
    aget-object v0, v3, v14

    invoke-static {v0, v14}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9
    :try_end_2d
    .catch Ljava/net/URISyntaxException; {:try_start_2d .. :try_end_2d} :catch_2c

    goto :goto_72

    :catch_2c
    move-exception v0

    .line 505
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "URISyntaxException "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :goto_72
    aget-object v0, v3, v12

    .line 507
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 508
    invoke-virtual {v7, v9, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getDefaultApplicationInternal(Landroid/content/Intent;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 509
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_b4

    .line 510
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 511
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_69

    :cond_c5
    :goto_73
    return-object v9

    .line 512
    :pswitch_70
    invoke-virtual {v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAllPackagesFromBatteryOptimizationWhiteList()Ljava/util/List;

    move-result-object v0

    .line 513
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 514
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b4

    .line 515
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_74
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 516
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_74

    :pswitch_71
    if-eqz v3, :cond_c7

    .line 517
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-ge v0, v12, :cond_c6

    goto :goto_75

    .line 518
    :cond_c6
    aget-object v0, v3, v14

    .line 519
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 520
    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isChangeAssistDefaultAppAllowed(I)Z

    move-result v0

    .line 521
    invoke-static {v2, v0}, Lcom/android/server/enterprise/content/SecContentProvider2;->populateCursor(Ljava/lang/String;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    goto/16 :goto_7c

    :cond_c7
    :goto_75
    return-object v9

    :pswitch_72
    if-eqz v3, :cond_cb

    .line 522
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v4, 0x2

    if-ge v1, v4, :cond_c8

    goto :goto_77

    .line 523
    :cond_c8
    const-string/jumbo v1, "getApplicationInstallUninstallListAsUser"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    aget-object v1, v3, v14

    .line 525
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v3, v3, v12

    .line 526
    invoke-static {v1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationInstallUninstallListAsUser(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 527
    new-instance v3, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 528
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_ca

    .line 529
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_76
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 530
    const-string/jumbo v2, "getApplicationInstallUninstallListAsUser value = "

    .line 531
    invoke-static {v2, v1, v10}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_76

    :cond_c9
    move-object v0, v3

    goto/16 :goto_7c

    .line 533
    :cond_ca
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    .line 534
    :cond_cb
    :goto_77
    const-string/jumbo v0, "getApplicationInstallUninstallListAsUser selectionArgs is null"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    .line 535
    :pswitch_73
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 536
    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationUninstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 537
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 538
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 539
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_69

    :pswitch_74
    if-eqz v3, :cond_ce

    .line 540
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-ge v1, v12, :cond_cc

    goto :goto_79

    .line 541
    :cond_cc
    const-string/jumbo v1, "getApplicationInstallUninstallList"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    aget-object v1, v3, v14

    .line 543
    invoke-static {v15, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationInstallUninstallList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 544
    new-instance v3, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 545
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_cd

    .line 546
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_78
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 547
    const-string/jumbo v2, "getApplicationInstallUninstallList value = "

    .line 548
    invoke-static {v2, v1, v10}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_78

    .line 550
    :cond_cd
    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    .line 551
    :cond_ce
    :goto_79
    const-string/jumbo v0, "getApplicationInstallUninstallList selectionArgs is null"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :pswitch_75
    if-eqz v3, :cond_cf

    .line 552
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_cf

    .line 553
    aget-object v0, v3, v14

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 554
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 555
    invoke-virtual {v7, v1, v0, v12}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardListPerUidInternal(Lcom/samsung/android/knox/ContextInfo;IZ)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 556
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 557
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 558
    const-string/jumbo v3, "clipboard_blacklist_perUid"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 559
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->setExtras(Landroid/os/Bundle;)V

    goto/16 :goto_69

    :cond_cf
    return-object v9

    :pswitch_76
    if-eqz v3, :cond_d0

    .line 560
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_d0

    .line 561
    aget-object v0, v3, v14

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 562
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 563
    invoke-virtual {v7, v1, v0, v14}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardListPerUidInternal(Lcom/samsung/android/knox/ContextInfo;IZ)Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 564
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 565
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 566
    const-string/jumbo v3, "clipboard_whitelist_perUid"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 567
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->setExtras(Landroid/os/Bundle;)V

    goto/16 :goto_69

    :cond_d0
    return-object v9

    :pswitch_77
    if-eqz v3, :cond_d1

    .line 568
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_d1

    .line 569
    aget-object v0, v3, v14

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 570
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 571
    invoke-virtual {v7, v1, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardWhiteListAsUserInternal(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_7a

    .line 572
    :cond_d1
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 573
    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackagesFromDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0

    .line 574
    :goto_7a
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 575
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d2

    .line 576
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 577
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_7b

    :cond_d2
    return-object v9

    .line 578
    :pswitch_78
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v15}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAppInstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 579
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 580
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 581
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_69

    :goto_7c
    return-object v0

    :cond_d3
    :goto_7d
    return-object v9

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5b
        :pswitch_4c
        :pswitch_3e
        :pswitch_2c
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x741f137a -> :sswitch_5
        -0x5d7bb47d -> :sswitch_4
        -0x44588ee5 -> :sswitch_3
        -0x208922d -> :sswitch_2
        0x1b40829f -> :sswitch_1
        0x68ddea58 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7d00b11f -> :sswitch_23
        -0x7cda2990 -> :sswitch_22
        -0x7bf265f6 -> :sswitch_21
        -0x7bc370bc -> :sswitch_20
        -0x6c8256b9 -> :sswitch_1f
        -0x68231777 -> :sswitch_1e
        -0x5f479d3d -> :sswitch_1d
        -0x5d96bdfd -> :sswitch_1c
        -0x49039c7d -> :sswitch_1b
        -0x3169f913 -> :sswitch_1a
        -0x24629eae -> :sswitch_19
        -0x105b68f3 -> :sswitch_18
        -0xb98097b -> :sswitch_17
        -0x63922de -> :sswitch_16
        -0x4a6fada -> :sswitch_15
        -0x2cd0269 -> :sswitch_14
        -0x2246832 -> :sswitch_13
        -0x117c459 -> :sswitch_12
        0x4fd98e1 -> :sswitch_11
        0x85fa496 -> :sswitch_10
        0x1086aa03 -> :sswitch_f
        0x18e41b33 -> :sswitch_e
        0x1d261c9d -> :sswitch_d
        0x240ce64e -> :sswitch_c
        0x32c1d30f -> :sswitch_b
        0x438d32f5 -> :sswitch_a
        0x4abdeb96 -> :sswitch_9
        0x64defd38 -> :sswitch_8
        0x6db77171 -> :sswitch_7
        0x6ec40bb4 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x75228db3 -> :sswitch_34
        -0x5344faa1 -> :sswitch_33
        -0x49b19ab4 -> :sswitch_32
        -0x477f69dc -> :sswitch_31
        -0x1b1e2f47 -> :sswitch_30
        -0x6441366 -> :sswitch_2f
        -0x2067e91 -> :sswitch_2e
        0x85fa496 -> :sswitch_2d
        0x10dc886c -> :sswitch_2c
        0x27deb5dc -> :sswitch_2b
        0x376703d8 -> :sswitch_2a
        0x428f670d -> :sswitch_29
        0x4f9505ac -> :sswitch_28
        0x5afa1a68 -> :sswitch_27
        0x6238abf9 -> :sswitch_26
        0x694839c4 -> :sswitch_25
        0x6ad3e979 -> :sswitch_24
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x5d1cb00b -> :sswitch_41
        -0x58dab65f -> :sswitch_40
        -0x55d0d0ee -> :sswitch_3f
        -0x495e7741 -> :sswitch_3e
        -0x1abb5fa -> :sswitch_3d
        0x1fa36ac0 -> :sswitch_3c
        0x2f421cc3 -> :sswitch_3b
        0x32574534 -> :sswitch_3a
        0x34565e5f -> :sswitch_39
        0x38ab60cf -> :sswitch_38
        0x3ab3e61a -> :sswitch_37
        0x4ed22f86 -> :sswitch_36
        0x6c0df1e8 -> :sswitch_35
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x7f6b9b80 -> :sswitch_4f
        -0x7a29af54 -> :sswitch_4e
        -0x7672ed17 -> :sswitch_4d
        -0x6a25634f -> :sswitch_4c
        -0x437f6e25 -> :sswitch_4b
        -0x1e01c219 -> :sswitch_4a
        -0x14b468b1 -> :sswitch_49
        0xb8321a0 -> :sswitch_48
        0x26b3fb45 -> :sswitch_47
        0x2a7ba768 -> :sswitch_46
        0x37929121 -> :sswitch_45
        0x6e37395a -> :sswitch_44
        0x77ba6b2b -> :sswitch_43
        0x7ec2cd45 -> :sswitch_42
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        -0x69b477e0 -> :sswitch_52
        -0x4e0d4c0 -> :sswitch_51
        0x1d6710b8 -> :sswitch_50
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
    .end packed-switch

    :sswitch_data_6
    .sparse-switch
        -0x793fada2 -> :sswitch_59
        -0x5c3258ae -> :sswitch_58
        -0x3c3a3ab9 -> :sswitch_57
        -0x394ec066 -> :sswitch_56
        0x1733e8eb -> :sswitch_55
        0x4e985da6 -> :sswitch_54
        0x4fb7d6e9 -> :sswitch_53
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
    .end packed-switch

    :sswitch_data_7
    .sparse-switch
        -0x777467f8 -> :sswitch_6c
        -0x75f653b4 -> :sswitch_6b
        -0x526f4ac4 -> :sswitch_6a
        -0x42f2906e -> :sswitch_69
        -0x29404601 -> :sswitch_68
        -0x2360eeb0 -> :sswitch_67
        0x130dedfc -> :sswitch_66
        0x14014325 -> :sswitch_65
        0x16233ecf -> :sswitch_64
        0x1a458c22 -> :sswitch_63
        0x1e373fed -> :sswitch_62
        0x21074337 -> :sswitch_61
        0x22e592aa -> :sswitch_60
        0x2383ddea -> :sswitch_5f
        0x2dd7b5a9 -> :sswitch_5e
        0x3c119522 -> :sswitch_5d
        0x3d4c4243 -> :sswitch_5c
        0x3d73f371 -> :sswitch_5b
        0x49cef874 -> :sswitch_5a
    .end sparse-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
    .end packed-switch
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
