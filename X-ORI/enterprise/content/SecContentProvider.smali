.class public Lcom/android/server/enterprise/content/SecContentProvider;
.super Landroid/content/ContentProvider;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/UriMatcher;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 8
    .line 9
    const-string v1, "AuditLog"

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    const-string/jumbo v3, "com.sec.knox.provider"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string v1, "BluetoothPolicy"

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    const-string v1, "BluetoothUtils"

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    const-string v1, "BrowserPolicy"

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    const-string v1, "CertificatePolicy"

    .line 37
    .line 38
    const/4 v2, 0x6

    .line 39
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    const-string v1, "FirewallPolicy"

    .line 43
    .line 44
    const/16 v2, 0xa

    .line 45
    .line 46
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    const-string v1, "LocationPolicy"

    .line 50
    .line 51
    const/16 v2, 0xc

    .line 52
    .line 53
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    const-string v1, "PasswordPolicy2"

    .line 57
    .line 58
    const/16 v2, 0xe

    .line 59
    .line 60
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    .line 62
    .line 63
    const-string v1, "RestrictionPolicy1"

    .line 64
    .line 65
    const/16 v2, 0xf

    .line 66
    .line 67
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    const-string v1, "RestrictionPolicy2"

    .line 71
    .line 72
    const/16 v2, 0x10

    .line 73
    .line 74
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    const-string v1, "RestrictionPolicy3"

    .line 78
    .line 79
    const/16 v2, 0x11

    .line 80
    .line 81
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    .line 83
    .line 84
    const-string v1, "RestrictionPolicy4"

    .line 85
    .line 86
    const/16 v2, 0x12

    .line 87
    .line 88
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    const-string v1, "RoamingPolicy"

    .line 92
    .line 93
    const/16 v2, 0x13

    .line 94
    .line 95
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    const-string v1, "SecurityPolicy"

    .line 99
    .line 100
    const/16 v2, 0x14

    .line 101
    .line 102
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    .line 104
    .line 105
    const-string v1, "DateTimePolicy"

    .line 106
    .line 107
    const/16 v2, 0x18

    .line 108
    .line 109
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    const-string v1, "DlpPolicy"

    .line 113
    .line 114
    const/16 v2, 0x19

    .line 115
    .line 116
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    const-string v1, "DomainFilterPolicy"

    .line 120
    .line 121
    const/16 v2, 0x1a

    .line 122
    .line 123
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    const-string v1, "DexPolicy"

    .line 127
    .line 128
    const/16 v2, 0x1b

    .line 129
    .line 130
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    .line 132
    .line 133
    const-string v1, "RestrictionPolicy"

    .line 134
    .line 135
    const/16 v2, 0x1e

    .line 136
    .line 137
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    .line 139
    .line 140
    const-string v1, "ProfilePolicy"

    .line 141
    .line 142
    const/16 v2, 0x1f

    .line 143
    .line 144
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getArrayLength([Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string v1, "SecContentProvider"

    .line 12
    .line 13
    const-string/jumbo v2, "getArrayLength() return 0 but some exception occurs with invalid request."

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    :goto_0
    return v0
.end method

.method public static restrictionPolicyIsPowerOffAllowed([Ljava/lang/String;ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 5
    .line 6
    .line 7
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v1

    .line 10
    const-string v2, "SecContentProvider"

    .line 11
    .line 12
    const-string/jumbo v3, "getArrayLength() return 0 but some exception occurs with invalid request."

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    move v1, v0

    .line 19
    :goto_0
    if-lez v1, :cond_0

    .line 20
    .line 21
    aget-object p0, p0, v0

    .line 22
    .line 23
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    :cond_0
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    .line 28
    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPowerOffAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    return p0
.end method

.method public static restrictionPolicyisPowerSavingModeAllowed(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPowerSavingModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const-string p1, "POWER_SAVING_MODE_ALLOWED cursor return "

    .line 13
    .line 14
    const-string v0, "SecContentProvider"

    .line 15
    .line 16
    invoke-static {p1, v0, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return p0
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v2, "insert(), uri = "

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v2, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 14
    .line 15
    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v3, "SecContentProvider"

    .line 27
    .line 28
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/enterprise/content/SecContentProvider;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    if-nez p0, :cond_0

    .line 42
    .line 43
    const-string/jumbo p0, "fail to get caller name"

    .line 44
    .line 45
    .line 46
    :cond_0
    const-string/jumbo v1, "called from "

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    const/4 p1, 0x2

    .line 61
    if-eq p0, p1, :cond_4

    .line 62
    .line 63
    const/4 p1, 0x6

    .line 64
    const-string v1, "API"

    .line 65
    .line 66
    if-eq p0, p1, :cond_3

    .line 67
    .line 68
    const/16 p1, 0xe

    .line 69
    .line 70
    if-eq p0, p1, :cond_2

    .line 71
    .line 72
    const/16 p1, 0x14

    .line 73
    .line 74
    if-eq p0, p1, :cond_1

    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :cond_1
    const-string/jumbo p0, "security_policy"

    .line 79
    .line 80
    .line 81
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    check-cast p0, Lcom/android/server/enterprise/security/SecurityPolicy;

    .line 86
    .line 87
    if-eqz p0, :cond_c

    .line 88
    .line 89
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_c

    .line 94
    .line 95
    const-string/jumbo v1, "setDodBannerVisibleStatus"

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p1

    .line 102
    if-eqz p1, :cond_c

    .line 103
    .line 104
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .line 105
    .line 106
    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 107
    .line 108
    .line 109
    const-string/jumbo v0, "isVisible"

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->setDodBannerVisibleStatus(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 121
    .line 122
    .line 123
    goto/16 :goto_0

    .line 124
    .line 125
    :cond_2
    const-string/jumbo p0, "password_policy"

    .line 126
    .line 127
    .line 128
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    check-cast p0, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 133
    .line 134
    if-eqz p0, :cond_c

    .line 135
    .line 136
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-eqz p1, :cond_c

    .line 141
    .line 142
    const-string/jumbo v1, "setPwdChangeRequested"

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_c

    .line 150
    .line 151
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .line 152
    .line 153
    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 154
    .line 155
    .line 156
    const-string/jumbo v0, "flag"

    .line 157
    .line 158
    .line 159
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequested(Lcom/samsung/android/knox/ContextInfo;I)Z

    .line 168
    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_3
    const-string/jumbo p0, "certificate_policy"

    .line 173
    .line 174
    .line 175
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    check-cast p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 180
    .line 181
    if-eqz p0, :cond_c

    .line 182
    .line 183
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    const-string/jumbo v0, "fail"

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    const-string/jumbo v1, "module"

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    if-eqz p1, :cond_c

    .line 202
    .line 203
    const-string/jumbo v1, "notifyCertificateFailure"

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-eqz p1, :cond_c

    .line 211
    .line 212
    if-eqz v0, :cond_c

    .line 213
    .line 214
    if-eqz p2, :cond_c

    .line 215
    .line 216
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    const/4 v0, 0x1

    .line 221
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_0

    .line 225
    .line 226
    :cond_4
    const-string p0, "auditlog"

    .line 227
    .line 228
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    move-object v1, p0

    .line 233
    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 234
    .line 235
    if-nez v1, :cond_5

    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_5
    const-string/jumbo p0, "tag"

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 243
    .line 244
    .line 245
    move-result p1

    .line 246
    const-string/jumbo v2, "uid"

    .line 247
    .line 248
    .line 249
    const-string/jumbo v3, "userid"

    .line 250
    .line 251
    .line 252
    if-eqz p1, :cond_8

    .line 253
    .line 254
    new-instance v6, Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .line 258
    .line 259
    const-string/jumbo p1, "params"

    .line 260
    .line 261
    .line 262
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    if-eqz p1, :cond_6

    .line 267
    .line 268
    const-string v0, ","

    .line 269
    .line 270
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 279
    .line 280
    .line 281
    :cond_6
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    if-eqz p1, :cond_7

    .line 286
    .line 287
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 292
    .line 293
    .line 294
    move-result v3

    .line 295
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    const/4 v2, 0x0

    .line 312
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/auditlog/AuditLogService;->logEventAsUser(Ljava/lang/String;IIILjava/util/List;)V

    .line 313
    .line 314
    .line 315
    goto/16 :goto_0

    .line 316
    .line 317
    :cond_7
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 322
    .line 323
    .line 324
    move-result v4

    .line 325
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 326
    .line 327
    .line 328
    move-result-object p0

    .line 329
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 330
    .line 331
    .line 332
    move-result v5

    .line 333
    const/4 v3, -0x1

    .line 334
    const/4 v2, 0x0

    .line 335
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/auditlog/AuditLogService;->logEventAsUser(Ljava/lang/String;IIILjava/util/List;)V

    .line 336
    .line 337
    .line 338
    goto/16 :goto_0

    .line 339
    .line 340
    :cond_8
    const-string/jumbo p0, "redactedMessage"

    .line 341
    .line 342
    .line 343
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    const-string/jumbo v4, "message"

    .line 348
    .line 349
    .line 350
    const-string/jumbo v5, "component"

    .line 351
    .line 352
    .line 353
    const-string/jumbo v6, "outcome"

    .line 354
    .line 355
    .line 356
    const-string/jumbo v7, "group"

    .line 357
    .line 358
    .line 359
    const-string/jumbo v8, "severity"

    .line 360
    .line 361
    .line 362
    if-eqz p1, :cond_a

    .line 363
    .line 364
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 365
    .line 366
    .line 367
    move-result p1

    .line 368
    if-eqz p1, :cond_9

    .line 369
    .line 370
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .line 371
    .line 372
    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 380
    .line 381
    .line 382
    move-result v0

    .line 383
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 384
    .line 385
    .line 386
    move-result-object v7

    .line 387
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 388
    .line 389
    .line 390
    move-result v7

    .line 391
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 392
    .line 393
    .line 394
    move-result-object v6

    .line 395
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 396
    .line 397
    .line 398
    move-result v6

    .line 399
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 404
    .line 405
    .line 406
    move-result v8

    .line 407
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v9

    .line 411
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v10

    .line 415
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object p0

    .line 419
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 420
    .line 421
    .line 422
    move-result-object p2

    .line 423
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 424
    .line 425
    .line 426
    move-result p2

    .line 427
    move-object v2, p1

    .line 428
    move v3, v0

    .line 429
    move v4, v7

    .line 430
    move v5, v6

    .line 431
    move v6, v8

    .line 432
    move-object v7, v9

    .line 433
    move-object v8, v10

    .line 434
    move-object v9, p0

    .line 435
    move v10, p2

    .line 436
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 437
    .line 438
    .line 439
    goto/16 :goto_0

    .line 440
    .line 441
    :cond_9
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .line 442
    .line 443
    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 451
    .line 452
    .line 453
    move-result v3

    .line 454
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 459
    .line 460
    .line 461
    move-result v0

    .line 462
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 463
    .line 464
    .line 465
    move-result-object v6

    .line 466
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 467
    .line 468
    .line 469
    move-result v6

    .line 470
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 475
    .line 476
    .line 477
    move-result v7

    .line 478
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v8

    .line 482
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v9

    .line 486
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object p0

    .line 490
    move-object v2, p1

    .line 491
    move v4, v0

    .line 492
    move v5, v6

    .line 493
    move v6, v7

    .line 494
    move-object v7, v8

    .line 495
    move-object v8, v9

    .line 496
    move-object v9, p0

    .line 497
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    goto/16 :goto_0

    .line 501
    .line 502
    :cond_a
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 503
    .line 504
    .line 505
    move-result p0

    .line 506
    if-eqz p0, :cond_b

    .line 507
    .line 508
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    .line 509
    .line 510
    invoke-direct {p0, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 514
    .line 515
    .line 516
    move-result-object p1

    .line 517
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 518
    .line 519
    .line 520
    move-result p1

    .line 521
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 522
    .line 523
    .line 524
    move-result-object v0

    .line 525
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 526
    .line 527
    .line 528
    move-result v0

    .line 529
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 530
    .line 531
    .line 532
    move-result-object v6

    .line 533
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 534
    .line 535
    .line 536
    move-result v6

    .line 537
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 538
    .line 539
    .line 540
    move-result-object v2

    .line 541
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 542
    .line 543
    .line 544
    move-result v7

    .line 545
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v8

    .line 549
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v9

    .line 553
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 554
    .line 555
    .line 556
    move-result-object p2

    .line 557
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 558
    .line 559
    .line 560
    move-result v10

    .line 561
    const/4 p2, 0x0

    .line 562
    move-object v2, p0

    .line 563
    move v3, p1

    .line 564
    move v4, v0

    .line 565
    move v5, v6

    .line 566
    move v6, v7

    .line 567
    move-object v7, v8

    .line 568
    move-object v8, v9

    .line 569
    move-object v9, p2

    .line 570
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 571
    .line 572
    .line 573
    goto :goto_0

    .line 574
    :cond_b
    new-instance p0, Lcom/samsung/android/knox/ContextInfo;

    .line 575
    .line 576
    invoke-direct {p0, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 580
    .line 581
    .line 582
    move-result-object p1

    .line 583
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 584
    .line 585
    .line 586
    move-result v3

    .line 587
    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 588
    .line 589
    .line 590
    move-result-object p1

    .line 591
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 592
    .line 593
    .line 594
    move-result p1

    .line 595
    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 600
    .line 601
    .line 602
    move-result v0

    .line 603
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 604
    .line 605
    .line 606
    move-result-object v2

    .line 607
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 608
    .line 609
    .line 610
    move-result v6

    .line 611
    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v7

    .line 615
    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v8

    .line 619
    const/4 v9, 0x0

    .line 620
    move-object v2, p0

    .line 621
    move v4, p1

    .line 622
    move v5, v0

    .line 623
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    :cond_c
    :goto_0
    const/4 p0, 0x0

    .line 627
    return-object p0
.end method

.method public final onCreate()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 1
    const-string/jumbo v3, "isDodBannerVisible"

    const-string/jumbo v4, "isCameraEnabled"

    const-string/jumbo v5, "isHeadPhoneEnabled"

    const-string/jumbo v6, "isSettingsChangesAllowed"

    const-string/jumbo v7, "isSmartClipModeAllowed"

    const-string/jumbo v8, "isWifiDirectAllowed"

    const-string/jumbo v9, "isWallpaperChangeAllowed"

    const/16 v16, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 2
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 3
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "query(), uri = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v13, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " selection = "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v15, "SecContentProvider"

    invoke-static {v15, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v12, p0

    .line 4
    iget-object v12, v12, Lcom/android/server/enterprise/content/SecContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_0

    .line 5
    const-string/jumbo v12, "fail to get caller name"

    .line 6
    :cond_0
    const-string/jumbo v14, "called from "

    invoke-virtual {v14, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v15, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {v13, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v12, 0x0

    const/4 v13, 0x2

    if-eq v0, v13, :cond_f0

    const/4 v13, 0x3

    if-eq v0, v13, :cond_e6

    const/4 v13, 0x4

    if-eq v0, v13, :cond_d0

    const-string/jumbo v13, "browser_policy"

    const/4 v14, 0x5

    if-eq v0, v14, :cond_ca

    const/4 v14, 0x6

    if-eq v0, v14, :cond_be

    const/16 v14, 0xa

    if-eq v0, v14, :cond_b8

    const/16 v14, 0xc

    if-eq v0, v14, :cond_b1

    const/16 v13, 0x18

    if-eq v0, v13, :cond_ae

    const/16 v13, 0x1a

    if-eq v0, v13, :cond_ab

    const/16 v13, 0x1b

    if-eq v0, v13, :cond_aa

    const/16 v13, 0x1e

    const-string/jumbo v14, "return null"

    const-string/jumbo v17, "restriction_policy"

    if-eq v0, v13, :cond_93

    const/16 v13, 0x1f

    if-eq v0, v13, :cond_90

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_62

    .line 8
    :pswitch_0
    const-string/jumbo v0, "security_policy"

    .line 9
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/SecurityPolicy;

    if-eqz v0, :cond_f1

    if-eqz v1, :cond_f1

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v0, "getCredentialStorageStatus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v12

    .line 11
    :cond_1
    new-instance v0, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 14
    const-string/jumbo v1, "getCredentialStorageStatus = 1"

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 15
    :cond_2
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisible(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 16
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 18
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0

    .line 19
    :pswitch_1
    const-string/jumbo v0, "roaming_policy"

    .line 20
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    if-eqz v0, :cond_f1

    if-eqz v1, :cond_f1

    .line 21
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string/jumbo v2, "isRoamingDataEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v16, 0x2

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "isRoamingSyncEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/16 v16, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "isRoamingVoiceCallsEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/16 v16, 0x0

    :goto_1
    packed-switch v16, :pswitch_data_1

    return-object v12

    .line 22
    :pswitch_2
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingDataEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 23
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isRoamingDataEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 25
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2

    .line 26
    :pswitch_3
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingSyncEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 27
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isRoamingSyncEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2

    .line 30
    :pswitch_4
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingVoiceCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 31
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isRoamingVoiceCallsEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 32
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_2
    return-object v1

    .line 34
    :pswitch_5
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v0, :cond_f1

    if-eqz v1, :cond_f1

    .line 35
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    goto/16 :goto_3

    :sswitch_3
    const-string/jumbo v3, "isScreenCaptureEnabledInternal"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_3

    :cond_6
    const/16 v16, 0xd

    goto/16 :goto_3

    :sswitch_4
    const-string/jumbo v3, "isUsbHostStorageAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_3

    :cond_7
    const/16 v16, 0xc

    goto/16 :goto_3

    :sswitch_5
    const-string/jumbo v3, "isUsbTetheringEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto/16 :goto_3

    :cond_8
    const/16 v16, 0xb

    goto/16 :goto_3

    :sswitch_6
    const-string/jumbo v3, "isUsbMassStorageEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto/16 :goto_3

    :cond_9
    const/16 v16, 0xa

    goto/16 :goto_3

    :sswitch_7
    const-string/jumbo v3, "isWifiTetheringEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_3

    :cond_a
    const/16 v16, 0x9

    goto/16 :goto_3

    :sswitch_8
    const-string/jumbo v3, "getAllowedFOTAInfo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_3

    :cond_b
    const/16 v16, 0x8

    goto/16 :goto_3

    :sswitch_9
    const-string/jumbo v3, "isSDCardWriteAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_3

    :cond_c
    const/16 v16, 0x7

    goto :goto_3

    :sswitch_a
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_3

    :cond_d
    const/16 v16, 0x6

    goto :goto_3

    :sswitch_b
    const-string/jumbo v3, "isVpnAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_3

    :cond_e
    const/16 v16, 0x5

    goto :goto_3

    :sswitch_c
    const-string/jumbo v3, "isWifiEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_3

    :cond_f
    const/16 v16, 0x4

    goto :goto_3

    :sswitch_d
    const-string/jumbo v3, "isVideoRecordAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_3

    :cond_10
    const/16 v16, 0x3

    goto :goto_3

    :sswitch_e
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_3

    :cond_11
    const/16 v16, 0x2

    goto :goto_3

    :sswitch_f
    const-string/jumbo v3, "isUsbMediaPlayerAvailable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_3

    :cond_12
    const/16 v16, 0x1

    goto :goto_3

    :sswitch_10
    const-string/jumbo v3, "isPowerSavingModeAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_3

    :cond_13
    const/16 v16, 0x0

    :goto_3
    packed-switch v16, :pswitch_data_2

    return-object v12

    :pswitch_6
    if-nez v2, :cond_14

    .line 36
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_15

    :cond_14
    const/4 v3, 0x0

    goto :goto_4

    :cond_15
    const/4 v14, 0x0

    goto :goto_5

    .line 37
    :goto_4
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 38
    :goto_5
    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v0

    .line 39
    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 40
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 41
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_7
    if-eqz v2, :cond_16

    .line 42
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_16

    const/4 v1, 0x0

    .line 43
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_6

    :cond_16
    const/4 v14, 0x0

    .line 44
    :goto_6
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 45
    new-instance v2, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isUsbHostStorageAllowed"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 46
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 47
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 48
    :pswitch_8
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 49
    new-instance v2, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isUsbTetheringEnabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 50
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 51
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_9
    if-eqz v2, :cond_18

    .line 52
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_17

    goto :goto_7

    .line 53
    :cond_17
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v0, 0x0

    aget-object v0, v2, v0

    .line 54
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 55
    new-instance v2, Landroid/database/MatrixCursor;

    const-string/jumbo v0, "isUsbMassStorageEnabled"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 56
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 57
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_18
    :goto_7
    return-object v12

    .line 58
    :pswitch_a
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 59
    new-instance v2, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isWifiTetheringEnabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 60
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 61
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 62
    :pswitch_b
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 63
    new-instance v2, Landroid/database/MatrixCursor;

    const-string/jumbo v0, "getAllowedFOTAInfo"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto/16 :goto_e

    .line 64
    :pswitch_c
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 65
    new-instance v2, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isSDCardWriteAllowed"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 66
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 67
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_d
    if-eqz v2, :cond_19

    .line 68
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_19

    const/4 v1, 0x0

    .line 69
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_8

    :cond_19
    const/4 v14, 0x0

    .line 70
    :goto_8
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiDirectAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 71
    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 72
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 73
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 74
    :pswitch_e
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVpnAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 75
    new-instance v2, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isVpnAllowed"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 76
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 77
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 78
    :pswitch_f
    const-string/jumbo v0, "wifi_policy"

    .line 79
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    if-nez v2, :cond_1a

    .line 80
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1b

    :cond_1a
    const/4 v1, 0x0

    goto :goto_9

    :cond_1b
    const/4 v14, 0x0

    goto :goto_a

    .line 81
    :goto_9
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    :goto_a
    if-eqz v0, :cond_1c

    .line 82
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 83
    new-instance v2, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isWifiEnabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 84
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 85
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_1c
    return-object v12

    :pswitch_10
    if-eqz v2, :cond_1d

    .line 86
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1d

    const/4 v1, 0x0

    .line 87
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_b

    :cond_1d
    const/4 v14, 0x0

    .line 88
    :goto_b
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVideoRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 89
    new-instance v2, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isVideoRecordAllowed"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 90
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 91
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_11
    if-eqz v2, :cond_1e

    .line 92
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1e

    const/4 v1, 0x0

    .line 93
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_c

    :cond_1e
    const/4 v14, 0x0

    .line 94
    :goto_c
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWallpaperChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 95
    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 96
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 97
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_e

    :pswitch_12
    if-eqz v2, :cond_20

    .line 98
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_1f

    goto :goto_d

    .line 99
    :cond_1f
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 100
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 101
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbMediaPlayerAvailable(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 102
    new-instance v2, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isUsbMediaPlayerAvailable"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 103
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 104
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_e

    :cond_20
    :goto_d
    return-object v12

    .line 105
    :pswitch_13
    invoke-static {v10, v0}, Lcom/android/server/enterprise/content/SecContentProvider;->restrictionPolicyisPowerSavingModeAllowed(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move-result v0

    .line 106
    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 107
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 108
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_e
    return-object v2

    .line 109
    :pswitch_14
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v0, :cond_f1

    if-eqz v1, :cond_f1

    .line 110
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_2

    goto/16 :goto_f

    :sswitch_11
    const-string/jumbo v3, "isSVoiceAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    goto/16 :goto_f

    :cond_21
    const/16 v3, 0xe

    move/from16 v16, v3

    goto/16 :goto_f

    :sswitch_12
    const-string/jumbo v3, "isScreenCaptureEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto/16 :goto_f

    :cond_22
    const/16 v16, 0xd

    goto/16 :goto_f

    :sswitch_13
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto/16 :goto_f

    :cond_23
    const/16 v16, 0xc

    goto/16 :goto_f

    :sswitch_14
    const-string/jumbo v3, "isSDCardMoveAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto/16 :goto_f

    :cond_24
    const/16 v16, 0xb

    goto/16 :goto_f

    :sswitch_15
    const-string/jumbo v3, "isUsbDebuggingEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    goto/16 :goto_f

    :cond_25
    const/16 v16, 0xa

    goto/16 :goto_f

    :sswitch_16
    const-string/jumbo v3, "isIrisCameraEnabledAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    goto/16 :goto_f

    :cond_26
    const/16 v16, 0x9

    goto/16 :goto_f

    :sswitch_17
    const-string/jumbo v3, "isSafeModeAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    goto/16 :goto_f

    :cond_27
    const/16 v16, 0x8

    goto/16 :goto_f

    :sswitch_18
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_f

    :cond_28
    const/16 v16, 0x7

    goto :goto_f

    :sswitch_19
    const-string/jumbo v3, "isSettingsChangesAllowedAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    goto :goto_f

    :cond_29
    const/16 v16, 0x6

    goto :goto_f

    :sswitch_1a
    const-string/jumbo v3, "isSdCardEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_f

    :cond_2a
    const/16 v16, 0x5

    goto :goto_f

    :sswitch_1b
    const-string/jumbo v3, "isOTAUpgradeAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_f

    :cond_2b
    const/16 v16, 0x4

    goto :goto_f

    :sswitch_1c
    const-string/jumbo v3, "isStopSystemAppAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    goto :goto_f

    :cond_2c
    const/16 v16, 0x3

    goto :goto_f

    :sswitch_1d
    const-string/jumbo v3, "isPowerOffAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    goto :goto_f

    :cond_2d
    const/16 v16, 0x2

    goto :goto_f

    :sswitch_1e
    const-string/jumbo v3, "isScreenPinningAllowedAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2e

    goto :goto_f

    :cond_2e
    const/16 v16, 0x1

    goto :goto_f

    :sswitch_1f
    const-string/jumbo v3, "isShareListAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    goto :goto_f

    :cond_2f
    const/16 v16, 0x0

    :goto_f
    packed-switch v16, :pswitch_data_3

    return-object v12

    :pswitch_15
    if-eqz v2, :cond_31

    .line 111
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_30

    const/4 v1, 0x0

    .line 112
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_11

    :cond_30
    const/4 v1, 0x0

    goto :goto_10

    :cond_31
    const/4 v1, 0x0

    const/4 v3, 0x1

    :goto_10
    if-eqz v2, :cond_32

    .line 113
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_32

    .line 114
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 115
    aget-object v1, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_11

    :cond_32
    const/4 v14, 0x0

    .line 116
    :goto_11
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isSVoiceAllowed result = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isSVoiceAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 119
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 120
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b

    :pswitch_16
    if-eqz v2, :cond_34

    .line 121
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_33

    goto :goto_12

    .line 122
    :cond_33
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 123
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 125
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isScreenCaptureEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 126
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 127
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b

    :cond_34
    :goto_12
    return-object v12

    :pswitch_17
    if-eqz v2, :cond_37

    .line 128
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_35

    goto :goto_14

    .line 129
    :cond_35
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_36

    .line 130
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    aget-object v3, v2, v3

    .line 131
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 132
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_13

    :cond_36
    const/4 v3, 0x0

    .line 134
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v2, v3

    .line 135
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 136
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 137
    :goto_13
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 138
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 139
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b

    :cond_37
    :goto_14
    return-object v12

    :pswitch_18
    if-eqz v2, :cond_39

    .line 140
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_38

    goto :goto_15

    .line 141
    :cond_38
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 142
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardMoveAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 144
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isSDCardMoveAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 145
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 146
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b

    :cond_39
    :goto_15
    return-object v12

    .line 147
    :pswitch_19
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbDebuggingEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 148
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isUsbDebuggingEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 149
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 150
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b

    :pswitch_1a
    if-eqz v2, :cond_3b

    .line 151
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_3a

    goto :goto_16

    .line 152
    :cond_3a
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 153
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 154
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isIrisCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 155
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isIrisCameraEnabledAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 156
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 157
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b

    :cond_3b
    :goto_16
    return-object v12

    .line 158
    :pswitch_1b
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 159
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isSafeModeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 160
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 161
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b

    :pswitch_1c
    if-eqz v2, :cond_3c

    .line 162
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3c

    const/4 v1, 0x0

    .line 163
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_17

    :cond_3c
    const/4 v14, 0x0

    .line 164
    :goto_17
    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSmartClipModeAllowedInternal(Z)Z

    move-result v0

    .line 165
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 166
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 167
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b

    :pswitch_1d
    if-eqz v2, :cond_3e

    .line 168
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_3d

    goto :goto_18

    :cond_3d
    const/4 v1, 0x0

    .line 169
    aget-object v1, v2, v1

    .line 170
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 171
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 172
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    move-result v0

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RESTRICTIONPOLICY_SETTINGSCHANGESASUSER_METHOD return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isSettingsChangesAllowedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 175
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 176
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b

    :cond_3e
    :goto_18
    return-object v12

    .line 177
    :pswitch_1e
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSdCardEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 178
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isSdCardEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 179
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 180
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b

    .line 181
    :pswitch_1f
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isOTAUpgradeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 182
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isOTAUpgradeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 183
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 184
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    .line 185
    :pswitch_20
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStopSystemAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 186
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isStopSystemAppAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 187
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 188
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1b

    .line 189
    :pswitch_21
    invoke-static {v2, v10, v0}, Lcom/android/server/enterprise/content/SecContentProvider;->restrictionPolicyIsPowerOffAllowed([Ljava/lang/String;ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move-result v0

    .line 190
    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 191
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 192
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v1, v2

    goto/16 :goto_1b

    :pswitch_22
    if-eqz v2, :cond_3f

    .line 193
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3f

    const/4 v1, 0x0

    .line 194
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    :cond_3f
    if-eqz v2, :cond_40

    .line 195
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_40

    const/4 v1, 0x1

    .line 196
    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    goto :goto_19

    :cond_40
    const/4 v1, 0x1

    .line 197
    :goto_19
    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;

    const-wide/high16 v2, 0x200000000000000L

    invoke-virtual {v0, v11, v2, v3, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicyCache;->extract(IJZ)Z

    move-result v0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isScreenPinningAllowed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RestrictionPolicy"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isScreenPinningAllowedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 200
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 201
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1b

    .line 202
    :pswitch_23
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_41

    .line 203
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 204
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 205
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_1a

    :cond_41
    const/4 v3, 0x0

    .line 206
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 207
    :goto_1a
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isShareListAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 208
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 209
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_1b
    return-object v1

    .line 210
    :pswitch_24
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v0, :cond_f1

    if-eqz v1, :cond_f1

    .line 211
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_3

    goto/16 :goto_1c

    :sswitch_20
    const-string/jumbo v3, "isKillingActivitiesOnLeaveAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    goto/16 :goto_1c

    :cond_42
    const/16 v16, 0xd

    goto/16 :goto_1c

    :sswitch_21
    const-string/jumbo v3, "isGoogleAccountsAutoSyncAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    goto/16 :goto_1c

    :cond_43
    const/16 v16, 0xc

    goto/16 :goto_1c

    :sswitch_22
    const-string/jumbo v3, "isNFCEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    goto/16 :goto_1c

    :cond_44
    const/16 v16, 0xb

    goto/16 :goto_1c

    :sswitch_23
    const-string/jumbo v3, "isMockLocationEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    goto/16 :goto_1c

    :cond_45
    const/16 v16, 0xa

    goto/16 :goto_1c

    :sswitch_24
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    goto/16 :goto_1c

    :cond_46
    const/16 v16, 0x9

    goto/16 :goto_1c

    :sswitch_25
    const-string/jumbo v3, "isNonMarketAppAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    goto/16 :goto_1c

    :cond_47
    const/16 v16, 0x8

    goto/16 :goto_1c

    :sswitch_26
    const-string/jumbo v3, "isFirmwareRecoveryAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    goto :goto_1c

    :cond_48
    const/16 v16, 0x7

    goto :goto_1c

    :sswitch_27
    const-string/jumbo v3, "isLockScreenViewAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    goto :goto_1c

    :cond_49
    const/16 v16, 0x6

    goto :goto_1c

    :sswitch_28
    const-string/jumbo v3, "isFirmwareAutoUpdateAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    goto :goto_1c

    :cond_4a
    const/16 v16, 0x5

    goto :goto_1c

    :sswitch_29
    const-string/jumbo v3, "isLockScreenEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    goto :goto_1c

    :cond_4b
    const/16 v16, 0x4

    goto :goto_1c

    :sswitch_2a
    const-string/jumbo v3, "isMicrophoneEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    goto :goto_1c

    :cond_4c
    const/16 v16, 0x3

    goto :goto_1c

    :sswitch_2b
    const-string/jumbo v3, "isMicrophoneEnabledAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    goto :goto_1c

    :cond_4d
    const/16 v16, 0x2

    goto :goto_1c

    :sswitch_2c
    const-string/jumbo v3, "isGoogleCrashReportedAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    goto :goto_1c

    :cond_4e
    const/16 v16, 0x1

    goto :goto_1c

    :sswitch_2d
    const-string/jumbo v3, "isNFCEnabledWithMsg"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    goto :goto_1c

    :cond_4f
    const/16 v16, 0x0

    :goto_1c
    packed-switch v16, :pswitch_data_4

    .line 212
    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    .line 213
    :pswitch_25
    const-string/jumbo v1, "isKillingActivitiesOnLeaveAllowed return = "

    if-nez v2, :cond_50

    .line 214
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " callingUid : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 216
    :cond_50
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    const/4 v4, 0x0

    aget-object v5, v2, v4

    .line 217
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 218
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 219
    const-string v3, " userid : "

    .line 220
    invoke-static {v1, v3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 221
    aget-object v2, v2, v4

    .line 222
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_1d
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isKillingActivitiesOnLeaveAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 225
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 226
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_29

    .line 227
    :pswitch_26
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 228
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isGoogleAccountsAutoSyncAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 229
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 230
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_29

    .line 231
    :pswitch_27
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v0, "isNFCEnabled"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 232
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 233
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_29

    .line 234
    :pswitch_28
    const-string/jumbo v1, "callingUid = "

    if-nez v2, :cond_51

    .line 235
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 236
    invoke-static {v10, v1, v15}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 237
    :cond_51
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    const/4 v4, 0x0

    aget-object v5, v2, v4

    .line 238
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 239
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :goto_1e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isMockLocationEnabled return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isMockLocationEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 243
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 244
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_29

    :pswitch_29
    if-eqz v2, :cond_53

    .line 245
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_52

    goto :goto_1f

    .line 246
    :cond_52
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 247
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 248
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHeadphoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 249
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 250
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 251
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_29

    :cond_53
    :goto_1f
    return-object v12

    :pswitch_2a
    if-eqz v2, :cond_54

    .line 252
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 253
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 254
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto :goto_20

    .line 255
    :cond_54
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 256
    :goto_20
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isNonMarketAppAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 257
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 258
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_29

    :pswitch_2b
    if-eqz v2, :cond_56

    .line 259
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_55

    goto :goto_21

    .line 260
    :cond_55
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 261
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 262
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 263
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isFirmwareRecoveryAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 264
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 265
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_29

    :cond_56
    :goto_21
    return-object v12

    :pswitch_2c
    if-eqz v2, :cond_59

    .line 266
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_57

    goto :goto_23

    .line 267
    :cond_57
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_58

    .line 268
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    .line 269
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v2, v3

    .line 270
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 271
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    goto :goto_22

    :cond_58
    const/4 v4, 0x0

    .line 272
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v2, v4

    .line 273
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 274
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 275
    :goto_22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isLockScreenViewAllowed return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isLockScreenViewAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 277
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 278
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_29

    :cond_59
    :goto_23
    return-object v12

    :pswitch_2d
    if-eqz v2, :cond_5b

    .line 279
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_5a

    goto :goto_24

    .line 280
    :cond_5a
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 281
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 282
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareAutoUpdateAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 283
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isFirmwareAutoUpdateAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 284
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 285
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_29

    :cond_5b
    :goto_24
    return-object v12

    :pswitch_2e
    if-eqz v2, :cond_5d

    .line 286
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_5c

    goto :goto_25

    .line 287
    :cond_5c
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 288
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 289
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 290
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isLockScreenEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 291
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 292
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_29

    :cond_5d
    :goto_25
    return-object v12

    :pswitch_2f
    if-eqz v2, :cond_60

    .line 293
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_5e

    goto :goto_27

    .line 294
    :cond_5e
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5f

    .line 295
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    .line 296
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v1, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v2, v3

    .line 297
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 298
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_26

    :cond_5f
    const/4 v4, 0x0

    .line 299
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v2, v4

    .line 300
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 301
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 302
    :goto_26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isMicrophoneEnabled return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isMicrophoneEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 304
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 305
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_29

    :cond_60
    :goto_27
    return-object v12

    :pswitch_30
    if-eqz v2, :cond_62

    .line 306
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_61

    goto :goto_28

    :cond_61
    const/4 v1, 0x0

    .line 307
    aget-object v1, v2, v1

    .line 308
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 309
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 310
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v0

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isMicrophoneEnabledAsUser return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isMicrophoneEnabledAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 313
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 314
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_29

    :cond_62
    :goto_28
    return-object v12

    .line 315
    :pswitch_31
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleCrashReportAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 316
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isGoogleCrashReportedAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 317
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 318
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_29

    .line 319
    :pswitch_32
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v0, "isNFCEnabledWithMsg"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 320
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 321
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_29
    return-object v1

    .line 322
    :pswitch_33
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v0, :cond_f1

    if-eqz v1, :cond_f1

    .line 323
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_4

    goto/16 :goto_2a

    :sswitch_2e
    const-string/jumbo v3, "isAirplaneModeAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    goto/16 :goto_2a

    :cond_63
    const/16 v1, 0xe

    move/from16 v16, v1

    goto/16 :goto_2a

    :sswitch_2f
    const-string/jumbo v3, "isClipboardShareAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    goto/16 :goto_2a

    :cond_64
    const/16 v16, 0xd

    goto/16 :goto_2a

    :sswitch_30
    const-string/jumbo v3, "isFactoryResetAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    goto/16 :goto_2a

    :cond_65
    const/16 v16, 0xc

    goto/16 :goto_2a

    :sswitch_31
    const-string/jumbo v3, "isAndroidBeamAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    goto/16 :goto_2a

    :cond_66
    const/16 v16, 0xb

    goto/16 :goto_2a

    :sswitch_32
    const-string/jumbo v3, "isDeveloperModeAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    goto/16 :goto_2a

    :cond_67
    const/16 v16, 0xa

    goto/16 :goto_2a

    :sswitch_33
    const-string/jumbo v3, "isClipboardShareAllowedAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_68

    goto/16 :goto_2a

    :cond_68
    const/16 v16, 0x9

    goto/16 :goto_2a

    :sswitch_34
    const-string/jumbo v3, "isBackgroundProcessLimitEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    goto/16 :goto_2a

    :cond_69
    const/16 v16, 0x8

    goto/16 :goto_2a

    :sswitch_35
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    goto :goto_2a

    :cond_6a
    const/16 v16, 0x7

    goto :goto_2a

    :sswitch_36
    const-string/jumbo v3, "isBackupAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6b

    goto :goto_2a

    :cond_6b
    const/16 v16, 0x6

    goto :goto_2a

    :sswitch_37
    const-string/jumbo v3, "isAudioRecordAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    goto :goto_2a

    :cond_6c
    const/16 v16, 0x5

    goto :goto_2a

    :sswitch_38
    const-string/jumbo v3, "isCellularDataAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    goto :goto_2a

    :cond_6d
    const/16 v16, 0x4

    goto :goto_2a

    :sswitch_39
    const-string/jumbo v3, "isClipboardAllowedAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6e

    goto :goto_2a

    :cond_6e
    const/16 v16, 0x3

    goto :goto_2a

    :sswitch_3a
    const-string/jumbo v3, "isClipboardAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    goto :goto_2a

    :cond_6f
    const/16 v16, 0x2

    goto :goto_2a

    :sswitch_3b
    const-string/jumbo v3, "isBluetoothTetheringEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    goto :goto_2a

    :cond_70
    const/16 v16, 0x1

    goto :goto_2a

    :sswitch_3c
    const-string/jumbo v3, "isDataSavingAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_71

    goto :goto_2a

    :cond_71
    const/16 v16, 0x0

    :goto_2a
    packed-switch v16, :pswitch_data_5

    return-object v12

    :pswitch_34
    if-eqz v2, :cond_72

    .line 324
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_72

    const/4 v1, 0x0

    .line 325
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_2b

    :cond_72
    const/4 v14, 0x0

    .line 326
    :goto_2b
    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v0

    .line 327
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isAirplaneModeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 328
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 329
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_34

    .line 330
    :pswitch_35
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 331
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isClipboardShareAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 332
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 333
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_34

    .line 334
    :pswitch_36
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 335
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isFactoryResetAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 336
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 337
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_34

    :pswitch_37
    if-eqz v2, :cond_73

    .line 338
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_73

    const/4 v0, 0x0

    .line 339
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 340
    :cond_73
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v0, "isAndroidBeamAllowed"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 341
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 342
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_34

    :pswitch_38
    if-eqz v2, :cond_74

    .line 343
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_74

    const/4 v1, 0x0

    .line 344
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_2c

    :cond_74
    const/4 v14, 0x0

    .line 345
    :goto_2c
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDeveloperModeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 346
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isDeveloperModeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 347
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 348
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :pswitch_39
    if-eqz v2, :cond_76

    .line 349
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_75

    goto :goto_2d

    :cond_75
    const/4 v1, 0x0

    .line 350
    aget-object v1, v2, v1

    .line 351
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 352
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowedAsUser(I)Z

    move-result v0

    .line 353
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isClipboardShareAllowedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 354
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 355
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_34

    :cond_76
    :goto_2d
    return-object v12

    .line 356
    :pswitch_3a
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundProcessLimitAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 357
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBackgroundProcessLimitEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 358
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 359
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_34

    :pswitch_3b
    if-eqz v2, :cond_78

    .line 360
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_77

    goto :goto_2e

    .line 361
    :cond_77
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 362
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 363
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 364
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 365
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 366
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_34

    :cond_78
    :goto_2e
    return-object v12

    :pswitch_3c
    if-eqz v2, :cond_7a

    .line 367
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_79

    goto :goto_2f

    .line 368
    :cond_79
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 369
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 370
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackupAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 371
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBackupAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 372
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 373
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_34

    :cond_7a
    :goto_2f
    return-object v12

    :pswitch_3d
    if-eqz v2, :cond_7b

    .line 374
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_7b

    const/4 v1, 0x0

    .line 375
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto :goto_30

    :cond_7b
    const/4 v14, 0x0

    .line 376
    :goto_30
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAudioRecordAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 377
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isAudioRecordAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 378
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 379
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_34

    .line 380
    :pswitch_3e
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCellularDataAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 381
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isCellularDataAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 382
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 383
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_34

    :pswitch_3f
    if-eqz v2, :cond_7d

    .line 384
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_7c

    goto :goto_31

    :cond_7c
    const/4 v1, 0x0

    .line 385
    aget-object v1, v2, v1

    .line 386
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 387
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 388
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowedAsUser(ZI)Z

    move-result v0

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SemKnoxPolicyContract.RestrictionPolicy.CLIPBOARD_ALLOWED_AS_USER return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isClipboardAllowedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 391
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 392
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_34

    :cond_7d
    :goto_31
    return-object v12

    :pswitch_40
    if-eqz v2, :cond_7e

    .line 393
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_7f

    :cond_7e
    const/4 v3, 0x0

    goto :goto_32

    .line 394
    :cond_7f
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 395
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 396
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_33

    .line 397
    :goto_32
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    .line 398
    :goto_33
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isClipboardAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 399
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 400
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_34

    .line 401
    :pswitch_41
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBluetoothTetheringEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 402
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBluetoothTetheringEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 403
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 404
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_34

    .line 405
    :pswitch_42
    invoke-virtual {v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDataSavingAllowed()Z

    move-result v0

    .line 406
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isDataSavingAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 407
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 408
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_34
    return-object v1

    .line 409
    :pswitch_43
    const-string/jumbo v0, "password_policy"

    .line 410
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v0, :cond_f1

    if-eqz v1, :cond_f1

    .line 411
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_5

    goto/16 :goto_35

    :sswitch_3d
    const-string/jumbo v3, "isBiometricAuthenticationEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    goto :goto_35

    :cond_80
    const/16 v16, 0x7

    goto :goto_35

    :sswitch_3e
    const-string/jumbo v3, "isPasswordVisibilityEnabledAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_81

    goto :goto_35

    :cond_81
    const/16 v16, 0x6

    goto :goto_35

    :sswitch_3f
    const-string/jumbo v3, "isBiometricAuthenticationEnabledAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_82

    goto :goto_35

    :cond_82
    const/16 v16, 0x5

    goto :goto_35

    :sswitch_40
    const-string/jumbo v3, "isChangeRequested"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_83

    goto :goto_35

    :cond_83
    const/16 v16, 0x4

    goto :goto_35

    :sswitch_41
    const-string/jumbo v3, "getCurrentFailedPasswordAttempts"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_84

    goto :goto_35

    :cond_84
    const/16 v16, 0x3

    goto :goto_35

    :sswitch_42
    const-string/jumbo v3, "getPasswordLockDelay"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_85

    goto :goto_35

    :cond_85
    const/16 v16, 0x2

    goto :goto_35

    :sswitch_43
    const-string/jumbo v3, "isPasswordVisibilityEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_86

    goto :goto_35

    :cond_86
    const/16 v16, 0x1

    goto/16 :goto_35

    :sswitch_44
    const-string/jumbo v3, "getMaximumFailedPasswordsForDisable"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_87

    goto/16 :goto_35

    :cond_87
    const/16 v16, 0x0

    :goto_35
    packed-switch v16, :pswitch_data_6

    return-object v12

    :pswitch_44
    if-eqz v2, :cond_89

    .line 412
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_88

    goto :goto_36

    .line 413
    :cond_88
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 414
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 415
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 416
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBiometricAuthenticationEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 417
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 418
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3b

    :cond_89
    :goto_36
    return-object v12

    :pswitch_45
    if-eqz v2, :cond_8b

    .line 419
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_8a

    goto :goto_37

    :cond_8a
    const/4 v1, 0x0

    .line 420
    aget-object v1, v2, v1

    .line 421
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 422
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    move-result v0

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isPasswordVisibilityEnabledAsUser return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isPasswordVisibilityEnabledAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 425
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 426
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3b

    :cond_8b
    :goto_37
    return-object v12

    :pswitch_46
    if-eqz v2, :cond_8d

    .line 427
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_8c

    goto :goto_38

    :cond_8c
    const/4 v1, 0x0

    .line 428
    aget-object v1, v2, v1

    .line 429
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget-object v2, v2, v3

    .line 430
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 431
    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabledAsUser(II)Z

    move-result v0

    .line 432
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBiometricAuthenticationEnabledAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 433
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 434
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3b

    :cond_8d
    :goto_38
    return-object v12

    .line 435
    :pswitch_47
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequested(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 436
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isChangeRequested"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 437
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 438
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3b

    .line 439
    :pswitch_48
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->getCurrentFailedPasswordAttemptsInternal(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 440
    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 441
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 442
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v1, v2

    goto/16 :goto_3b

    .line 443
    :pswitch_49
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordLockDelay(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 444
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getPasswordLockDelay"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 445
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 446
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_3b

    .line 447
    :pswitch_4a
    const-string/jumbo v1, "isPasswordVisibilityEnabled callingUid = "

    if-nez v2, :cond_8e

    .line 448
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 449
    invoke-static {v10, v1, v15}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    .line 450
    :cond_8e
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    const/4 v4, 0x0

    aget-object v5, v2, v4

    .line 451
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v3, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 452
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v2, v4

    .line 454
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 455
    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :goto_39
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isPasswordVisibilityEnabled return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isPasswordVisibilityEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 458
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 459
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3b

    :pswitch_4b
    if-eqz v2, :cond_8f

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD user id = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    aget-object v2, v2, v3

    .line 462
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 463
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    goto/16 :goto_3a

    .line 464
    :cond_8f
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 465
    :goto_3a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD return = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getMaximumFailedPasswordsForDisable"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 467
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    .line 468
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_3b
    return-object v1

    :cond_90
    if-eqz v1, :cond_f1

    .line 469
    const-string/jumbo v0, "profilepolicy"

    .line 470
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/profile/ProfilePolicyService;

    if-nez v0, :cond_91

    return-object v12

    .line 471
    :cond_91
    const-string v3, "Restriction"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_92

    goto :goto_3c

    :cond_92
    const/4 v1, 0x0

    .line 472
    aget-object v1, v2, v1

    .line 473
    invoke-virtual {v0, v12, v1}, Lcom/android/server/enterprise/profile/ProfilePolicyService;->getRestrictionPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0

    .line 474
    new-instance v12, Landroid/database/MatrixCursor;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 475
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_3c
    return-object v12

    .line 476
    :cond_93
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v0, :cond_f1

    if-eqz v1, :cond_f1

    .line 477
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_6

    goto/16 :goto_3d

    :sswitch_45
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_94

    goto/16 :goto_3d

    :cond_94
    const/16 v16, 0xa

    goto/16 :goto_3d

    :sswitch_46
    const-string/jumbo v3, "showToastIfIntelligenceOnlineProcessingDisallowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_95

    goto/16 :goto_3d

    :cond_95
    const/16 v16, 0x9

    goto/16 :goto_3d

    :sswitch_47
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_96

    goto/16 :goto_3d

    :cond_96
    const/16 v16, 0x8

    goto/16 :goto_3d

    :sswitch_48
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_97

    goto :goto_3d

    :cond_97
    const/16 v16, 0x7

    goto :goto_3d

    :sswitch_49
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_98

    goto :goto_3d

    :cond_98
    const/16 v16, 0x6

    goto :goto_3d

    :sswitch_4a
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_99

    goto :goto_3d

    :cond_99
    const/16 v16, 0x5

    goto :goto_3d

    :sswitch_4b
    const-string/jumbo v3, "isIntelligenceOnlineProcessingAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9a

    goto :goto_3d

    :cond_9a
    const/16 v16, 0x4

    goto :goto_3d

    :sswitch_4c
    const-string/jumbo v3, "isLocalContactStorageAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9b

    goto :goto_3d

    :cond_9b
    const/16 v16, 0x3

    goto :goto_3d

    :sswitch_4d
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9c

    goto/16 :goto_3d

    :cond_9c
    const/16 v16, 0x2

    goto/16 :goto_3d

    :sswitch_4e
    const-string/jumbo v3, "isPowerOffAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9d

    goto/16 :goto_3d

    :cond_9d
    const/16 v16, 0x1

    goto/16 :goto_3d

    :sswitch_4f
    const-string/jumbo v3, "isPowerSavingModeAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    goto/16 :goto_3d

    :cond_9e
    const/16 v16, 0x0

    :goto_3d
    packed-switch v16, :pswitch_data_7

    .line 478
    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :pswitch_4c
    if-eqz v2, :cond_a1

    .line 479
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_9f

    goto :goto_3e

    .line 480
    :cond_9f
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_a0

    .line 481
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    aget-object v4, v2, v4

    .line 482
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v4, 0x0

    aget-object v2, v2, v4

    .line 483
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 484
    invoke-virtual {v0, v3, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto/16 :goto_44

    :cond_a0
    const/4 v4, 0x0

    .line 485
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    aget-object v2, v2, v4

    .line 486
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 487
    invoke-virtual {v0, v3, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto/16 :goto_44

    :cond_a1
    :goto_3e
    return-object v12

    .line 488
    :pswitch_4d
    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->showToastIfIntelligenceOnlineProcessingDisallowed(I)Z

    move-result v0

    goto/16 :goto_44

    :pswitch_4e
    if-eqz v2, :cond_a3

    .line 489
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_a2

    goto/16 :goto_3f

    .line 490
    :cond_a2
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v4, 0x0

    aget-object v2, v2, v4

    .line 491
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 492
    invoke-virtual {v0, v3, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHeadphoneEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto/16 :goto_44

    :cond_a3
    :goto_3f
    return-object v12

    :pswitch_4f
    const/4 v4, 0x0

    if-eqz v2, :cond_a4

    .line 493
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_a4

    .line 494
    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto/16 :goto_40

    :cond_a4
    const/4 v14, 0x0

    .line 495
    :goto_40
    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSmartClipModeAllowedInternal(Z)Z

    move-result v0

    goto/16 :goto_44

    :pswitch_50
    if-eqz v2, :cond_a6

    .line 496
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_a5

    goto/16 :goto_41

    .line 497
    :cond_a5
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v4, 0x0

    aget-object v2, v2, v4

    .line 498
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 499
    invoke-virtual {v0, v3, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto/16 :goto_44

    :cond_a6
    :goto_41
    return-object v12

    :pswitch_51
    const/4 v4, 0x0

    if-eqz v2, :cond_a7

    .line 500
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_a7

    .line 501
    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto/16 :goto_42

    :cond_a7
    const/4 v14, 0x0

    .line 502
    :goto_42
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiDirectAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto :goto_44

    :pswitch_52
    if-eqz v2, :cond_a8

    .line 503
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_a8

    const/4 v3, 0x0

    .line 504
    aget-object v2, v2, v3

    .line 505
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 506
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isIntelligenceOnlineProcessingAllowed(I)Z

    move-result v0

    goto :goto_44

    .line 507
    :cond_a8
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isIntelligenceOnlineProcessingAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto :goto_44

    .line 508
    :pswitch_53
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLocalContactStorageAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    goto/16 :goto_44

    :pswitch_54
    if-eqz v2, :cond_a9

    .line 509
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_a9

    const/4 v3, 0x0

    .line 510
    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    goto/16 :goto_43

    :cond_a9
    const/4 v14, 0x0

    .line 511
    :goto_43
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v2, v14}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWallpaperChangeAllowed(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    goto/16 :goto_44

    .line 512
    :pswitch_55
    invoke-static {v2, v10, v0}, Lcom/android/server/enterprise/content/SecContentProvider;->restrictionPolicyIsPowerOffAllowed([Ljava/lang/String;ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move-result v0

    goto/16 :goto_44

    .line 513
    :pswitch_56
    invoke-static {v10, v0}, Lcom/android/server/enterprise/content/SecContentProvider;->restrictionPolicyisPowerSavingModeAllowed(ILcom/android/server/enterprise/restriction/RestrictionPolicy;)Z

    move-result v0

    .line 514
    :goto_44
    new-instance v2, Landroid/database/MatrixCursor;

    filled-new-array/range {p3 .. p3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 515
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 516
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v2

    .line 517
    :cond_aa
    const-string/jumbo v0, "dex_policy"

    .line 518
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/DssController$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    goto/16 :goto_62

    :cond_ab
    if-eqz v1, :cond_f1

    .line 519
    const-string/jumbo v0, "getDefaultCaptivePortalUrl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ac

    goto/16 :goto_45

    .line 520
    :cond_ac
    const-string/jumbo v0, "getDefaultCaptivePortalUrl"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string/jumbo v1, "firewall"

    .line 522
    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/firewall/Firewall;

    if-eqz v1, :cond_ad

    .line 523
    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/Firewall;->getDefaulCaptivePortalURL()Ljava/lang/String;

    move-result-object v12

    .line 524
    :cond_ad
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 525
    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object v12, v1

    :goto_45
    return-object v12

    .line 526
    :cond_ae
    const-string/jumbo v0, "date_time_policy"

    .line 527
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    if-eqz v0, :cond_f1

    if-eqz v1, :cond_f1

    .line 528
    const-string/jumbo v2, "isDateTimeChangeEnalbed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b0

    const-string/jumbo v2, "getAutomaticTime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_af

    return-object v12

    .line 529
    :cond_af
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->getAutomaticTime(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 530
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getAutomaticTime"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 531
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 532
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_46

    .line 533
    :cond_b0
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 534
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isDateTimeChangeEnalbed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 535
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 536
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_46
    return-object v1

    .line 537
    :cond_b1
    const-string/jumbo v0, "location_policy"

    .line 538
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/location/LocationPolicy;

    if-eqz v0, :cond_f1

    if-eqz v1, :cond_f1

    .line 539
    const-string/jumbo v3, "isLocationProviderBlockedAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b3

    const-string/jumbo v2, "isGPSStateChangeAllowed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b2

    return-object v12

    .line 540
    :cond_b2
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 541
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isGPSStateChangeAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 542
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 543
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_48

    :cond_b3
    if-eqz v2, :cond_b7

    .line 544
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_b4

    goto :goto_49

    .line 545
    :cond_b4
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_b6

    .line 546
    aget-object v1, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x2

    if-ne v1, v3, :cond_b5

    .line 547
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 548
    const-string/jumbo v3, "isLocationProviderBlockedAsUser using userId = "

    const-string v4, " instead of UserHandle.USER_CURRENT"

    .line 549
    invoke-static {v1, v3, v4, v15}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b5
    const/4 v3, 0x0

    .line 550
    aget-object v2, v2, v3

    invoke-virtual {v0, v2, v1}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v0

    goto/16 :goto_47

    :cond_b6
    const/4 v3, 0x0

    .line 551
    aget-object v1, v2, v3

    invoke-virtual {v0, v1, v11}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v0

    .line 552
    :goto_47
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isLocationProviderBlockedAsUser"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 553
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 554
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_48
    return-object v1

    :cond_b7
    :goto_49
    return-object v12

    .line 555
    :cond_b8
    invoke-static {v13}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .line 556
    const-string/jumbo v2, "misc_policy"

    .line 557
    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/general/MiscPolicy;

    if-eqz v0, :cond_f1

    if-eqz v1, :cond_f1

    if-eqz v2, :cond_f1

    .line 558
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_7

    goto/16 :goto_4a

    :sswitch_50
    const-string/jumbo v3, "getURLFilterReportEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b9

    goto/16 :goto_4a

    :cond_b9
    const/16 v16, 0x3

    goto/16 :goto_4a

    :sswitch_51
    const-string/jumbo v3, "getURLFilterEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ba

    goto/16 :goto_4a

    :cond_ba
    const/16 v16, 0x2

    goto/16 :goto_4a

    :sswitch_52
    const-string/jumbo v3, "isGlobalProxyAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bb

    goto/16 :goto_4a

    :cond_bb
    const/16 v16, 0x1

    goto/16 :goto_4a

    :sswitch_53
    const-string/jumbo v3, "getURLFilterList"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bc

    goto/16 :goto_4a

    :cond_bc
    const/16 v16, 0x0

    :goto_4a
    packed-switch v16, :pswitch_data_8

    return-object v12

    .line 559
    :pswitch_57
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 560
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 561
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getURLFilterReportEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 562
    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4c

    :pswitch_58
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 563
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 564
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterEnabledEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Z

    move-result v0

    .line 565
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getURLFilterEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 566
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 567
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4c

    .line 568
    :pswitch_59
    invoke-virtual {v2}, Lcom/android/server/enterprise/general/MiscPolicy;->isGlobalProxyAllowed()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 569
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isGlobalProxyAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 570
    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_4c

    .line 571
    :pswitch_5a
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 572
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterListEnforcingFirewallPermission(Lcom/samsung/android/knox/ContextInfo;ZZ)Ljava/util/List;

    move-result-object v0

    .line 573
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getURLFilterList"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v0, :cond_bd

    .line 574
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_bd

    .line 575
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 576
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_4b

    :cond_bd
    :goto_4c
    return-object v1

    .line 577
    :cond_be
    const-string/jumbo v0, "certificate_policy"

    .line 578
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    if-eqz v0, :cond_f1

    if-eqz v1, :cond_f1

    .line 579
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_8

    :goto_4d
    move/from16 v13, v16

    goto/16 :goto_4e

    :sswitch_54
    const-string/jumbo v3, "isRevocationCheckEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bf

    goto :goto_4d

    :cond_bf
    const/4 v13, 0x4

    goto/16 :goto_4e

    :sswitch_55
    const-string/jumbo v3, "notifyCertificateFailure"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c0

    goto :goto_4d

    :cond_c0
    const/4 v13, 0x3

    goto/16 :goto_4e

    :sswitch_56
    const-string/jumbo v3, "isCaCertificateDisabledAsUser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c1

    goto :goto_4d

    :cond_c1
    const/4 v13, 0x2

    goto/16 :goto_4e

    :sswitch_57
    const-string/jumbo v3, "isUserRemoveCertificatesAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c2

    goto :goto_4d

    :cond_c2
    const/4 v13, 0x1

    goto/16 :goto_4e

    :sswitch_58
    const-string/jumbo v3, "isOcspCheckEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c3

    goto :goto_4d

    :cond_c3
    const/4 v13, 0x0

    :goto_4e
    packed-switch v13, :pswitch_data_9

    goto/16 :goto_52

    .line 580
    :pswitch_5b
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isRevocationCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 581
    new-instance v12, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isRevocationCheckEnabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 582
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 583
    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    :pswitch_5c
    if-eqz v2, :cond_c5

    .line 584
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    if-gt v1, v3, :cond_c4

    goto/16 :goto_4f

    :cond_c4
    const/4 v1, 0x0

    .line 585
    aget-object v1, v2, v1

    const/4 v4, 0x1

    aget-object v4, v2, v4

    aget-object v2, v2, v3

    .line 586
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 587
    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_52

    :cond_c5
    :goto_4f
    return-object v12

    :pswitch_5d
    if-eqz v2, :cond_c8

    .line 588
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_c6

    goto/16 :goto_50

    .line 589
    :cond_c6
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_c7

    .line 590
    aget-object v1, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    :cond_c7
    const/4 v1, 0x0

    .line 591
    aget-object v1, v2, v1

    invoke-virtual {v0, v1, v11}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateDisabledAsUser(Ljava/lang/String;I)Z

    move-result v0

    .line 592
    new-instance v12, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isCaCertificateDisabledAsUser"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 593
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 594
    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    :cond_c8
    :goto_50
    return-object v12

    :pswitch_5e
    if-eqz v2, :cond_c9

    .line 595
    array-length v1, v2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_c9

    const/4 v1, 0x0

    .line 596
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 597
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowedAsUser(I)Z

    move-result v0

    goto/16 :goto_51

    .line 598
    :cond_c9
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 599
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 600
    :goto_51
    new-instance v12, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isUserRemoveCertificatesAllowed"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 601
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 602
    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_52

    .line 603
    :pswitch_5f
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isOcspCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 604
    new-instance v12, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isOcspCheckEnabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 605
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 606
    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_52
    return-object v12

    .line 607
    :cond_ca
    invoke-static {v13}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/browser/BrowserPolicy;

    if-eqz v0, :cond_f1

    if-eqz v1, :cond_f1

    .line 608
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_9

    goto/16 :goto_53

    :sswitch_59
    const-string/jumbo v2, "getCookiesSetting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cb

    goto/16 :goto_53

    :cond_cb
    const/16 v16, 0x4

    goto/16 :goto_53

    :sswitch_5a
    const-string/jumbo v2, "getHttpProxy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cc

    goto/16 :goto_53

    :cond_cc
    const/16 v16, 0x3

    goto/16 :goto_53

    :sswitch_5b
    const-string/jumbo v2, "getJavaScriptSetting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cd

    goto/16 :goto_53

    :cond_cd
    const/16 v16, 0x2

    goto/16 :goto_53

    :sswitch_5c
    const-string/jumbo v2, "getAutoFillSetting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ce

    goto/16 :goto_53

    :cond_ce
    const/16 v16, 0x1

    goto/16 :goto_53

    :sswitch_5d
    const-string/jumbo v2, "getPopupsSetting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cf

    goto/16 :goto_53

    :cond_cf
    const/16 v16, 0x0

    :goto_53
    packed-switch v16, :pswitch_data_a

    return-object v12

    .line 609
    :pswitch_60
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 610
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getCookiesSetting"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 611
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 612
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    .line 613
    :pswitch_61
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getHttpProxy(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0

    .line 614
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getHttpProxy"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 615
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    .line 616
    :pswitch_62
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 617
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getJavaScriptSetting"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 618
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 619
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    .line 620
    :pswitch_63
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 621
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getAutoFillSetting"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 622
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 623
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_54

    .line 624
    :pswitch_64
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0

    .line 625
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "getPopupsSetting"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 626
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 627
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_54
    return-object v1

    :cond_d0
    move v3, v13

    if-eqz v1, :cond_f1

    .line 628
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_a

    :goto_55
    move/from16 v11, v16

    goto/16 :goto_56

    :sswitch_5e
    const-string/jumbo v0, "bluetoothLogForRemote"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d1

    goto :goto_55

    :cond_d1
    const/4 v11, 0x6

    goto/16 :goto_56

    :sswitch_5f
    const-string/jumbo v0, "bluetoothLogForDevice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d2

    goto :goto_55

    :cond_d2
    const/4 v11, 0x5

    goto/16 :goto_56

    :sswitch_60
    const-string/jumbo v0, "isPairingAllowedbySecurityPolicy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d3

    goto :goto_55

    :cond_d3
    move v11, v3

    goto/16 :goto_56

    :sswitch_61
    const-string/jumbo v0, "isHeadsetAllowedBySecurityPolicy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d4

    goto :goto_55

    :cond_d4
    const/4 v11, 0x3

    goto/16 :goto_56

    :sswitch_62
    const-string/jumbo v0, "isBluetoothLogEnabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d5

    goto :goto_55

    :cond_d5
    const/4 v11, 0x2

    goto/16 :goto_56

    :sswitch_63
    const-string/jumbo v0, "bluetoothLog"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d6

    goto :goto_55

    :cond_d6
    const/4 v11, 0x1

    goto/16 :goto_56

    :sswitch_64
    const-string/jumbo v0, "isProfileAuthorizedBySecurityPolicy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d7

    goto :goto_55

    :cond_d7
    const/4 v11, 0x0

    :goto_56
    packed-switch v11, :pswitch_data_b

    goto/16 :goto_5c

    :pswitch_65
    if-eqz v2, :cond_d9

    .line 629
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_d9

    .line 630
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v0

    if-nez v0, :cond_d8

    goto/16 :goto_57

    :cond_d8
    const/4 v0, 0x0

    .line 631
    aget-object v0, v2, v0

    const/4 v1, 0x1

    aget-object v1, v2, v1

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v0, v1, v2}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5c

    :cond_d9
    :goto_57
    return-object v12

    :pswitch_66
    if-eqz v2, :cond_dd

    .line 632
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x3

    if-lt v0, v4, :cond_dd

    .line 633
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v0

    if-nez v0, :cond_da

    goto/16 :goto_58

    :cond_da
    const/4 v0, 0x2

    .line 634
    aget-object v1, v2, v0

    if-nez v1, :cond_db

    const/4 v0, 0x0

    .line 635
    aget-object v0, v2, v0

    const/4 v1, 0x1

    aget-object v1, v2, v1

    .line 636
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 637
    invoke-static {v0, v1, v12}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_5c

    :cond_db
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 638
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    if-eqz v3, :cond_dc

    .line 639
    aget-object v0, v2, v0

    aget-object v1, v2, v1

    .line 640
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 641
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 642
    invoke-static {v0, v1, v2}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_5c

    .line 643
    :cond_dc
    const-string v0, "BluetoothAdapter is null"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5c

    :cond_dd
    :goto_58
    return-object v12

    :pswitch_67
    if-eqz v2, :cond_df

    .line 644
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_de

    goto/16 :goto_59

    :cond_de
    const/4 v0, 0x0

    .line 645
    aget-object v0, v2, v0

    invoke-static {v0}, Landroid/sec/enterprise/BluetoothUtils;->isPairingAllowedbySecurityPolicy(Ljava/lang/String;)Z

    move-result v0

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PAIRINGALLOWEDBYSECURITY = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    new-instance v12, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isPairingAllowedbySecurityPolicy"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 648
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 649
    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5c

    :cond_df
    :goto_59
    return-object v12

    :pswitch_68
    if-eqz v2, :cond_e1

    .line 650
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_e0

    goto/16 :goto_5a

    .line 651
    :cond_e0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 652
    invoke-static {v0}, Landroid/sec/enterprise/BluetoothUtils;->isHeadsetAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 653
    new-instance v12, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isHeadsetAllowedBySecurityPolicy"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 654
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 655
    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5c

    :cond_e1
    :goto_5a
    return-object v12

    .line 656
    :pswitch_69
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v0

    .line 657
    new-instance v12, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isBluetoothLogEnabled"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 658
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 659
    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5c

    :pswitch_6a
    if-eqz v2, :cond_e3

    .line 660
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x2

    if-lt v0, v5, :cond_e3

    .line 661
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v0

    if-nez v0, :cond_e2

    goto/16 :goto_5b

    :cond_e2
    const/4 v0, 0x0

    .line 662
    aget-object v0, v2, v0

    const/4 v6, 0x1

    aget-object v1, v2, v6

    invoke-static {v0, v1}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5c

    :cond_e3
    :goto_5b
    return-object v12

    :pswitch_6b
    if-eqz v2, :cond_e5

    .line 663
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_e4

    goto/16 :goto_5c

    :cond_e4
    const/4 v0, 0x0

    .line 664
    aget-object v0, v2, v0

    .line 665
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    .line 666
    invoke-static {v0}, Landroid/sec/enterprise/BluetoothUtils;->isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;)Z

    move-result v0

    .line 667
    new-instance v12, Landroid/database/MatrixCursor;

    const-string/jumbo v1, "isProfileAuthorizedBySecurityPolicy"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 668
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 669
    invoke-virtual {v12, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_e5
    :goto_5c
    return-object v12

    :cond_e6
    move v4, v13

    const/4 v3, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 670
    const-string/jumbo v0, "bluetooth_policy"

    .line 671
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    if-eqz v0, :cond_f1

    if-eqz v1, :cond_f1

    .line 672
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_b

    :goto_5d
    move/from16 v13, v16

    goto/16 :goto_5e

    :sswitch_65
    const-string/jumbo v4, "isOutgoingCallsAllowed"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e7

    goto :goto_5d

    :cond_e7
    move v13, v3

    goto/16 :goto_5e

    :sswitch_66
    const-string/jumbo v3, "isBLEAllowed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e8

    goto :goto_5d

    :cond_e8
    move v13, v4

    goto/16 :goto_5e

    :sswitch_67
    const-string/jumbo v3, "isDiscoverableEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e9

    goto :goto_5d

    :cond_e9
    move v13, v5

    goto/16 :goto_5e

    :sswitch_68
    const-string/jumbo v3, "isDesktopConnectivityEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ea

    goto :goto_5d

    :cond_ea
    move v13, v6

    goto/16 :goto_5e

    :sswitch_69
    const-string/jumbo v3, "isBluetoothEnabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_eb

    goto :goto_5d

    :cond_eb
    const/4 v13, 0x0

    :goto_5e
    packed-switch v13, :pswitch_data_c

    return-object v12

    :pswitch_6c
    if-eqz v2, :cond_ed

    .line 673
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_ec

    goto/16 :goto_5f

    :cond_ec
    const/4 v1, 0x0

    .line 674
    aget-object v1, v2, v1

    .line 675
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 676
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isOutgoingCallsAllowed(Z)Z

    move-result v0

    .line 677
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isOutgoingCallsAllowed = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isOutgoingCallsAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 679
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 680
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_61

    :cond_ed
    :goto_5f
    return-object v12

    .line 681
    :pswitch_6d
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBLEAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 682
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBLEAllowed"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 683
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 684
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_61

    .line 685
    :pswitch_6e
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDiscoverableEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 686
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isDiscoverableEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 687
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 688
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_61

    :pswitch_6f
    if-eqz v2, :cond_ef

    .line 689
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/content/SecContentProvider;->getArrayLength([Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_ee

    goto/16 :goto_60

    :cond_ee
    const/4 v1, 0x0

    .line 690
    aget-object v1, v2, v1

    .line 691
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 692
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDesktopConnectivityEnabled(Z)Z

    move-result v0

    .line 693
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isDesktopConnectivityEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 694
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 695
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_61

    :cond_ef
    :goto_60
    return-object v12

    .line 696
    :pswitch_70
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isBluetoothEnabled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    new-instance v1, Landroid/database/MatrixCursor;

    const-string/jumbo v2, "isBluetoothEnabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 699
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 700
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_61
    return-object v1

    .line 701
    :cond_f0
    const-string v0, "auditlog"

    .line 702
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-eqz v0, :cond_f1

    if-eqz v1, :cond_f1

    .line 703
    const-string/jumbo v2, "isAuditLogEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 704
    invoke-virtual {v0, v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledAsUser(I)Z

    move-result v0

    .line 705
    new-instance v1, Landroid/database/MatrixCursor;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 706
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Boolean;

    move-result-object v0

    .line 707
    invoke-virtual {v1, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_f1
    :goto_62
    return-object v12

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_43
        :pswitch_33
        :pswitch_24
        :pswitch_14
        :pswitch_5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x3edf31d1 -> :sswitch_2
        -0x15a386e9 -> :sswitch_1
        -0xc145ad8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x6a3a5990 -> :sswitch_10
        -0x562f9482 -> :sswitch_f
        -0x4e3d6d40 -> :sswitch_e
        -0x460411da -> :sswitch_d
        -0x39b5211e -> :sswitch_c
        -0x37226d22 -> :sswitch_b
        -0x30c133a0 -> :sswitch_a
        -0x28516cec -> :sswitch_9
        -0xebe1ca -> :sswitch_8
        0x12bbc810 -> :sswitch_7
        0x5f1771f4 -> :sswitch_6
        0x730fdeab -> :sswitch_5
        0x75020c0f -> :sswitch_4
        0x788dd2ce -> :sswitch_3
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x6c43a0eb -> :sswitch_1f
        -0x57f5d70e -> :sswitch_1e
        -0x55af2a6c -> :sswitch_1d
        -0x42b9a7be -> :sswitch_1c
        -0x3d0295e2 -> :sswitch_1b
        -0x331a660a -> :sswitch_1a
        -0x2873ac11 -> :sswitch_19
        -0x1ad99baa -> :sswitch_18
        -0x53b1dd2 -> :sswitch_17
        0x21990efc -> :sswitch_16
        0x3e90c48d -> :sswitch_15
        0x405a90ec -> :sswitch_14
        0x5bb25232 -> :sswitch_13
        0x6bef28f1 -> :sswitch_12
        0x7c45f31f -> :sswitch_11
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
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
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x74a4d725 -> :sswitch_2d
        -0x6c0db8af -> :sswitch_2c
        -0x694bd3d6 -> :sswitch_2b
        -0x553c4d53 -> :sswitch_2a
        -0x4d525a40 -> :sswitch_29
        -0x39e13355 -> :sswitch_28
        -0x2de531be -> :sswitch_27
        -0x1ab59b72 -> :sswitch_26
        -0xa2586fa -> :sswitch_25
        0x5be9d3d -> :sswitch_24
        0x26581d58 -> :sswitch_23
        0x36e6d3e0 -> :sswitch_22
        0x4bd14915 -> :sswitch_21
        0x6c3b6517 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x657fd646 -> :sswitch_3c
        -0x5d9fe8ab -> :sswitch_3b
        -0x5c7edb84 -> :sswitch_3a
        -0x4bfd3947 -> :sswitch_39
        -0x38cefab6 -> :sswitch_38
        -0x36978d55 -> :sswitch_37
        -0x34742384 -> :sswitch_36
        -0x2b582cae -> :sswitch_35
        0x3e05fd -> :sswitch_34
        0x7ed85f2 -> :sswitch_33
        0x2ea4b8a5 -> :sswitch_32
        0x3593cbd4 -> :sswitch_31
        0x4ef9c1f9 -> :sswitch_30
        0x71560275 -> :sswitch_2f
        0x77163a49 -> :sswitch_2e
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
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
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        -0x4e857510 -> :sswitch_44
        -0xe2e3396 -> :sswitch_43
        0x17f43207 -> :sswitch_42
        0x234b9a81 -> :sswitch_41
        0x48803b14 -> :sswitch_40
        0x4e20b298 -> :sswitch_3f
        0x65054427 -> :sswitch_3e
        0x75f9239b -> :sswitch_3d
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
    .end packed-switch

    :sswitch_data_6
    .sparse-switch
        -0x6a3a5990 -> :sswitch_4f
        -0x55af2a6c -> :sswitch_4e
        -0x4e3d6d40 -> :sswitch_4d
        -0x499d26f4 -> :sswitch_4c
        -0x414b3a47 -> :sswitch_4b
        -0x30c133a0 -> :sswitch_4a
        -0x2b582cae -> :sswitch_49
        -0x1ad99baa -> :sswitch_48
        0x5be9d3d -> :sswitch_47
        0x2be8dca6 -> :sswitch_46
        0x5bb25232 -> :sswitch_45
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x0
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
        :pswitch_4c
    .end packed-switch

    :sswitch_data_7
    .sparse-switch
        -0x7bb5f0b1 -> :sswitch_53
        -0x3ecb9a99 -> :sswitch_52
        0x3ba3e2f0 -> :sswitch_51
        0x6f38e3dc -> :sswitch_50
    .end sparse-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
    .end packed-switch

    :sswitch_data_8
    .sparse-switch
        -0x51cc33cc -> :sswitch_58
        -0x4d8cc16d -> :sswitch_57
        -0x3c036018 -> :sswitch_56
        -0x374aace4 -> :sswitch_55
        0x692685a1 -> :sswitch_54
    .end sparse-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
    .end packed-switch

    :sswitch_data_9
    .sparse-switch
        -0x67f870ad -> :sswitch_5d
        -0x499a7018 -> :sswitch_5c
        -0x364e80b3 -> :sswitch_5b
        0x9515810 -> :sswitch_5a
        0x78a801b7 -> :sswitch_59
    .end sparse-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
    .end packed-switch

    :sswitch_data_a
    .sparse-switch
        -0x74fa9afd -> :sswitch_64
        -0x5319be4a -> :sswitch_63
        -0x4ebf90df -> :sswitch_62
        -0x3ce44687 -> :sswitch_61
        -0x3a6a65ad -> :sswitch_60
        0x65788769 -> :sswitch_5f
        0x7d586159 -> :sswitch_5e
    .end sparse-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
    .end packed-switch

    :sswitch_data_b
    .sparse-switch
        -0x625ba203 -> :sswitch_69
        -0x11927f68 -> :sswitch_68
        0x52d2774 -> :sswitch_67
        0x3670f097 -> :sswitch_66
        0x6422cbe9 -> :sswitch_65
    .end sparse-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
    .end packed-switch
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
