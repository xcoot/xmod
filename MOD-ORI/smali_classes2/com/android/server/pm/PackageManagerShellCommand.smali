.class public final Lcom/android/server/pm/PackageManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ART_SERVICE_COMMANDS:Ljava/util/Set;

.field public static final RANDOM:Ljava/security/SecureRandom;

.field public static final SUPPORTED_PERMISSION_FLAGS:Ljava/util/Map;

.field public static final SUPPORTED_PERMISSION_FLAGS_LIST:Ljava/util/List;

.field public static final UNSUPPORTED_INSTALL_CMD_OPTS:Ljava/util/Set;

.field public static final UNSUPPORTED_SESSION_CREATE_OPTS:Ljava/util/Set;


# instance fields
.field public mBrief:Z

.field public mComponents:Z

.field public final mContext:Landroid/content/Context;

.field public final mDomainVerificationShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

.field public final mInterface:Landroid/content/pm/IPackageManager;

.field public final mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

.field public final mPermissionManager:Landroid/permission/PermissionManager;

.field public final mPm:Landroid/content/pm/PackageManagerInternal;

.field public mQueryFlags:I

.field public final mResourceCache:Ljava/util/WeakHashMap;

.field public mTargetUser:I

.field public final shellRestrictionsHelper:Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const-string v0, "--multi-package"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->UNSUPPORTED_INSTALL_CMD_OPTS:Ljava/util/Set;

    .line 8
    .line 9
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->UNSUPPORTED_SESSION_CREATE_OPTS:Ljava/util/Set;

    .line 14
    .line 15
    new-instance v0, Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->SUPPORTED_PERMISSION_FLAGS:Ljava/util/Map;

    .line 21
    .line 22
    const-string/jumbo v1, "review-required"

    .line 23
    .line 24
    .line 25
    const-string/jumbo v2, "revoked-compat"

    .line 26
    .line 27
    .line 28
    const-string/jumbo v3, "revoke-when-requested"

    .line 29
    .line 30
    .line 31
    const-string/jumbo v4, "user-fixed"

    .line 32
    .line 33
    .line 34
    const-string/jumbo v5, "user-set"

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2, v3, v4, v5}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    sput-object v6, Lcom/android/server/pm/PackageManagerShellCommand;->SUPPORTED_PERMISSION_FLAGS_LIST:Ljava/util/List;

    .line 42
    .line 43
    const/4 v6, 0x1

    .line 44
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    const/4 v5, 0x2

    .line 52
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    const/16 v4, 0x8

    .line 60
    .line 61
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    const/16 v2, 0x40

    .line 69
    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    const/16 v1, 0x80

    .line 78
    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    const-string/jumbo v11, "snapshot-profile"

    .line 87
    .line 88
    .line 89
    const-string v12, "art"

    .line 90
    .line 91
    const-string v4, "compile"

    .line 92
    .line 93
    const-string/jumbo v5, "reconcile-secondary-dex-files"

    .line 94
    .line 95
    .line 96
    const-string v6, "force-dex-opt"

    .line 97
    .line 98
    const-string v7, "bg-dexopt-job"

    .line 99
    .line 100
    const-string v8, "cancel-bg-dexopt-job"

    .line 101
    .line 102
    const-string v9, "delete-dexopt"

    .line 103
    .line 104
    const-string v10, "dump-profiles"

    .line 105
    .line 106
    invoke-static/range {v4 .. v12}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->ART_SERVICE_COMMANDS:Ljava/util/Set;

    .line 111
    .line 112
    new-instance v0, Ljava/security/SecureRandom;

    .line 113
    .line 114
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 115
    .line 116
    .line 117
    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->RANDOM:Ljava/security/SecureRandom;

    .line 118
    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/IPackageManager;Landroid/content/Context;Lcom/android/server/pm/verify/domain/DomainVerificationShell;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->shellRestrictionsHelper:Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 19
    .line 20
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPm:Landroid/content/pm/PackageManagerInternal;

    .line 29
    .line 30
    const-class p1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 39
    .line 40
    const-class p1, Landroid/permission/PermissionManager;

    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/permission/PermissionManager;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 49
    .line 50
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mDomainVerificationShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    .line 53
    .line 54
    return-void
.end method

.method public static enabledSettingToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_0

    .line 14
    .line 15
    const-string/jumbo p0, "unknown"

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    const-string p0, "disabled-until-used"

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    const-string p0, "disabled-user"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_2
    const-string p0, "disabled"

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_3
    const-string p0, "enabled"

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_4
    const-string p0, "default"

    .line 32
    .line 33
    return-object p0
.end method

.method public static getDataSizeDisplay(J)Ljava/lang/String;
    .locals 10

    .line 1
    long-to-double v0, p0

    .line 2
    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    .line 3
    .line 4
    div-double v2, v0, v2

    .line 5
    .line 6
    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    .line 7
    .line 8
    div-double v4, v0, v4

    .line 9
    .line 10
    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    .line 11
    .line 12
    div-double/2addr v0, v6

    .line 13
    new-instance v6, Ljava/text/DecimalFormat;

    .line 14
    .line 15
    const-string v7, "0.00"

    .line 16
    .line 17
    invoke-direct {v6, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 21
    .line 22
    cmpl-double v9, v0, v7

    .line 23
    .line 24
    if-lez v9, :cond_0

    .line 25
    .line 26
    invoke-virtual {v6, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, " Gb"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    cmpl-double v0, v4, v7

    .line 38
    .line 39
    if-lez v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v6, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, " Mb"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    cmpl-double v0, v2, v7

    .line 53
    .line 54
    if-lez v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {v6, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, " Kb"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const-string v0, ""

    .line 68
    .line 69
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_3

    .line 74
    .line 75
    const-string v1, " ("

    .line 76
    .line 77
    const-string v2, ")"

    .line 78
    .line 79
    invoke-static {v1, v0, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p0, " bytes"

    .line 96
    .line 97
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    return-object p0
.end method

.method public static printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    .locals 2

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    if-eqz p4, :cond_5

    .line 4
    .line 5
    :cond_0
    iget-object p3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 6
    .line 7
    if-eqz p3, :cond_1

    .line 8
    .line 9
    new-instance p3, Landroid/content/ComponentName;

    .line 10
    .line 11
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 12
    .line 13
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {p3, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object p3, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 22
    .line 23
    if-eqz p3, :cond_2

    .line 24
    .line 25
    new-instance p3, Landroid/content/ComponentName;

    .line 26
    .line 27
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 28
    .line 29
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 32
    .line 33
    invoke-direct {p3, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    iget-object p3, p2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 38
    .line 39
    if-eqz p3, :cond_3

    .line 40
    .line 41
    new-instance p3, Landroid/content/ComponentName;

    .line 42
    .line 43
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 44
    .line 45
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    .line 48
    .line 49
    invoke-direct {p3, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    const/4 p3, 0x0

    .line 54
    :goto_0
    if-eqz p3, :cond_5

    .line 55
    .line 56
    if-nez p4, :cond_4

    .line 57
    .line 58
    const-string/jumbo p4, "priority="

    .line 59
    .line 60
    .line 61
    invoke-static {p1, p4}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    move-result-object p4

    .line 65
    iget v0, p2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 66
    .line 67
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v0, " preferredOrder="

    .line 71
    .line 72
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget v0, p2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 76
    .line 77
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v0, " match=0x"

    .line 81
    .line 82
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget v0, p2, Landroid/content/pm/ResolveInfo;->match:I

    .line 86
    .line 87
    const-string v1, " specificIndex="

    .line 88
    .line 89
    invoke-static {v0, p4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget v0, p2, Landroid/content/pm/ResolveInfo;->specificIndex:I

    .line 93
    .line 94
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v0, " isDefault="

    .line 98
    .line 99
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-boolean p2, p2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 103
    .line 104
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {p0, p2}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_4
    invoke-static {p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p0, p1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_5
    invoke-virtual {p2, p0, p1}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public static printSession(Ljava/io/PrintWriter;Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V
    .locals 1

    .line 1
    iget-boolean p2, p2, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlySessionId:Z

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v0, "sessionId = "

    .line 16
    .line 17
    .line 18
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, "; appPackageName = "

    .line 29
    .line 30
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, "; isStaged = "

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, "; isReady = "

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, "; isApplied = "

    .line 65
    .line 66
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, "; isFailed = "

    .line 77
    .line 78
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v0, "; errorMsg = "

    .line 89
    .line 90
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getStagedSessionErrorMessage()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p1, ";"

    .line 101
    .line 102
    invoke-static {p2, p1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public static printSessionList(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_7

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 49
    .line 50
    iget-boolean v2, p2, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlyReady:Z

    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getParentSessionId()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    const/4 v3, -0x1

    .line 66
    if-eq v2, v3, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-static {p0, v1, p2}, Lcom/android/server/pm/PackageManagerShellCommand;->printSession(Ljava/io/PrintWriter;Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-eqz v2, :cond_1

    .line 77
    .line 78
    iget-boolean v2, p2, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlyParent:Z

    .line 79
    .line 80
    if-nez v2, :cond_1

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getChildSessionIds()[I

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const/4 v2, 0x0

    .line 90
    :goto_2
    array-length v3, v1

    .line 91
    if-ge v2, v3, :cond_6

    .line 92
    .line 93
    aget v3, v1, v2

    .line 94
    .line 95
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 100
    .line 101
    if-nez v3, :cond_5

    .line 102
    .line 103
    iget-boolean v3, p2, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlySessionId:Z

    .line 104
    .line 105
    if-eqz v3, :cond_4

    .line 106
    .line 107
    aget v3, v1, v2

    .line 108
    .line 109
    invoke-virtual {p0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string/jumbo v4, "sessionId = "

    .line 116
    .line 117
    .line 118
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    aget v4, v1, v2

    .line 122
    .line 123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v4, "; not found"

    .line 127
    .line 128
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {p0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_5
    invoke-static {p0, v3, p2}, Lcom/android/server/pm/PackageManagerShellCommand;->printSession(Ljava/io/PrintWriter;Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V

    .line 140
    .line 141
    .line 142
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_7
    return-void
.end method

.method public static translateUserId(IILjava/lang/String;)I
    .locals 8

    .line 1
    const/16 v0, -0x2710

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    :goto_0
    move v4, v0

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v5, 0x1

    .line 19
    const-string/jumbo v7, "pm command"

    .line 20
    .line 21
    .line 22
    move v3, p0

    .line 23
    move-object v6, p2

    .line 24
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    const/4 p2, -0x1

    .line 29
    if-ne p0, p2, :cond_1

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    move p1, p0

    .line 33
    :goto_2
    return p1
.end method


# virtual methods
.method public final displayPackageFilePath(ILjava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    const-wide/32 v1, 0x40000000

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, p2, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget-object p2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string/jumbo p2, "package:"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 27
    .line 28
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 34
    .line 35
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x0

    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 45
    .line 46
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 47
    .line 48
    array-length v0, p1

    .line 49
    move v2, v1

    .line 50
    :goto_0
    if-ge v2, v0, :cond_0

    .line 51
    .line 52
    aget-object v3, p1, v2

    .line 53
    .line 54
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    return v1

    .line 64
    :cond_1
    const/4 p0, 0x1

    .line 65
    return p0
.end method

.method public final doAbandonSession(IZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 9
    .line 10
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v2, p0}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    .line 20
    .line 21
    :try_start_1
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->abandon()V

    .line 22
    .line 23
    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    const-string p0, "Success"

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    move-object v1, v2

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_1
    move-exception p0

    .line 40
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public final doAddFiles(IJLjava/util/ArrayList;ZZ)I
    .locals 14

    .line 1
    move-object v1, p0

    .line 2
    move/from16 v0, p6

    .line 3
    .line 4
    const-string v2, "base"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    :try_start_0
    new-instance v12, Landroid/content/pm/PackageInstaller$Session;

    .line 9
    .line 10
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 11
    .line 12
    invoke-interface {v5}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    move v6, p1

    .line 17
    invoke-interface {v5, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-direct {v12, v5}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    .line 23
    .line 24
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    const/4 v13, 0x0

    .line 29
    const-string v6, "-"

    .line 30
    .line 31
    if-nez v5, :cond_5

    .line 32
    .line 33
    move-object/from16 v5, p4

    .line 34
    .line 35
    :try_start_2
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_4

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Ljava/lang/String;

    .line 61
    .line 62
    const/16 v5, 0x3a

    .line 63
    .line 64
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    const/4 v6, -0x1

    .line 69
    if-eq v5, v6, :cond_3

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v2, "Error: can\'t install with size from STDIN for Archival install"

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    .line 81
    .line 82
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 83
    .line 84
    .line 85
    return v4

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    move-object v3, v12

    .line 88
    goto/16 :goto_5

    .line 89
    .line 90
    :catch_0
    move-exception v0

    .line 91
    move-object v3, v12

    .line 92
    goto :goto_4

    .line 93
    :cond_2
    :try_start_3
    invoke-virtual {p0, v3, v12}, Lcom/android/server/pm/PackageManagerShellCommand;->processArgForStdin(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;)I

    .line 94
    .line 95
    .line 96
    move-result v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    if-eqz v3, :cond_1

    .line 98
    .line 99
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 100
    .line 101
    .line 102
    return v4

    .line 103
    :cond_3
    :try_start_4
    invoke-virtual {p0, v3, v12, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->processArgForLocalFile(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;Z)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 108
    .line 109
    .line 110
    return v13

    .line 111
    :cond_5
    :goto_1
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    sget-object v2, Lcom/android/server/pm/PackageManagerShellCommand;->RANDOM:Ljava/security/SecureRandom;

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    const-string v2, "."

    .line 126
    .line 127
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    if-eqz p5, :cond_6

    .line 131
    .line 132
    const-string v2, "apex"

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_6
    const-string v2, "apk"

    .line 136
    .line 137
    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    if-nez v0, :cond_7

    .line 145
    .line 146
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    .line 147
    .line 148
    invoke-direct {v0, v13, v7, v3}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    move-wide/from16 v8, p2

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_7
    move-wide/from16 v2, p2

    .line 155
    .line 156
    invoke-virtual {p0, v2, v3, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->getArchivedPackage(JLjava/lang/String;)Landroid/content/pm/ArchivedPackageParcel;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forArchived(Landroid/content/pm/ArchivedPackageParcel;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const-wide/16 v2, -0x1

    .line 165
    .line 166
    move-wide v8, v2

    .line 167
    :goto_3
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->toByteArray()[B

    .line 168
    .line 169
    .line 170
    move-result-object v10

    .line 171
    const/4 v11, 0x0

    .line 172
    const/4 v6, 0x0

    .line 173
    move-object v5, v12

    .line 174
    invoke-virtual/range {v5 .. v11}, Landroid/content/pm/PackageInstaller$Session;->addFile(ILjava/lang/String;J[B[B)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 175
    .line 176
    .line 177
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 178
    .line 179
    .line 180
    return v13

    .line 181
    :catchall_1
    move-exception v0

    .line 182
    goto :goto_5

    .line 183
    :catch_1
    move-exception v0

    .line 184
    :goto_4
    :try_start_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    new-instance v5, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    const-string v6, "Failed to add file(s), reason: "

    .line 194
    .line 195
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    const-string v1, "Failure [failed to add file(s)]"

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 215
    .line 216
    .line 217
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 218
    .line 219
    .line 220
    return v4

    .line 221
    :goto_5
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 222
    .line 223
    .line 224
    throw v0
.end method

.method public final doCommitSession(I)I
    .locals 6

    .line 1
    const-string v0, "Failure ["

    .line 2
    .line 3
    const-string v1, "Warning [Could not validate the dex paths: "

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x0

    .line 10
    :try_start_0
    new-instance v4, Landroid/content/pm/PackageInstaller$Session;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 13
    .line 14
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-direct {v4, p0}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    .line 24
    .line 25
    :try_start_1
    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$Session;->isMultiPackage()Z

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    const-string p1, "]"

    .line 30
    .line 31
    if-nez p0, :cond_0

    .line 32
    .line 33
    :try_start_2
    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$Session;->isStaged()Z

    .line 34
    .line 35
    .line 36
    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    if-nez p0, :cond_0

    .line 38
    .line 39
    :try_start_3
    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$Session;->getNames()[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0}, Landroid/content/pm/dex/DexMetadataHelper;->validateDexPaths([Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    move-object v3, v4

    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :catch_0
    move-exception p0

    .line 52
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_0
    :goto_0
    new-instance p0, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    .line 75
    .line 76
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$Session;->isStaged()Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_4

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    const-string v1, "android.content.pm.extra.STATUS"

    .line 97
    .line 98
    const/4 v3, 0x1

    .line 99
    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    const-string v5, "android.content.pm.extra.WARNINGS"

    .line 104
    .line 105
    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    if-nez v1, :cond_2

    .line 110
    .line 111
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 112
    .line 113
    .line 114
    move-result p0

    .line 115
    if-nez p0, :cond_3

    .line 116
    .line 117
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_1

    .line 126
    .line 127
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Ljava/lang/String;

    .line 132
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v1, "Warning: "

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_1
    const-string p0, "Completed with warning(s)"

    .line 155
    .line 156
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const-string v0, "android.content.pm.extra.STATUS_MESSAGE"

    .line 166
    .line 167
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 182
    .line 183
    .line 184
    :cond_3
    move v3, v1

    .line 185
    :goto_2
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 186
    .line 187
    .line 188
    return v3

    .line 189
    :cond_4
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 190
    .line 191
    .line 192
    const/4 p0, 0x0

    .line 193
    return p0

    .line 194
    :catchall_1
    move-exception p0

    .line 195
    :goto_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 196
    .line 197
    .line 198
    throw p0
.end method

.method public final doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ne p3, v0, :cond_0

    .line 3
    .line 4
    iget v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x40

    .line 7
    .line 8
    iput v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    const-string v1, "doCreateSession"

    .line 12
    .line 13
    invoke-static {p3, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 18
    .line 19
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-interface {p0, p1, p2, v0, p3}, Landroid/content/pm/IPackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    return p0
.end method

.method public final doListPermissions(Ljava/util/ArrayList;ZZZII)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x0

    .line 14
    move v5, v4

    .line 15
    :goto_0
    if-ge v5, v3, :cond_14

    .line 16
    .line 17
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v6

    .line 21
    check-cast v6, Ljava/lang/String;

    .line 22
    .line 23
    const-string v7, "  description:"

    .line 24
    .line 25
    const-string v8, "  label:"

    .line 26
    .line 27
    const-string v9, "  package:"

    .line 28
    .line 29
    const-string v10, "+ "

    .line 30
    .line 31
    const-string v11, ""

    .line 32
    .line 33
    if-eqz p2, :cond_7

    .line 34
    .line 35
    if-lez v5, :cond_0

    .line 36
    .line 37
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    if-eqz v6, :cond_4

    .line 41
    .line 42
    iget-object v12, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 43
    .line 44
    invoke-interface {v12, v6, v4}, Landroid/content/pm/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v12

    .line 48
    if-eqz p4, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0, v12}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v13

    .line 54
    const-string v14, ": "

    .line 55
    .line 56
    if-eqz v13, :cond_1

    .line 57
    .line 58
    new-instance v13, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    iget v15, v12, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    .line 64
    .line 65
    iget-object v4, v12, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 66
    .line 67
    invoke-virtual {v0, v12, v15, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto/16 :goto_3

    .line 85
    .line 86
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    iget-object v12, v12, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_3

    .line 107
    .line 108
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    if-eqz p3, :cond_3

    .line 114
    .line 115
    move-object v13, v10

    .line 116
    goto :goto_1

    .line 117
    :cond_3
    move-object v13, v11

    .line 118
    :goto_1
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v13, "group:"

    .line 122
    .line 123
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-object v13, v12, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    .line 127
    .line 128
    invoke-static {v4, v13, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 129
    .line 130
    .line 131
    if-eqz p3, :cond_6

    .line 132
    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v13, v12, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v12}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    if-eqz v4, :cond_6

    .line 155
    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget v13, v12, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    .line 162
    .line 163
    iget-object v14, v12, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 164
    .line 165
    invoke-virtual {v0, v12, v13, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v13

    .line 169
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v4

    .line 176
    invoke-static {v2, v4, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    iget v13, v12, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 181
    .line 182
    iget-object v14, v12, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 183
    .line 184
    invoke-virtual {v0, v12, v13, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v12

    .line 188
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 200
    .line 201
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .line 203
    .line 204
    if-eqz p3, :cond_5

    .line 205
    .line 206
    if-nez p4, :cond_5

    .line 207
    .line 208
    move-object v12, v10

    .line 209
    goto :goto_2

    .line 210
    :cond_5
    move-object v12, v11

    .line 211
    :goto_2
    const-string/jumbo v13, "ungrouped:"

    .line 212
    .line 213
    .line 214
    invoke-static {v2, v12, v13, v4}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 215
    .line 216
    .line 217
    :cond_6
    :goto_3
    const-string v4, "  "

    .line 218
    .line 219
    goto :goto_4

    .line 220
    :cond_7
    move-object v4, v11

    .line 221
    :goto_4
    iget-object v12, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 222
    .line 223
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v13

    .line 227
    check-cast v13, Ljava/lang/String;

    .line 228
    .line 229
    const/4 v14, 0x0

    .line 230
    invoke-virtual {v12, v13, v14}, Landroid/permission/PermissionManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    .line 231
    .line 232
    .line 233
    move-result-object v12

    .line 234
    if-nez v12, :cond_8

    .line 235
    .line 236
    move v13, v14

    .line 237
    goto :goto_5

    .line 238
    :cond_8
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 239
    .line 240
    .line 241
    move-result v13

    .line 242
    :goto_5
    const/4 v15, 0x1

    .line 243
    :goto_6
    if-ge v14, v13, :cond_12

    .line 244
    .line 245
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v16

    .line 249
    move-object/from16 v1, v16

    .line 250
    .line 251
    check-cast v1, Landroid/content/pm/PermissionInfo;

    .line 252
    .line 253
    if-eqz p2, :cond_9

    .line 254
    .line 255
    if-nez v6, :cond_9

    .line 256
    .line 257
    move/from16 v16, v3

    .line 258
    .line 259
    iget-object v3, v1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 260
    .line 261
    if-eqz v3, :cond_a

    .line 262
    .line 263
    move-object/from16 v17, v6

    .line 264
    .line 265
    goto :goto_8

    .line 266
    :cond_9
    move/from16 v16, v3

    .line 267
    .line 268
    :cond_a
    iget v3, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 269
    .line 270
    and-int/lit8 v3, v3, 0xf

    .line 271
    .line 272
    move-object/from16 v17, v6

    .line 273
    .line 274
    move/from16 v6, p5

    .line 275
    .line 276
    if-lt v3, v6, :cond_e

    .line 277
    .line 278
    move/from16 v6, p6

    .line 279
    .line 280
    if-le v3, v6, :cond_b

    .line 281
    .line 282
    goto :goto_8

    .line 283
    :cond_b
    if-eqz p4, :cond_f

    .line 284
    .line 285
    if-eqz v15, :cond_c

    .line 286
    .line 287
    const/4 v15, 0x0

    .line 288
    goto :goto_7

    .line 289
    :cond_c
    const-string v3, ", "

    .line 290
    .line 291
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    :goto_7
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    if-eqz v3, :cond_d

    .line 299
    .line 300
    iget v3, v1, Landroid/content/pm/PermissionInfo;->labelRes:I

    .line 301
    .line 302
    iget-object v6, v1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 303
    .line 304
    invoke-virtual {v0, v1, v3, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    goto :goto_8

    .line 312
    :cond_d
    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 313
    .line 314
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    :cond_e
    :goto_8
    move-object/from16 v18, v8

    .line 318
    .line 319
    goto/16 :goto_b

    .line 320
    .line 321
    :cond_f
    invoke-static {v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    move-result-object v3

    .line 325
    if-eqz p3, :cond_10

    .line 326
    .line 327
    move-object v6, v10

    .line 328
    goto :goto_9

    .line 329
    :cond_10
    move-object v6, v11

    .line 330
    :goto_9
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    const-string/jumbo v6, "permission:"

    .line 334
    .line 335
    .line 336
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    iget-object v6, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 340
    .line 341
    invoke-static {v3, v6, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 342
    .line 343
    .line 344
    if-eqz p3, :cond_e

    .line 345
    .line 346
    invoke-static {v4, v9}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    iget-object v6, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    if-eqz v3, :cond_11

    .line 367
    .line 368
    invoke-static {v4, v8}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    iget v6, v1, Landroid/content/pm/PermissionInfo;->labelRes:I

    .line 373
    .line 374
    move-object/from16 v18, v8

    .line 375
    .line 376
    iget-object v8, v1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 377
    .line 378
    invoke-virtual {v0, v1, v6, v8}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v6

    .line 382
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v3

    .line 389
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    iget v6, v1, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 404
    .line 405
    iget-object v8, v1, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 406
    .line 407
    invoke-virtual {v0, v1, v6, v8}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v6

    .line 411
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v3

    .line 418
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    goto :goto_a

    .line 422
    :cond_11
    move-object/from16 v18, v8

    .line 423
    .line 424
    :goto_a
    const-string v3, "  protectionLevel:"

    .line 425
    .line 426
    invoke-static {v4, v3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 431
    .line 432
    invoke-static {v1}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    :goto_b
    add-int/lit8 v14, v14, 0x1

    .line 447
    .line 448
    move-object/from16 v1, p1

    .line 449
    .line 450
    move/from16 v3, v16

    .line 451
    .line 452
    move-object/from16 v6, v17

    .line 453
    .line 454
    move-object/from16 v8, v18

    .line 455
    .line 456
    goto/16 :goto_6

    .line 457
    .line 458
    :cond_12
    move/from16 v16, v3

    .line 459
    .line 460
    if-eqz p4, :cond_13

    .line 461
    .line 462
    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    :cond_13
    add-int/lit8 v5, v5, 0x1

    .line 466
    .line 467
    move-object/from16 v1, p1

    .line 468
    .line 469
    move/from16 v3, v16

    .line 470
    .line 471
    const/4 v4, 0x0

    .line 472
    goto/16 :goto_0

    .line 473
    .line 474
    :cond_14
    return-void
.end method

.method public final doRemoveSplits(ILjava/util/Collection;Z)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 9
    .line 10
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v2, p0}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    .line 20
    .line 21
    :try_start_1
    check-cast p2, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageInstaller$Session;->removeSplit(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    move-object v1, v2

    .line 45
    goto :goto_2

    .line 46
    :catch_0
    move-exception p0

    .line 47
    move-object v1, v2

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    if-eqz p3, :cond_1

    .line 50
    .line 51
    const-string p0, "Success"

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 57
    .line 58
    .line 59
    const/4 p0, 0x0

    .line 60
    return p0

    .line 61
    :catchall_1
    move-exception p0

    .line 62
    goto :goto_2

    .line 63
    :catch_1
    move-exception p0

    .line 64
    :goto_1
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string p2, "Error: failed to remove split; "

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    .line 87
    .line 88
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 89
    .line 90
    .line 91
    const/4 p0, 0x1

    .line 92
    return p0

    .line 93
    :goto_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 94
    .line 95
    .line 96
    throw p0
.end method

.method public final doRunInstall(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)I
    .locals 30

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 6
    .line 7
    .line 8
    move-result-object v9

    .line 9
    iget v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    const/4 v10, 0x1

    .line 13
    if-eq v1, v2, :cond_0

    .line 14
    .line 15
    const/4 v2, -0x2

    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    .line 19
    .line 20
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    const-string v0, "Failure [user "

    .line 33
    .line 34
    const-string v2, " doesn\'t exist]"

    .line 35
    .line 36
    invoke-static {v1, v9, v0, v2}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v10

    .line 40
    :cond_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 41
    .line 42
    iget-object v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 43
    .line 44
    const/4 v11, 0x0

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    move v2, v10

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v2, v11

    .line 50
    :goto_0
    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 51
    .line 52
    const/high16 v3, 0x20000

    .line 53
    .line 54
    and-int/2addr v3, v1

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    move v12, v10

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move v12, v11

    .line 60
    :goto_1
    const/high16 v3, 0x8000000

    .line 61
    .line 62
    and-int/2addr v1, v3

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    move v7, v10

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    move v7, v11

    .line 68
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    const-string v3, "-"

    .line 77
    .line 78
    if-nez v1, :cond_5

    .line 79
    .line 80
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_4

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_4
    move v1, v11

    .line 92
    goto :goto_4

    .line 93
    :cond_5
    :goto_3
    move v1, v10

    .line 94
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 95
    .line 96
    .line 97
    move-result v4

    .line 98
    if-le v4, v10, :cond_6

    .line 99
    .line 100
    move v4, v10

    .line 101
    goto :goto_5

    .line 102
    :cond_6
    move v4, v11

    .line 103
    :goto_5
    const-wide/16 v13, -0x1

    .line 104
    .line 105
    if-eqz v1, :cond_7

    .line 106
    .line 107
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 108
    .line 109
    move/from16 v16, v12

    .line 110
    .line 111
    iget-wide v11, v6, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 112
    .line 113
    cmp-long v6, v11, v13

    .line 114
    .line 115
    if-nez v6, :cond_8

    .line 116
    .line 117
    const-string v0, "Error: must either specify a package size or an APK file"

    .line 118
    .line 119
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return v10

    .line 123
    :cond_7
    move/from16 v16, v12

    .line 124
    .line 125
    :cond_8
    if-eqz v16, :cond_9

    .line 126
    .line 127
    if-eqz v4, :cond_9

    .line 128
    .line 129
    const-string v0, "Error: can\'t specify SPLIT(s) for APEX"

    .line 130
    .line 131
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    return v10

    .line 135
    :cond_9
    if-eqz v7, :cond_a

    .line 136
    .line 137
    if-eqz v4, :cond_a

    .line 138
    .line 139
    const-string v0, "Error: can\'t have SPLIT(s) for Archival install"

    .line 140
    .line 141
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return v10

    .line 145
    :cond_a
    if-nez v2, :cond_11

    .line 146
    .line 147
    if-eqz v1, :cond_b

    .line 148
    .line 149
    if-eqz v4, :cond_b

    .line 150
    .line 151
    const-string v0, "Error: can\'t specify SPLIT(s) along with STDIN"

    .line 152
    .line 153
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return v10

    .line 157
    :cond_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_c

    .line 162
    .line 163
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    goto/16 :goto_9

    .line 167
    .line 168
    :cond_c
    const-string v1, "Error: Failed to parse APK file: "

    .line 169
    .line 170
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 171
    .line 172
    iget-wide v11, v4, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 173
    .line 174
    cmp-long v4, v11, v13

    .line 175
    .line 176
    if-nez v4, :cond_11

    .line 177
    .line 178
    const/4 v4, 0x0

    .line 179
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-eqz v3, :cond_d

    .line 188
    .line 189
    goto/16 :goto_9

    .line 190
    .line 191
    :cond_d
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    const-wide/16 v11, 0x0

    .line 200
    .line 201
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    if-eqz v6, :cond_10

    .line 206
    .line 207
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    check-cast v6, Ljava/lang/String;

    .line 212
    .line 213
    const-string/jumbo v13, "r"

    .line 214
    .line 215
    .line 216
    invoke-virtual {v8, v6, v13}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 217
    .line 218
    .line 219
    move-result-object v13

    .line 220
    if-eqz v13, :cond_f

    .line 221
    .line 222
    :try_start_0
    invoke-virtual {v3}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    .line 223
    .line 224
    .line 225
    move-result-object v14

    .line 226
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 227
    .line 228
    .line 229
    move-result-object v15

    .line 230
    const/4 v10, 0x0

    .line 231
    invoke-static {v14, v15, v6, v10}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    .line 232
    .line 233
    .line 234
    move-result-object v14

    .line 235
    invoke-interface {v14}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    .line 236
    .line 237
    .line 238
    move-result v10

    .line 239
    if-nez v10, :cond_e

    .line 240
    .line 241
    invoke-interface {v14}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v10

    .line 245
    move-object/from16 v20, v10

    .line 246
    .line 247
    check-cast v20, Landroid/content/pm/parsing/ApkLite;

    .line 248
    .line 249
    new-instance v10, Landroid/content/pm/parsing/PackageLite;

    .line 250
    .line 251
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/parsing/ApkLite;->getPath()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v19

    .line 255
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/parsing/ApkLite;->getTargetSdkVersion()I

    .line 256
    .line 257
    .line 258
    move-result v27

    .line 259
    const/16 v23, 0x0

    .line 260
    .line 261
    const/16 v24, 0x0

    .line 262
    .line 263
    const/16 v25, 0x0

    .line 264
    .line 265
    const/16 v26, 0x0

    .line 266
    .line 267
    const/16 v28, 0x0

    .line 268
    .line 269
    const/16 v29, 0x0

    .line 270
    .line 271
    const/16 v18, 0x0

    .line 272
    .line 273
    const/16 v21, 0x0

    .line 274
    .line 275
    const/16 v22, 0x0

    .line 276
    .line 277
    move-object/from16 v17, v10

    .line 278
    .line 279
    invoke-direct/range {v17 .. v29}, Landroid/content/pm/parsing/PackageLite;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II[Ljava/util/Set;[Ljava/util/Set;)V

    .line 280
    .line 281
    .line 282
    iget-object v14, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 283
    .line 284
    iget-object v14, v14, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 285
    .line 286
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 287
    .line 288
    .line 289
    move-result-object v15

    .line 290
    invoke-static {v10, v14, v15}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/io/FileDescriptor;)J

    .line 291
    .line 292
    .line 293
    move-result-wide v14
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    add-long/2addr v11, v14

    .line 295
    :try_start_1
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 296
    .line 297
    .line 298
    :catch_0
    const/4 v10, 0x1

    .line 299
    goto :goto_6

    .line 300
    :catchall_0
    move-exception v0

    .line 301
    goto :goto_8

    .line 302
    :catch_1
    move-exception v0

    .line 303
    goto :goto_7

    .line 304
    :cond_e
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 305
    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    const-string v3, ": "

    .line 318
    .line 319
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-interface {v14}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v3

    .line 326
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    invoke-interface {v14}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    invoke-direct {v0, v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 338
    .line 339
    .line 340
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 341
    :goto_7
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 342
    .line 343
    .line 344
    move-result-object v2

    .line 345
    new-instance v3, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 364
    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    .line 382
    .line 383
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 384
    :goto_8
    :try_start_4
    invoke-virtual {v13}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 385
    .line 386
    .line 387
    :catch_2
    throw v0

    .line 388
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    const-string v2, "Error: Can\'t open file: "

    .line 395
    .line 396
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 410
    .line 411
    invoke-static {v2, v6}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 416
    .line 417
    .line 418
    throw v0

    .line 419
    :cond_10
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 420
    .line 421
    invoke-virtual {v1, v11, v12}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    .line 422
    .line 423
    .line 424
    :cond_11
    :goto_9
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 425
    .line 426
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 427
    .line 428
    iget v4, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    .line 429
    .line 430
    invoke-virtual {v8, v1, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    .line 431
    .line 432
    .line 433
    move-result v10

    .line 434
    if-eqz v2, :cond_12

    .line 435
    .line 436
    :try_start_5
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 437
    .line 438
    iget-wide v3, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 439
    .line 440
    move-object/from16 v1, p0

    .line 441
    .line 442
    move v2, v10

    .line 443
    move/from16 v6, v16

    .line 444
    .line 445
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerShellCommand;->doAddFiles(IJLjava/util/ArrayList;ZZ)I

    .line 446
    .line 447
    .line 448
    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 449
    if-eqz v1, :cond_17

    .line 450
    .line 451
    const/4 v1, 0x0

    .line 452
    :try_start_6
    invoke-virtual {v8, v10, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 453
    .line 454
    .line 455
    :catch_3
    const/4 v1, 0x1

    .line 456
    return v1

    .line 457
    :catchall_1
    move-exception v0

    .line 458
    const/4 v1, 0x1

    .line 459
    goto/16 :goto_e

    .line 460
    .line 461
    :cond_12
    :try_start_7
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 462
    .line 463
    iget-wide v11, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    .line 464
    .line 465
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    const/4 v2, 0x1

    .line 470
    if-le v1, v2, :cond_13

    .line 471
    .line 472
    const/4 v13, 0x1

    .line 473
    goto :goto_a

    .line 474
    :cond_13
    const/4 v13, 0x0

    .line 475
    :goto_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 476
    .line 477
    .line 478
    move-result-object v14

    .line 479
    :cond_14
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 480
    .line 481
    .line 482
    move-result v1

    .line 483
    if-eqz v1, :cond_17

    .line 484
    .line 485
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    move-object v3, v1

    .line 490
    check-cast v3, Ljava/lang/String;

    .line 491
    .line 492
    if-eqz v13, :cond_15

    .line 493
    .line 494
    new-instance v1, Ljava/io/File;

    .line 495
    .line 496
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    :goto_b
    move-object v6, v1

    .line 504
    goto :goto_d

    .line 505
    :cond_15
    if-eqz v16, :cond_16

    .line 506
    .line 507
    const-string v1, "apex"

    .line 508
    .line 509
    goto :goto_c

    .line 510
    :cond_16
    const-string v1, "apk"

    .line 511
    .line 512
    :goto_c
    const-string v2, "base."

    .line 513
    .line 514
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    goto :goto_b

    .line 519
    :goto_d
    const/4 v7, 0x0

    .line 520
    move-object/from16 v1, p0

    .line 521
    .line 522
    move v2, v10

    .line 523
    move-wide v4, v11

    .line 524
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I

    .line 525
    .line 526
    .line 527
    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 528
    if-eqz v1, :cond_14

    .line 529
    .line 530
    const/4 v1, 0x0

    .line 531
    :try_start_8
    invoke-virtual {v8, v10, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 532
    .line 533
    .line 534
    :catch_4
    const/4 v1, 0x1

    .line 535
    return v1

    .line 536
    :cond_17
    :try_start_9
    invoke-virtual {v8, v10}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(I)I

    .line 537
    .line 538
    .line 539
    move-result v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 540
    if-eqz v1, :cond_18

    .line 541
    .line 542
    const/4 v1, 0x0

    .line 543
    :try_start_a
    invoke-virtual {v8, v10, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 544
    .line 545
    .line 546
    :catch_5
    const/4 v1, 0x1

    .line 547
    return v1

    .line 548
    :cond_18
    :try_start_b
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 549
    .line 550
    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 551
    .line 552
    if-eqz v1, :cond_19

    .line 553
    .line 554
    iget-wide v0, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->stagedReadyTimeoutMs:J

    .line 555
    .line 556
    const-wide/16 v2, 0x0

    .line 557
    .line 558
    cmp-long v2, v0, v2

    .line 559
    .line 560
    if-lez v2, :cond_19

    .line 561
    .line 562
    invoke-virtual {v8, v10, v0, v1, v9}, Lcom/android/server/pm/PackageManagerShellCommand;->doWaitForStagedSessionReady(IJLjava/io/PrintWriter;)I

    .line 563
    .line 564
    .line 565
    move-result v0

    .line 566
    return v0

    .line 567
    :catchall_2
    move-exception v0

    .line 568
    const/4 v1, 0x0

    .line 569
    goto :goto_e

    .line 570
    :cond_19
    const-string v0, "Success"

    .line 571
    .line 572
    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 573
    .line 574
    .line 575
    const/4 v1, 0x0

    .line 576
    return v1

    .line 577
    :goto_e
    if-eqz v1, :cond_1a

    .line 578
    .line 579
    const/4 v1, 0x0

    .line 580
    :try_start_c
    invoke-virtual {v8, v10, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 581
    .line 582
    .line 583
    :catch_6
    :cond_1a
    throw v0
.end method

.method public final doWaitForStagedSessionReady(IJLjava/io/PrintWriter;)I
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p2, v0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 16
    .line 17
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v3, "]"

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    const-string p0, "Failure [Unknown session "

    .line 30
    .line 31
    invoke-static {p1, p4, p0, v3}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return v2

    .line 35
    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_2

    .line 40
    .line 41
    const-string p0, "Failure [Session "

    .line 42
    .line 43
    const-string p2, " is not a staged session]"

    .line 44
    .line 45
    invoke-static {p1, p4, p0, p2}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return v2

    .line 49
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    add-long v6, v4, p2

    .line 54
    .line 55
    :goto_1
    if-eqz v0, :cond_4

    .line 56
    .line 57
    cmp-long v8, v4, v6

    .line 58
    .line 59
    if-gez v8, :cond_4

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    if-nez v8, :cond_4

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    if-eqz v8, :cond_3

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_3
    sub-long v4, v6, v4

    .line 75
    .line 76
    const-wide/16 v8, 0x64

    .line 77
    .line 78
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 79
    .line 80
    .line 81
    move-result-wide v4

    .line 82
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 83
    .line 84
    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 90
    .line 91
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    goto :goto_1

    .line 100
    :cond_4
    :goto_2
    if-nez v0, :cond_5

    .line 101
    .line 102
    const-string p0, "Failure [failed to retrieve SessionInfo]"

    .line 103
    .line 104
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return v2

    .line 108
    :cond_5
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-nez p0, :cond_6

    .line 113
    .line 114
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-nez p0, :cond_6

    .line 119
    .line 120
    new-instance p0, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string p1, "Failure [timed out after "

    .line 123
    .line 124
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string p1, " ms]"

    .line 131
    .line 132
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    return v2

    .line 143
    :cond_6
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    .line 144
    .line 145
    .line 146
    move-result p0

    .line 147
    if-nez p0, :cond_7

    .line 148
    .line 149
    new-instance p0, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string p1, "Error ["

    .line 152
    .line 153
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getStagedSessionErrorCode()I

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string p1, "] ["

    .line 164
    .line 165
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getStagedSessionErrorMessage()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    return v2

    .line 186
    :cond_7
    const-string p0, "Success. Reboot device to apply staged session"

    .line 187
    .line 188
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    return v1
.end method

.method public final doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I
    .locals 14

    .line 1
    move-object v1, p0

    .line 2
    const-string v2, "Error: failed to write; "

    .line 3
    .line 4
    const-string v0, "Success: streamed "

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_0
    new-instance v11, Landroid/content/pm/PackageInstaller$Session;

    .line 8
    .line 9
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 10
    .line 11
    invoke-interface {v4}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    move v5, p1

    .line 16
    invoke-interface {v4, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-direct {v11, v4}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    .line 22
    .line 23
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    move-object/from16 v4, p2

    .line 28
    .line 29
    move-wide/from16 v5, p3

    .line 30
    .line 31
    invoke-virtual {p0, v5, v6, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->openInFile(JLjava/lang/String;)Landroid/util/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 36
    .line 37
    if-nez v5, :cond_0

    .line 38
    .line 39
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Ljava/lang/Long;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 44
    .line 45
    .line 46
    move-result-wide v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    long-to-int v0, v0

    .line 48
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 49
    .line 50
    .line 51
    return v0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    move-object v3, v11

    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    move-object v3, v11

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    :try_start_2
    move-object v10, v5

    .line 59
    check-cast v10, Landroid/os/ParcelFileDescriptor;

    .line 60
    .line 61
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v4, Ljava/lang/Long;

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 66
    .line 67
    .line 68
    move-result-wide v12

    .line 69
    const-wide/16 v6, 0x0

    .line 70
    .line 71
    move-object v4, v11

    .line 72
    move-object/from16 v5, p5

    .line 73
    .line 74
    move-wide v8, v12

    .line 75
    invoke-virtual/range {v4 .. v10}, Landroid/content/pm/PackageInstaller$Session;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V

    .line 76
    .line 77
    .line 78
    if-eqz p6, :cond_1

    .line 79
    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v0, " bytes"

    .line 89
    .line 90
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    .line 99
    .line 100
    :cond_1
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 101
    .line 102
    .line 103
    const/4 v0, 0x0

    .line 104
    return v0

    .line 105
    :catchall_1
    move-exception v0

    .line 106
    goto :goto_1

    .line 107
    :catch_1
    move-exception v0

    .line 108
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 129
    .line 130
    .line 131
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 132
    .line 133
    .line 134
    const/4 v0, 0x1

    .line 135
    return v0

    .line 136
    :goto_1
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 137
    .line 138
    .line 139
    throw v0
.end method

.method public final getApplicationCategoryHint()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 10
    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-interface {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v2, "app: "

    .line 19
    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    const-string p0, " not found!"

    .line 23
    .line 24
    invoke-static {v0, v2, v1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_0
    const-string v3, ", category: "

    .line 30
    .line 31
    invoke-static {v2, v1, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 36
    .line 37
    invoke-static {v1, p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 38
    .line 39
    .line 40
    return v4
.end method

.method public final getArchivedPackage(JLjava/lang/String;)Landroid/content/pm/ArchivedPackageParcel;
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerShellCommand;->openInFile(JLjava/lang/String;)Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 10
    .line 11
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Ljava/lang/Long;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    long-to-int p0, v0

    .line 20
    :try_start_0
    new-instance p2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 21
    .line 22
    invoke-direct {p2, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    :try_start_1
    new-array p0, p0, [B

    .line 26
    .line 27
    invoke-static {p2, p0}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[B)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Ljava/lang/String;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    :try_start_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;)[B

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->readArchivedPackageParcel([B)Landroid/content/pm/ArchivedPackageParcel;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-eqz p0, :cond_0

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string p1, "Error: Can\'t parse archived package from: "

    .line 52
    .line 53
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :catch_0
    move-exception p0

    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_1
    move-exception p1

    .line 69
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 73
    :goto_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    const-string p2, "Error: Can\'t load archived package from: "

    .line 76
    .line 77
    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    const-string p1, "Error: Can\'t open file: "

    .line 88
    .line 89
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0
.end method

.method public final getPrivAppPermissionsString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mPermissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, p1}, Lcom/android/server/pm/ApexManager;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ApexManager;->getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionAllowlist;->mApexPrivilegedAppAllowlists:Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Landroid/util/ArrayMap;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-wide/32 v3, 0x400000

    .line 44
    .line 45
    .line 46
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 47
    .line 48
    invoke-interface {v1, p1, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    .line 54
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 55
    .line 56
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    .line 57
    .line 58
    .line 59
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    if-eqz v1, :cond_1

    .line 61
    .line 62
    iget-object p0, v0, Lcom/android/server/pm/permission/PermissionAllowlist;->mVendorPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catch_0
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 66
    .line 67
    invoke-interface {v1, p1, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    .line 76
    .line 77
    .line 78
    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    iget-object p0, v0, Lcom/android/server/pm/permission/PermissionAllowlist;->mProductPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_1
    :cond_2
    :try_start_2
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 85
    .line 86
    invoke-interface {p0, p1, v3, v4, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    if-eqz p0, :cond_3

    .line 91
    .line 92
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 93
    .line 94
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemExt()Z

    .line 95
    .line 96
    .line 97
    move-result p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 98
    if-eqz p0, :cond_3

    .line 99
    .line 100
    iget-object p0, v0, Lcom/android/server/pm/permission/PermissionAllowlist;->mSystemExtPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_2
    :cond_3
    iget-object p0, v0, Lcom/android/server/pm/permission/PermissionAllowlist;->mPrivilegedAppAllowlist:Landroid/util/ArrayMap;

    .line 104
    .line 105
    :goto_0
    if-eqz p0, :cond_4

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    check-cast p0, Landroid/util/ArrayMap;

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    const/4 p0, 0x0

    .line 115
    :goto_1
    if-nez p0, :cond_5

    .line 116
    .line 117
    const-string/jumbo p0, "{}"

    .line 118
    .line 119
    .line 120
    return-object p0

    .line 121
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    const-string/jumbo v0, "{"

    .line 124
    .line 125
    .line 126
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    const/4 v1, 0x1

    .line 134
    move v3, v2

    .line 135
    :goto_2
    if-ge v3, v0, :cond_8

    .line 136
    .line 137
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    check-cast v4, Ljava/lang/Boolean;

    .line 142
    .line 143
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-eq v4, p2, :cond_6

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_6
    if-eqz v1, :cond_7

    .line 151
    .line 152
    move v1, v2

    .line 153
    goto :goto_3

    .line 154
    :cond_7
    const-string v4, ", "

    .line 155
    .line 156
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    :goto_3
    invoke-virtual {p0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    check-cast v4, Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_8
    const-string/jumbo p0, "}"

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    return-object p0
.end method

.method public final getRemainingArgs()Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return-object v0
.end method

.method public final getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    .line 2
    .line 3
    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/content/res/Resources;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 15
    .line 16
    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 17
    .line 18
    const-wide/32 v2, 0x20008200

    .line 19
    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    new-instance p0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v0, "Failed to get ApplicationInfo for package name("

    .line 32
    .line 33
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p1, ")."

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string p1, "PackageManagerShellCommand"

    .line 51
    .line 52
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    return-object v1

    .line 56
    :cond_1
    new-instance v2, Landroid/content/res/AssetManager;

    .line 57
    .line 58
    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    new-instance v0, Landroid/content/res/Resources;

    .line 67
    .line 68
    invoke-direct {v0, v2, v1, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 69
    .line 70
    .line 71
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    .line 72
    .line 73
    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p0, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    return-object v0
.end method

.method public final loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    if-eqz p2, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-object p0

    .line 21
    :catch_0
    :cond_1
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public final makeInstallParams(Ljava/util/Set;)Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .locals 17

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, -0x1

    .line 7
    new-instance v5, Landroid/content/pm/PackageInstaller$SessionParams;

    .line 8
    .line 9
    const/4 v6, 0x1

    .line 10
    invoke-direct {v5, v6}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v7, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    .line 14
    .line 15
    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput v4, v7, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    .line 19
    .line 20
    const-wide/32 v8, 0xea60

    .line 21
    .line 22
    .line 23
    iput-wide v8, v7, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->stagedReadyTimeoutMs:J

    .line 24
    .line 25
    iput-object v5, v7, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 26
    .line 27
    iget v8, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 28
    .line 29
    const/high16 v9, 0x400000

    .line 30
    .line 31
    or-int/2addr v8, v9

    .line 32
    iput v8, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 33
    .line 34
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageInstaller$SessionParams;->setPackageSource(I)V

    .line 35
    .line 36
    .line 37
    const/4 v8, 0x0

    .line 38
    move v11, v3

    .line 39
    move v10, v6

    .line 40
    move-object v9, v8

    .line 41
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v12

    .line 45
    if-eqz v12, :cond_38

    .line 46
    .line 47
    move-object/from16 v13, p1

    .line 48
    .line 49
    invoke-interface {v13, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v14

    .line 53
    if-nez v14, :cond_37

    .line 54
    .line 55
    const-string v14, "com.android.shell"

    .line 56
    .line 57
    const-string v15, "Unknown option "

    .line 58
    .line 59
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v16

    .line 63
    sparse-switch v16, :sswitch_data_0

    .line 64
    .line 65
    .line 66
    goto/16 :goto_2

    .line 67
    .line 68
    :sswitch_0
    const-string v4, "--skip-verification"

    .line 69
    .line 70
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-nez v4, :cond_0

    .line 75
    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :cond_0
    const/16 v4, 0x28

    .line 79
    .line 80
    goto/16 :goto_2

    .line 81
    .line 82
    :sswitch_1
    const-string v4, "--force-sdk"

    .line 83
    .line 84
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-nez v4, :cond_1

    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :cond_1
    const/16 v4, 0x27

    .line 93
    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :sswitch_2
    const-string v4, "--staged"

    .line 97
    .line 98
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-nez v4, :cond_2

    .line 103
    .line 104
    goto/16 :goto_1

    .line 105
    .line 106
    :cond_2
    const/16 v4, 0x26

    .line 107
    .line 108
    goto/16 :goto_2

    .line 109
    .line 110
    :sswitch_3
    const-string v4, "--restrict-permissions"

    .line 111
    .line 112
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-nez v4, :cond_3

    .line 117
    .line 118
    goto/16 :goto_1

    .line 119
    .line 120
    :cond_3
    const/16 v4, 0x25

    .line 121
    .line 122
    goto/16 :goto_2

    .line 123
    .line 124
    :sswitch_4
    const-string v4, "--user"

    .line 125
    .line 126
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-nez v4, :cond_4

    .line 131
    .line 132
    goto/16 :goto_1

    .line 133
    .line 134
    :cond_4
    const/16 v4, 0x24

    .line 135
    .line 136
    goto/16 :goto_2

    .line 137
    .line 138
    :sswitch_5
    const-string v4, "--full"

    .line 139
    .line 140
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    if-nez v4, :cond_5

    .line 145
    .line 146
    goto/16 :goto_1

    .line 147
    .line 148
    :cond_5
    const/16 v4, 0x23

    .line 149
    .line 150
    goto/16 :goto_2

    .line 151
    .line 152
    :sswitch_6
    const-string v4, "--apex"

    .line 153
    .line 154
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-nez v4, :cond_6

    .line 159
    .line 160
    goto/16 :goto_1

    .line 161
    .line 162
    :cond_6
    const/16 v4, 0x22

    .line 163
    .line 164
    goto/16 :goto_2

    .line 165
    .line 166
    :sswitch_7
    const-string v4, "--dexopt-compiler-filter"

    .line 167
    .line 168
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    if-nez v4, :cond_7

    .line 173
    .line 174
    goto/16 :goto_1

    .line 175
    .line 176
    :cond_7
    const/16 v4, 0x21

    .line 177
    .line 178
    goto/16 :goto_2

    .line 179
    .line 180
    :sswitch_8
    const-string v4, "--preload"

    .line 181
    .line 182
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    if-nez v4, :cond_8

    .line 187
    .line 188
    goto/16 :goto_1

    .line 189
    .line 190
    :cond_8
    const/16 v4, 0x20

    .line 191
    .line 192
    goto/16 :goto_2

    .line 193
    .line 194
    :sswitch_9
    const-string v4, "--ephemeral"

    .line 195
    .line 196
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v4

    .line 200
    if-nez v4, :cond_9

    .line 201
    .line 202
    goto/16 :goto_1

    .line 203
    .line 204
    :cond_9
    const/16 v4, 0x1f

    .line 205
    .line 206
    goto/16 :goto_2

    .line 207
    .line 208
    :sswitch_a
    const-string v4, "--package-source"

    .line 209
    .line 210
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    if-nez v4, :cond_a

    .line 215
    .line 216
    goto/16 :goto_1

    .line 217
    .line 218
    :cond_a
    const/16 v4, 0x1e

    .line 219
    .line 220
    goto/16 :goto_2

    .line 221
    .line 222
    :sswitch_b
    const-string v4, "--ignore-dexopt-profile"

    .line 223
    .line 224
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v4

    .line 228
    if-nez v4, :cond_b

    .line 229
    .line 230
    goto/16 :goto_1

    .line 231
    .line 232
    :cond_b
    const/16 v4, 0x1d

    .line 233
    .line 234
    goto/16 :goto_2

    .line 235
    .line 236
    :sswitch_c
    const-string v4, "--originating-uri"

    .line 237
    .line 238
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v4

    .line 242
    if-nez v4, :cond_c

    .line 243
    .line 244
    goto/16 :goto_1

    .line 245
    .line 246
    :cond_c
    const/16 v4, 0x1c

    .line 247
    .line 248
    goto/16 :goto_2

    .line 249
    .line 250
    :sswitch_d
    const-string v4, "--force-queryable"

    .line 251
    .line 252
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    if-nez v4, :cond_d

    .line 257
    .line 258
    goto/16 :goto_1

    .line 259
    .line 260
    :cond_d
    const/16 v4, 0x1b

    .line 261
    .line 262
    goto/16 :goto_2

    .line 263
    .line 264
    :sswitch_e
    const-string v4, "--bypass-low-target-sdk-block"

    .line 265
    .line 266
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v4

    .line 270
    if-nez v4, :cond_e

    .line 271
    .line 272
    goto/16 :goto_1

    .line 273
    .line 274
    :cond_e
    const/16 v4, 0x1a

    .line 275
    .line 276
    goto/16 :goto_2

    .line 277
    .line 278
    :sswitch_f
    const-string v4, "--pkg"

    .line 279
    .line 280
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    if-nez v4, :cond_f

    .line 285
    .line 286
    goto/16 :goto_1

    .line 287
    .line 288
    :cond_f
    const/16 v4, 0x19

    .line 289
    .line 290
    goto/16 :goto_2

    .line 291
    .line 292
    :sswitch_10
    const-string v4, "--abi"

    .line 293
    .line 294
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    if-nez v4, :cond_10

    .line 299
    .line 300
    goto/16 :goto_1

    .line 301
    .line 302
    :cond_10
    const/16 v4, 0x18

    .line 303
    .line 304
    goto/16 :goto_2

    .line 305
    .line 306
    :sswitch_11
    const-string v4, "-t"

    .line 307
    .line 308
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    move-result v4

    .line 312
    if-nez v4, :cond_11

    .line 313
    .line 314
    goto/16 :goto_1

    .line 315
    .line 316
    :cond_11
    const/16 v4, 0x17

    .line 317
    .line 318
    goto/16 :goto_2

    .line 319
    .line 320
    :sswitch_12
    const-string v4, "-r"

    .line 321
    .line 322
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    if-nez v4, :cond_12

    .line 327
    .line 328
    goto/16 :goto_1

    .line 329
    .line 330
    :cond_12
    const/16 v4, 0x16

    .line 331
    .line 332
    goto/16 :goto_2

    .line 333
    .line 334
    :sswitch_13
    const-string v4, "-p"

    .line 335
    .line 336
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v4

    .line 340
    if-nez v4, :cond_13

    .line 341
    .line 342
    goto/16 :goto_1

    .line 343
    .line 344
    :cond_13
    const/16 v4, 0x15

    .line 345
    .line 346
    goto/16 :goto_2

    .line 347
    .line 348
    :sswitch_14
    const-string v4, "-i"

    .line 349
    .line 350
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v4

    .line 354
    if-nez v4, :cond_14

    .line 355
    .line 356
    goto/16 :goto_1

    .line 357
    .line 358
    :cond_14
    const/16 v4, 0x14

    .line 359
    .line 360
    goto/16 :goto_2

    .line 361
    .line 362
    :sswitch_15
    const-string v4, "-g"

    .line 363
    .line 364
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    if-nez v4, :cond_15

    .line 369
    .line 370
    goto/16 :goto_1

    .line 371
    .line 372
    :cond_15
    const/16 v4, 0x13

    .line 373
    .line 374
    goto/16 :goto_2

    .line 375
    .line 376
    :sswitch_16
    const-string v4, "-f"

    .line 377
    .line 378
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v4

    .line 382
    if-nez v4, :cond_16

    .line 383
    .line 384
    goto/16 :goto_1

    .line 385
    .line 386
    :cond_16
    const/16 v4, 0x12

    .line 387
    .line 388
    goto/16 :goto_2

    .line 389
    .line 390
    :sswitch_17
    const-string v4, "-d"

    .line 391
    .line 392
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v4

    .line 396
    if-nez v4, :cond_17

    .line 397
    .line 398
    goto/16 :goto_1

    .line 399
    .line 400
    :cond_17
    const/16 v4, 0x11

    .line 401
    .line 402
    goto/16 :goto_2

    .line 403
    .line 404
    :sswitch_18
    const-string v4, "-S"

    .line 405
    .line 406
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    move-result v4

    .line 410
    if-nez v4, :cond_18

    .line 411
    .line 412
    goto/16 :goto_1

    .line 413
    .line 414
    :cond_18
    move v4, v0

    .line 415
    goto/16 :goto_2

    .line 416
    .line 417
    :sswitch_19
    const-string v4, "-R"

    .line 418
    .line 419
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 420
    .line 421
    .line 422
    move-result v4

    .line 423
    if-nez v4, :cond_19

    .line 424
    .line 425
    goto/16 :goto_1

    .line 426
    .line 427
    :cond_19
    const/16 v4, 0xf

    .line 428
    .line 429
    goto/16 :goto_2

    .line 430
    .line 431
    :sswitch_1a
    const-string v4, "--staged-ready-timeout"

    .line 432
    .line 433
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result v4

    .line 437
    if-nez v4, :cond_1a

    .line 438
    .line 439
    goto/16 :goto_1

    .line 440
    .line 441
    :cond_1a
    const/16 v4, 0xe

    .line 442
    .line 443
    goto/16 :goto_2

    .line 444
    .line 445
    :sswitch_1b
    const-string v4, "--multi-package"

    .line 446
    .line 447
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v4

    .line 451
    if-nez v4, :cond_1b

    .line 452
    .line 453
    goto/16 :goto_1

    .line 454
    .line 455
    :cond_1b
    const/16 v4, 0xd

    .line 456
    .line 457
    goto/16 :goto_2

    .line 458
    .line 459
    :sswitch_1c
    const-string v4, "--rollback-impact-level"

    .line 460
    .line 461
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v4

    .line 465
    if-nez v4, :cond_1c

    .line 466
    .line 467
    goto/16 :goto_1

    .line 468
    .line 469
    :cond_1c
    const/16 v4, 0xc

    .line 470
    .line 471
    goto/16 :goto_2

    .line 472
    .line 473
    :sswitch_1d
    const-string v4, "--update-ownership"

    .line 474
    .line 475
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 476
    .line 477
    .line 478
    move-result v4

    .line 479
    if-nez v4, :cond_1d

    .line 480
    .line 481
    goto/16 :goto_1

    .line 482
    .line 483
    :cond_1d
    const/16 v4, 0xb

    .line 484
    .line 485
    goto/16 :goto_2

    .line 486
    .line 487
    :sswitch_1e
    const-string v4, "--enable-rollback"

    .line 488
    .line 489
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 490
    .line 491
    .line 492
    move-result v4

    .line 493
    if-nez v4, :cond_1e

    .line 494
    .line 495
    goto/16 :goto_1

    .line 496
    .line 497
    :cond_1e
    const/16 v4, 0xa

    .line 498
    .line 499
    goto/16 :goto_2

    .line 500
    .line 501
    :sswitch_1f
    const-string v4, "--referrer"

    .line 502
    .line 503
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    move-result v4

    .line 507
    if-nez v4, :cond_1f

    .line 508
    .line 509
    goto/16 :goto_1

    .line 510
    .line 511
    :cond_1f
    const/16 v4, 0x9

    .line 512
    .line 513
    goto/16 :goto_2

    .line 514
    .line 515
    :sswitch_20
    const-string v4, "--instant"

    .line 516
    .line 517
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    move-result v4

    .line 521
    if-nez v4, :cond_20

    .line 522
    .line 523
    goto/16 :goto_1

    .line 524
    .line 525
    :cond_20
    const/16 v4, 0x8

    .line 526
    .line 527
    goto/16 :goto_2

    .line 528
    .line 529
    :sswitch_21
    const-string v4, "--instantapp"

    .line 530
    .line 531
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    move-result v4

    .line 535
    if-nez v4, :cond_21

    .line 536
    .line 537
    goto :goto_1

    .line 538
    :cond_21
    const/4 v4, 0x7

    .line 539
    goto :goto_2

    .line 540
    :sswitch_22
    const-string v4, "--install-location"

    .line 541
    .line 542
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    move-result v4

    .line 546
    if-nez v4, :cond_22

    .line 547
    .line 548
    goto :goto_1

    .line 549
    :cond_22
    const/4 v4, 0x6

    .line 550
    goto :goto_2

    .line 551
    :sswitch_23
    const-string v4, "--dont-kill"

    .line 552
    .line 553
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    move-result v4

    .line 557
    if-nez v4, :cond_23

    .line 558
    .line 559
    goto :goto_1

    .line 560
    :cond_23
    const/4 v4, 0x5

    .line 561
    goto :goto_2

    .line 562
    :sswitch_24
    const-string v4, "--force-non-staged"

    .line 563
    .line 564
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v4

    .line 568
    if-nez v4, :cond_24

    .line 569
    .line 570
    goto :goto_1

    .line 571
    :cond_24
    move v4, v1

    .line 572
    goto :goto_2

    .line 573
    :sswitch_25
    const-string v4, "--force-uuid"

    .line 574
    .line 575
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 576
    .line 577
    .line 578
    move-result v4

    .line 579
    if-nez v4, :cond_25

    .line 580
    .line 581
    goto :goto_1

    .line 582
    :cond_25
    const/4 v4, 0x3

    .line 583
    goto :goto_2

    .line 584
    :sswitch_26
    const-string v4, "--skip-enable"

    .line 585
    .line 586
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 587
    .line 588
    .line 589
    move-result v4

    .line 590
    if-nez v4, :cond_26

    .line 591
    .line 592
    goto :goto_1

    .line 593
    :cond_26
    move v4, v2

    .line 594
    goto :goto_2

    .line 595
    :sswitch_27
    const-string v4, "--install-reason"

    .line 596
    .line 597
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    move-result v4

    .line 601
    if-nez v4, :cond_27

    .line 602
    .line 603
    goto :goto_1

    .line 604
    :cond_27
    move v4, v6

    .line 605
    goto :goto_2

    .line 606
    :sswitch_28
    const-string v4, "--non-staged"

    .line 607
    .line 608
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    move-result v4

    .line 612
    if-nez v4, :cond_28

    .line 613
    .line 614
    :goto_1
    const/4 v4, -0x1

    .line 615
    goto :goto_2

    .line 616
    :cond_28
    move v4, v3

    .line 617
    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 618
    .line 619
    .line 620
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 621
    .line 622
    invoke-virtual {v15, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v1

    .line 626
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    throw v0

    .line 630
    :pswitch_0
    iget v4, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 631
    .line 632
    const/high16 v12, 0x80000

    .line 633
    .line 634
    or-int/2addr v4, v12

    .line 635
    iput v4, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 636
    .line 637
    goto/16 :goto_6

    .line 638
    .line 639
    :pswitch_1
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 640
    .line 641
    goto/16 :goto_6

    .line 642
    .line 643
    :pswitch_2
    iget v4, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 644
    .line 645
    const v12, -0x400001

    .line 646
    .line 647
    .line 648
    and-int/2addr v4, v12

    .line 649
    iput v4, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 650
    .line 651
    goto/16 :goto_6

    .line 652
    .line 653
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v4

    .line 657
    invoke-static {v4}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 658
    .line 659
    .line 660
    move-result v4

    .line 661
    iput v4, v7, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    .line 662
    .line 663
    goto/16 :goto_6

    .line 664
    .line 665
    :pswitch_4
    invoke-virtual {v5, v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsInstantApp(Z)V

    .line 666
    .line 667
    .line 668
    goto/16 :goto_6

    .line 669
    .line 670
    :pswitch_5
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsApex()V

    .line 671
    .line 672
    .line 673
    goto/16 :goto_6

    .line 674
    .line 675
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v4

    .line 679
    iput-object v4, v5, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    .line 680
    .line 681
    new-instance v4, Lcom/android/server/art/model/DexoptParams$Builder;

    .line 682
    .line 683
    const-string v12, "install"

    .line 684
    .line 685
    invoke-direct {v4, v12}, Lcom/android/server/art/model/DexoptParams$Builder;-><init>(Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    iget-object v12, v5, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    .line 689
    .line 690
    invoke-virtual {v4, v12}, Lcom/android/server/art/model/DexoptParams$Builder;->setCompilerFilter(Ljava/lang/String;)Lcom/android/server/art/model/DexoptParams$Builder;

    .line 691
    .line 692
    .line 693
    move-result-object v4

    .line 694
    invoke-virtual {v4}, Lcom/android/server/art/model/DexoptParams$Builder;->build()Lcom/android/server/art/model/DexoptParams;

    .line 695
    .line 696
    .line 697
    goto/16 :goto_6

    .line 698
    .line 699
    :pswitch_7
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsVirtualPreload()V

    .line 700
    .line 701
    .line 702
    goto/16 :goto_6

    .line 703
    .line 704
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v4

    .line 708
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 709
    .line 710
    .line 711
    move-result v4

    .line 712
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setPackageSource(I)V

    .line 713
    .line 714
    .line 715
    goto/16 :goto_6

    .line 716
    .line 717
    :pswitch_9
    iget v4, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 718
    .line 719
    const/high16 v12, 0x10000000

    .line 720
    .line 721
    or-int/2addr v4, v12

    .line 722
    iput v4, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 723
    .line 724
    goto/16 :goto_6

    .line 725
    .line 726
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v4

    .line 730
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 731
    .line 732
    .line 733
    move-result-object v4

    .line 734
    iput-object v4, v5, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 735
    .line 736
    goto/16 :goto_6

    .line 737
    .line 738
    :pswitch_b
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setForceQueryable()V

    .line 739
    .line 740
    .line 741
    goto/16 :goto_6

    .line 742
    .line 743
    :pswitch_c
    iget v4, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 744
    .line 745
    const/high16 v12, 0x1000000

    .line 746
    .line 747
    or-int/2addr v4, v12

    .line 748
    iput v4, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 749
    .line 750
    goto/16 :goto_6

    .line 751
    .line 752
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v4

    .line 756
    iput-object v4, v5, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 757
    .line 758
    if-eqz v4, :cond_29

    .line 759
    .line 760
    goto/16 :goto_6

    .line 761
    .line 762
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 763
    .line 764
    const-string v1, "Missing package name"

    .line 765
    .line 766
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    throw v0

    .line 770
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v4

    .line 774
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 775
    .line 776
    .line 777
    move-result v12

    .line 778
    if-nez v12, :cond_2d

    .line 779
    .line 780
    const-string v12, "-"

    .line 781
    .line 782
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 783
    .line 784
    .line 785
    move-result v12

    .line 786
    if-eqz v12, :cond_2a

    .line 787
    .line 788
    goto :goto_4

    .line 789
    :cond_2a
    sget-object v12, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 790
    .line 791
    array-length v14, v12

    .line 792
    move v15, v3

    .line 793
    :goto_3
    if-ge v15, v14, :cond_2c

    .line 794
    .line 795
    aget-object v3, v12, v15

    .line 796
    .line 797
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 798
    .line 799
    .line 800
    move-result v3

    .line 801
    if-eqz v3, :cond_2b

    .line 802
    .line 803
    :goto_4
    iput-object v4, v5, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 804
    .line 805
    goto/16 :goto_6

    .line 806
    .line 807
    :cond_2b
    add-int/2addr v15, v6

    .line 808
    const/4 v3, 0x0

    .line 809
    goto :goto_3

    .line 810
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 811
    .line 812
    const-string v1, "ABI "

    .line 813
    .line 814
    const-string v2, " not supported on this device"

    .line 815
    .line 816
    invoke-static {v1, v4, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v1

    .line 820
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    throw v0

    .line 824
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 825
    .line 826
    const-string v1, "Missing ABI argument"

    .line 827
    .line 828
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    throw v0

    .line 832
    :pswitch_f
    iget v3, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 833
    .line 834
    or-int/2addr v3, v1

    .line 835
    iput v3, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 836
    .line 837
    goto/16 :goto_6

    .line 838
    .line 839
    :pswitch_10
    iput v2, v5, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 840
    .line 841
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v3

    .line 845
    iput-object v3, v5, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 846
    .line 847
    if-eqz v3, :cond_2e

    .line 848
    .line 849
    goto/16 :goto_6

    .line 850
    .line 851
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 852
    .line 853
    const-string v1, "Missing inherit package name"

    .line 854
    .line 855
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 856
    .line 857
    .line 858
    throw v0

    .line 859
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v3

    .line 863
    iput-object v3, v7, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 864
    .line 865
    if-eqz v3, :cond_2f

    .line 866
    .line 867
    goto/16 :goto_6

    .line 868
    .line 869
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 870
    .line 871
    const-string v1, "Missing installer package"

    .line 872
    .line 873
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 874
    .line 875
    .line 876
    throw v0

    .line 877
    :pswitch_12
    iget v3, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 878
    .line 879
    or-int/lit16 v3, v3, 0x100

    .line 880
    .line 881
    iput v3, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 882
    .line 883
    goto/16 :goto_6

    .line 884
    .line 885
    :pswitch_13
    iget v3, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 886
    .line 887
    or-int/2addr v3, v0

    .line 888
    iput v3, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 889
    .line 890
    goto/16 :goto_6

    .line 891
    .line 892
    :pswitch_14
    iget v3, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 893
    .line 894
    or-int/lit16 v3, v3, 0x80

    .line 895
    .line 896
    iput v3, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 897
    .line 898
    goto/16 :goto_6

    .line 899
    .line 900
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 901
    .line 902
    .line 903
    move-result-object v3

    .line 904
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 905
    .line 906
    .line 907
    move-result-wide v3

    .line 908
    const-wide/16 v14, 0x0

    .line 909
    .line 910
    cmp-long v12, v3, v14

    .line 911
    .line 912
    if-lez v12, :cond_30

    .line 913
    .line 914
    invoke-virtual {v5, v3, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    .line 915
    .line 916
    .line 917
    goto/16 :goto_6

    .line 918
    .line 919
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 920
    .line 921
    const-string v1, "Size must be positive"

    .line 922
    .line 923
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 924
    .line 925
    .line 926
    throw v0

    .line 927
    :pswitch_16
    const/4 v10, 0x0

    .line 928
    goto/16 :goto_6

    .line 929
    .line 930
    :pswitch_17
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setMultiPackage()V

    .line 931
    .line 932
    .line 933
    goto/16 :goto_6

    .line 934
    .line 935
    :pswitch_18
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->recoverabilityDetection()Z

    .line 936
    .line 937
    .line 938
    move-result v3

    .line 939
    if-eqz v3, :cond_32

    .line 940
    .line 941
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 942
    .line 943
    .line 944
    move-result-object v3

    .line 945
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 946
    .line 947
    .line 948
    move-result v3

    .line 949
    if-ltz v3, :cond_31

    .line 950
    .line 951
    if-gt v3, v2, :cond_31

    .line 952
    .line 953
    invoke-virtual {v5, v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setRollbackImpactLevel(I)V

    .line 954
    .line 955
    .line 956
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v3

    .line 960
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 961
    .line 962
    .line 963
    move-result-wide v3

    .line 964
    iput-wide v3, v7, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->stagedReadyTimeoutMs:J

    .line 965
    .line 966
    goto/16 :goto_6

    .line 967
    .line 968
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 969
    .line 970
    const-string v1, " is not a valid rollback impact level."

    .line 971
    .line 972
    invoke-static {v3, v1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v1

    .line 976
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 977
    .line 978
    .line 979
    throw v0

    .line 980
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 981
    .line 982
    invoke-virtual {v15, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 983
    .line 984
    .line 985
    move-result-object v1

    .line 986
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 987
    .line 988
    .line 989
    throw v0

    .line 990
    :pswitch_1a
    iget-object v3, v7, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 991
    .line 992
    if-nez v3, :cond_33

    .line 993
    .line 994
    iput-object v14, v7, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 995
    .line 996
    :cond_33
    iget v3, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 997
    .line 998
    const/high16 v4, 0x2000000

    .line 999
    .line 1000
    or-int/2addr v3, v4

    .line 1001
    iput v3, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1002
    .line 1003
    goto/16 :goto_6

    .line 1004
    .line 1005
    :pswitch_1b
    iget-object v3, v7, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 1006
    .line 1007
    if-nez v3, :cond_34

    .line 1008
    .line 1009
    iput-object v14, v7, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 1010
    .line 1011
    :cond_34
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->peekNextArg()Ljava/lang/String;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v3

    .line 1015
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1016
    .line 1017
    .line 1018
    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1019
    if-ltz v3, :cond_35

    .line 1020
    .line 1021
    if-gt v3, v2, :cond_35

    .line 1022
    .line 1023
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1024
    .line 1025
    .line 1026
    goto :goto_5

    .line 1027
    :cond_35
    new-instance v4, Ljava/lang/IllegalArgumentException;

    .line 1028
    .line 1029
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1030
    .line 1031
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1035
    .line 1036
    .line 1037
    const-string v14, " is not a valid rollback data policy."

    .line 1038
    .line 1039
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1043
    .line 1044
    .line 1045
    move-result-object v12

    .line 1046
    invoke-direct {v4, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1047
    .line 1048
    .line 1049
    throw v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1050
    :catch_0
    const/4 v3, 0x0

    .line 1051
    :catch_1
    :goto_5
    invoke-virtual {v5, v6, v3}, Landroid/content/pm/PackageInstaller$SessionParams;->setEnableRollback(ZI)V

    .line 1052
    .line 1053
    .line 1054
    goto :goto_6

    .line 1055
    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v3

    .line 1059
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v3

    .line 1063
    iput-object v3, v5, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 1064
    .line 1065
    goto :goto_6

    .line 1066
    :pswitch_1d
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsInstantApp(Z)V

    .line 1067
    .line 1068
    .line 1069
    goto :goto_6

    .line 1070
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v3

    .line 1074
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1075
    .line 1076
    .line 1077
    move-result v3

    .line 1078
    iput v3, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 1079
    .line 1080
    goto :goto_6

    .line 1081
    :pswitch_1f
    iget v3, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1082
    .line 1083
    or-int/lit16 v3, v3, 0x1000

    .line 1084
    .line 1085
    iput v3, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1086
    .line 1087
    goto :goto_6

    .line 1088
    :pswitch_20
    move v11, v6

    .line 1089
    goto :goto_6

    .line 1090
    :pswitch_21
    iget v3, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1091
    .line 1092
    or-int/lit16 v3, v3, 0x200

    .line 1093
    .line 1094
    iput v3, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1095
    .line 1096
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v3

    .line 1100
    iput-object v3, v5, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 1101
    .line 1102
    const-string v4, "internal"

    .line 1103
    .line 1104
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1105
    .line 1106
    .line 1107
    move-result v3

    .line 1108
    if-eqz v3, :cond_36

    .line 1109
    .line 1110
    iput-object v8, v5, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 1111
    .line 1112
    goto :goto_6

    .line 1113
    :pswitch_22
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setApplicationEnabledSettingPersistent()V

    .line 1114
    .line 1115
    .line 1116
    goto :goto_6

    .line 1117
    :pswitch_23
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v3

    .line 1121
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1122
    .line 1123
    .line 1124
    move-result v3

    .line 1125
    iput v3, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 1126
    .line 1127
    goto :goto_6

    .line 1128
    :pswitch_24
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1129
    .line 1130
    :cond_36
    :goto_6
    :pswitch_25
    const/4 v3, 0x0

    .line 1131
    const/4 v4, -0x1

    .line 1132
    goto/16 :goto_0

    .line 1133
    .line 1134
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1135
    .line 1136
    const-string v1, "Unsupported option "

    .line 1137
    .line 1138
    invoke-virtual {v1, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v1

    .line 1142
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1143
    .line 1144
    .line 1145
    throw v0

    .line 1146
    :cond_38
    const/high16 v0, 0x20000

    .line 1147
    .line 1148
    if-nez v9, :cond_3a

    .line 1149
    .line 1150
    iget v1, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1151
    .line 1152
    and-int/2addr v1, v0

    .line 1153
    if-eqz v1, :cond_39

    .line 1154
    .line 1155
    move v1, v6

    .line 1156
    goto :goto_7

    .line 1157
    :cond_39
    const/4 v1, 0x0

    .line 1158
    :goto_7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1159
    .line 1160
    .line 1161
    move-result-object v9

    .line 1162
    :cond_3a
    if-eqz v10, :cond_3b

    .line 1163
    .line 1164
    iget v1, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1165
    .line 1166
    or-int/2addr v1, v2

    .line 1167
    iput v1, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1168
    .line 1169
    :cond_3b
    if-eqz v11, :cond_3c

    .line 1170
    .line 1171
    const/4 v1, 0x0

    .line 1172
    iput-boolean v1, v5, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 1173
    .line 1174
    iget v1, v5, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    .line 1175
    .line 1176
    or-int/2addr v1, v6

    .line 1177
    iput v1, v5, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    .line 1178
    .line 1179
    goto :goto_8

    .line 1180
    :cond_3c
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1181
    .line 1182
    .line 1183
    move-result v1

    .line 1184
    if-eqz v1, :cond_3d

    .line 1185
    .line 1186
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    .line 1187
    .line 1188
    .line 1189
    :cond_3d
    :goto_8
    iget v1, v5, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1190
    .line 1191
    and-int/2addr v0, v1

    .line 1192
    if-eqz v0, :cond_3f

    .line 1193
    .line 1194
    const/high16 v0, 0x40000

    .line 1195
    .line 1196
    and-int/2addr v0, v1

    .line 1197
    if-eqz v0, :cond_3f

    .line 1198
    .line 1199
    iget v0, v5, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    .line 1200
    .line 1201
    if-eq v0, v6, :cond_3e

    .line 1202
    .line 1203
    goto :goto_9

    .line 1204
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1205
    .line 1206
    const-string v1, "Data policy \'wipe\' is not supported for apex."

    .line 1207
    .line 1208
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1209
    .line 1210
    .line 1211
    throw v0

    .line 1212
    :cond_3f
    :goto_9
    return-object v7

    .line 1213
    :sswitch_data_0
    .sparse-switch
        -0x7e50763a -> :sswitch_28
        -0x7ca7efaa -> :sswitch_27
        -0x79ac7c0f -> :sswitch_26
        -0x7449dd03 -> :sswitch_25
        -0x6c42be18 -> :sswitch_24
        -0x69f9e586 -> :sswitch_23
        -0x4e451eb9 -> :sswitch_22
        -0x43c705c0 -> :sswitch_21
        -0x38b573bf -> :sswitch_20
        -0x2a211e41 -> :sswitch_1f
        -0x26fa19b2 -> :sswitch_1e
        -0x15d08af5 -> :sswitch_1d
        -0x128f691a -> :sswitch_1c
        -0xa293dee -> :sswitch_1b
        -0x9723f90 -> :sswitch_1a
        0x5c5 -> :sswitch_19
        0x5c6 -> :sswitch_18
        0x5d7 -> :sswitch_17
        0x5d9 -> :sswitch_16
        0x5da -> :sswitch_15
        0x5dc -> :sswitch_14
        0x5e3 -> :sswitch_13
        0x5e5 -> :sswitch_12
        0x5e7 -> :sswitch_11
        0x2900ec8 -> :sswitch_10
        0x290482c -> :sswitch_f
        0x2fb1b7c -> :sswitch_e
        0x4991420 -> :sswitch_d
        0x8d57768 -> :sswitch_c
        0x1b585fd3 -> :sswitch_b
        0x22691122 -> :sswitch_a
        0x3eb0e7fd -> :sswitch_9
        0x3fa0d469 -> :sswitch_8
        0x4cd6dd75 -> :sswitch_7
        0x4f71fec2 -> :sswitch_6
        0x4f74582f -> :sswitch_5
        0x4f7b216b -> :sswitch_4
        0x59147c93 -> :sswitch_3
        0x59daeac6 -> :sswitch_2
        0x781e9cb8 -> :sswitch_1
        0x79732a09 -> :sswitch_0
    .end sparse-switch

    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_18
        :pswitch_17
        :pswitch_19
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_25
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_1d
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_25
        :pswitch_0
    .end packed-switch
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, -0x1

    .line 13
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x2

    .line 19
    const/4 v5, 0x4

    .line 20
    const/4 v6, 0x3

    .line 21
    const/4 v7, 0x1

    .line 22
    sparse-switch v2, :sswitch_data_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :sswitch_0
    const-string v2, "get-package-storage-stats"

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    const/16 v2, 0x1e

    .line 36
    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :catch_0
    move-exception p0

    .line 40
    goto/16 :goto_8

    .line 41
    .line 42
    :sswitch_1
    const-string v2, "install"

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    const/16 v2, 0xa

    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :sswitch_2
    const-string v2, "get-moduleinfo"

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    const/16 v2, 0x4b

    .line 63
    .line 64
    goto/16 :goto_1

    .line 65
    .line 66
    :sswitch_3
    const-string v2, "log-visibility"

    .line 67
    .line 68
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    const/16 v2, 0x4c

    .line 75
    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :sswitch_4
    const-string v2, "bypass-allowed-apex-update-check"

    .line 79
    .line 80
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_1

    .line 85
    .line 86
    const/16 v2, 0x4e

    .line 87
    .line 88
    goto/16 :goto_1

    .line 89
    .line 90
    :sswitch_5
    const-string/jumbo v2, "set-install-location"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_1

    .line 98
    .line 99
    const/16 v2, 0x14

    .line 100
    .line 101
    goto/16 :goto_1

    .line 102
    .line 103
    :sswitch_6
    const-string/jumbo v2, "set-permission-flags"

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_1

    .line 111
    .line 112
    const/16 v2, 0x30

    .line 113
    .line 114
    goto/16 :goto_1

    .line 115
    .line 116
    :sswitch_7
    const-string v2, "disable-until-used"

    .line 117
    .line 118
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_1

    .line 123
    .line 124
    const/16 v2, 0x23

    .line 125
    .line 126
    goto/16 :goto_1

    .line 127
    .line 128
    :sswitch_8
    const-string v2, "disable"

    .line 129
    .line 130
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_1

    .line 135
    .line 136
    const/16 v2, 0x21

    .line 137
    .line 138
    goto/16 :goto_1

    .line 139
    .line 140
    :sswitch_9
    const-string/jumbo v2, "mark-guest-for-deletion"

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_1

    .line 148
    .line 149
    const/16 v2, 0x3b

    .line 150
    .line 151
    goto/16 :goto_1

    .line 152
    .line 153
    :sswitch_a
    const-string v2, "get-signature-permission-allowlist"

    .line 154
    .line 155
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-eqz v2, :cond_1

    .line 160
    .line 161
    const/16 v2, 0x36

    .line 162
    .line 163
    goto/16 :goto_1

    .line 164
    .line 165
    :sswitch_b
    const-string v2, "get-app-metadata"

    .line 166
    .line 167
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-eqz v2, :cond_1

    .line 172
    .line 173
    const/16 v2, 0x51

    .line 174
    .line 175
    goto/16 :goto_1

    .line 176
    .line 177
    :sswitch_c
    const-string v2, "install-write"

    .line 178
    .line 179
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    if-eqz v2, :cond_1

    .line 184
    .line 185
    const/16 v2, 0x12

    .line 186
    .line 187
    goto/16 :goto_1

    .line 188
    .line 189
    :sswitch_d
    const-string v2, "get-user-restriction"

    .line 190
    .line 191
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    if-eqz v2, :cond_1

    .line 196
    .line 197
    const/16 v2, 0x3e

    .line 198
    .line 199
    goto/16 :goto_1

    .line 200
    .line 201
    :sswitch_e
    const-string/jumbo v2, "set-home-activity"

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_1

    .line 209
    .line 210
    const/16 v2, 0x42

    .line 211
    .line 212
    goto/16 :goto_1

    .line 213
    .line 214
    :sswitch_f
    const-string v2, "clear-permission-flags"

    .line 215
    .line 216
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    if-eqz v2, :cond_1

    .line 221
    .line 222
    const/16 v2, 0x31

    .line 223
    .line 224
    goto/16 :goto_1

    .line 225
    .line 226
    :sswitch_10
    const-string/jumbo v2, "trim-caches"

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-eqz v2, :cond_1

    .line 234
    .line 235
    const/16 v2, 0x38

    .line 236
    .line 237
    goto/16 :goto_1

    .line 238
    .line 239
    :sswitch_11
    const-string/jumbo v2, "query-activities"

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    if-eqz v2, :cond_1

    .line 247
    .line 248
    const/4 v2, 0x7

    .line 249
    goto/16 :goto_1

    .line 250
    .line 251
    :sswitch_12
    const-string v2, "getAppCategoryHintUserMap"

    .line 252
    .line 253
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-eqz v2, :cond_1

    .line 258
    .line 259
    const/16 v2, 0x5b

    .line 260
    .line 261
    goto/16 :goto_1

    .line 262
    .line 263
    :sswitch_13
    const-string/jumbo v2, "set-user-restriction"

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-eqz v2, :cond_1

    .line 271
    .line 272
    const/16 v2, 0x3d

    .line 273
    .line 274
    goto/16 :goto_1

    .line 275
    .line 276
    :sswitch_14
    const-string/jumbo v2, "uninstall-system-updates"

    .line 277
    .line 278
    .line 279
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    if-eqz v2, :cond_1

    .line 284
    .line 285
    const/16 v2, 0x49

    .line 286
    .line 287
    goto/16 :goto_1

    .line 288
    .line 289
    :sswitch_15
    const-string v2, "install-destroy"

    .line 290
    .line 291
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    if-eqz v2, :cond_1

    .line 296
    .line 297
    const/16 v2, 0xe

    .line 298
    .line 299
    goto/16 :goto_1

    .line 300
    .line 301
    :sswitch_16
    const-string v2, "install-archived"

    .line 302
    .line 303
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v2

    .line 307
    if-eqz v2, :cond_1

    .line 308
    .line 309
    const/16 v2, 0x1f

    .line 310
    .line 311
    goto/16 :goto_1

    .line 312
    .line 313
    :sswitch_17
    const-string v2, "get-distracting-restriction"

    .line 314
    .line 315
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    if-eqz v2, :cond_1

    .line 320
    .line 321
    const/16 v2, 0x2c

    .line 322
    .line 323
    goto/16 :goto_1

    .line 324
    .line 325
    :sswitch_18
    const-string/jumbo v2, "rollback-app"

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v2

    .line 332
    if-eqz v2, :cond_1

    .line 333
    .line 334
    const/16 v2, 0x4a

    .line 335
    .line 336
    goto/16 :goto_1

    .line 337
    .line 338
    :sswitch_19
    const-string/jumbo v2, "reset-permissions"

    .line 339
    .line 340
    .line 341
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    if-eqz v2, :cond_1

    .line 346
    .line 347
    const/16 v2, 0x2f

    .line 348
    .line 349
    goto/16 :goto_1

    .line 350
    .line 351
    :sswitch_1a
    const-string v2, "install-remove"

    .line 352
    .line 353
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    if-eqz v2, :cond_1

    .line 358
    .line 359
    const/16 v2, 0x11

    .line 360
    .line 361
    goto/16 :goto_1

    .line 362
    .line 363
    :sswitch_1b
    const-string v2, "install-add-session"

    .line 364
    .line 365
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    if-eqz v2, :cond_1

    .line 370
    .line 371
    const/16 v2, 0x16

    .line 372
    .line 373
    goto/16 :goto_1

    .line 374
    .line 375
    :sswitch_1c
    const-string v2, "get-harmful-app-warning"

    .line 376
    .line 377
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    if-eqz v2, :cond_1

    .line 382
    .line 383
    const/16 v2, 0x47

    .line 384
    .line 385
    goto/16 :goto_1

    .line 386
    .line 387
    :sswitch_1d
    const-string v2, "install-existing"

    .line 388
    .line 389
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result v2

    .line 393
    if-eqz v2, :cond_1

    .line 394
    .line 395
    const/16 v2, 0x13

    .line 396
    .line 397
    goto/16 :goto_1

    .line 398
    .line 399
    :sswitch_1e
    const-string v2, "grant"

    .line 400
    .line 401
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    if-eqz v2, :cond_1

    .line 406
    .line 407
    const/16 v2, 0x2d

    .line 408
    .line 409
    goto/16 :goto_1

    .line 410
    .line 411
    :sswitch_1f
    const-string v2, "clear"

    .line 412
    .line 413
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result v2

    .line 417
    if-eqz v2, :cond_1

    .line 418
    .line 419
    const/16 v2, 0x1c

    .line 420
    .line 421
    goto/16 :goto_1

    .line 422
    .line 423
    :sswitch_20
    const-string v2, "install-streaming"

    .line 424
    .line 425
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 426
    .line 427
    .line 428
    move-result v2

    .line 429
    if-eqz v2, :cond_1

    .line 430
    .line 431
    const/16 v2, 0xb

    .line 432
    .line 433
    goto/16 :goto_1

    .line 434
    .line 435
    :sswitch_21
    const-string/jumbo v2, "supports-multiple-users"

    .line 436
    .line 437
    .line 438
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v2

    .line 442
    if-eqz v2, :cond_1

    .line 443
    .line 444
    const/16 v2, 0x3f

    .line 445
    .line 446
    goto/16 :goto_1

    .line 447
    .line 448
    :sswitch_22
    const-string v2, "get-max-users"

    .line 449
    .line 450
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    if-eqz v2, :cond_1

    .line 455
    .line 456
    const/16 v2, 0x40

    .line 457
    .line 458
    goto/16 :goto_1

    .line 459
    .line 460
    :sswitch_23
    const-string v2, "dump-package"

    .line 461
    .line 462
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    move-result v2

    .line 466
    if-eqz v2, :cond_1

    .line 467
    .line 468
    move v2, v6

    .line 469
    goto/16 :goto_1

    .line 470
    .line 471
    :sswitch_24
    const-string/jumbo v2, "move-package"

    .line 472
    .line 473
    .line 474
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result v2

    .line 478
    if-eqz v2, :cond_1

    .line 479
    .line 480
    const/16 v2, 0x19

    .line 481
    .line 482
    goto/16 :goto_1

    .line 483
    .line 484
    :sswitch_25
    const-string/jumbo v2, "path"

    .line 485
    .line 486
    .line 487
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 488
    .line 489
    .line 490
    move-result v2

    .line 491
    if-eqz v2, :cond_1

    .line 492
    .line 493
    move v2, v7

    .line 494
    goto/16 :goto_1

    .line 495
    .line 496
    :sswitch_26
    const-string v2, "list"

    .line 497
    .line 498
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    move-result v2

    .line 502
    if-eqz v2, :cond_1

    .line 503
    .line 504
    move v2, v5

    .line 505
    goto/16 :goto_1

    .line 506
    .line 507
    :sswitch_27
    const-string v2, "hide"

    .line 508
    .line 509
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    move-result v2

    .line 513
    if-eqz v2, :cond_1

    .line 514
    .line 515
    const/16 v2, 0x25

    .line 516
    .line 517
    goto/16 :goto_1

    .line 518
    .line 519
    :sswitch_28
    const-string v2, "help"

    .line 520
    .line 521
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    if-eqz v2, :cond_1

    .line 526
    .line 527
    move v2, v3

    .line 528
    goto/16 :goto_1

    .line 529
    .line 530
    :sswitch_29
    const-string v2, "dump"

    .line 531
    .line 532
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 533
    .line 534
    .line 535
    move-result v2

    .line 536
    if-eqz v2, :cond_1

    .line 537
    .line 538
    move v2, v4

    .line 539
    goto/16 :goto_1

    .line 540
    .line 541
    :sswitch_2a
    const-string v2, "gc"

    .line 542
    .line 543
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    move-result v2

    .line 547
    if-eqz v2, :cond_1

    .line 548
    .line 549
    const/4 v2, 0x5

    .line 550
    goto/16 :goto_1

    .line 551
    .line 552
    :sswitch_2b
    const-string/jumbo v2, "request-unarchive"

    .line 553
    .line 554
    .line 555
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    move-result v2

    .line 559
    if-eqz v2, :cond_1

    .line 560
    .line 561
    const/16 v2, 0x56

    .line 562
    .line 563
    goto/16 :goto_1

    .line 564
    .line 565
    :sswitch_2c
    const-string v2, "get-shared-uid-allowlist"

    .line 566
    .line 567
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 568
    .line 569
    .line 570
    move-result v2

    .line 571
    if-eqz v2, :cond_1

    .line 572
    .line 573
    const/16 v2, 0x37

    .line 574
    .line 575
    goto/16 :goto_1

    .line 576
    .line 577
    :sswitch_2d
    const-string/jumbo v2, "move-primary-storage"

    .line 578
    .line 579
    .line 580
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 581
    .line 582
    .line 583
    move-result v2

    .line 584
    if-eqz v2, :cond_1

    .line 585
    .line 586
    const/16 v2, 0x1a

    .line 587
    .line 588
    goto/16 :goto_1

    .line 589
    .line 590
    :sswitch_2e
    const-string v2, "default-state"

    .line 591
    .line 592
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    move-result v2

    .line 596
    if-eqz v2, :cond_1

    .line 597
    .line 598
    const/16 v2, 0x24

    .line 599
    .line 600
    goto/16 :goto_1

    .line 601
    .line 602
    :sswitch_2f
    const-string v2, "install-create"

    .line 603
    .line 604
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    move-result v2

    .line 608
    if-eqz v2, :cond_1

    .line 609
    .line 610
    const/16 v2, 0x10

    .line 611
    .line 612
    goto/16 :goto_1

    .line 613
    .line 614
    :sswitch_30
    const-string v2, "install-commit"

    .line 615
    .line 616
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 617
    .line 618
    .line 619
    move-result v2

    .line 620
    if-eqz v2, :cond_1

    .line 621
    .line 622
    const/16 v2, 0xf

    .line 623
    .line 624
    goto/16 :goto_1

    .line 625
    .line 626
    :sswitch_31
    const-string/jumbo v2, "unsuspend"

    .line 627
    .line 628
    .line 629
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 630
    .line 631
    .line 632
    move-result v2

    .line 633
    if-eqz v2, :cond_1

    .line 634
    .line 635
    const/16 v2, 0x2a

    .line 636
    .line 637
    goto/16 :goto_1

    .line 638
    .line 639
    :sswitch_32
    const-string/jumbo v2, "rename-user"

    .line 640
    .line 641
    .line 642
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 643
    .line 644
    .line 645
    move-result v2

    .line 646
    if-eqz v2, :cond_1

    .line 647
    .line 648
    const/16 v2, 0x3c

    .line 649
    .line 650
    goto/16 :goto_1

    .line 651
    .line 652
    :sswitch_33
    const-string/jumbo v2, "set-permission-enforced"

    .line 653
    .line 654
    .line 655
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 656
    .line 657
    .line 658
    move-result v2

    .line 659
    if-eqz v2, :cond_1

    .line 660
    .line 661
    const/16 v2, 0x32

    .line 662
    .line 663
    goto/16 :goto_1

    .line 664
    .line 665
    :sswitch_34
    const-string/jumbo v2, "remove-user"

    .line 666
    .line 667
    .line 668
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 669
    .line 670
    .line 671
    move-result v2

    .line 672
    if-eqz v2, :cond_1

    .line 673
    .line 674
    const/16 v2, 0x3a

    .line 675
    .line 676
    goto/16 :goto_1

    .line 677
    .line 678
    :sswitch_35
    const-string v2, "get-stagedsessions"

    .line 679
    .line 680
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 681
    .line 682
    .line 683
    move-result v2

    .line 684
    if-eqz v2, :cond_1

    .line 685
    .line 686
    const/16 v2, 0x48

    .line 687
    .line 688
    goto/16 :goto_1

    .line 689
    .line 690
    :sswitch_36
    const-string/jumbo v2, "query-receivers"

    .line 691
    .line 692
    .line 693
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    move-result v2

    .line 697
    if-eqz v2, :cond_1

    .line 698
    .line 699
    const/16 v2, 0x9

    .line 700
    .line 701
    goto/16 :goto_1

    .line 702
    .line 703
    :sswitch_37
    const-string/jumbo v2, "query-services"

    .line 704
    .line 705
    .line 706
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 707
    .line 708
    .line 709
    move-result v2

    .line 710
    if-eqz v2, :cond_1

    .line 711
    .line 712
    const/16 v2, 0x8

    .line 713
    .line 714
    goto/16 :goto_1

    .line 715
    .line 716
    :sswitch_38
    const-string v2, "create-user"

    .line 717
    .line 718
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 719
    .line 720
    .line 721
    move-result v2

    .line 722
    if-eqz v2, :cond_1

    .line 723
    .line 724
    const/16 v2, 0x39

    .line 725
    .line 726
    goto/16 :goto_1

    .line 727
    .line 728
    :sswitch_39
    const-string/jumbo v2, "setAppCategoryHintDeveloper"

    .line 729
    .line 730
    .line 731
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 732
    .line 733
    .line 734
    move-result v2

    .line 735
    if-eqz v2, :cond_1

    .line 736
    .line 737
    const/16 v2, 0x5a

    .line 738
    .line 739
    goto/16 :goto_1

    .line 740
    .line 741
    :sswitch_3a
    const-string/jumbo v2, "uninstall"

    .line 742
    .line 743
    .line 744
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 745
    .line 746
    .line 747
    move-result v2

    .line 748
    if-eqz v2, :cond_1

    .line 749
    .line 750
    const/16 v2, 0x1b

    .line 751
    .line 752
    goto/16 :goto_1

    .line 753
    .line 754
    :sswitch_3b
    const-string v2, "bypass-staged-installer-check"

    .line 755
    .line 756
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 757
    .line 758
    .line 759
    move-result v2

    .line 760
    if-eqz v2, :cond_1

    .line 761
    .line 762
    const/16 v2, 0x4d

    .line 763
    .line 764
    goto/16 :goto_1

    .line 765
    .line 766
    :sswitch_3c
    const-string v2, "install-incremental"

    .line 767
    .line 768
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 769
    .line 770
    .line 771
    move-result v2

    .line 772
    if-eqz v2, :cond_1

    .line 773
    .line 774
    const/16 v2, 0xc

    .line 775
    .line 776
    goto/16 :goto_1

    .line 777
    .line 778
    :sswitch_3d
    const-string v2, "archive"

    .line 779
    .line 780
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 781
    .line 782
    .line 783
    move-result v2

    .line 784
    if-eqz v2, :cond_1

    .line 785
    .line 786
    const/16 v2, 0x55

    .line 787
    .line 788
    goto/16 :goto_1

    .line 789
    .line 790
    :sswitch_3e
    const-string v2, "disable-verification-for-uid"

    .line 791
    .line 792
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 793
    .line 794
    .line 795
    move-result v2

    .line 796
    if-eqz v2, :cond_1

    .line 797
    .line 798
    const/16 v2, 0x4f

    .line 799
    .line 800
    goto/16 :goto_1

    .line 801
    .line 802
    :sswitch_3f
    const-string/jumbo v2, "unstop"

    .line 803
    .line 804
    .line 805
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 806
    .line 807
    .line 808
    move-result v2

    .line 809
    if-eqz v2, :cond_1

    .line 810
    .line 811
    const/16 v2, 0x27

    .line 812
    .line 813
    goto/16 :goto_1

    .line 814
    .line 815
    :sswitch_40
    const-string/jumbo v2, "unhide"

    .line 816
    .line 817
    .line 818
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 819
    .line 820
    .line 821
    move-result v2

    .line 822
    if-eqz v2, :cond_1

    .line 823
    .line 824
    const/16 v2, 0x26

    .line 825
    .line 826
    goto/16 :goto_1

    .line 827
    .line 828
    :sswitch_41
    const-string v2, "get-domain-verification-agent"

    .line 829
    .line 830
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 831
    .line 832
    .line 833
    move-result v2

    .line 834
    if-eqz v2, :cond_1

    .line 835
    .line 836
    const/16 v2, 0x57

    .line 837
    .line 838
    goto/16 :goto_1

    .line 839
    .line 840
    :sswitch_42
    const-string/jumbo v2, "revoke"

    .line 841
    .line 842
    .line 843
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 844
    .line 845
    .line 846
    move-result v2

    .line 847
    if-eqz v2, :cond_1

    .line 848
    .line 849
    const/16 v2, 0x2e

    .line 850
    .line 851
    goto/16 :goto_1

    .line 852
    .line 853
    :sswitch_43
    const-string/jumbo v2, "set-distracting-restriction"

    .line 854
    .line 855
    .line 856
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 857
    .line 858
    .line 859
    move-result v2

    .line 860
    if-eqz v2, :cond_1

    .line 861
    .line 862
    const/16 v2, 0x2b

    .line 863
    .line 864
    goto/16 :goto_1

    .line 865
    .line 866
    :sswitch_44
    const-string/jumbo v2, "suspend-quarantine"

    .line 867
    .line 868
    .line 869
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 870
    .line 871
    .line 872
    move-result v2

    .line 873
    if-eqz v2, :cond_1

    .line 874
    .line 875
    const/16 v2, 0x29

    .line 876
    .line 877
    goto/16 :goto_1

    .line 878
    .line 879
    :sswitch_45
    const-string v2, "disable-user"

    .line 880
    .line 881
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 882
    .line 883
    .line 884
    move-result v2

    .line 885
    if-eqz v2, :cond_1

    .line 886
    .line 887
    const/16 v2, 0x22

    .line 888
    .line 889
    goto/16 :goto_1

    .line 890
    .line 891
    :sswitch_46
    const-string v2, "install-get-pre-verified-domains"

    .line 892
    .line 893
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 894
    .line 895
    .line 896
    move-result v2

    .line 897
    if-eqz v2, :cond_1

    .line 898
    .line 899
    const/16 v2, 0x18

    .line 900
    .line 901
    goto/16 :goto_1

    .line 902
    .line 903
    :sswitch_47
    const-string v2, "get-privapp-permissions"

    .line 904
    .line 905
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 906
    .line 907
    .line 908
    move-result v2

    .line 909
    if-eqz v2, :cond_1

    .line 910
    .line 911
    const/16 v2, 0x33

    .line 912
    .line 913
    goto/16 :goto_1

    .line 914
    .line 915
    :sswitch_48
    const-string v2, "get-oem-permissions"

    .line 916
    .line 917
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 918
    .line 919
    .line 920
    move-result v2

    .line 921
    if-eqz v2, :cond_1

    .line 922
    .line 923
    const/16 v2, 0x35

    .line 924
    .line 925
    goto/16 :goto_1

    .line 926
    .line 927
    :sswitch_49
    const-string v2, "get-privapp-deny-permissions"

    .line 928
    .line 929
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 930
    .line 931
    .line 932
    move-result v2

    .line 933
    if-eqz v2, :cond_1

    .line 934
    .line 935
    const/16 v2, 0x34

    .line 936
    .line 937
    goto/16 :goto_1

    .line 938
    .line 939
    :sswitch_4a
    const-string/jumbo v2, "resolve-activity"

    .line 940
    .line 941
    .line 942
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 943
    .line 944
    .line 945
    move-result v2

    .line 946
    if-eqz v2, :cond_1

    .line 947
    .line 948
    const/4 v2, 0x6

    .line 949
    goto/16 :goto_1

    .line 950
    .line 951
    :sswitch_4b
    const-string v2, "get-instantapp-resolver"

    .line 952
    .line 953
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 954
    .line 955
    .line 956
    move-result v2

    .line 957
    if-eqz v2, :cond_1

    .line 958
    .line 959
    const/16 v2, 0x44

    .line 960
    .line 961
    goto/16 :goto_1

    .line 962
    .line 963
    :sswitch_4c
    const-string v2, "enable"

    .line 964
    .line 965
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 966
    .line 967
    .line 968
    move-result v2

    .line 969
    if-eqz v2, :cond_1

    .line 970
    .line 971
    const/16 v2, 0x20

    .line 972
    .line 973
    goto/16 :goto_1

    .line 974
    .line 975
    :sswitch_4d
    const-string v2, "has-feature"

    .line 976
    .line 977
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 978
    .line 979
    .line 980
    move-result v2

    .line 981
    if-eqz v2, :cond_1

    .line 982
    .line 983
    const/16 v2, 0x45

    .line 984
    .line 985
    goto/16 :goto_1

    .line 986
    .line 987
    :sswitch_4e
    const-string/jumbo v2, "wait-for-handler"

    .line 988
    .line 989
    .line 990
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 991
    .line 992
    .line 993
    move-result v2

    .line 994
    if-eqz v2, :cond_1

    .line 995
    .line 996
    const/16 v2, 0x53

    .line 997
    .line 998
    goto/16 :goto_1

    .line 999
    .line 1000
    :sswitch_4f
    const-string/jumbo v2, "set-silent-updates-policy"

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1004
    .line 1005
    .line 1006
    move-result v2

    .line 1007
    if-eqz v2, :cond_1

    .line 1008
    .line 1009
    const/16 v2, 0x50

    .line 1010
    .line 1011
    goto/16 :goto_1

    .line 1012
    .line 1013
    :sswitch_50
    const-string/jumbo v2, "set-installer"

    .line 1014
    .line 1015
    .line 1016
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1017
    .line 1018
    .line 1019
    move-result v2

    .line 1020
    if-eqz v2, :cond_1

    .line 1021
    .line 1022
    const/16 v2, 0x43

    .line 1023
    .line 1024
    goto/16 :goto_1

    .line 1025
    .line 1026
    :sswitch_51
    const-string/jumbo v2, "setAppCategoryHintUser"

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1030
    .line 1031
    .line 1032
    move-result v2

    .line 1033
    if-eqz v2, :cond_1

    .line 1034
    .line 1035
    const/16 v2, 0x58

    .line 1036
    .line 1037
    goto/16 :goto_1

    .line 1038
    .line 1039
    :sswitch_52
    const-string v2, "clear-package-preferred-activities"

    .line 1040
    .line 1041
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1042
    .line 1043
    .line 1044
    move-result v2

    .line 1045
    if-eqz v2, :cond_1

    .line 1046
    .line 1047
    const/16 v2, 0x52

    .line 1048
    .line 1049
    goto/16 :goto_1

    .line 1050
    .line 1051
    :sswitch_53
    const-string v2, "get-max-running-users"

    .line 1052
    .line 1053
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1054
    .line 1055
    .line 1056
    move-result v2

    .line 1057
    if-eqz v2, :cond_1

    .line 1058
    .line 1059
    const/16 v2, 0x41

    .line 1060
    .line 1061
    goto/16 :goto_1

    .line 1062
    .line 1063
    :sswitch_54
    const-string v2, "getApplicationCategoryHint"

    .line 1064
    .line 1065
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1066
    .line 1067
    .line 1068
    move-result v2

    .line 1069
    if-eqz v2, :cond_1

    .line 1070
    .line 1071
    const/16 v2, 0x59

    .line 1072
    .line 1073
    goto :goto_1

    .line 1074
    :sswitch_55
    const-string/jumbo v2, "suspend"

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1078
    .line 1079
    .line 1080
    move-result v2

    .line 1081
    if-eqz v2, :cond_1

    .line 1082
    .line 1083
    const/16 v2, 0x28

    .line 1084
    .line 1085
    goto :goto_1

    .line 1086
    :sswitch_56
    const-string v2, "install-set-pre-verified-domains"

    .line 1087
    .line 1088
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1089
    .line 1090
    .line 1091
    move-result v2

    .line 1092
    if-eqz v2, :cond_1

    .line 1093
    .line 1094
    const/16 v2, 0x17

    .line 1095
    .line 1096
    goto :goto_1

    .line 1097
    :sswitch_57
    const-string v2, "get-install-location"

    .line 1098
    .line 1099
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1100
    .line 1101
    .line 1102
    move-result v2

    .line 1103
    if-eqz v2, :cond_1

    .line 1104
    .line 1105
    const/16 v2, 0x15

    .line 1106
    .line 1107
    goto :goto_1

    .line 1108
    :sswitch_58
    const-string v2, "get-archived-package-metadata"

    .line 1109
    .line 1110
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1111
    .line 1112
    .line 1113
    move-result v2

    .line 1114
    if-eqz v2, :cond_1

    .line 1115
    .line 1116
    const/16 v2, 0x1d

    .line 1117
    .line 1118
    goto :goto_1

    .line 1119
    :sswitch_59
    const-string v2, "install-abandon"

    .line 1120
    .line 1121
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1122
    .line 1123
    .line 1124
    move-result v2

    .line 1125
    if-eqz v2, :cond_1

    .line 1126
    .line 1127
    const/16 v2, 0xd

    .line 1128
    .line 1129
    goto :goto_1

    .line 1130
    :sswitch_5a
    const-string/jumbo v2, "wait-for-background-handler"

    .line 1131
    .line 1132
    .line 1133
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1134
    .line 1135
    .line 1136
    move-result v2

    .line 1137
    if-eqz v2, :cond_1

    .line 1138
    .line 1139
    const/16 v2, 0x54

    .line 1140
    .line 1141
    goto :goto_1

    .line 1142
    :sswitch_5b
    const-string v2, "getAppCategoryInfos"

    .line 1143
    .line 1144
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1145
    .line 1146
    .line 1147
    move-result v2

    .line 1148
    if-eqz v2, :cond_1

    .line 1149
    .line 1150
    const/16 v2, 0x5c

    .line 1151
    .line 1152
    goto :goto_1

    .line 1153
    :sswitch_5c
    const-string/jumbo v2, "set-harmful-app-warning"

    .line 1154
    .line 1155
    .line 1156
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1157
    .line 1158
    .line 1159
    move-result v2

    .line 1160
    if-eqz v2, :cond_1

    .line 1161
    .line 1162
    const/16 v2, 0x46

    .line 1163
    .line 1164
    goto :goto_1

    .line 1165
    :cond_1
    :goto_0
    move v2, v1

    .line 1166
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 1167
    .line 1168
    .line 1169
    sget-object v2, Lcom/android/server/pm/PackageManagerShellCommand;->ART_SERVICE_COMMANDS:Ljava/util/Set;

    .line 1170
    .line 1171
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1172
    .line 1173
    .line 1174
    move-result v2

    .line 1175
    if-eqz v2, :cond_2

    .line 1176
    .line 1177
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runArtServiceCommand()I

    .line 1178
    .line 1179
    .line 1180
    move-result p0

    .line 1181
    return p0

    .line 1182
    :cond_2
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mDomainVerificationShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    .line 1183
    .line 1184
    invoke-virtual {v2, p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationShell;->runCommand(Lcom/android/modules/utils/BasicShellCommandHandler;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 1185
    .line 1186
    .line 1187
    move-result-object v2

    .line 1188
    if-eqz v2, :cond_3

    .line 1189
    .line 1190
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1191
    .line 1192
    .line 1193
    move-result p0

    .line 1194
    xor-int/2addr p0, v7

    .line 1195
    return p0

    .line 1196
    :cond_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v2

    .line 1200
    if-nez v2, :cond_5

    .line 1201
    .line 1202
    const-string v2, "-l"

    .line 1203
    .line 1204
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1205
    .line 1206
    .line 1207
    move-result v2

    .line 1208
    if-eqz v2, :cond_4

    .line 1209
    .line 1210
    invoke-virtual {p0, v3, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(ZZ)I

    .line 1211
    .line 1212
    .line 1213
    move-result p0

    .line 1214
    return p0

    .line 1215
    :cond_4
    const-string v2, "-lf"

    .line 1216
    .line 1217
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1218
    .line 1219
    .line 1220
    move-result v2

    .line 1221
    if-eqz v2, :cond_6

    .line 1222
    .line 1223
    invoke-virtual {p0, v7, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(ZZ)I

    .line 1224
    .line 1225
    .line 1226
    move-result p0

    .line 1227
    return p0

    .line 1228
    :cond_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v4

    .line 1232
    if-nez v4, :cond_6

    .line 1233
    .line 1234
    const-string v4, "-p"

    .line 1235
    .line 1236
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1237
    .line 1238
    .line 1239
    move-result v4

    .line 1240
    if-eqz v4, :cond_6

    .line 1241
    .line 1242
    invoke-virtual {p0, v3, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->displayPackageFilePath(ILjava/lang/String;)I

    .line 1243
    .line 1244
    .line 1245
    move-result p0

    .line 1246
    return p0

    .line 1247
    :cond_6
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 1248
    .line 1249
    .line 1250
    move-result p0

    .line 1251
    return p0

    .line 1252
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 1253
    .line 1254
    .line 1255
    move-result-object p1

    .line 1256
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 1257
    .line 1258
    const/4 v2, 0x0

    .line 1259
    invoke-interface {p0, v2}, Landroid/content/pm/IPackageManager;->getAppCategoryInfos(Ljava/lang/String;)Ljava/util/Map;

    .line 1260
    .line 1261
    .line 1262
    move-result-object p0

    .line 1263
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda1;

    .line 1264
    .line 1265
    const/4 v4, 0x0

    .line 1266
    invoke-direct {v2, v4, p1}, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 1267
    .line 1268
    .line 1269
    invoke-interface {p0, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1270
    .line 1271
    .line 1272
    return v3

    .line 1273
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 1274
    .line 1275
    .line 1276
    move-result-object p1

    .line 1277
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 1278
    .line 1279
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getAppCategoryHintUserMap()Ljava/util/Map;

    .line 1280
    .line 1281
    .line 1282
    move-result-object p0

    .line 1283
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda1;

    .line 1284
    .line 1285
    const/4 v4, 0x1

    .line 1286
    invoke-direct {v2, v4, p1}, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 1287
    .line 1288
    .line 1289
    invoke-interface {p0, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1290
    .line 1291
    .line 1292
    return v3

    .line 1293
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->setAppCategoryHintDeveloper()I

    .line 1294
    .line 1295
    .line 1296
    move-result p0

    .line 1297
    return p0

    .line 1298
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getApplicationCategoryHint()I

    .line 1299
    .line 1300
    .line 1301
    move-result p0

    .line 1302
    return p0

    .line 1303
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->setAppCategoryHintUser()I

    .line 1304
    .line 1305
    .line 1306
    move-result p0

    .line 1307
    return p0

    .line 1308
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetDomainVerificationAgent()I

    .line 1309
    .line 1310
    .line 1311
    move-result p0

    .line 1312
    return p0

    .line 1313
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runUnarchive()I

    .line 1314
    .line 1315
    .line 1316
    move-result p0

    .line 1317
    return p0

    .line 1318
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runArchive()I

    .line 1319
    .line 1320
    .line 1321
    move-result p0

    .line 1322
    return p0

    .line 1323
    :pswitch_8
    invoke-virtual {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runWaitForHandler(Z)I

    .line 1324
    .line 1325
    .line 1326
    move-result p0

    .line 1327
    return p0

    .line 1328
    :pswitch_9
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->runWaitForHandler(Z)I

    .line 1329
    .line 1330
    .line 1331
    move-result p0

    .line 1332
    return p0

    .line 1333
    :pswitch_a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1334
    .line 1335
    .line 1336
    move-result-object p1

    .line 1337
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1338
    .line 1339
    .line 1340
    move-result-object v2

    .line 1341
    if-nez v2, :cond_7

    .line 1342
    .line 1343
    const-string p0, "Error: package name not specified"

    .line 1344
    .line 1345
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1346
    .line 1347
    .line 1348
    :goto_2
    move v3, v7

    .line 1349
    goto :goto_3

    .line 1350
    :cond_7
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    .line 1351
    .line 1352
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1353
    .line 1354
    .line 1355
    move-result-object p0

    .line 1356
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1357
    .line 1358
    .line 1359
    goto :goto_3

    .line 1360
    :catch_1
    move-exception p0

    .line 1361
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 1362
    .line 1363
    .line 1364
    move-result-object p0

    .line 1365
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1366
    .line 1367
    .line 1368
    goto :goto_2

    .line 1369
    :goto_3
    return v3

    .line 1370
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetAppMetadata()I

    .line 1371
    .line 1372
    .line 1373
    move-result p0

    .line 1374
    return p0

    .line 1375
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetSilentUpdatesPolicy()I

    .line 1376
    .line 1377
    .line 1378
    move-result p0

    .line 1379
    return p0

    .line 1380
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDisableVerificationForUid()I

    .line 1381
    .line 1382
    .line 1383
    move-result p0

    .line 1384
    return p0

    .line 1385
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runBypassAllowedApexUpdateCheck()I

    .line 1386
    .line 1387
    .line 1388
    move-result p0

    .line 1389
    return p0

    .line 1390
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runBypassStagedInstallerCheck()I

    .line 1391
    .line 1392
    .line 1393
    move-result p0

    .line 1394
    return p0

    .line 1395
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runLogVisibility()I

    .line 1396
    .line 1397
    .line 1398
    move-result p0

    .line 1399
    return p0

    .line 1400
    :pswitch_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetModuleInfo()I

    .line 1401
    .line 1402
    .line 1403
    move-result p0

    .line 1404
    return p0

    .line 1405
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runRollbackApp()I

    .line 1406
    .line 1407
    .line 1408
    move-result p0

    .line 1409
    return p0

    .line 1410
    :pswitch_13
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1411
    .line 1412
    .line 1413
    move-result-object p1

    .line 1414
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->uninstallSystemUpdates(Ljava/lang/String;)I

    .line 1415
    .line 1416
    .line 1417
    move-result p0

    .line 1418
    return p0

    .line 1419
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListStagedSessions()I

    .line 1420
    .line 1421
    .line 1422
    move-result p0

    .line 1423
    return p0

    .line 1424
    :pswitch_15
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetHarmfulAppWarning()I

    .line 1425
    .line 1426
    .line 1427
    move-result p0

    .line 1428
    return p0

    .line 1429
    :pswitch_16
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHarmfulAppWarning()I

    .line 1430
    .line 1431
    .line 1432
    move-result p0

    .line 1433
    return p0

    .line 1434
    :pswitch_17
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runHasFeature()I

    .line 1435
    .line 1436
    .line 1437
    move-result p0

    .line 1438
    return p0

    .line 1439
    :pswitch_18
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 1440
    .line 1441
    .line 1442
    move-result-object p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1443
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 1444
    .line 1445
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getInstantAppResolverComponent()Landroid/content/ComponentName;

    .line 1446
    .line 1447
    .line 1448
    move-result-object p0

    .line 1449
    if-nez p0, :cond_8

    .line 1450
    .line 1451
    :goto_4
    move v3, v7

    .line 1452
    goto :goto_5

    .line 1453
    :cond_8
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 1454
    .line 1455
    .line 1456
    move-result-object p0

    .line 1457
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1458
    .line 1459
    .line 1460
    goto :goto_5

    .line 1461
    :catch_2
    move-exception p0

    .line 1462
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 1463
    .line 1464
    .line 1465
    move-result-object p0

    .line 1466
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1467
    .line 1468
    .line 1469
    goto :goto_4

    .line 1470
    :goto_5
    return v3

    .line 1471
    :pswitch_19
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetInstaller()I

    .line 1472
    .line 1473
    .line 1474
    move-result p0

    .line 1475
    return p0

    .line 1476
    :pswitch_1a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHomeActivity()I

    .line 1477
    .line 1478
    .line 1479
    move-result p0

    .line 1480
    return p0

    .line 1481
    :pswitch_1b
    const-class p1, Landroid/app/ActivityManagerInternal;

    .line 1482
    .line 1483
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1484
    .line 1485
    .line 1486
    move-result-object p1

    .line 1487
    check-cast p1, Landroid/app/ActivityManagerInternal;

    .line 1488
    .line 1489
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 1490
    .line 1491
    .line 1492
    move-result-object p0

    .line 1493
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1494
    .line 1495
    const-string v4, "Maximum supported running users: "

    .line 1496
    .line 1497
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1498
    .line 1499
    .line 1500
    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->getMaxRunningUsers()I

    .line 1501
    .line 1502
    .line 1503
    move-result p1

    .line 1504
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1505
    .line 1506
    .line 1507
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1508
    .line 1509
    .line 1510
    move-result-object p1

    .line 1511
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1512
    .line 1513
    .line 1514
    return v3

    .line 1515
    :pswitch_1c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 1516
    .line 1517
    .line 1518
    move-result-object p0

    .line 1519
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1520
    .line 1521
    const-string v2, "Maximum supported users: "

    .line 1522
    .line 1523
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1524
    .line 1525
    .line 1526
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    .line 1527
    .line 1528
    .line 1529
    move-result v2

    .line 1530
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1531
    .line 1532
    .line 1533
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1534
    .line 1535
    .line 1536
    move-result-object p1

    .line 1537
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1538
    .line 1539
    .line 1540
    return v3

    .line 1541
    :pswitch_1d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 1542
    .line 1543
    .line 1544
    move-result-object p0

    .line 1545
    new-instance p1, Ljava/lang/StringBuilder;

    .line 1546
    .line 1547
    const-string v2, "Is multiuser supported: "

    .line 1548
    .line 1549
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1550
    .line 1551
    .line 1552
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    .line 1553
    .line 1554
    .line 1555
    move-result v2

    .line 1556
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1557
    .line 1558
    .line 1559
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1560
    .line 1561
    .line 1562
    move-result-object p1

    .line 1563
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1564
    .line 1565
    .line 1566
    return v3

    .line 1567
    :pswitch_1e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetUserRestriction()V

    .line 1568
    .line 1569
    .line 1570
    return v3

    .line 1571
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetUserRestriction()I

    .line 1572
    .line 1573
    .line 1574
    move-result p0

    .line 1575
    return p0

    .line 1576
    :pswitch_20
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runRenameUser()I

    .line 1577
    .line 1578
    .line 1579
    move-result p0

    .line 1580
    return p0

    .line 1581
    :pswitch_21
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1582
    .line 1583
    .line 1584
    move-result-object p1

    .line 1585
    if-nez p1, :cond_9

    .line 1586
    .line 1587
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1588
    .line 1589
    .line 1590
    move-result-object p0

    .line 1591
    const-string p1, "Error: no user id specified."

    .line 1592
    .line 1593
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1594
    .line 1595
    .line 1596
    :goto_6
    move v3, v7

    .line 1597
    goto :goto_7

    .line 1598
    :cond_9
    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 1599
    .line 1600
    .line 1601
    move-result p1

    .line 1602
    const/4 v2, -0x2

    .line 1603
    if-ne p1, v2, :cond_a

    .line 1604
    .line 1605
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 1606
    .line 1607
    .line 1608
    move-result p1

    .line 1609
    :cond_a
    const-string/jumbo v2, "user"

    .line 1610
    .line 1611
    .line 1612
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 1613
    .line 1614
    .line 1615
    move-result-object v2

    .line 1616
    invoke-static {v2}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    .line 1617
    .line 1618
    .line 1619
    move-result-object v2

    .line 1620
    invoke-interface {v2, p1}, Landroid/os/IUserManager;->markGuestForDeletion(I)Z

    .line 1621
    .line 1622
    .line 1623
    move-result p1

    .line 1624
    if-nez p1, :cond_b

    .line 1625
    .line 1626
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1627
    .line 1628
    .line 1629
    move-result-object p0

    .line 1630
    const-string p1, "Error: could not mark guest for deletion"

    .line 1631
    .line 1632
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1633
    .line 1634
    .line 1635
    goto :goto_6

    .line 1636
    :cond_b
    :goto_7
    return v3

    .line 1637
    :pswitch_22
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runRemoveUser()I

    .line 1638
    .line 1639
    .line 1640
    move-result p0

    .line 1641
    return p0

    .line 1642
    :pswitch_23
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runCreateUser()I

    .line 1643
    .line 1644
    .line 1645
    move-result p0

    .line 1646
    return p0

    .line 1647
    :pswitch_24
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runTrimCaches()I

    .line 1648
    .line 1649
    .line 1650
    move-result p0

    .line 1651
    return p0

    .line 1652
    :pswitch_25
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetSharedUidAllowlist()V

    .line 1653
    .line 1654
    .line 1655
    return v3

    .line 1656
    :pswitch_26
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetSignaturePermissionAllowlist()I

    .line 1657
    .line 1658
    .line 1659
    move-result p0

    .line 1660
    return p0

    .line 1661
    :pswitch_27
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetOemPermissions()I

    .line 1662
    .line 1663
    .line 1664
    move-result p0

    .line 1665
    return p0

    .line 1666
    :pswitch_28
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetPrivappDenyPermissions()I

    .line 1667
    .line 1668
    .line 1669
    move-result p0

    .line 1670
    return p0

    .line 1671
    :pswitch_29
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetPrivappPermissions()I

    .line 1672
    .line 1673
    .line 1674
    move-result p0

    .line 1675
    return p0

    .line 1676
    :pswitch_2a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetPermissionEnforced()I

    .line 1677
    .line 1678
    .line 1679
    move-result p0

    .line 1680
    return p0

    .line 1681
    :pswitch_2b
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->setOrClearPermissionFlags(Z)I

    .line 1682
    .line 1683
    .line 1684
    move-result p0

    .line 1685
    return p0

    .line 1686
    :pswitch_2c
    invoke-virtual {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->setOrClearPermissionFlags(Z)I

    .line 1687
    .line 1688
    .line 1689
    move-result p0

    .line 1690
    return p0

    .line 1691
    :pswitch_2d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runResetPermissions()V

    .line 1692
    .line 1693
    .line 1694
    return v3

    .line 1695
    :pswitch_2e
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->runGrantRevokePermission(Z)I

    .line 1696
    .line 1697
    .line 1698
    move-result p0

    .line 1699
    return p0

    .line 1700
    :pswitch_2f
    invoke-virtual {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runGrantRevokePermission(Z)I

    .line 1701
    .line 1702
    .line 1703
    move-result p0

    .line 1704
    return p0

    .line 1705
    :pswitch_30
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetDistractingRestriction()I

    .line 1706
    .line 1707
    .line 1708
    move-result p0

    .line 1709
    return p0

    .line 1710
    :pswitch_31
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetDistractingRestriction()I

    .line 1711
    .line 1712
    .line 1713
    move-result p0

    .line 1714
    return p0

    .line 1715
    :pswitch_32
    invoke-virtual {p0, v3, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->runSuspend(IZ)I

    .line 1716
    .line 1717
    .line 1718
    move-result p0

    .line 1719
    return p0

    .line 1720
    :pswitch_33
    invoke-virtual {p0, v7, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSuspend(IZ)I

    .line 1721
    .line 1722
    .line 1723
    move-result p0

    .line 1724
    return p0

    .line 1725
    :pswitch_34
    invoke-virtual {p0, v3, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSuspend(IZ)I

    .line 1726
    .line 1727
    .line 1728
    move-result p0

    .line 1729
    return p0

    .line 1730
    :pswitch_35
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetStoppedState()I

    .line 1731
    .line 1732
    .line 1733
    move-result p0

    .line 1734
    return p0

    .line 1735
    :pswitch_36
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHiddenSetting(Z)I

    .line 1736
    .line 1737
    .line 1738
    move-result p0

    .line 1739
    return p0

    .line 1740
    :pswitch_37
    invoke-virtual {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHiddenSetting(Z)I

    .line 1741
    .line 1742
    .line 1743
    move-result p0

    .line 1744
    return p0

    .line 1745
    :pswitch_38
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    .line 1746
    .line 1747
    .line 1748
    move-result p0

    .line 1749
    return p0

    .line 1750
    :pswitch_39
    invoke-virtual {p0, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    .line 1751
    .line 1752
    .line 1753
    move-result p0

    .line 1754
    return p0

    .line 1755
    :pswitch_3a
    invoke-virtual {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    .line 1756
    .line 1757
    .line 1758
    move-result p0

    .line 1759
    return p0

    .line 1760
    :pswitch_3b
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    .line 1761
    .line 1762
    .line 1763
    move-result p0

    .line 1764
    return p0

    .line 1765
    :pswitch_3c
    invoke-virtual {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    .line 1766
    .line 1767
    .line 1768
    move-result p0

    .line 1769
    return p0

    .line 1770
    :pswitch_3d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runArchivedInstall()I

    .line 1771
    .line 1772
    .line 1773
    move-result p0

    .line 1774
    return p0

    .line 1775
    :pswitch_3e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetPackageStorageStats()I

    .line 1776
    .line 1777
    .line 1778
    move-result p0

    .line 1779
    return p0

    .line 1780
    :pswitch_3f
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetArchivedPackageMetadata()I

    .line 1781
    .line 1782
    .line 1783
    move-result p0

    .line 1784
    return p0

    .line 1785
    :pswitch_40
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runClear()I

    .line 1786
    .line 1787
    .line 1788
    move-result p0

    .line 1789
    return p0

    .line 1790
    :pswitch_41
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runUninstall()I

    .line 1791
    .line 1792
    .line 1793
    move-result p0

    .line 1794
    return p0

    .line 1795
    :pswitch_42
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runMovePrimaryStorage()I

    .line 1796
    .line 1797
    .line 1798
    move-result p0

    .line 1799
    return p0

    .line 1800
    :pswitch_43
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runMovePackage()I

    .line 1801
    .line 1802
    .line 1803
    move-result p0

    .line 1804
    return p0

    .line 1805
    :pswitch_44
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallGetPreVerifiedDomains()V

    .line 1806
    .line 1807
    .line 1808
    return v3

    .line 1809
    :pswitch_45
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallSetPreVerifiedDomains()V

    .line 1810
    .line 1811
    .line 1812
    return v3

    .line 1813
    :pswitch_46
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallAddSession()I

    .line 1814
    .line 1815
    .line 1816
    move-result p0

    .line 1817
    return p0

    .line 1818
    :pswitch_47
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetInstallLocation()V

    .line 1819
    .line 1820
    .line 1821
    return v3

    .line 1822
    :pswitch_48
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetInstallLocation()I

    .line 1823
    .line 1824
    .line 1825
    move-result p0

    .line 1826
    return p0

    .line 1827
    :pswitch_49
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallExisting()I

    .line 1828
    .line 1829
    .line 1830
    move-result p0

    .line 1831
    return p0

    .line 1832
    :pswitch_4a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallWrite()I

    .line 1833
    .line 1834
    .line 1835
    move-result p0

    .line 1836
    return p0

    .line 1837
    :pswitch_4b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallRemove()I

    .line 1838
    .line 1839
    .line 1840
    move-result p0

    .line 1841
    return p0

    .line 1842
    :pswitch_4c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallCreate()V

    .line 1843
    .line 1844
    .line 1845
    return v3

    .line 1846
    :pswitch_4d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallCommit()I

    .line 1847
    .line 1848
    .line 1849
    move-result p0

    .line 1850
    return p0

    .line 1851
    :pswitch_4e
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1852
    .line 1853
    .line 1854
    move-result-object p1

    .line 1855
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1856
    .line 1857
    .line 1858
    move-result p1

    .line 1859
    invoke-virtual {p0, p1, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)V

    .line 1860
    .line 1861
    .line 1862
    return v3

    .line 1863
    :pswitch_4f
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runIncrementalInstall()I

    .line 1864
    .line 1865
    .line 1866
    move-result p0

    .line 1867
    return p0

    .line 1868
    :pswitch_50
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runStreamingInstall()I

    .line 1869
    .line 1870
    .line 1871
    move-result p0

    .line 1872
    return p0

    .line 1873
    :pswitch_51
    sget-object p1, Lcom/android/server/pm/PackageManagerShellCommand;->UNSUPPORTED_INSTALL_CMD_OPTS:Ljava/util/Set;

    .line 1874
    .line 1875
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams(Ljava/util/Set;)Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    .line 1876
    .line 1877
    .line 1878
    move-result-object p1

    .line 1879
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->doRunInstall(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)I

    .line 1880
    .line 1881
    .line 1882
    move-result p0

    .line 1883
    return p0

    .line 1884
    :pswitch_52
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentReceivers()V

    .line 1885
    .line 1886
    .line 1887
    return v3

    .line 1888
    :pswitch_53
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentServices()V

    .line 1889
    .line 1890
    .line 1891
    return v3

    .line 1892
    :pswitch_54
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentActivities()V

    .line 1893
    .line 1894
    .line 1895
    return v3

    .line 1896
    :pswitch_55
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runResolveActivity()V

    .line 1897
    .line 1898
    .line 1899
    return v3

    .line 1900
    :pswitch_56
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGc()V

    .line 1901
    .line 1902
    .line 1903
    return v3

    .line 1904
    :pswitch_57
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runList()I

    .line 1905
    .line 1906
    .line 1907
    move-result p0

    .line 1908
    return p0

    .line 1909
    :pswitch_58
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDumpPackage()I

    .line 1910
    .line 1911
    .line 1912
    move-result p0

    .line 1913
    return p0

    .line 1914
    :pswitch_59
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDump()I

    .line 1915
    .line 1916
    .line 1917
    move-result p0

    .line 1918
    return p0

    .line 1919
    :pswitch_5a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runPath()I

    .line 1920
    .line 1921
    .line 1922
    move-result p0

    .line 1923
    return p0

    .line 1924
    :pswitch_5b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->onHelp()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1925
    .line 1926
    .line 1927
    return v3

    .line 1928
    :goto_8
    const-string p1, "Remote exception: "

    .line 1929
    .line 1930
    invoke-static {p1, p0, v0}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/io/PrintWriter;)V

    .line 1931
    .line 1932
    .line 1933
    return v1

    .line 1934
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d5639bf -> :sswitch_5c
        -0x7c42b204 -> :sswitch_5b
        -0x767d7f79 -> :sswitch_5a
        -0x7540f3bd -> :sswitch_59
        -0x738d6c56 -> :sswitch_58
        -0x737996c2 -> :sswitch_57
        -0x6f4b3f6f -> :sswitch_56
        -0x6e635fc4 -> :sswitch_55
        -0x6e1b5621 -> :sswitch_54
        -0x6e1196e6 -> :sswitch_53
        -0x6d9b40a0 -> :sswitch_52
        -0x69a42171 -> :sswitch_51
        -0x67c8bc23 -> :sswitch_50
        -0x5b75ef1e -> :sswitch_4f
        -0x562cf612 -> :sswitch_4e
        -0x504e493d -> :sswitch_4d
        -0x4d6ada7d -> :sswitch_4c
        -0x4b90d264 -> :sswitch_4b
        -0x495fa230 -> :sswitch_4a
        -0x41b47fcb -> :sswitch_49
        -0x410d7369 -> :sswitch_48
        -0x3fd1a8ae -> :sswitch_47
        -0x3f5df1e3 -> :sswitch_46
        -0x3d838470 -> :sswitch_45
        -0x3b95e3a1 -> :sswitch_44
        -0x38494450 -> :sswitch_43
        -0x37b0f17a -> :sswitch_42
        -0x35fe0b3b -> :sswitch_41
        -0x321a08a5 -> :sswitch_40
        -0x3214dde5 -> :sswitch_3f
        -0x2d61f2a1 -> :sswitch_3e
        -0x2c971f3e -> :sswitch_3d
        -0x2c20e158 -> :sswitch_3c
        -0x29ee859f -> :sswitch_3b
        -0x2549d71e -> :sswitch_3a
        -0x2136f07a -> :sswitch_39
        -0x202b5604 -> :sswitch_38
        -0x1b57243d -> :sswitch_37
        -0x1a490a61 -> :sswitch_36
        -0x18d650e6 -> :sswitch_35
        -0x143f388c -> :sswitch_34
        -0xd1dc6eb -> :sswitch_33
        -0xa635306 -> :sswitch_32
        -0x85b5c7d -> :sswitch_31
        -0x7e40657 -> :sswitch_30
        -0x7bd8e92 -> :sswitch_2f
        -0x6dac5fb -> :sswitch_2e
        -0x533744c -> :sswitch_2d
        -0x2084327 -> :sswitch_2c
        -0x11dedb5 -> :sswitch_2b
        0xcdc -> :sswitch_2a
        0x2f39f4 -> :sswitch_29
        0x30cf41 -> :sswitch_28
        0x30dd42 -> :sswitch_27
        0x32b09e -> :sswitch_26
        0x346425 -> :sswitch_25
        0x120f24a -> :sswitch_24
        0x19a1d6d -> :sswitch_23
        0x5296aa8 -> :sswitch_22
        0x53fd674 -> :sswitch_21
        0x5951ab0 -> :sswitch_20
        0x5a5b64d -> :sswitch_1f
        0x5e0c11c -> :sswitch_1e
        0x664b17d -> :sswitch_1d
        0x8569735 -> :sswitch_1c
        0xe265438 -> :sswitch_1b
        0x1127c8f6 -> :sswitch_1a
        0x156ea506 -> :sswitch_19
        0x1678dbb8 -> :sswitch_18
        0x17e9f2a4 -> :sswitch_17
        0x1e9db3d4 -> :sswitch_16
        0x2f90ddc8 -> :sswitch_15
        0x3142fb77 -> :sswitch_14
        0x372512d5 -> :sswitch_13
        0x3aadf441 -> :sswitch_12
        0x3ec9c212 -> :sswitch_11
        0x4634ad3c -> :sswitch_10
        0x533c0489 -> :sswitch_f
        0x55326612 -> :sswitch_e
        0x5b8f0661 -> :sswitch_d
        0x5bb0b12d -> :sswitch_c
        0x5e7d0a72 -> :sswitch_b
        0x5f206435 -> :sswitch_a
        0x63017527 -> :sswitch_9
        0x639e22e8 -> :sswitch_8
        0x653560d1 -> :sswitch_7
        0x67a44b14 -> :sswitch_6
        0x681c75b2 -> :sswitch_5
        0x68bf5845 -> :sswitch_4
        0x6cc4393b -> :sswitch_3
        0x6ecbfff1 -> :sswitch_2
        0x74ae259b -> :sswitch_1
        0x77a75e4f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5b
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
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
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
        :pswitch_33
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
        :pswitch_d
        :pswitch_c
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

.method public final onHelp()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "Package manager (package) commands:"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "  help"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "    Print this help text."

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v1, ""

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v2, "  path [--user USER_ID] PACKAGE"

    .line 26
    .line 27
    const-string v3, "    Print the path to the .apk of the given PACKAGE."

    .line 28
    .line 29
    const-string v4, "  dump PACKAGE"

    .line 30
    .line 31
    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v2, "    Print various system state associated with the given PACKAGE."

    .line 35
    .line 36
    const-string v3, "  dump-package PACKAGE"

    .line 37
    .line 38
    const-string v4, "    Print package manager state associated with the given PACKAGE."

    .line 39
    .line 40
    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v2, "  has-feature FEATURE_NAME [version]"

    .line 44
    .line 45
    const-string v3, "    Prints true and returns exit status 0 when system has a FEATURE_NAME,"

    .line 46
    .line 47
    const-string v4, "    otherwise prints false and returns exit status 1"

    .line 48
    .line 49
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v2, "  list features"

    .line 53
    .line 54
    const-string v3, "    Prints all features of the system."

    .line 55
    .line 56
    invoke-static {v0, v1, v2, v3, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v2, "  list instrumentation [-f] [TARGET-PACKAGE]"

    .line 60
    .line 61
    const-string v3, "    Prints all test packages; optionally only those targeting TARGET-PACKAGE"

    .line 62
    .line 63
    const-string v4, "    Options:"

    .line 64
    .line 65
    const-string v5, "      -f: dump the name of the .apk file containing the test package"

    .line 66
    .line 67
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v2, "  list libraries [-v]"

    .line 71
    .line 72
    const-string v3, "    Prints all system libraries."

    .line 73
    .line 74
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const-string v2, "      -v: shows the location of the library in the device\'s filesystem"

    .line 78
    .line 79
    const-string v3, "  list packages [-f] [-d] [-e] [-s] [-q] [-3] [-i] [-l] [-u] [-U] "

    .line 80
    .line 81
    const-string v4, "      [--show-versioncode] [--apex-only] [--factory-only]"

    .line 82
    .line 83
    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v2, "      [--uid UID] [--user USER_ID] [FILTER]"

    .line 87
    .line 88
    const-string v3, "    Prints all packages; optionally only those whose name contains"

    .line 89
    .line 90
    const-string v4, "    the text in FILTER.  Options are:"

    .line 91
    .line 92
    const-string v5, "      -f: see their associated file"

    .line 93
    .line 94
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v2, "      -a: all known packages (but excluding APEXes)"

    .line 98
    .line 99
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v2, "      -d: filter to only show disabled packages"

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string v2, "      -e: filter to only show enabled packages"

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const-string v2, "      -s: filter to only show system packages"

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->quarantinedEnabled()Z

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    if-eqz v2, :cond_0

    .line 122
    .line 123
    const-string v2, "      -q: filter to only show quarantined packages"

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_0
    const-string v2, "      -3: filter to only show third party packages"

    .line 129
    .line 130
    const-string v3, "      -i: see the installer for the packages"

    .line 131
    .line 132
    const-string v4, "      -l: ignored (used for compatibility with older releases)"

    .line 133
    .line 134
    const-string v5, "      -U: also show the package UID"

    .line 135
    .line 136
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v2, "      -u: also include uninstalled packages"

    .line 140
    .line 141
    const-string v3, "      --show-versioncode: also show the version code"

    .line 142
    .line 143
    const-string v4, "      --apex-only: only show APEX packages"

    .line 144
    .line 145
    const-string v5, "      --factory-only: only show system packages excluding updates"

    .line 146
    .line 147
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string v2, "      --uid UID: filter to only show packages with the given UID"

    .line 151
    .line 152
    const-string v3, "      --user USER_ID: only list packages belonging to the given user"

    .line 153
    .line 154
    const-string v4, "      --match-libraries: include packages that declare static shared and SDK libraries"

    .line 155
    .line 156
    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const-string v2, "  list permission-groups"

    .line 160
    .line 161
    const-string v3, "    Prints all known permission groups."

    .line 162
    .line 163
    const-string v4, "  list permissions [-g] [-f] [-d] [-u] [GROUP]"

    .line 164
    .line 165
    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const-string v2, "    Prints all known permissions; optionally only those in GROUP.  Options are:"

    .line 169
    .line 170
    const-string v3, "      -g: organize by group"

    .line 171
    .line 172
    const-string v4, "      -f: print all information"

    .line 173
    .line 174
    const-string v5, "      -s: short summary"

    .line 175
    .line 176
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const-string v2, "      -d: only list dangerous permissions"

    .line 180
    .line 181
    const-string v3, "      -u: list only the permissions users will see"

    .line 182
    .line 183
    const-string v4, "  list staged-sessions [--only-ready] [--only-sessionid] [--only-parent]"

    .line 184
    .line 185
    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    const-string v2, "    Prints all staged sessions."

    .line 189
    .line 190
    const-string v3, "      --only-ready: show only staged sessions that are ready"

    .line 191
    .line 192
    const-string v4, "      --only-sessionid: show only sessionId of each session"

    .line 193
    .line 194
    const-string v5, "      --only-parent: hide all children sessions"

    .line 195
    .line 196
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    const-string v2, "  list users"

    .line 200
    .line 201
    const-string v3, "    Prints all users."

    .line 202
    .line 203
    invoke-static {v0, v1, v2, v3, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    const-string v3, "  resolve-activity [--brief] [--components] [--query-flags FLAGS]"

    .line 207
    .line 208
    const-string v4, "       [--user USER_ID] INTENT"

    .line 209
    .line 210
    const-string v5, "    Prints the activity that resolves to the given INTENT."

    .line 211
    .line 212
    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    const-string v3, "  query-activities [--brief] [--components] [--query-flags FLAGS]"

    .line 216
    .line 217
    const-string v5, "    Prints all activities that can handle the given INTENT."

    .line 218
    .line 219
    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    const-string v3, "  query-services [--brief] [--components] [--query-flags FLAGS]"

    .line 223
    .line 224
    const-string v5, "    Prints all services that can handle the given INTENT."

    .line 225
    .line 226
    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    const-string v3, "  query-receivers [--brief] [--components] [--query-flags FLAGS]"

    .line 230
    .line 231
    const-string v5, "    Prints all broadcast receivers that can handle the given INTENT."

    .line 232
    .line 233
    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    const-string v3, "  install [-rtfdg] [-i PACKAGE] [--user USER_ID|all|current]"

    .line 237
    .line 238
    const-string v4, "       [-p INHERIT_PACKAGE] [--install-location 0/1/2]"

    .line 239
    .line 240
    const-string v5, "       [--install-reason 0/1/2/3/4] [--originating-uri URI]"

    .line 241
    .line 242
    const-string v6, "       [--referrer URI] [--abi ABI_NAME] [--force-sdk]"

    .line 243
    .line 244
    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    const-string v3, "       [--preload] [--instant] [--full] [--dont-kill]"

    .line 248
    .line 249
    const-string v7, "       [--enable-rollback [0/1/2]]"

    .line 250
    .line 251
    const-string v8, "       [--force-uuid internal|UUID] [--pkg PACKAGE] [-S BYTES]"

    .line 252
    .line 253
    const-string v9, "       [--apex] [--non-staged] [--force-non-staged]"

    .line 254
    .line 255
    invoke-static {v0, v3, v7, v8, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    const-string v7, "       [--staged-ready-timeout TIMEOUT] [--ignore-dexopt-profile]"

    .line 259
    .line 260
    const-string v8, "       [--dexopt-compiler-filter FILTER]"

    .line 261
    .line 262
    const-string v9, "       [PATH [SPLIT...]|-]"

    .line 263
    .line 264
    const-string v10, "    Install an application.  Must provide the apk data to install, either as"

    .line 265
    .line 266
    invoke-static {v0, v7, v8, v9, v10}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    const-string v7, "    file path(s) or \'-\' to read from stdin.  Options are:"

    .line 270
    .line 271
    const-string v8, "      -R: disallow replacement of existing application"

    .line 272
    .line 273
    const-string v9, "      -t: allow test packages"

    .line 274
    .line 275
    const-string v10, "      -i: specify package name of installer owning the app"

    .line 276
    .line 277
    invoke-static {v0, v7, v8, v9, v10}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    const-string v7, "      -f: install application on internal flash"

    .line 281
    .line 282
    const-string v8, "      -d: allow version code downgrade (debuggable packages only)"

    .line 283
    .line 284
    const-string v9, "      -p: partial application install (new split on top of existing pkg)"

    .line 285
    .line 286
    const-string v10, "      -g: grant all runtime permissions"

    .line 287
    .line 288
    invoke-static {v0, v7, v8, v9, v10}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    const-string v7, "      -S: size in bytes of package, required for stdin"

    .line 292
    .line 293
    const-string v8, "      --user: install under the given user."

    .line 294
    .line 295
    const-string v9, "      --dont-kill: installing a new feature split, don\'t kill running app"

    .line 296
    .line 297
    const-string v10, "      --restrict-permissions: don\'t whitelist restricted permissions at install"

    .line 298
    .line 299
    invoke-static {v0, v7, v8, v9, v10}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    const-string v8, "      --originating-uri: set URI where app was downloaded from"

    .line 303
    .line 304
    const-string v9, "      --referrer: set URI that instigated the install of the app"

    .line 305
    .line 306
    const-string v10, "      --pkg: specify expected package name of app being installed"

    .line 307
    .line 308
    const-string v11, "      --abi: override the default ABI of the platform"

    .line 309
    .line 310
    invoke-static {v0, v8, v9, v10, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    const-string v8, "      --instant: cause the app to be installed as an ephemeral install app"

    .line 314
    .line 315
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    const-string v8, "      --full: cause the app to be installed as a non-ephemeral full app"

    .line 319
    .line 320
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    const-string v8, "      --enable-rollback: enable rollbacks for the upgrade."

    .line 324
    .line 325
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    const-string v8, "          0=restore (default), 1=wipe, 2=retain"

    .line 329
    .line 330
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->recoverabilityDetection()Z

    .line 334
    .line 335
    .line 336
    move-result v8

    .line 337
    if-eqz v8, :cond_1

    .line 338
    .line 339
    const-string v8, "      --rollback-impact-level: set device impact required for rollback."

    .line 340
    .line 341
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    const-string v8, "          0=low (default), 1=high, 2=manual only"

    .line 345
    .line 346
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    :cond_1
    const-string v8, "      --install-location: force the install location:"

    .line 350
    .line 351
    const-string v9, "          0=auto, 1=internal only, 2=prefer external"

    .line 352
    .line 353
    const-string v10, "      --install-reason: indicates why the app is being installed:"

    .line 354
    .line 355
    const-string v11, "          0=unknown, 1=admin policy, 2=device restore,"

    .line 356
    .line 357
    invoke-static {v0, v8, v9, v10, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    const-string v8, "          3=device setup, 4=user request"

    .line 361
    .line 362
    const-string v9, "      --update-ownership: request the update ownership enforcement"

    .line 363
    .line 364
    const-string v10, "      --force-uuid: force install on to disk volume with given UUID"

    .line 365
    .line 366
    const-string v11, "      --apex: install an .apex file, not an .apk"

    .line 367
    .line 368
    invoke-static {v0, v8, v9, v10, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    const-string v8, "      --non-staged: explicitly set this installation to be non-staged."

    .line 372
    .line 373
    const-string v9, "          This flag is only useful for APEX installs that are implicitly"

    .line 374
    .line 375
    const-string v10, "          assumed to be staged."

    .line 376
    .line 377
    const-string v11, "      --force-non-staged: force the installation to run under a non-staged"

    .line 378
    .line 379
    invoke-static {v0, v8, v9, v10, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    const-string v8, "          session, which may complete without requiring a reboot. This will"

    .line 383
    .line 384
    const-string v9, "          force a rebootless update even for APEXes that don\'t support it"

    .line 385
    .line 386
    const-string v10, "      --staged-ready-timeout: By default, staged sessions wait 60000"

    .line 387
    .line 388
    const-string v11, "          milliseconds for pre-reboot verification to complete when"

    .line 389
    .line 390
    invoke-static {v0, v8, v9, v10, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    const-string v8, "          performing staged install. This flag is used to alter the waiting"

    .line 394
    .line 395
    const-string v9, "          time. You can skip the waiting time by specifying a TIMEOUT of \'0\'"

    .line 396
    .line 397
    const-string v10, "      --ignore-dexopt-profile: if set, all profiles are ignored by dexopt"

    .line 398
    .line 399
    const-string v11, "          during the installation, including the profile in the DM file and"

    .line 400
    .line 401
    invoke-static {v0, v8, v9, v10, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    const-string v8, "          the profile embedded in the APK file. If an invalid profile is"

    .line 405
    .line 406
    const-string v9, "          provided during installation, no warning will be reported by `adb"

    .line 407
    .line 408
    const-string v10, "          install`."

    .line 409
    .line 410
    const-string v11, "          This option does not affect later dexopt operations (e.g.,"

    .line 411
    .line 412
    invoke-static {v0, v8, v9, v10, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    const-string v8, "          background dexopt and manual `pm compile` invocations)."

    .line 416
    .line 417
    const-string v9, "      --dexopt-compiler-filter: the target compiler filter for dexopt during"

    .line 418
    .line 419
    const-string v10, "          the installation. The filter actually used may be different."

    .line 420
    .line 421
    const-string v11, "          Valid values: one of the values documented in"

    .line 422
    .line 423
    invoke-static {v0, v8, v9, v10, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    const-string v8, "          https://source.android.com/docs/core/runtime/configure#compiler_filters"

    .line 427
    .line 428
    const-string v9, "          or \'skip\'"

    .line 429
    .line 430
    const-string v10, "  install-existing [--user USER_ID|all|current]"

    .line 431
    .line 432
    invoke-static {v0, v8, v9, v1, v10}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    const-string v8, "       [--instant] [--full] [--wait] [--restrict-permissions] PACKAGE"

    .line 436
    .line 437
    const-string v9, "    Installs an existing application for a new user.  Options are:"

    .line 438
    .line 439
    const-string v10, "      --user: install for the given user."

    .line 440
    .line 441
    const-string v11, "      --instant: install as an instant app"

    .line 442
    .line 443
    invoke-static {v0, v8, v9, v10, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    const-string v8, "      --full: install as a full app"

    .line 447
    .line 448
    const-string v9, "      --wait: wait until the package is installed"

    .line 449
    .line 450
    const-string v10, "      --restrict-permissions: don\'t whitelist restricted permissions"

    .line 451
    .line 452
    invoke-static {v0, v8, v9, v10, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    const-string v8, "  install-create [-lrtsfdg] [-i PACKAGE] [--user USER_ID|all|current]"

    .line 456
    .line 457
    invoke-static {v0, v8, v4, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    const-string v4, "       [--force-uuid internal|UUID] [--pkg PACKAGE] [--apex] [-S BYTES]"

    .line 461
    .line 462
    const-string v5, "       [--multi-package] [--staged] [--update-ownership]"

    .line 463
    .line 464
    const-string v6, "    Like \"install\", but starts an install session.  Use \"install-write\""

    .line 465
    .line 466
    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    const-string v3, "    to push data into the session, and \"install-commit\" to finish."

    .line 470
    .line 471
    const-string v4, "  install-write [-S BYTES] SESSION_ID SPLIT_NAME [PATH|-]"

    .line 472
    .line 473
    const-string v5, "    Write an apk into the given install session.  If the path is \'-\', data"

    .line 474
    .line 475
    invoke-static {v0, v3, v1, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    const-string v3, "    will be read from stdin.  Options are:"

    .line 479
    .line 480
    const-string v4, "  install-remove SESSION_ID SPLIT..."

    .line 481
    .line 482
    invoke-static {v0, v3, v7, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    const-string v3, "    Mark SPLIT(s) as removed in the given install session."

    .line 486
    .line 487
    const-string v4, "  install-add-session MULTI_PACKAGE_SESSION_ID CHILD_SESSION_IDs"

    .line 488
    .line 489
    const-string v5, "    Add one or more session IDs to a multi-package session."

    .line 490
    .line 491
    invoke-static {v0, v3, v1, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    const-string v3, "  install-set-pre-verified-domains SESSION_ID PRE_VERIFIED_DOMAIN... "

    .line 495
    .line 496
    const-string v4, "    Specify a comma separated list of pre-verified domains for a session."

    .line 497
    .line 498
    invoke-static {v0, v1, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    const-string v3, "  install-get-pre-verified-domains SESSION_ID"

    .line 502
    .line 503
    const-string v4, "    List all the pre-verified domains that are specified in a session."

    .line 504
    .line 505
    const-string v5, "    The result list is comma separated."

    .line 506
    .line 507
    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    const-string v3, "  install-commit SESSION_ID"

    .line 511
    .line 512
    const-string v4, "    Commit the given active install session, installing the app."

    .line 513
    .line 514
    const-string v5, "  install-abandon SESSION_ID"

    .line 515
    .line 516
    invoke-static {v0, v3, v4, v1, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    const-string v3, "    Delete the given active install session."

    .line 520
    .line 521
    const-string v4, "  set-install-location LOCATION"

    .line 522
    .line 523
    const-string v5, "    Changes the default install location.  NOTE this is only intended for debugging;"

    .line 524
    .line 525
    invoke-static {v0, v3, v1, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    const-string v3, "    using this can cause applications to break and other undersireable behavior."

    .line 529
    .line 530
    const-string v4, "    LOCATION is one of:"

    .line 531
    .line 532
    const-string v5, "    0 [auto]: Let system decide the best location"

    .line 533
    .line 534
    const-string v6, "    1 [internal]: Install on internal device storage"

    .line 535
    .line 536
    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    const-string v3, "    2 [external]: Install on external media"

    .line 540
    .line 541
    const-string v4, "  get-install-location"

    .line 542
    .line 543
    const-string v5, "    Returns the current install location: 0, 1 or 2 as per set-install-location."

    .line 544
    .line 545
    invoke-static {v0, v3, v1, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    const-string v3, "  move-package PACKAGE [internal|UUID]"

    .line 549
    .line 550
    const-string v4, "  move-primary-storage [internal|UUID]"

    .line 551
    .line 552
    invoke-static {v0, v1, v3, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    const-string v3, "  uninstall [-k] [--user USER_ID] [--versionCode VERSION_CODE]"

    .line 556
    .line 557
    const-string v4, "       PACKAGE [SPLIT...]"

    .line 558
    .line 559
    const-string v5, "    Remove the given package name from the system.  May remove an entire app"

    .line 560
    .line 561
    invoke-static {v0, v1, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    const-string v3, "    if no SPLIT names specified, otherwise will remove only the splits of the"

    .line 565
    .line 566
    const-string v4, "    given app.  Options are:"

    .line 567
    .line 568
    const-string v5, "      -k: keep the data and cache directories around after package removal."

    .line 569
    .line 570
    const-string v6, "      --user: remove the app from the given user."

    .line 571
    .line 572
    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    const-string v3, "      --versionCode: only uninstall if the app has the given version code."

    .line 576
    .line 577
    const-string v4, "  clear [--user USER_ID] [--cache-only] PACKAGE"

    .line 578
    .line 579
    const-string v5, "    Deletes data associated with a package. Options are:"

    .line 580
    .line 581
    invoke-static {v0, v3, v1, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    const-string v3, "    --user: specifies the user for which we need to clear data"

    .line 585
    .line 586
    const-string v4, "    --cache-only: a flag which tells if we only need to clear cache data"

    .line 587
    .line 588
    const-string v5, "  enable [--user USER_ID] PACKAGE_OR_COMPONENT"

    .line 589
    .line 590
    invoke-static {v0, v3, v4, v1, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    const-string v3, "  disable [--user USER_ID] PACKAGE_OR_COMPONENT"

    .line 594
    .line 595
    const-string v4, "  disable-user [--user USER_ID] PACKAGE_OR_COMPONENT"

    .line 596
    .line 597
    const-string v5, "  disable-until-used [--user USER_ID] PACKAGE_OR_COMPONENT"

    .line 598
    .line 599
    const-string v6, "  default-state [--user USER_ID] PACKAGE_OR_COMPONENT"

    .line 600
    .line 601
    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    const-string v3, "    These commands change the enabled state of a given package or"

    .line 605
    .line 606
    const-string v4, "    component (written as \"package/class\")."

    .line 607
    .line 608
    const-string v5, "  hide [--user USER_ID] PACKAGE_OR_COMPONENT"

    .line 609
    .line 610
    invoke-static {v0, v3, v4, v1, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    .line 612
    .line 613
    const-string v3, "  unhide [--user USER_ID] PACKAGE_OR_COMPONENT"

    .line 614
    .line 615
    const-string v4, "  unstop [--user USER_ID] PACKAGE"

    .line 616
    .line 617
    invoke-static {v0, v3, v1, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    const-string v3, "  suspend [--user USER_ID] PACKAGE [PACKAGE...]"

    .line 621
    .line 622
    const-string v4, "    Suspends the specified package(s) (as user)."

    .line 623
    .line 624
    const-string v5, "  unsuspend [--user USER_ID] PACKAGE [PACKAGE...]"

    .line 625
    .line 626
    invoke-static {v0, v3, v4, v1, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    const-string v3, "    Unsuspends the specified package(s) (as user)."

    .line 630
    .line 631
    const-string v4, "  set-distracting-restriction [--user USER_ID] [--flag FLAG ...]"

    .line 632
    .line 633
    const-string v5, "      PACKAGE [PACKAGE...]"

    .line 634
    .line 635
    invoke-static {v0, v3, v1, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    .line 637
    .line 638
    const-string v3, "    Sets the specified restriction flags to given package(s) (for user)."

    .line 639
    .line 640
    const-string v4, "    Flags are:"

    .line 641
    .line 642
    const-string v5, "      hide-notifications: Hides notifications from this package"

    .line 643
    .line 644
    const-string v6, "      hide-from-suggestions: Hides this package from suggestions"

    .line 645
    .line 646
    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    const-string v3, "        (by the launcher, etc.)"

    .line 650
    .line 651
    const-string v5, "    Any existing flags are overwritten, which also means that if no flags are"

    .line 652
    .line 653
    const-string v6, "    specified then all existing flags will be cleared."

    .line 654
    .line 655
    invoke-static {v0, v3, v5, v6, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    const-string v3, "  get-distracting-restriction [--user USER_ID] PACKAGE [PACKAGE...]"

    .line 659
    .line 660
    const-string v5, "    Gets the specified restriction flags of given package(s) (of the user)."

    .line 661
    .line 662
    const-string v6, "  grant [--user USER_ID] [--all-permissions] PACKAGE PERMISSION"

    .line 663
    .line 664
    invoke-static {v0, v3, v5, v1, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    const-string v3, "  revoke [--user USER_ID] [--all-permissions] PACKAGE PERMISSION"

    .line 668
    .line 669
    const-string v5, "    These commands either grant or revoke permissions to apps.  The permissions"

    .line 670
    .line 671
    const-string v6, "    must be declared as used in the app\'s manifest, be runtime permissions"

    .line 672
    .line 673
    const-string v7, "    (protection level dangerous), and the app targeting SDK greater than Lollipop MR1."

    .line 674
    .line 675
    invoke-static {v0, v3, v5, v6, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    .line 677
    .line 678
    const-string v3, "    --user: Specifies the user for which the operation needs to be performed"

    .line 679
    .line 680
    const-string v5, "    --all-permissions: If specified all the missing runtime permissions will"

    .line 681
    .line 682
    const-string v8, "       be granted to the PACKAGE or to all the packages if none is specified."

    .line 683
    .line 684
    invoke-static {v0, v4, v3, v5, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    const-string v3, "  set-permission-flags [--user USER_ID] PACKAGE PERMISSION [FLAGS..]"

    .line 688
    .line 689
    const-string v4, "  clear-permission-flags [--user USER_ID] PACKAGE PERMISSION [FLAGS..]"

    .line 690
    .line 691
    const-string v5, "    These commands either set or clear permission flags on apps.  The permissions"

    .line 692
    .line 693
    invoke-static {v0, v1, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 700
    .line 701
    .line 702
    new-instance v3, Ljava/lang/StringBuilder;

    .line 703
    .line 704
    const-string v4, "    The flags must be one or more of "

    .line 705
    .line 706
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    sget-object v4, Lcom/android/server/pm/PackageManagerShellCommand;->SUPPORTED_PERMISSION_FLAGS_LIST:Ljava/util/List;

    .line 710
    .line 711
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 715
    .line 716
    .line 717
    move-result-object v3

    .line 718
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    const-string v3, "  reset-permissions"

    .line 725
    .line 726
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    const-string v3, "    Revert all runtime permissions to their default state."

    .line 730
    .line 731
    const-string v4, "  set-permission-enforced PERMISSION [true|false]"

    .line 732
    .line 733
    invoke-static {v0, v3, v1, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    const-string v3, "  get-privapp-permissions TARGET-PACKAGE"

    .line 737
    .line 738
    const-string v4, "    Prints all privileged permissions for a package."

    .line 739
    .line 740
    const-string v5, "  get-privapp-deny-permissions TARGET-PACKAGE"

    .line 741
    .line 742
    invoke-static {v0, v3, v4, v1, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    .line 744
    .line 745
    const-string v3, "    Prints all privileged permissions that are denied for a package."

    .line 746
    .line 747
    const-string v4, "  get-oem-permissions TARGET-PACKAGE"

    .line 748
    .line 749
    const-string v5, "    Prints all OEM permissions for a package."

    .line 750
    .line 751
    invoke-static {v0, v3, v1, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    .line 753
    .line 754
    const-string v3, "  get-signature-permission-allowlist PARTITION"

    .line 755
    .line 756
    const-string v4, "    Prints the signature permission allowlist for a partition."

    .line 757
    .line 758
    const-string v5, "    PARTITION is one of system, vendor, product, system-ext and apex"

    .line 759
    .line 760
    invoke-static {v0, v1, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    .line 762
    .line 763
    const-string v3, "  get-shared-uid-allowlist"

    .line 764
    .line 765
    const-string v4, "    Prints the shared UID allowlist."

    .line 766
    .line 767
    invoke-static {v0, v1, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    .line 769
    .line 770
    const-string v3, "  trim-caches DESIRED_FREE_SPACE [internal|UUID]"

    .line 771
    .line 772
    const-string v4, "    Trim cache files to reach the given free space."

    .line 773
    .line 774
    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    .line 776
    .line 777
    const-string v2, "    Lists the current users."

    .line 778
    .line 779
    const-string v3, "  create-user [--profileOf USER_ID] [--managed] [--restricted] [--guest]"

    .line 780
    .line 781
    const-string v4, "       [--user-type USER_TYPE] [--ephemeral] [--for-testing] [--pre-create-only]   USER_NAME"

    .line 782
    .line 783
    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    .line 785
    .line 786
    const-string v2, "    Create a new user with the given USER_NAME, printing the new user identifier"

    .line 787
    .line 788
    const-string v3, "    of the user."

    .line 789
    .line 790
    const-string v4, "    USER_TYPE is the name of a user type, e.g. android.os.usertype.profile.MANAGED."

    .line 791
    .line 792
    const-string v5, "      If not specified, the default user type is android.os.usertype.full.SECONDARY."

    .line 793
    .line 794
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    .line 796
    .line 797
    const-string v2, "      --managed is shorthand for \'--user-type android.os.usertype.profile.MANAGED\'."

    .line 798
    .line 799
    const-string v3, "      --restricted is shorthand for \'--user-type android.os.usertype.full.RESTRICTED\'."

    .line 800
    .line 801
    const-string v4, "      --guest is shorthand for \'--user-type android.os.usertype.full.GUEST\'."

    .line 802
    .line 803
    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    const-string v2, "  remove-user [--set-ephemeral-if-in-use | --wait] USER_ID"

    .line 807
    .line 808
    const-string v3, "    Remove the user with the given USER_IDENTIFIER, deleting all data"

    .line 809
    .line 810
    const-string v4, "    associated with that user."

    .line 811
    .line 812
    const-string v5, "      --set-ephemeral-if-in-use: If the user is currently running and"

    .line 813
    .line 814
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    const-string v2, "        therefore cannot be removed immediately, mark the user as ephemeral"

    .line 818
    .line 819
    const-string v3, "        so that it will be automatically removed when possible (after user"

    .line 820
    .line 821
    const-string v4, "        switch or reboot)"

    .line 822
    .line 823
    const-string v5, "      --wait: Wait until user is removed. Ignored if set-ephemeral-if-in-use"

    .line 824
    .line 825
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    .line 827
    .line 828
    const-string v2, "  mark-guest-for-deletion USER_ID"

    .line 829
    .line 830
    const-string v3, "    Mark the guest user for deletion. After this, it is possible to create a"

    .line 831
    .line 832
    const-string v4, "    new guest user and switch to it. This allows resetting the guest user"

    .line 833
    .line 834
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    const-string v2, "    without switching to another user."

    .line 838
    .line 839
    const-string v3, "  rename-user USER_ID [USER_NAME]"

    .line 840
    .line 841
    const-string v4, "    Rename USER_ID with USER_NAME (or null when [USER_NAME] is not set)"

    .line 842
    .line 843
    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    .line 845
    .line 846
    const-string v2, "  set-user-restriction [--user USER_ID] RESTRICTION VALUE"

    .line 847
    .line 848
    const-string v3, "  get-user-restriction [--user USER_ID] [--all] RESTRICTION_KEY"

    .line 849
    .line 850
    invoke-static {v0, v1, v2, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    .line 852
    .line 853
    const-string v2, "    Display the value of restriction for the given restriction key if the"

    .line 854
    .line 855
    const-string v3, "    given user is valid."

    .line 856
    .line 857
    const-string v4, "      --all: display all restrictions for the given user"

    .line 858
    .line 859
    const-string v5, "          This option is used without restriction key"

    .line 860
    .line 861
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    .line 863
    .line 864
    const-string v2, "  get-max-users"

    .line 865
    .line 866
    const-string v3, "  get-max-running-users"

    .line 867
    .line 868
    invoke-static {v0, v1, v2, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    .line 870
    .line 871
    const-string v2, "  set-home-activity [--user USER_ID] TARGET-COMPONENT"

    .line 872
    .line 873
    const-string v3, "    Set the default home activity (aka launcher)."

    .line 874
    .line 875
    const-string v4, "    TARGET-COMPONENT can be a package name (com.package.my) or a full"

    .line 876
    .line 877
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    .line 879
    .line 880
    const-string v2, "    component (com.package.my/component.name). However, only the package name"

    .line 881
    .line 882
    const-string v3, "    matters: the actual component used will be determined automatically from"

    .line 883
    .line 884
    const-string v4, "    the package."

    .line 885
    .line 886
    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    .line 888
    .line 889
    const-string v2, "  set-installer PACKAGE INSTALLER"

    .line 890
    .line 891
    const-string v3, "    Set installer package name"

    .line 892
    .line 893
    const-string v4, "  get-instantapp-resolver"

    .line 894
    .line 895
    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    .line 897
    .line 898
    const-string v2, "    Return the name of the component that is the current instant app installer."

    .line 899
    .line 900
    const-string v3, "  set-harmful-app-warning [--user <USER_ID>] <PACKAGE> [<WARNING>]"

    .line 901
    .line 902
    const-string v4, "    Mark the app as harmful with the given warning message."

    .line 903
    .line 904
    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    .line 906
    .line 907
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 908
    .line 909
    .line 910
    const-string v2, "  get-harmful-app-warning [--user <USER_ID>] <PACKAGE>"

    .line 911
    .line 912
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 913
    .line 914
    .line 915
    const-string v2, "    Return the harmful app warning message for the given app, if present"

    .line 916
    .line 917
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 918
    .line 919
    .line 920
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 921
    .line 922
    .line 923
    const-string v2, "  uninstall-system-updates [<PACKAGE>]"

    .line 924
    .line 925
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 926
    .line 927
    .line 928
    const-string v2, "    Removes updates to the given system application and falls back to its"

    .line 929
    .line 930
    const-string v3, "    /system version. Does nothing if the given package is not a system app."

    .line 931
    .line 932
    const-string v4, "    If no package is specified, removes updates to all system applications."

    .line 933
    .line 934
    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    .line 936
    .line 937
    const-string v2, "  get-moduleinfo [--all | --installed] [module-name]"

    .line 938
    .line 939
    const-string v3, "    Displays module info. If module-name is specified only that info is shown"

    .line 940
    .line 941
    const-string v4, "    By default, without any argument only installed modules are shown."

    .line 942
    .line 943
    const-string v5, "      --all: show all module info"

    .line 944
    .line 945
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    .line 947
    .line 948
    const-string v2, "      --installed: show only installed modules"

    .line 949
    .line 950
    const-string v3, "  log-visibility [--enable|--disable] <PACKAGE>"

    .line 951
    .line 952
    const-string v4, "    Turns on debug logging when visibility is blocked for the given package."

    .line 953
    .line 954
    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    .line 956
    .line 957
    const-string v2, "      --enable: turn on debug logging (default)"

    .line 958
    .line 959
    const-string v3, "      --disable: turn off debug logging"

    .line 960
    .line 961
    const-string v4, "  set-silent-updates-policy [--allow-unlimited-silent-updates <INSTALLER>]"

    .line 962
    .line 963
    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    .line 965
    .line 966
    const-string v2, "                            [--throttle-time <SECONDS>] [--reset]"

    .line 967
    .line 968
    const-string v3, "    Sets the policies of the silent updates."

    .line 969
    .line 970
    const-string v4, "      --allow-unlimited-silent-updates: allows unlimited silent updated"

    .line 971
    .line 972
    const-string v5, "        installation requests from the installer without the throttle time."

    .line 973
    .line 974
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    .line 976
    .line 977
    const-string v2, "      --throttle-time: update the silent updates throttle time in seconds."

    .line 978
    .line 979
    const-string v3, "      --reset: restore the installer and throttle time to the default, and"

    .line 980
    .line 981
    const-string v4, "        clear tracks of silent updates in the system."

    .line 982
    .line 983
    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    .line 985
    .line 986
    const-string v2, "  clear-package-preferred-activities <PACKAGE>"

    .line 987
    .line 988
    const-string v3, "    Remove the preferred activity mappings for the given package."

    .line 989
    .line 990
    const-string v4, "  wait-for-handler --timeout <MILLIS>"

    .line 991
    .line 992
    const-string v5, "    Wait for a given amount of time till the package manager handler finishes"

    .line 993
    .line 994
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    .line 996
    .line 997
    const-string v2, "    handling all pending messages."

    .line 998
    .line 999
    const-string v3, "      --timeout: wait for a given number of milliseconds. If the handler(s)"

    .line 1000
    .line 1001
    const-string v4, "        fail to finish before the timeout, the command returns error."

    .line 1002
    .line 1003
    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    .line 1005
    .line 1006
    const-string v2, "  wait-for-background-handler --timeout <MILLIS>"

    .line 1007
    .line 1008
    const-string v5, "    Wait for a given amount of time till the package manager\'s background"

    .line 1009
    .line 1010
    const-string v6, "    handler finishes handling all pending messages."

    .line 1011
    .line 1012
    invoke-static {v0, v2, v5, v6, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    .line 1014
    .line 1015
    const-string v2, "  archive [--user USER_ID] PACKAGE "

    .line 1016
    .line 1017
    const-string v3, "    During the archival process, the apps APKs and cache are removed from the"

    .line 1018
    .line 1019
    invoke-static {v0, v4, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    .line 1021
    .line 1022
    const-string v2, "    device while the user data is kept. Options are:"

    .line 1023
    .line 1024
    const-string v3, "      --user: archive the app from the given user."

    .line 1025
    .line 1026
    const-string v4, "  request-unarchive [--user USER_ID] PACKAGE "

    .line 1027
    .line 1028
    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    .line 1030
    .line 1031
    const-string v2, "    Requests to unarchive a currently archived package by sending a request"

    .line 1032
    .line 1033
    const-string v3, "    to unarchive an app to the responsible installer. Options are:"

    .line 1034
    .line 1035
    const-string v4, "      --user: request unarchival of the app from the given user."

    .line 1036
    .line 1037
    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    .line 1039
    .line 1040
    const-string v2, "  get-domain-verification-agent [--user USER_ID]"

    .line 1041
    .line 1042
    const-string v3, "    Displays the component name of the domain verification agent on device."

    .line 1043
    .line 1044
    const-string v4, "    If the component isn\'t enabled, an error message will be displayed."

    .line 1045
    .line 1046
    const-string v5, "      --user: return the agent of the given user (SYSTEM_USER if unspecified)"

    .line 1047
    .line 1048
    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    .line 1050
    .line 1051
    const-string v2, "  get-package-storage-stats [--user <USER_ID>] <PACKAGE>"

    .line 1052
    .line 1053
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    .line 1055
    .line 1056
    const-string v2, "    Return the storage stats for the given app, if present"

    .line 1057
    .line 1058
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1062
    .line 1063
    .line 1064
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    .line 1065
    .line 1066
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v3

    .line 1070
    const-string v4, "  "

    .line 1071
    .line 1072
    invoke-direct {v2, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1073
    .line 1074
    .line 1075
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1076
    .line 1077
    .line 1078
    :try_start_0
    const-class v3, Lcom/android/server/art/ArtManagerLocal;

    .line 1079
    .line 1080
    invoke-static {v3}, Lcom/android/server/LocalManagerRegistry;->getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v3

    .line 1084
    check-cast v3, Lcom/android/server/art/ArtManagerLocal;

    .line 1085
    .line 1086
    invoke-virtual {v3, v2}, Lcom/android/server/art/ArtManagerLocal;->printShellCommandHelp(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Lcom/android/server/LocalManagerRegistry$ManagerNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1087
    .line 1088
    .line 1089
    goto :goto_0

    .line 1090
    :catch_0
    const-string v3, "ART Service is not ready. Please try again later"

    .line 1091
    .line 1092
    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1093
    .line 1094
    .line 1095
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1096
    .line 1097
    .line 1098
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1099
    .line 1100
    .line 1101
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mDomainVerificationShell:Lcom/android/server/pm/verify/domain/DomainVerificationShell;

    .line 1102
    .line 1103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1104
    .line 1105
    .line 1106
    const-string p0, "  get-app-links [--user <USER_ID>] [<PACKAGE>]"

    .line 1107
    .line 1108
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1109
    .line 1110
    .line 1111
    const-string p0, "    Prints the domain verification state for the given package, or for all"

    .line 1112
    .line 1113
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1114
    .line 1115
    .line 1116
    const-string p0, "    packages if none is specified. State codes are defined as follows:"

    .line 1117
    .line 1118
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1119
    .line 1120
    .line 1121
    const-string p0, "        - none: nothing has been recorded for this domain"

    .line 1122
    .line 1123
    const-string v2, "        - verified: the domain has been successfully verified"

    .line 1124
    .line 1125
    const-string v3, "        - approved: force approved, usually through shell"

    .line 1126
    .line 1127
    const-string v4, "        - denied: force denied, usually through shell"

    .line 1128
    .line 1129
    invoke-static {v0, p0, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    .line 1131
    .line 1132
    const-string p0, "        - migrated: preserved verification from a legacy response"

    .line 1133
    .line 1134
    const-string v2, "        - restored: preserved verification from a user data restore"

    .line 1135
    .line 1136
    const-string v3, "        - legacy_failure: rejected by a legacy verifier, unknown reason"

    .line 1137
    .line 1138
    const-string v4, "        - system_configured: automatically approved by the device config"

    .line 1139
    .line 1140
    invoke-static {v0, p0, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    .line 1142
    .line 1143
    const-string p0, "        - pre_verified: the domain was pre-verified by the installer"

    .line 1144
    .line 1145
    const-string v2, "        - >= 1024: Custom error code which is specific to the device verifier"

    .line 1146
    .line 1147
    const-string v3, "      --user <USER_ID>: include user selections (includes all domains, not"

    .line 1148
    .line 1149
    const-string v4, "        just autoVerify ones)"

    .line 1150
    .line 1151
    invoke-static {v0, p0, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    .line 1153
    .line 1154
    const-string p0, "  reset-app-links [--user <USER_ID>] [<PACKAGE>]"

    .line 1155
    .line 1156
    const-string v2, "    Resets domain verification state for the given package, or for all"

    .line 1157
    .line 1158
    const-string v3, "    packages if none is specified."

    .line 1159
    .line 1160
    const-string v4, "      --user <USER_ID>: clear user selection state instead; note this means"

    .line 1161
    .line 1162
    invoke-static {v0, p0, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    .line 1164
    .line 1165
    const-string p0, "        domain verification state will NOT be cleared"

    .line 1166
    .line 1167
    const-string v2, "      <PACKAGE>: the package to reset, or \"all\" to reset all packages"

    .line 1168
    .line 1169
    const-string v3, "  verify-app-links [--re-verify] [<PACKAGE>]"

    .line 1170
    .line 1171
    const-string v4, "    Broadcasts a verification request for the given package, or for all"

    .line 1172
    .line 1173
    invoke-static {v0, p0, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    .line 1175
    .line 1176
    const-string p0, "    packages if none is specified. Only sends if the package has previously"

    .line 1177
    .line 1178
    const-string v2, "    not recorded a response."

    .line 1179
    .line 1180
    const-string v3, "      --re-verify: send even if the package has recorded a response"

    .line 1181
    .line 1182
    const-string v4, "  set-app-links [--package <PACKAGE>] <STATE> <DOMAINS>..."

    .line 1183
    .line 1184
    invoke-static {v0, p0, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    .line 1186
    .line 1187
    const-string p0, "    Manually set the state of a domain for a package. The domain must be"

    .line 1188
    .line 1189
    const-string v2, "    declared by the package as autoVerify for this to work. This command"

    .line 1190
    .line 1191
    const-string v3, "    will not report a failure for domains that could not be applied."

    .line 1192
    .line 1193
    const-string v4, "      --package <PACKAGE>: the package to set, or \"all\" to set all packages"

    .line 1194
    .line 1195
    invoke-static {v0, p0, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    .line 1197
    .line 1198
    const-string p0, "      <STATE>: the code to set the domains to, valid values are:"

    .line 1199
    .line 1200
    const-string v2, "        STATE_NO_RESPONSE (0): reset as if no response was ever recorded."

    .line 1201
    .line 1202
    const-string v3, "        STATE_SUCCESS (1): treat domain as successfully verified by domain."

    .line 1203
    .line 1204
    const-string v5, "          verification agent. Note that the domain verification agent can"

    .line 1205
    .line 1206
    invoke-static {v0, p0, v2, v3, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    .line 1208
    .line 1209
    const-string p0, "          override this."

    .line 1210
    .line 1211
    const-string v2, "        STATE_APPROVED (2): treat domain as always approved, preventing the"

    .line 1212
    .line 1213
    const-string v3, "           domain verification agent from changing it."

    .line 1214
    .line 1215
    const-string v5, "        STATE_DENIED (3): treat domain as always denied, preveting the domain"

    .line 1216
    .line 1217
    invoke-static {v0, p0, v2, v3, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    .line 1219
    .line 1220
    const-string p0, "          verification agent from changing it."

    .line 1221
    .line 1222
    const-string v2, "      <DOMAINS>: space separated list of domains to change, or \"all\" to"

    .line 1223
    .line 1224
    const-string v3, "        change every domain."

    .line 1225
    .line 1226
    const-string v5, "  set-app-links-user-selection --user <USER_ID> [--package <PACKAGE>]"

    .line 1227
    .line 1228
    invoke-static {v0, p0, v2, v3, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    .line 1230
    .line 1231
    const-string p0, "      <ENABLED> <DOMAINS>..."

    .line 1232
    .line 1233
    const-string v5, "    Manually set the state of a host user selection for a package. The domain"

    .line 1234
    .line 1235
    const-string v6, "    must be declared by the package for this to work. This command will not"

    .line 1236
    .line 1237
    const-string v7, "    report a failure for domains that could not be applied."

    .line 1238
    .line 1239
    invoke-static {v0, p0, v5, v6, v7}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    .line 1241
    .line 1242
    const-string p0, "      --user <USER_ID>: the user to change selections for"

    .line 1243
    .line 1244
    const-string v5, "      --package <PACKAGE>: the package to set"

    .line 1245
    .line 1246
    const-string v6, "      <ENABLED>: whether or not to approve the domain"

    .line 1247
    .line 1248
    invoke-static {v0, p0, v5, v6, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    .line 1250
    .line 1251
    const-string v2, "  set-app-links-allowed --user <USER_ID> [--package <PACKAGE>] <ALLOWED>"

    .line 1252
    .line 1253
    const-string v5, "    Toggle the auto verified link handling setting for a package."

    .line 1254
    .line 1255
    invoke-static {v0, v3, v2, v5, p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    .line 1257
    .line 1258
    const-string p0, "        packages will be reset if no one package is specified."

    .line 1259
    .line 1260
    const-string v2, "      <ALLOWED>: true to allow the package to open auto verified links, false"

    .line 1261
    .line 1262
    const-string v3, "        to disable"

    .line 1263
    .line 1264
    invoke-static {v0, v4, p0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    .line 1266
    .line 1267
    const-string p0, "  get-app-link-owners [--user <USER_ID>] [--package <PACKAGE>] [<DOMAINS>]"

    .line 1268
    .line 1269
    const-string v2, "    Print the owners for a specific domain for a given user in low to high"

    .line 1270
    .line 1271
    const-string v3, "    priority order."

    .line 1272
    .line 1273
    const-string v4, "      --user <USER_ID>: the user to query for"

    .line 1274
    .line 1275
    invoke-static {v0, p0, v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    .line 1277
    .line 1278
    const-string p0, "      --package <PACKAGE>: optionally also print for all web domains declared"

    .line 1279
    .line 1280
    const-string v2, "        by a package, or \"all\" to print all packages"

    .line 1281
    .line 1282
    const-string v3, "      --<DOMAINS>: space separated list of domains to query for"

    .line 1283
    .line 1284
    invoke-static {v0, p0, v2, v3, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    .line 1286
    .line 1287
    invoke-static {v0, v1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1288
    .line 1289
    .line 1290
    return-void
.end method

.method public final openInFile(JLjava/lang/String;)Landroid/util/Pair;
    .locals 8

    .line 1
    const-string v0, "-"

    .line 2
    .line 3
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    invoke-static {p3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-eqz p3, :cond_3

    .line 22
    .line 23
    const-string/jumbo p1, "r"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p3, p1}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-wide/16 v4, -0x1

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {v3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_1
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    .line 44
    .line 45
    .line 46
    move-result-wide v6

    .line 47
    cmp-long p2, v6, v1

    .line 48
    .line 49
    if-gez p2, :cond_2

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string p1, "Unable to get size of: "

    .line 59
    .line 60
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-static {v3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :cond_2
    move-object p3, p1

    .line 77
    move-wide p1, v6

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-static {p3}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    :goto_0
    cmp-long v0, p1, v1

    .line 88
    .line 89
    if-gtz v0, :cond_4

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    const-string p1, "Error: must specify an APK size"

    .line 96
    .line 97
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-wide/16 p0, 0x1

    .line 101
    .line 102
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    invoke-static {v3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    return-object p0

    .line 111
    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {p3, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0
.end method

.method public final parseIntentAndUser()Landroid/content/Intent;
    .locals 8

    .line 1
    const/4 v0, -0x2

    .line 2
    iput v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    .line 8
    .line 9
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$3;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerShellCommand$3;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 37
    .line 38
    return-object v0
.end method

.method public final processArgForLocalFile(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;Z)V
    .locals 8

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    const-string/jumbo v1, "r"

    .line 11
    .line 12
    .line 13
    if-eqz p3, :cond_0

    .line 14
    .line 15
    const-wide/16 v4, -0x1

    .line 16
    .line 17
    invoke-virtual {p0, v4, v5, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->getArchivedPackage(JLjava/lang/String;)Landroid/content/pm/ArchivedPackageParcel;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forArchived(Landroid/content/pm/ArchivedPackageParcel;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-wide/16 v4, 0x0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {p1}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->forLocalFile(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {p0, v4, v1}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-eqz v4, :cond_2

    .line 41
    .line 42
    :try_start_0
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    .line 43
    .line 44
    .line 45
    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 47
    .line 48
    .line 49
    move-object v0, v2

    .line 50
    move-wide v4, v5

    .line 51
    :goto_0
    if-nez p3, :cond_1

    .line 52
    .line 53
    const-string p3, ".idsig"

    .line 54
    .line 55
    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p0, p1, v1}, Landroid/os/ShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    if-eqz p0, :cond_1

    .line 64
    .line 65
    :try_start_1
    invoke-static {p0}, Landroid/os/incremental/V4Signature;->readFrom(Landroid/os/ParcelFileDescriptor;)Landroid/os/incremental/V4Signature;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Landroid/os/incremental/V4Signature;->toByteArray()[B

    .line 70
    .line 71
    .line 72
    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 74
    .line 75
    .line 76
    move-object v7, p1

    .line 77
    goto :goto_3

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception p1

    .line 81
    :try_start_2
    const-string p3, "PackageManagerShellCommand"

    .line 82
    .line 83
    const-string v1, "V4 signature file exists but failed to be parsed."

    .line 84
    .line 85
    invoke-static {p3, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    .line 87
    .line 88
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :goto_1
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_1
    :goto_2
    const/4 p0, 0x0

    .line 97
    move-object v7, p0

    .line 98
    :goto_3
    const/4 v2, 0x0

    .line 99
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->toByteArray()[B

    .line 100
    .line 101
    .line 102
    move-result-object v6

    .line 103
    move-object v1, p2

    .line 104
    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/PackageInstaller$Session;->addFile(ILjava/lang/String;J[B[B)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :catchall_1
    move-exception p0

    .line 109
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 114
    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string p2, "Error: Can\'t open file: "

    .line 118
    .line 119
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    throw p0
.end method

.method public final processArgForStdin(Ljava/lang/String;Landroid/content/pm/PackageInstaller$Session;)I
    .locals 16

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const-string v0, "V4 signature is invalid in: "

    .line 4
    .line 5
    const-string v2, "Unsupported streaming version: "

    .line 6
    .line 7
    const-string v3, ":"

    .line 8
    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x1

    .line 14
    :try_start_0
    array-length v5, v3

    .line 15
    const/4 v6, 0x2

    .line 16
    if-ge v5, v6, :cond_0

    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v2, "Must specify file name and size"

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return v4

    .line 28
    :catch_0
    move-exception v0

    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_0
    const/4 v5, 0x0

    .line 32
    aget-object v9, v3, v5

    .line 33
    .line 34
    aget-object v7, v3, v4

    .line 35
    .line 36
    invoke-static {v7}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v10

    .line 40
    array-length v7, v3

    .line 41
    if-le v7, v6, :cond_1

    .line 42
    .line 43
    aget-object v7, v3, v6

    .line 44
    .line 45
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-nez v7, :cond_1

    .line 50
    .line 51
    aget-object v7, v3, v6

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move-object v7, v9

    .line 55
    :goto_0
    array-length v8, v3

    .line 56
    const/4 v12, 0x0

    .line 57
    const/4 v13, 0x3

    .line 58
    if-le v8, v13, :cond_2

    .line 59
    .line 60
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    aget-object v14, v3, v13

    .line 65
    .line 66
    invoke-virtual {v8, v14}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    move-object v14, v8

    .line 71
    goto :goto_1

    .line 72
    :cond_2
    move-object v14, v12

    .line 73
    :goto_1
    array-length v8, v3

    .line 74
    const/4 v15, 0x4

    .line 75
    if-le v8, v15, :cond_4

    .line 76
    .line 77
    aget-object v3, v3, v15

    .line 78
    .line 79
    invoke-static {v3}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-ltz v3, :cond_3

    .line 84
    .line 85
    if-le v3, v4, :cond_5

    .line 86
    .line 87
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    return v4

    .line 107
    :cond_4
    move v3, v5

    .line 108
    :cond_5
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_6

    .line 113
    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const-string v2, "Empty file name in: "

    .line 119
    .line 120
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return v4

    .line 128
    :cond_6
    if-eqz v14, :cond_8

    .line 129
    .line 130
    if-nez v3, :cond_7

    .line 131
    .line 132
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    .line 133
    .line 134
    invoke-direct {v2, v6, v7, v12}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_7
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    .line 139
    .line 140
    invoke-direct {v2, v13, v7, v12}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :goto_2
    :try_start_1
    array-length v3, v14

    .line 144
    if-lez v3, :cond_9

    .line 145
    .line 146
    invoke-static {v14}, Landroid/os/incremental/V4Signature;->readFrom([B)Landroid/os/incremental/V4Signature;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    if-nez v3, :cond_9

    .line 151
    .line 152
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    .line 162
    .line 163
    return v4

    .line 164
    :catch_1
    move-exception v0

    .line 165
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string v5, "V4 signature is invalid: "

    .line 172
    .line 173
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v0, " in "

    .line 180
    .line 181
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    return v4

    .line 195
    :cond_8
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    .line 196
    .line 197
    invoke-direct {v2, v5, v7, v12}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :cond_9
    const/4 v8, 0x0

    .line 201
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->toByteArray()[B

    .line 202
    .line 203
    .line 204
    move-result-object v12

    .line 205
    move-object/from16 v7, p2

    .line 206
    .line 207
    move-object v13, v14

    .line 208
    invoke-virtual/range {v7 .. v13}, Landroid/content/pm/PackageInstaller$Session;->addFile(ILjava/lang/String;J[B[B)V

    .line 209
    .line 210
    .line 211
    return v5

    .line 212
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    const-string v5, "Unable to parse file parameters: "

    .line 219
    .line 220
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v1, ", reason: "

    .line 227
    .line 228
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    return v4
.end method

.method public final runArchive()I
    .locals 13

    .line 1
    const-string v0, "]"

    .line 2
    .line 3
    const-string v1, "Failure ["

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v3, -0x1

    .line 10
    move v4, v3

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    const/4 v6, 0x1

    .line 16
    if-eqz v5, :cond_2

    .line 17
    .line 18
    const-string v4, "--user"

    .line 19
    .line 20
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static {v4}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eq v4, v3, :cond_0

    .line 35
    .line 36
    const/4 v5, -0x2

    .line 37
    if-eq v4, v5, :cond_0

    .line 38
    .line 39
    const-class v5, Lcom/android/server/pm/UserManagerInternal;

    .line 40
    .line 41
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    check-cast v5, Lcom/android/server/pm/UserManagerInternal;

    .line 46
    .line 47
    invoke-virtual {v5, v4}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    if-nez v5, :cond_0

    .line 52
    .line 53
    const-string p0, "Failure [user "

    .line 54
    .line 55
    const-string v0, " doesn\'t exist]"

    .line 56
    .line 57
    invoke-static {v4, v2, p0, v0}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return v6

    .line 61
    :cond_1
    const-string p0, "Error: Unknown option: "

    .line 62
    .line 63
    invoke-virtual {p0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return v6

    .line 71
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    if-nez v8, :cond_3

    .line 76
    .line 77
    const-string p0, "Error: package name not specified"

    .line 78
    .line 79
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return v6

    .line 83
    :cond_3
    const/4 v5, 0x0

    .line 84
    if-ne v4, v3, :cond_4

    .line 85
    .line 86
    const/4 v3, 0x2

    .line 87
    move v10, v3

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    move v10, v5

    .line 90
    :goto_0
    const-string/jumbo v3, "runArchive"

    .line 91
    .line 92
    .line 93
    invoke-static {v4, v5, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    .line 98
    .line 99
    invoke-direct {v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>()V

    .line 100
    .line 101
    .line 102
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 103
    .line 104
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    const-string v9, ""

    .line 109
    .line 110
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    .line 111
    .line 112
    .line 113
    move-result-object v11

    .line 114
    new-instance v12, Landroid/os/UserHandle;

    .line 115
    .line 116
    invoke-direct {v12, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 117
    .line 118
    .line 119
    invoke-interface/range {v7 .. v12}, Landroid/content/pm/IPackageInstaller;->requestArchive(Ljava/lang/String;Ljava/lang/String;ILandroid/content/IntentSender;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    const-string v3, "android.content.pm.extra.STATUS"

    .line 127
    .line 128
    invoke-virtual {p0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-nez v3, :cond_5

    .line 133
    .line 134
    const-string p0, "Success"

    .line 135
    .line 136
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    return v5

    .line 140
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    const-string v1, "android.content.pm.extra.STATUS_MESSAGE"

    .line 146
    .line 147
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    return v6

    .line 165
    :catch_0
    move-exception p0

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    return v6
.end method

.method public final runArchivedInstall()I
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->UNSUPPORTED_INSTALL_CMD_OPTS:Ljava/util/Set;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams(Ljava/util/Set;)Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 8
    .line 9
    iget v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 10
    .line 11
    const/high16 v3, 0x8000000

    .line 12
    .line 13
    or-int/2addr v2, v3

    .line 14
    iput v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 15
    .line 16
    iget-object v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 17
    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getStreamingDataLoaderParams(Landroid/os/ShellCommand;)Landroid/content/pm/DataLoaderParams;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setDataLoaderParams(Landroid/content/pm/DataLoaderParams;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doRunInstall(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public final runArtServiceCommand()I
    .locals 9

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/server/LocalManagerRegistry$ManagerNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 14
    .line 15
    .line 16
    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrFileDescriptor()Ljava/io/FileDescriptor;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 22
    .line 23
    .line 24
    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 25
    :try_start_3
    const-class v1, Lcom/android/server/art/ArtManagerLocal;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/android/server/LocalManagerRegistry;->getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/android/server/art/ArtManagerLocal;

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getTarget()Landroid/os/Binder;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getAllArgs()[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    move-object v3, v0

    .line 42
    move-object v4, v7

    .line 43
    move-object v5, v8

    .line 44
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/art/ArtManagerLocal;->handleShellCommand(Landroid/os/Binder;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 48
    if-eqz v8, :cond_0

    .line 49
    .line 50
    :try_start_4
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v1

    .line 55
    goto :goto_4

    .line 56
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 57
    .line 58
    :try_start_5
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_1
    move-exception v1

    .line 63
    goto :goto_6

    .line 64
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 65
    .line 66
    :try_start_6
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/android/server/LocalManagerRegistry$ManagerNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :catch_0
    move-exception p0

    .line 71
    goto :goto_8

    .line 72
    :cond_2
    :goto_2
    return v1

    .line 73
    :catchall_2
    move-exception v1

    .line 74
    if-eqz v8, :cond_3

    .line 75
    .line 76
    :try_start_7
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 77
    .line 78
    .line 79
    goto :goto_3

    .line 80
    :catchall_3
    move-exception v2

    .line 81
    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    :goto_3
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 85
    :goto_4
    if-eqz v7, :cond_4

    .line 86
    .line 87
    :try_start_9
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 88
    .line 89
    .line 90
    goto :goto_5

    .line 91
    :catchall_4
    move-exception v2

    .line 92
    :try_start_a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    :goto_5
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 96
    :goto_6
    if-eqz v0, :cond_5

    .line 97
    .line 98
    :try_start_b
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 99
    .line 100
    .line 101
    goto :goto_7

    .line 102
    :catchall_5
    move-exception v0

    .line 103
    :try_start_c
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    :cond_5
    :goto_7
    throw v1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Lcom/android/server/LocalManagerRegistry$ManagerNotFoundException; {:try_start_c .. :try_end_c} :catch_1

    .line 107
    :catch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    const-string v0, "ART Service is not ready. Please try again later"

    .line 112
    .line 113
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const/4 p0, -0x1

    .line 117
    return p0

    .line 118
    :goto_8
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 119
    .line 120
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    throw v0
.end method

.method public final runBypassAllowedApexUpdateCheck()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 6
    .line 7
    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-interface {v1, p0}, Landroid/content/pm/IPackageInstaller;->bypassNextAllowedApexUpdateCheck(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "Failure ["

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, " - "

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p0, "]"

    .line 56
    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 p0, -0x1

    .line 68
    return p0
.end method

.method public final runBypassStagedInstallerCheck()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 6
    .line 7
    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-interface {v1, p0}, Landroid/content/pm/IPackageInstaller;->bypassNextStagedInstallerCheck(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    return p0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "Failure ["

    .line 28
    .line 29
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, " - "

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p0, "]"

    .line 56
    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 p0, -0x1

    .line 68
    return p0
.end method

.method public final runClear()I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    const/4 v5, 0x1

    .line 13
    if-eqz v4, :cond_2

    .line 14
    .line 15
    const-string v6, "--cache-only"

    .line 16
    .line 17
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-nez v6, :cond_1

    .line 22
    .line 23
    const-string v2, "--user"

    .line 24
    .line 25
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    const-string p0, "Error: Unknown option: "

    .line 32
    .line 33
    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return v5

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v3, v5

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string v0, "Error: no package specified"

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return v5

    .line 68
    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->shellRestrictionsHelper:Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;

    .line 69
    .line 70
    const/4 v6, 0x5

    .line 71
    invoke-virtual {v4, v6, v0}, Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;->isRestrictedPackage(ILjava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_4

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const-string v1, "Error: package cmd restricted - package: "

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return v5

    .line 91
    :cond_4
    const/16 v4, -0x2710

    .line 92
    .line 93
    const-string/jumbo v6, "runClear"

    .line 94
    .line 95
    .line 96
    invoke-static {v2, v4, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;

    .line 101
    .line 102
    invoke-direct {v4}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 103
    .line 104
    .line 105
    if-nez v3, :cond_5

    .line 106
    .line 107
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-interface {v3, v0, v1, v4, v2}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_5
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 116
    .line 117
    invoke-interface {v3, v0, v2, v4}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    .line 118
    .line 119
    .line 120
    :goto_1
    monitor-enter v4

    .line 121
    :catch_0
    :goto_2
    :try_start_0
    iget-boolean v0, v4, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .line 123
    if-nez v0, :cond_6

    .line 124
    .line 125
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :catchall_0
    move-exception p0

    .line 130
    goto :goto_3

    .line 131
    :cond_6
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    iget-boolean v0, v4, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->result:Z

    .line 133
    .line 134
    if-eqz v0, :cond_7

    .line 135
    .line 136
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    const-string v0, "Success"

    .line 141
    .line 142
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    return v1

    .line 146
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    const-string v0, "Failed"

    .line 151
    .line 152
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return v5

    .line 156
    :goto_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    throw p0
.end method

.method public final runCreateUser()I
    .locals 13

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    move v8, v0

    .line 5
    move v3, v1

    .line 6
    move v7, v3

    .line 7
    move-object v4, v2

    .line 8
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v5

    .line 12
    const/4 v10, 0x1

    .line 13
    if-eqz v5, :cond_b

    .line 14
    .line 15
    const-string v6, "--profileOf"

    .line 16
    .line 17
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-eqz v6, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    const-string/jumbo v6, "runCreateUser"

    .line 32
    .line 33
    .line 34
    invoke-static {v5, v0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    :goto_1
    move-object v5, v2

    .line 39
    goto :goto_2

    .line 40
    :cond_1
    const-string v6, "--managed"

    .line 41
    .line 42
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_2

    .line 47
    .line 48
    const-string v5, "android.os.usertype.profile.MANAGED"

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const-string v6, "--restricted"

    .line 52
    .line 53
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-eqz v6, :cond_3

    .line 58
    .line 59
    const-string v5, "android.os.usertype.full.RESTRICTED"

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    const-string v6, "--guest"

    .line 63
    .line 64
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_4

    .line 69
    .line 70
    const-string v5, "android.os.usertype.full.GUEST"

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    const-string v6, "--demo"

    .line 74
    .line 75
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v6

    .line 79
    if-eqz v6, :cond_5

    .line 80
    .line 81
    const-string v5, "android.os.usertype.full.DEMO"

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_5
    const-string v6, "--ephemeral"

    .line 85
    .line 86
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-eqz v6, :cond_6

    .line 91
    .line 92
    or-int/lit16 v7, v7, 0x100

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_6
    const-string v6, "--for-testing"

    .line 96
    .line 97
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-eqz v6, :cond_7

    .line 102
    .line 103
    const v5, 0x8000

    .line 104
    .line 105
    .line 106
    or-int/2addr v7, v5

    .line 107
    goto :goto_1

    .line 108
    :cond_7
    const-string v6, "--pre-create-only"

    .line 109
    .line 110
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    if-eqz v6, :cond_8

    .line 115
    .line 116
    move-object v5, v2

    .line 117
    move v3, v10

    .line 118
    goto :goto_2

    .line 119
    :cond_8
    const-string v6, "--user-type"

    .line 120
    .line 121
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    if-eqz v6, :cond_a

    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    :goto_2
    if-eqz v5, :cond_0

    .line 132
    .line 133
    if-eqz v4, :cond_9

    .line 134
    .line 135
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    if-nez v6, :cond_9

    .line 140
    .line 141
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    const-string v0, "Error: more than one user type was specified ("

    .line 146
    .line 147
    const-string v1, " and "

    .line 148
    .line 149
    const-string v2, ")"

    .line 150
    .line 151
    invoke-static {v0, v4, v1, v5, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return v10

    .line 159
    :cond_9
    move-object v4, v5

    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    const-string v0, "Error: unknown option "

    .line 167
    .line 168
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return v10

    .line 176
    :cond_b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    if-nez v5, :cond_c

    .line 181
    .line 182
    if-nez v3, :cond_c

    .line 183
    .line 184
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 185
    .line 186
    .line 187
    move-result-object p0

    .line 188
    const-string v0, "Error: no user name specified."

    .line 189
    .line 190
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    return v10

    .line 194
    :cond_c
    if-eqz v5, :cond_d

    .line 195
    .line 196
    if-eqz v3, :cond_d

    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    const-string v6, "Warning: name is ignored for pre-created users"

    .line 203
    .line 204
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    :cond_d
    const-string/jumbo v0, "user"

    .line 208
    .line 209
    .line 210
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    const-string v6, "account"

    .line 219
    .line 220
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    invoke-static {v6}, Landroid/accounts/IAccountManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManager;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    if-nez v4, :cond_e

    .line 229
    .line 230
    invoke-static {v7}, Landroid/content/pm/UserInfo;->getDefaultUserType(I)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    :cond_e
    move-object v9, v4

    .line 235
    const-wide/32 v11, 0x40000

    .line 236
    .line 237
    .line 238
    const-string/jumbo v4, "shell_runCreateUser"

    .line 239
    .line 240
    .line 241
    invoke-static {v11, v12, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 242
    .line 243
    .line 244
    :try_start_0
    invoke-static {v9}, Landroid/os/UserManager;->isUserTypeRestricted(Ljava/lang/String;)Z

    .line 245
    .line 246
    .line 247
    move-result v4

    .line 248
    if-eqz v4, :cond_11

    .line 249
    .line 250
    if-ltz v8, :cond_f

    .line 251
    .line 252
    move v3, v8

    .line 253
    goto :goto_3

    .line 254
    :cond_f
    move v3, v1

    .line 255
    :goto_3
    invoke-interface {v0, v5, v3}, Landroid/os/IUserManager;->createRestrictedProfileWithThrow(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-nez v0, :cond_10

    .line 264
    .line 265
    const-string/jumbo v0, "root"

    .line 266
    .line 267
    .line 268
    goto :goto_4

    .line 269
    :catchall_0
    move-exception p0

    .line 270
    goto :goto_9

    .line 271
    :catch_0
    move-exception v0

    .line 272
    goto :goto_7

    .line 273
    :cond_10
    const-string v0, "com.android.shell"

    .line 274
    .line 275
    :goto_4
    invoke-interface {v6, v3, v8, v0}, Landroid/accounts/IAccountManager;->addSharedAccountsFromParentUser(IILjava/lang/String;)V

    .line 276
    .line 277
    .line 278
    goto :goto_6

    .line 279
    :cond_11
    if-gez v8, :cond_13

    .line 280
    .line 281
    if-eqz v3, :cond_12

    .line 282
    .line 283
    invoke-interface {v0, v9}, Landroid/os/IUserManager;->preCreateUserWithThrow(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    :goto_5
    move-object v2, v0

    .line 288
    goto :goto_6

    .line 289
    :cond_12
    invoke-interface {v0, v5, v9, v7}, Landroid/os/IUserManager;->createUserWithThrow(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    goto :goto_5

    .line 294
    :cond_13
    const/4 v3, 0x0

    .line 295
    move-object v4, v0

    .line 296
    move-object v6, v9

    .line 297
    move-object v9, v3

    .line 298
    invoke-interface/range {v4 .. v9}, Landroid/os/IUserManager;->createProfileForUserWithThrow(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    .line 299
    .line 300
    .line 301
    move-result-object v2
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :goto_6
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 303
    .line 304
    .line 305
    goto :goto_8

    .line 306
    :goto_7
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .line 314
    .line 315
    const-string v5, "Error: "

    .line 316
    .line 317
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    .line 329
    .line 330
    goto :goto_6

    .line 331
    :goto_8
    if-eqz v2, :cond_14

    .line 332
    .line 333
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 334
    .line 335
    .line 336
    move-result-object p0

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    const-string v3, "Success: created user id "

    .line 340
    .line 341
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 345
    .line 346
    invoke-static {v0, v2, p0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 347
    .line 348
    .line 349
    return v1

    .line 350
    :cond_14
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 351
    .line 352
    .line 353
    move-result-object p0

    .line 354
    const-string v0, "Error: couldn\'t create User."

    .line 355
    .line 356
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    return v10

    .line 360
    :goto_9
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 361
    .line 362
    .line 363
    throw p0
.end method

.method public final runDisableVerificationForUid()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-class v3, Landroid/app/ActivityManagerInternal;

    .line 15
    .line 16
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Landroid/app/ActivityManagerInternal;

    .line 21
    .line 22
    invoke-virtual {v3, v2}, Landroid/app/ActivityManagerInternal;->getInstrumentationSourceUid(I)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eq v3, v1, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 29
    .line 30
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0, v2}, Landroid/content/pm/IPackageInstaller;->disableVerificationForUid(I)V

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    return p0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string p0, "Error: must specify an instrumented uid"

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    return v1

    .line 47
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v3, "Failure ["

    .line 50
    .line 51
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v3, " - "

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p0, "]"

    .line 78
    .line 79
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return v1
.end method

.method public final runDump()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "Error: no package specified"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p0, v0}, Landroid/app/ActivityManager;->dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public final runDumpPackage()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "Error: no package specified"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 19
    .line 20
    check-cast v1, Landroid/os/IBinder;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    filled-new-array {v0}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string v1, "Failure dumping service:"

    .line 40
    .line 41
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 48
    .line 49
    .line 50
    :goto_0
    const/4 p0, 0x0

    .line 51
    return p0
.end method

.method public final runGc()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v0, "Ok"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final runGetAppMetadata()I
    .locals 8

    .line 1
    const-string v0, "]"

    .line 2
    .line 3
    const-string v1, " - "

    .line 4
    .line 5
    const-string v2, "Failure ["

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v4, "android.permission.GET_APP_METADATA"

    .line 10
    .line 11
    const-string v5, "getAppMetadataFd"

    .line 12
    .line 13
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const/4 v5, -0x1

    .line 25
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    .line 30
    .line 31
    .line 32
    move-result p0

    .line 33
    invoke-interface {v6, v4, p0}, Landroid/content/pm/IPackageManager;->getAppMetadataFd(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    .line 34
    .line 35
    .line 36
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    .line 40
    .line 41
    new-instance v6, Ljava/io/InputStreamReader;

    .line 42
    .line 43
    new-instance v7, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 44
    .line 45
    invoke-direct {v7, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    .line 53
    .line 54
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->ready()Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-eqz p0, :cond_0

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_4

    .line 74
    :catch_0
    move-exception p0

    .line 75
    goto :goto_3

    .line 76
    :goto_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catchall_1
    move-exception v4

    .line 81
    :try_start_5
    invoke-virtual {p0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    :goto_2
    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 85
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return v5

    .line 122
    :cond_1
    :goto_4
    const/4 p0, 0x1

    .line 123
    return p0

    .line 124
    :catch_1
    move-exception p0

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    return v5
.end method

.method public final runGetArchivedPackageMetadata()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x2

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    const-string v1, "--user"

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const-string p0, "Error: Unknown option: "

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return v3

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    const-string p0, "Error: package name not specified"

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v3

    .line 52
    :cond_2
    const/16 v3, -0x2710

    .line 53
    .line 54
    const-string/jumbo v4, "runGetArchivedPackageMetadata"

    .line 55
    .line 56
    .line 57
    invoke-static {v1, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    const/4 v3, -0x1

    .line 62
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 63
    .line 64
    invoke-interface {v4, v2, v1}, Landroid/content/pm/IPackageManager;->getArchivedPackage(Ljava/lang/String;I)Landroid/content/pm/ArchivedPackageParcel;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    if-nez v1, :cond_3

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v4, "Package not found "

    .line 76
    .line 77
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return v3

    .line 91
    :catch_0
    move-exception v1

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 94
    .line 95
    .line 96
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    const/4 v4, 0x0

    .line 98
    :try_start_1
    invoke-virtual {v2, v1, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    .line 102
    .line 103
    .line 104
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 106
    .line 107
    .line 108
    invoke-static {v1}, Llibcore/util/HexEncoding;->encodeToString([B)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return v4

    .line 116
    :catchall_0
    move-exception v1

    .line 117
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 118
    .line 119
    .line 120
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 121
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v4, "Failed to get archived package, reason: "

    .line 128
    .line 129
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    new-instance p0, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v2, "Failure [failed to get archived package], reason: "

    .line 145
    .line 146
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return v3
.end method

.method public final runGetDistractingRestriction()I
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    if-eqz v4, :cond_1

    .line 13
    .line 14
    const-string v3, "--user"

    .line 15
    .line 16
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    const-string p0, "Error: Unknown option: "

    .line 23
    .line 24
    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-eqz v5, :cond_2

    .line 50
    .line 51
    const-string p0, "Error: package name not specified"

    .line 52
    .line 53
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return v0

    .line 57
    :cond_2
    const-string v5, "Distracting restrictions state for user "

    .line 58
    .line 59
    invoke-static {v1, v5, v3}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 60
    .line 61
    .line 62
    const/16 v5, -0x2710

    .line 63
    .line 64
    const-string v6, "get-distracting"

    .line 65
    .line 66
    invoke-static {v3, v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    new-array v5, v2, [Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, [Ljava/lang/String;

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPm:Landroid/content/pm/PackageManagerInternal;

    .line 79
    .line 80
    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 81
    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    const-string/jumbo v7, "packageNames cannot be null"

    .line 96
    .line 97
    .line 98
    invoke-static {v4, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mDistractingPackageHelper:Lcom/android/server/pm/DistractingPackageHelper;

    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    array-length p0, v4

    .line 107
    new-array v7, p0, [I

    .line 108
    .line 109
    const/4 v8, -0x1

    .line 110
    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([II)V

    .line 111
    .line 112
    .line 113
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v9

    .line 117
    if-eqz v9, :cond_3

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_3
    move v9, v2

    .line 121
    :goto_1
    array-length v10, v4

    .line 122
    if-ge v9, v10, :cond_5

    .line 123
    .line 124
    aget-object v10, v4, v9

    .line 125
    .line 126
    invoke-interface {v6, v5, v3, v10}, Lcom/android/server/pm/Computer;->getPackageStateForInstalledAndFiltered(IILjava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    if-nez v10, :cond_4

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    invoke-interface {v10, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    .line 138
    .line 139
    .line 140
    move-result v10

    .line 141
    aput v10, v7, v9

    .line 142
    .line 143
    :goto_2
    add-int/2addr v9, v0

    .line 144
    goto :goto_1

    .line 145
    :cond_5
    :goto_3
    move v3, v2

    .line 146
    :goto_4
    if-ge v3, p0, :cond_a

    .line 147
    .line 148
    aget v5, v7, v3

    .line 149
    .line 150
    if-ne v5, v8, :cond_6

    .line 151
    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    aget-object v6, v4, v3

    .line 158
    .line 159
    const-string v9, " not found ..."

    .line 160
    .line 161
    invoke-static {v1, v6, v9, v5}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 162
    .line 163
    .line 164
    goto :goto_6

    .line 165
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    aget-object v9, v4, v3

    .line 171
    .line 172
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v9, "  state: "

    .line 176
    .line 177
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    if-eqz v5, :cond_9

    .line 181
    .line 182
    if-eq v5, v0, :cond_8

    .line 183
    .line 184
    const/4 v9, 0x2

    .line 185
    if-eq v5, v9, :cond_7

    .line 186
    .line 187
    const-string v5, "UNKNOWN"

    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_7
    const-string v5, "HIDE_NOTIFICATIONS"

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_8
    const-string v5, "HIDE_FROM_SUGGESTIONS"

    .line 194
    .line 195
    goto :goto_5

    .line 196
    :cond_9
    const-string v5, "NONE"

    .line 197
    .line 198
    :goto_5
    invoke-static {v6, v5, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 199
    .line 200
    .line 201
    :goto_6
    add-int/2addr v3, v0

    .line 202
    goto :goto_4

    .line 203
    :cond_a
    return v2
.end method

.method public final runGetDomainVerificationAgent()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    move v2, v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v3, :cond_2

    .line 13
    .line 14
    const-string v2, "--user"

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eq v2, v1, :cond_0

    .line 31
    .line 32
    const/4 v3, -0x2

    .line 33
    if-eq v2, v3, :cond_0

    .line 34
    .line 35
    const-class v3, Lcom/android/server/pm/UserManagerInternal;

    .line 36
    .line 37
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/android/server/pm/UserManagerInternal;

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-nez v3, :cond_0

    .line 48
    .line 49
    const-string p0, "Failure [user "

    .line 50
    .line 51
    const-string v1, " doesn\'t exist]"

    .line 52
    .line 53
    invoke-static {v2, v0, p0, v1}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return v4

    .line 57
    :cond_1
    const-string p0, "Error: Unknown option: "

    .line 58
    .line 59
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return v4

    .line 67
    :cond_2
    const/4 v1, 0x0

    .line 68
    const-string/jumbo v3, "runGetDomainVerificationAgent"

    .line 69
    .line 70
    .line 71
    invoke-static {v2, v1, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 76
    .line 77
    invoke-interface {p0, v2}, Landroid/content/pm/IPackageManager;->getDomainVerificationAgent(I)Landroid/content/ComponentName;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    if-nez p0, :cond_3

    .line 82
    .line 83
    const-string p0, "No Domain Verifier available!"

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception p0

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    return v1

    .line 96
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v2, "Failure ["

    .line 99
    .line 100
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string p0, "]"

    .line 111
    .line 112
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return v4
.end method

.method public final runGetHarmfulAppWarning()I
    .locals 3

    .line 1
    const/4 v0, -0x2

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    const-string v0, "--user"

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "Error: Unknown option: "

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, -0x1

    .line 39
    return p0

    .line 40
    :cond_1
    const/16 v1, -0x2710

    .line 41
    .line 42
    const-string/jumbo v2, "runGetHarmfulAppWarning"

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 54
    .line 55
    invoke-interface {v2, v1, v0}, Landroid/content/pm/IPackageManager;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x0

    .line 73
    return p0

    .line 74
    :cond_2
    const/4 p0, 0x1

    .line 75
    return p0
.end method

.method public final runGetInstallLocation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getInstallLocation()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v1, "auto"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    const-string v1, "internal"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v1, 0x2

    .line 19
    if-ne v0, v1, :cond_2

    .line 20
    .line 21
    const-string v1, "external"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const-string v1, "invalid"

    .line 25
    .line 26
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, "["

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, "]"

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final runGetModuleInfo()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, -0x1

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    const-string v4, "--all"

    .line 14
    .line 15
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_1

    .line 20
    .line 21
    const-string v4, "--installed"

    .line 22
    .line 23
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    const-string p0, "Error: Unknown option: "

    .line 30
    .line 31
    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return v3

    .line 39
    :cond_1
    const/high16 v1, 0x20000

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v4, " packageName: "

    .line 47
    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 51
    .line 52
    invoke-interface {p0, v2, v1}, Landroid/content/pm/IPackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/content/pm/ModuleInfo;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :catch_0
    move-exception p0

    .line 87
    goto :goto_3

    .line 88
    :cond_3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 89
    .line 90
    invoke-interface {p0, v1}, Landroid/content/pm/IPackageManager;->getInstalledModules(I)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_4

    .line 103
    .line 104
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Landroid/content/pm/ModuleInfo;

    .line 109
    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Landroid/content/pm/ModuleInfo;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Landroid/content/pm/ModuleInfo;->getPackageName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_4
    :goto_2
    const/4 p0, 0x1

    .line 141
    return p0

    .line 142
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    const-string v2, "Failure ["

    .line 145
    .line 146
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v2, " - "

    .line 161
    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string p0, "]"

    .line 173
    .line 174
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    return v3
.end method

.method public final runGetOemPermissions()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "Error: no package specified."

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v1, v1, Lcom/android/server/SystemConfig;->mPermissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionAllowlist;->mOemAppAllowlist:Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/util/Map;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    new-instance v1, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda1;

    .line 42
    .line 43
    const/4 v2, 0x2

    .line 44
    invoke-direct {v1, v2, p0}, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string/jumbo v0, "{}"

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    const/4 p0, 0x0

    .line 62
    return p0
.end method

.method public final runGetPackageStorageStats()I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->getPackageStorageStats()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string p0, "Error: get_package_storage_stats flag is not enabled"

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return v2

    .line 18
    :cond_0
    invoke-static {}, Landroid/app/usage/Flags;->getAppBytesByDataTypeApi()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    const-string p0, "Error: get_app_bytes_by_data_type_api flag is not enabled"

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return v2

    .line 30
    :cond_1
    const/4 v1, -0x2

    .line 31
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    if-eqz v3, :cond_3

    .line 36
    .line 37
    const-string v1, "--user"

    .line 38
    .line 39
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    const-string p0, "Error: Unknown option: "

    .line 46
    .line 47
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return v2

    .line 55
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    goto :goto_0

    .line 64
    :cond_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-nez v3, :cond_4

    .line 69
    .line 70
    const-string p0, "Error: package name not specified"

    .line 71
    .line 72
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return v2

    .line 76
    :cond_4
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    const-class v5, Landroid/app/usage/StorageStatsManager;

    .line 79
    .line 80
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Landroid/app/usage/StorageStatsManager;

    .line 85
    .line 86
    const-string/jumbo v5, "runGetPackageStorageStats"

    .line 87
    .line 88
    .line 89
    const/16 v6, -0x2710

    .line 90
    .line 91
    invoke-static {v1, v6, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    sget-object v5, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    .line 96
    .line 97
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v4, v5, v3, v1}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v4, "code: "

    .line 111
    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Landroid/app/usage/StorageStats;->getAppBytes()J

    .line 116
    .line 117
    .line 118
    move-result-wide v4

    .line 119
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->getDataSizeDisplay(J)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v4, "data: "

    .line 139
    .line 140
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Landroid/app/usage/StorageStats;->getDataBytes()J

    .line 144
    .line 145
    .line 146
    move-result-wide v4

    .line 147
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->getDataSizeDisplay(J)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v4, "cache: "

    .line 167
    .line 168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    .line 172
    .line 173
    .line 174
    move-result-wide v4

    .line 175
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->getDataSizeDisplay(J)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string v4, "apk: "

    .line 195
    .line 196
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const/4 v4, 0x3

    .line 200
    invoke-virtual {v1, v4}, Landroid/app/usage/StorageStats;->getAppBytesByDataType(I)J

    .line 201
    .line 202
    .line 203
    move-result-wide v4

    .line 204
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->getDataSizeDisplay(J)Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    const-string v4, "lib: "

    .line 224
    .line 225
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    const/4 v4, 0x5

    .line 229
    invoke-virtual {v1, v4}, Landroid/app/usage/StorageStats;->getAppBytesByDataType(I)J

    .line 230
    .line 231
    .line 232
    move-result-wide v4

    .line 233
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->getDataSizeDisplay(J)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    const-string v4, "dm: "

    .line 253
    .line 254
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    const/4 v4, 0x4

    .line 258
    invoke-virtual {v1, v4}, Landroid/app/usage/StorageStats;->getAppBytesByDataType(I)J

    .line 259
    .line 260
    .line 261
    move-result-wide v4

    .line 262
    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->getDataSizeDisplay(J)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v3

    .line 273
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    const-string v4, "dexopt artifacts: "

    .line 282
    .line 283
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    const/4 v4, 0x0

    .line 287
    invoke-virtual {v1, v4}, Landroid/app/usage/StorageStats;->getAppBytesByDataType(I)J

    .line 288
    .line 289
    .line 290
    move-result-wide v5

    .line 291
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->getDataSizeDisplay(J)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v5

    .line 295
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    .line 306
    .line 307
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .line 309
    .line 310
    const-string v5, "current profile : "

    .line 311
    .line 312
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    const/4 v5, 0x2

    .line 316
    invoke-virtual {v1, v5}, Landroid/app/usage/StorageStats;->getAppBytesByDataType(I)J

    .line 317
    .line 318
    .line 319
    move-result-wide v5

    .line 320
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->getDataSizeDisplay(J)Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v5

    .line 324
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .line 338
    .line 339
    const-string/jumbo v5, "reference profile: "

    .line 340
    .line 341
    .line 342
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1, v2}, Landroid/app/usage/StorageStats;->getAppBytesByDataType(I)J

    .line 346
    .line 347
    .line 348
    move-result-wide v5

    .line 349
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->getDataSizeDisplay(J)Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .line 367
    .line 368
    const-string v3, "external cache: "

    .line 369
    .line 370
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1}, Landroid/app/usage/StorageStats;->getExternalCacheBytes()J

    .line 374
    .line 375
    .line 376
    move-result-wide v5

    .line 377
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->getDataSizeDisplay(J)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .line 390
    .line 391
    return v4

    .line 392
    :catch_0
    move-exception v1

    .line 393
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 394
    .line 395
    .line 396
    move-result-object p0

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    const-string v3, "Failed to get storage stats, reason: "

    .line 400
    .line 401
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    new-instance p0, Ljava/lang/StringBuilder;

    .line 415
    .line 416
    const-string v2, "Failure [failed to get storage stats], reason: "

    .line 417
    .line 418
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object p0

    .line 428
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    const/4 p0, -0x1

    .line 432
    return p0
.end method

.method public final runGetPrivappDenyPermissions()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "Error: no package specified."

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->getPrivAppPermissionsString(Ljava/lang/String;Z)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return v2
.end method

.method public final runGetPrivappPermissions()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v0, "Error: no package specified."

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->getPrivAppPermissionsString(Ljava/lang/String;Z)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final runGetSharedUidAllowlist()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/android/server/SystemConfig;->mPackageToSharedUidAllowList:Landroid/util/ArrayMap;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v3, " "

    .line 34
    .line 35
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method public final runGetSignaturePermissionAllowlist()I
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v0, "Error: no partition specified."

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return v2

    .line 19
    :cond_0
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget-object v3, v3, Lcom/android/server/SystemConfig;->mPermissionAllowlist:Lcom/android/server/pm/permission/PermissionAllowlist;

    .line 24
    .line 25
    const/4 v4, -0x1

    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    sparse-switch v5, :sswitch_data_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :sswitch_0
    const-string/jumbo v5, "system-ext"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-nez v5, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v4, 0x4

    .line 45
    goto :goto_0

    .line 46
    :sswitch_1
    const-string v5, "apex"

    .line 47
    .line 48
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-nez v5, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    const/4 v4, 0x3

    .line 56
    goto :goto_0

    .line 57
    :sswitch_2
    const-string/jumbo v5, "product"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-nez v5, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const/4 v4, 0x2

    .line 68
    goto :goto_0

    .line 69
    :sswitch_3
    const-string/jumbo v5, "vendor"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-nez v5, :cond_4

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    move v4, v2

    .line 80
    goto :goto_0

    .line 81
    :sswitch_4
    const-string/jumbo v5, "system"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    if-nez v5, :cond_5

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    move v4, v0

    .line 92
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    const-string v0, "Error: unknown partition: "

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return v2

    .line 109
    :pswitch_0
    iget-object v1, v3, Lcom/android/server/pm/permission/PermissionAllowlist;->mSystemExtSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :pswitch_1
    iget-object v1, v3, Lcom/android/server/pm/permission/PermissionAllowlist;->mApexSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :pswitch_2
    iget-object v1, v3, Lcom/android/server/pm/permission/PermissionAllowlist;->mProductSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :pswitch_3
    iget-object v1, v3, Lcom/android/server/pm/permission/PermissionAllowlist;->mVendorSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :pswitch_4
    iget-object v1, v3, Lcom/android/server/pm/permission/PermissionAllowlist;->mSignatureAppAllowlist:Landroid/util/ArrayMap;

    .line 122
    .line 123
    :goto_1
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    .line 124
    .line 125
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    const-string v4, "  "

    .line 130
    .line 131
    invoke-direct {v3, p0, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 135
    .line 136
    .line 137
    move-result p0

    .line 138
    move v4, v0

    .line 139
    :goto_2
    if-ge v4, p0, :cond_8

    .line 140
    .line 141
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    check-cast v5, Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    check-cast v6, Landroid/util/ArrayMap;

    .line 152
    .line 153
    const-string v7, "Package: "

    .line 154
    .line 155
    invoke-virtual {v3, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    move v7, v0

    .line 169
    :goto_3
    if-ge v7, v5, :cond_7

    .line 170
    .line 171
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    check-cast v8, Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v9

    .line 181
    check-cast v9, Ljava/lang/Boolean;

    .line 182
    .line 183
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 184
    .line 185
    .line 186
    move-result v9

    .line 187
    if-eqz v9, :cond_6

    .line 188
    .line 189
    const-string v9, "Permission: "

    .line 190
    .line 191
    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    :cond_6
    add-int/2addr v7, v2

    .line 198
    goto :goto_3

    .line 199
    :cond_7
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 200
    .line 201
    .line 202
    add-int/2addr v4, v2

    .line 203
    goto :goto_2

    .line 204
    :cond_8
    return v0

    .line 205
    :sswitch_data_0
    .sparse-switch
        -0x34e38dd1 -> :sswitch_4
        -0x30e15ab8 -> :sswitch_3
        -0x12723311 -> :sswitch_2
        0x2dc922 -> :sswitch_1
        0x263fc183 -> :sswitch_0
    .end sparse-switch

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final runGetUserRestriction()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-eqz v3, :cond_3

    .line 12
    .line 13
    const-string v4, "--all"

    .line 14
    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-nez v4, :cond_1

    .line 20
    .line 21
    const-string v1, "--user"

    .line 22
    .line 23
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string v0, "Unknown option "

    .line 41
    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-nez v2, :cond_2

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 59
    .line 60
    const-string v0, "Argument unexpected after \"--all\""

    .line 61
    .line 62
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :cond_3
    const/16 v3, -0x2710

    .line 67
    .line 68
    const-string/jumbo v4, "runGetUserRestriction"

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    const-string/jumbo v3, "user"

    .line 76
    .line 77
    .line 78
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v3}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    if-eqz v2, :cond_4

    .line 87
    .line 88
    invoke-interface {v3, v1}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const-string v1, "All restrictions:"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    if-eqz v2, :cond_6

    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    if-nez p0, :cond_5

    .line 116
    .line 117
    invoke-interface {v3, v2, v1}, Landroid/os/IUserManager;->hasUserRestriction(Ljava/lang/String;I)Z

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 122
    .line 123
    .line 124
    :goto_1
    return-void

    .line 125
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 126
    .line 127
    const-string v0, "Argument unexpected after restriction key"

    .line 128
    .line 129
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p0

    .line 133
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 134
    .line 135
    const-string v0, "No restriction key specified"

    .line 136
    .line 137
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw p0
.end method

.method public final runGrantRevokePermission(Z)I
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    move v0, v2

    .line 5
    move v3, v0

    .line 6
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v4, :cond_2

    .line 12
    .line 13
    const-string v6, "--user"

    .line 14
    .line 15
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    if-eqz v6, :cond_1

    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :cond_1
    const-string v6, "--all-permissions"

    .line 30
    .line 31
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    move v3, v5

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-nez v3, :cond_3

    .line 44
    .line 45
    if-nez v4, :cond_3

    .line 46
    .line 47
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "Error: no package specified"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return v5

    .line 57
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    if-nez v3, :cond_4

    .line 62
    .line 63
    if-nez v6, :cond_4

    .line 64
    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "Error: no permission specified"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return v5

    .line 75
    :cond_4
    if-eqz v3, :cond_5

    .line 76
    .line 77
    if-eqz v6, :cond_5

    .line 78
    .line 79
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v1, "Error: permission specified but not expected"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return v5

    .line 89
    :cond_5
    const/16 v7, -0x2710

    .line 90
    .line 91
    const-string/jumbo v8, "runGrantRevokePermission"

    .line 92
    .line 93
    .line 94
    invoke-static {v0, v7, v8}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    .line 103
    .line 104
    invoke-virtual {v0, v7, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const/16 v8, 0x1000

    .line 113
    .line 114
    if-nez v4, :cond_6

    .line 115
    .line 116
    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    goto :goto_1

    .line 121
    :cond_6
    :try_start_0
    invoke-virtual {v0, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 129
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_10

    .line 138
    .line 139
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    move-object v9, v0

    .line 144
    check-cast v9, Landroid/content/pm/PackageInfo;

    .line 145
    .line 146
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->shellRestrictionsHelper:Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;

    .line 147
    .line 148
    invoke-virtual {v0, v5, v4}, Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;->isRestrictedPackage(ILjava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_7

    .line 153
    .line 154
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    new-instance v10, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    const-string v11, "Error: package cmd restricted - package: "

    .line 161
    .line 162
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 166
    .line 167
    invoke-static {v10, v9, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_7
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    const/4 v10, 0x0

    .line 176
    if-eqz v3, :cond_b

    .line 177
    .line 178
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 179
    .line 180
    if-nez v0, :cond_8

    .line 181
    .line 182
    new-instance v0, Ljava/util/ArrayList;

    .line 183
    .line 184
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .line 192
    .line 193
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    .line 194
    .line 195
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 196
    .line 197
    .line 198
    move-result-object v11

    .line 199
    iget-object v12, v9, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 200
    .line 201
    array-length v13, v12

    .line 202
    move v14, v2

    .line 203
    :goto_3
    if-ge v14, v13, :cond_b

    .line 204
    .line 205
    aget-object v15, v12, v14

    .line 206
    .line 207
    :try_start_1
    invoke-virtual {v11, v15, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    .line 208
    .line 209
    .line 210
    move-result-object v16
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    goto :goto_4

    .line 212
    :catch_0
    move-object/from16 v16, v10

    .line 213
    .line 214
    :goto_4
    if-nez v16, :cond_9

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_9
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PermissionInfo;->getProtection()I

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-eq v2, v5, :cond_a

    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_a
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    :goto_5
    add-int/lit8 v14, v14, 0x1

    .line 228
    .line 229
    const/4 v2, 0x0

    .line 230
    goto :goto_3

    .line 231
    :cond_b
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_f

    .line 240
    .line 241
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    move-object v11, v0

    .line 246
    check-cast v11, Ljava/lang/String;

    .line 247
    .line 248
    const-string v12, "Could not grant permission "

    .line 249
    .line 250
    const-string v13, "PackageManagerShellCommand"

    .line 251
    .line 252
    if-eqz p1, :cond_d

    .line 253
    .line 254
    :try_start_2
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 255
    .line 256
    iget-object v14, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 257
    .line 258
    invoke-virtual {v0, v14, v11, v7}, Landroid/permission/PermissionManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 259
    .line 260
    .line 261
    goto :goto_7

    .line 262
    :catch_1
    move-exception v0

    .line 263
    if-eqz v3, :cond_c

    .line 264
    .line 265
    new-instance v14, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v11

    .line 277
    invoke-static {v13, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_c
    throw v0

    .line 282
    :cond_d
    :try_start_3
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 283
    .line 284
    iget-object v14, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 285
    .line 286
    invoke-virtual {v0, v14, v11, v7, v10}, Landroid/permission/PermissionManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 287
    .line 288
    .line 289
    goto :goto_7

    .line 290
    :catch_2
    move-exception v0

    .line 291
    if-eqz v3, :cond_e

    .line 292
    .line 293
    new-instance v14, Ljava/lang/StringBuilder;

    .line 294
    .line 295
    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v11

    .line 305
    invoke-static {v13, v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    .line 307
    .line 308
    goto :goto_7

    .line 309
    :cond_e
    throw v0

    .line 310
    :cond_f
    const/4 v2, 0x0

    .line 311
    goto/16 :goto_2

    .line 312
    .line 313
    :cond_10
    return v2

    .line 314
    :catch_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    const-string v2, "Error: package not found"

    .line 319
    .line 320
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    const-string v1, "Failure [package not found]"

    .line 328
    .line 329
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    return v5
.end method

.method public final runHasFeature()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    const-string p0, "Error: expected FEATURE name"

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return v2

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-nez v3, :cond_1

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 31
    .line 32
    invoke-interface {v5, v1, v4}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    xor-int/lit8 p0, v1, 0x1

    .line 44
    .line 45
    return p0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return v2

    .line 55
    :catch_1
    const-string p0, "Error: illegal version number "

    .line 56
    .line 57
    invoke-static {v0, p0, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return v2
.end method

.method public final runIncrementalInstall()I
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->UNSUPPORTED_INSTALL_CMD_OPTS:Ljava/util/Set;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams(Ljava/util/Set;)Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 8
    .line 9
    iget-object v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getIncrementalDataLoaderParams(Landroid/os/ShellCommand;)Landroid/content/pm/DataLoaderParams;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setDataLoaderParams(Landroid/content/pm/DataLoaderParams;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doRunInstall(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public final runInstallAddSession()I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    new-instance v2, Landroid/util/IntArray;

    .line 14
    .line 15
    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {v2, v3}, Landroid/util/IntArray;->add(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    const/4 v4, 0x1

    .line 37
    if-nez v3, :cond_1

    .line 38
    .line 39
    const-string p0, "Error: At least two sessions are required."

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return v4

    .line 45
    :cond_1
    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const/4 v3, 0x0

    .line 54
    :try_start_0
    new-instance v5, Landroid/content/pm/PackageInstaller$Session;

    .line 55
    .line 56
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 57
    .line 58
    invoke-interface {v6}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-interface {v6, v1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-direct {v5, v1}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 67
    .line 68
    .line 69
    :try_start_1
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$Session;->isMultiPackage()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    const-string v0, "Error: parent session ID is not a multi-package session"

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    .line 84
    :goto_1
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 85
    .line 86
    .line 87
    goto :goto_3

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    move-object v3, v5

    .line 90
    goto :goto_4

    .line 91
    :cond_2
    const/4 v4, 0x0

    .line 92
    move p0, v4

    .line 93
    :goto_2
    :try_start_2
    array-length v1, v0

    .line 94
    if-ge p0, v1, :cond_3

    .line 95
    .line 96
    aget v1, v0, p0

    .line 97
    .line 98
    invoke-virtual {v5, v1}, Landroid/content/pm/PackageInstaller$Session;->addChildSessionId(I)V

    .line 99
    .line 100
    .line 101
    add-int/lit8 p0, p0, 0x1

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    const-string p0, "Success"

    .line 105
    .line 106
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :goto_3
    return v4

    .line 111
    :catchall_1
    move-exception p0

    .line 112
    :goto_4
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 113
    .line 114
    .line 115
    throw p0
.end method

.method public final runInstallCommit()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-wide/32 v1, 0xea60

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    const-string v1, "--staged-ready-timeout"

    .line 15
    .line 16
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string v0, "Unknown option: "

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(I)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    const/4 p0, 0x1

    .line 58
    return p0

    .line 59
    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 60
    .line 61
    invoke-interface {v4}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-interface {v4, v3}, Landroid/content/pm/IPackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    if-eqz v4, :cond_3

    .line 70
    .line 71
    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_3

    .line 76
    .line 77
    const-wide/16 v4, 0x0

    .line 78
    .line 79
    cmp-long v4, v1, v4

    .line 80
    .line 81
    if-lez v4, :cond_3

    .line 82
    .line 83
    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doWaitForStagedSessionReady(IJLjava/io/PrintWriter;)I

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    return p0

    .line 88
    :cond_3
    const-string p0, "Success"

    .line 89
    .line 90
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const/4 p0, 0x0

    .line 94
    return p0
.end method

.method public final runInstallCreate()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/android/server/pm/PackageManagerShellCommand;->UNSUPPORTED_SESSION_CREATE_OPTS:Ljava/util/Set;

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams(Ljava/util/Set;)Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 12
    .line 13
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 14
    .line 15
    iget v1, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    .line 16
    .line 17
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    const-string v1, "Success: created install session ["

    .line 22
    .line 23
    const-string v2, "]"

    .line 24
    .line 25
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final runInstallExisting()I
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, -0x2

    .line 7
    const/high16 v3, 0x400000

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    move v8, v3

    .line 11
    move v3, v4

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    if-eqz v5, :cond_6

    .line 17
    .line 18
    const/4 v6, -0x1

    .line 19
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    sparse-switch v7, :sswitch_data_0

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :sswitch_0
    const-string v7, "--restrict-permissions"

    .line 28
    .line 29
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    if-nez v7, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 v6, 0x5

    .line 37
    goto :goto_1

    .line 38
    :sswitch_1
    const-string v7, "--wait"

    .line 39
    .line 40
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-nez v7, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 v6, 0x4

    .line 48
    goto :goto_1

    .line 49
    :sswitch_2
    const-string v7, "--user"

    .line 50
    .line 51
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v7

    .line 55
    if-nez v7, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    const/4 v6, 0x3

    .line 59
    goto :goto_1

    .line 60
    :sswitch_3
    const-string v7, "--full"

    .line 61
    .line 62
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    if-nez v7, :cond_3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const/4 v6, 0x2

    .line 70
    goto :goto_1

    .line 71
    :sswitch_4
    const-string v7, "--ephemeral"

    .line 72
    .line 73
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-nez v7, :cond_4

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    move v6, v0

    .line 81
    goto :goto_1

    .line 82
    :sswitch_5
    const-string v7, "--instant"

    .line 83
    .line 84
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-nez v7, :cond_5

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_5
    move v6, v4

    .line 92
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 93
    .line 94
    .line 95
    const-string p0, "Error: Unknown option: "

    .line 96
    .line 97
    invoke-virtual {p0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return v0

    .line 105
    :pswitch_0
    const v5, -0x400001

    .line 106
    .line 107
    .line 108
    and-int/2addr v5, v8

    .line 109
    :goto_2
    move v8, v5

    .line 110
    goto :goto_0

    .line 111
    :pswitch_1
    move v3, v0

    .line 112
    goto :goto_0

    .line 113
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    goto :goto_0

    .line 122
    :pswitch_3
    and-int/lit16 v5, v8, -0x801

    .line 123
    .line 124
    or-int/lit16 v5, v5, 0x4000

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :pswitch_4
    or-int/lit16 v5, v8, 0x800

    .line 128
    .line 129
    and-int/lit16 v5, v5, -0x4001

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    if-nez v11, :cond_7

    .line 137
    .line 138
    const-string p0, "Error: package name not specified"

    .line 139
    .line 140
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return v0

    .line 144
    :cond_7
    const/16 v5, -0x2710

    .line 145
    .line 146
    const-string/jumbo v6, "runInstallExisting"

    .line 147
    .line 148
    .line 149
    invoke-static {v2, v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    .line 150
    .line 151
    .line 152
    move-result v2

    .line 153
    const/4 v9, 0x0

    .line 154
    if-eqz v3, :cond_9

    .line 155
    .line 156
    :try_start_0
    new-instance v3, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    .line 157
    .line 158
    invoke-direct {v3}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>()V

    .line 159
    .line 160
    .line 161
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 162
    .line 163
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    new-instance p0, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v6, "Installing package "

    .line 173
    .line 174
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v6, " for user: "

    .line 181
    .line 182
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    const/4 v12, 0x0

    .line 200
    move-object v6, v11

    .line 201
    move v7, v8

    .line 202
    move v8, v9

    .line 203
    move-object v9, p0

    .line 204
    move v10, v2

    .line 205
    move-object v11, v12

    .line 206
    invoke-interface/range {v5 .. v11}, Landroid/content/pm/IPackageInstaller;->installExistingPackage(Ljava/lang/String;IILandroid/content/IntentSender;ILjava/util/List;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    const-string v2, "android.content.pm.extra.STATUS"

    .line 214
    .line 215
    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    const-string v2, "Received intent for package install"

    .line 220
    .line 221
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    if-nez p0, :cond_8

    .line 225
    .line 226
    move v0, v4

    .line 227
    :cond_8
    return v0

    .line 228
    :catch_0
    move-exception p0

    .line 229
    goto :goto_3

    .line 230
    :cond_9
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 231
    .line 232
    const/4 v10, 0x0

    .line 233
    move-object v6, v11

    .line 234
    move v7, v2

    .line 235
    invoke-interface/range {v5 .. v10}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    .line 236
    .line 237
    .line 238
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    const/4 v3, -0x3

    .line 240
    const-string v5, "Package "

    .line 241
    .line 242
    if-eq p0, v3, :cond_a

    .line 243
    .line 244
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    const-string v3, " installed for user: "

    .line 256
    .line 257
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    return v4

    .line 271
    :cond_a
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 272
    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v3, " doesn\'t exist"

    .line 285
    .line 286
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    invoke-direct {p0, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    throw p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 297
    :goto_3
    invoke-virtual {p0}, Landroid/util/AndroidException;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    return v0

    .line 305
    :sswitch_data_0
    .sparse-switch
        -0x38b573bf -> :sswitch_5
        0x3eb0e7fd -> :sswitch_4
        0x4f74582f -> :sswitch_3
        0x4f7b216b -> :sswitch_2
        0x4f7bc715 -> :sswitch_1
        0x59147c93 -> :sswitch_0
    .end sparse-switch

    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final runInstallGetPreVerifiedDomains()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    :try_start_0
    new-instance v3, Landroid/content/pm/PackageInstaller$Session;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 17
    .line 18
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p0, v1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {v3, p0}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    .line 28
    .line 29
    :try_start_1
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$Session;->getPreVerifiedDomains()Ljava/util/Set;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    const-string p0, "The session doesn\'t have any pre-verified domains specified."

    .line 40
    .line 41
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    move-object v2, v3

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    const-string v1, ","

    .line 49
    .line 50
    invoke-static {v1, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    :goto_0
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :catchall_1
    move-exception p0

    .line 62
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 63
    .line 64
    .line 65
    throw p0
.end method

.method public final runInstallRemove()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x1

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    const-string p0, "Error: split name not specified"

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return v4

    .line 30
    :cond_0
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doRemoveSplits(ILjava/util/Collection;Z)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final runInstallSetPreVerifiedDomains()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, ","

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    :try_start_0
    new-instance v3, Landroid/content/pm/PackageInstaller$Session;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 26
    .line 27
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-interface {p0, v0}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-direct {v3, p0}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    .line 37
    .line 38
    :try_start_1
    new-instance p0, Landroid/util/ArraySet;

    .line 39
    .line 40
    invoke-direct {p0, v1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, p0}, Landroid/content/pm/PackageInstaller$Session;->setPreVerifiedDomains(Ljava/util/Set;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    move-object v2, v3

    .line 52
    goto :goto_0

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    :goto_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 55
    .line 56
    .line 57
    throw p0
.end method

.method public final runInstallWrite()I
    .locals 9

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    move-wide v5, v0

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const-string v1, "-S"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string v1, "Unknown option: "

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p0

    .line 39
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const/4 v8, 0x1

    .line 56
    move-object v2, p0

    .line 57
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    return p0
.end method

.method public final runList()I
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "-f"

    .line 4
    .line 5
    const/4 v3, 0x3

    .line 6
    const/4 v4, 0x2

    .line 7
    const/4 v8, 0x0

    .line 8
    const/4 v5, 0x1

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 10
    .line 11
    .line 12
    move-result-object v6

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v7

    .line 17
    const/4 v9, -0x1

    .line 18
    if-nez v7, :cond_0

    .line 19
    .line 20
    const-string v0, "Error: didn\'t specify type of data to list"

    .line 21
    .line 22
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v9

    .line 26
    :cond_0
    const-string v10, "="

    .line 27
    .line 28
    const/4 v11, 0x0

    .line 29
    const-string v12, "Error: Unknown option: "

    .line 30
    .line 31
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v13

    .line 35
    sparse-switch v13, :sswitch_data_0

    .line 36
    .line 37
    .line 38
    :goto_0
    move v13, v9

    .line 39
    goto/16 :goto_1

    .line 40
    .line 41
    :sswitch_0
    const-string v13, "initial-non-stopped-system-packages"

    .line 42
    .line 43
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v13

    .line 47
    if-nez v13, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/16 v13, 0xa

    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :sswitch_1
    const-string/jumbo v13, "permissions"

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v13

    .line 61
    if-nez v13, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const/16 v13, 0x9

    .line 65
    .line 66
    goto/16 :goto_1

    .line 67
    .line 68
    :sswitch_2
    const-string v13, "libraries"

    .line 69
    .line 70
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v13

    .line 74
    if-nez v13, :cond_3

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const/16 v13, 0x8

    .line 78
    .line 79
    goto/16 :goto_1

    .line 80
    .line 81
    :sswitch_3
    const-string/jumbo v13, "packages"

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v13

    .line 88
    if-nez v13, :cond_4

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_4
    const/4 v13, 0x7

    .line 92
    goto :goto_1

    .line 93
    :sswitch_4
    const-string v13, "instrumentation"

    .line 94
    .line 95
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v13

    .line 99
    if-nez v13, :cond_5

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_5
    const/4 v13, 0x6

    .line 103
    goto :goto_1

    .line 104
    :sswitch_5
    const-string/jumbo v13, "users"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v13

    .line 111
    if-nez v13, :cond_6

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_6
    const/4 v13, 0x5

    .line 115
    goto :goto_1

    .line 116
    :sswitch_6
    const-string/jumbo v13, "sdks"

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v13

    .line 123
    if-nez v13, :cond_7

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_7
    const/4 v13, 0x4

    .line 127
    goto :goto_1

    .line 128
    :sswitch_7
    const-string v13, "features"

    .line 129
    .line 130
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v13

    .line 134
    if-nez v13, :cond_8

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_8
    move v13, v3

    .line 138
    goto :goto_1

    .line 139
    :sswitch_8
    const-string/jumbo v13, "package"

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v13

    .line 146
    if-nez v13, :cond_9

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_9
    move v13, v4

    .line 150
    goto :goto_1

    .line 151
    :sswitch_9
    const-string/jumbo v13, "permission-groups"

    .line 152
    .line 153
    .line 154
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v13

    .line 158
    if-nez v13, :cond_a

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_a
    move v13, v5

    .line 162
    goto :goto_1

    .line 163
    :sswitch_a
    const-string/jumbo v13, "staged-sessions"

    .line 164
    .line 165
    .line 166
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v13

    .line 170
    if-nez v13, :cond_b

    .line 171
    .line 172
    goto/16 :goto_0

    .line 173
    .line 174
    :cond_b
    move v13, v8

    .line 175
    :goto_1
    packed-switch v13, :pswitch_data_0

    .line 176
    .line 177
    .line 178
    const-string v0, "Error: unknown list type \'"

    .line 179
    .line 180
    const-string v1, "\'"

    .line 181
    .line 182
    invoke-static {v6, v0, v7, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    return v9

    .line 186
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 191
    .line 192
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getInitialNonStoppedSystemPackages()Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 197
    .line 198
    .line 199
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-eqz v2, :cond_c

    .line 208
    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    check-cast v2, Ljava/lang/String;

    .line 214
    .line 215
    const-string/jumbo v3, "package:"

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 225
    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_c
    return v8

    .line 229
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 230
    .line 231
    .line 232
    move-result-object v10

    .line 233
    move v6, v8

    .line 234
    move v13, v6

    .line 235
    move v14, v13

    .line 236
    move v15, v14

    .line 237
    move/from16 v16, v15

    .line 238
    .line 239
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    if-eqz v7, :cond_12

    .line 244
    .line 245
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 246
    .line 247
    .line 248
    move-result v17

    .line 249
    sparse-switch v17, :sswitch_data_1

    .line 250
    .line 251
    .line 252
    :goto_4
    move v2, v9

    .line 253
    goto :goto_5

    .line 254
    :sswitch_b
    const-string v2, "-u"

    .line 255
    .line 256
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v2

    .line 260
    if-nez v2, :cond_d

    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_d
    const/4 v2, 0x4

    .line 264
    goto :goto_5

    .line 265
    :sswitch_c
    const-string v2, "-s"

    .line 266
    .line 267
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v2

    .line 271
    if-nez v2, :cond_e

    .line 272
    .line 273
    goto :goto_4

    .line 274
    :cond_e
    move v2, v3

    .line 275
    goto :goto_5

    .line 276
    :sswitch_d
    const-string v2, "-g"

    .line 277
    .line 278
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-nez v2, :cond_f

    .line 283
    .line 284
    goto :goto_4

    .line 285
    :cond_f
    move v2, v4

    .line 286
    goto :goto_5

    .line 287
    :sswitch_e
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    if-nez v2, :cond_10

    .line 292
    .line 293
    goto :goto_4

    .line 294
    :cond_10
    move v2, v5

    .line 295
    goto :goto_5

    .line 296
    :sswitch_f
    const-string v2, "-d"

    .line 297
    .line 298
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    if-nez v2, :cond_11

    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_11
    move v2, v8

    .line 306
    :goto_5
    packed-switch v2, :pswitch_data_1

    .line 307
    .line 308
    .line 309
    invoke-virtual {v12, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    move v8, v5

    .line 317
    goto/16 :goto_8

    .line 318
    .line 319
    :pswitch_2
    move/from16 v16, v5

    .line 320
    .line 321
    goto :goto_3

    .line 322
    :pswitch_3
    move v13, v5

    .line 323
    move v14, v13

    .line 324
    move v15, v14

    .line 325
    goto :goto_3

    .line 326
    :pswitch_4
    move v13, v5

    .line 327
    goto :goto_3

    .line 328
    :pswitch_5
    move v14, v5

    .line 329
    goto :goto_3

    .line 330
    :pswitch_6
    move v6, v5

    .line 331
    goto :goto_3

    .line 332
    :cond_12
    new-instance v9, Ljava/util/ArrayList;

    .line 333
    .line 334
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .line 336
    .line 337
    if-eqz v13, :cond_14

    .line 338
    .line 339
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 340
    .line 341
    invoke-virtual {v1, v8}, Landroid/permission/PermissionManager;->getAllPermissionGroups(I)Ljava/util/List;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    move v3, v8

    .line 350
    :goto_6
    if-ge v3, v2, :cond_13

    .line 351
    .line 352
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v4

    .line 356
    check-cast v4, Landroid/content/pm/PermissionGroupInfo;

    .line 357
    .line 358
    iget-object v4, v4, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    .line 359
    .line 360
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    add-int/2addr v3, v5

    .line 364
    goto :goto_6

    .line 365
    :cond_13
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    goto :goto_7

    .line 369
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    .line 375
    .line 376
    :goto_7
    const-string v11, ""

    .line 377
    .line 378
    if-eqz v6, :cond_15

    .line 379
    .line 380
    const-string v1, "Dangerous Permissions:"

    .line 381
    .line 382
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    const/4 v6, 0x1

    .line 389
    const/4 v7, 0x1

    .line 390
    move-object/from16 v1, p0

    .line 391
    .line 392
    move-object v2, v9

    .line 393
    move v3, v13

    .line 394
    move v4, v14

    .line 395
    move v5, v15

    .line 396
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    .line 397
    .line 398
    .line 399
    if-eqz v16, :cond_17

    .line 400
    .line 401
    const-string v1, "Normal Permissions:"

    .line 402
    .line 403
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    const/4 v6, 0x0

    .line 410
    const/4 v7, 0x0

    .line 411
    move-object/from16 v1, p0

    .line 412
    .line 413
    move-object v2, v9

    .line 414
    move v3, v13

    .line 415
    move v4, v14

    .line 416
    move v5, v15

    .line 417
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    .line 418
    .line 419
    .line 420
    goto :goto_8

    .line 421
    :cond_15
    if-eqz v16, :cond_16

    .line 422
    .line 423
    const-string v1, "Dangerous and Normal Permissions:"

    .line 424
    .line 425
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    const/4 v6, 0x0

    .line 432
    const/4 v7, 0x1

    .line 433
    move-object/from16 v1, p0

    .line 434
    .line 435
    move-object v2, v9

    .line 436
    move v3, v13

    .line 437
    move v4, v14

    .line 438
    move v5, v15

    .line 439
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    .line 440
    .line 441
    .line 442
    goto :goto_8

    .line 443
    :cond_16
    const-string v1, "All Permissions:"

    .line 444
    .line 445
    invoke-virtual {v10, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v10, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    const/16 v6, -0x2710

    .line 452
    .line 453
    const/16 v7, 0x2710

    .line 454
    .line 455
    move-object/from16 v1, p0

    .line 456
    .line 457
    move-object v2, v9

    .line 458
    move v3, v13

    .line 459
    move v4, v14

    .line 460
    move v5, v15

    .line 461
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    .line 462
    .line 463
    .line 464
    :cond_17
    :goto_8
    return v8

    .line 465
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    move v2, v8

    .line 470
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    if-eqz v3, :cond_19

    .line 475
    .line 476
    const-string v2, "-v"

    .line 477
    .line 478
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    move-result v2

    .line 482
    if-nez v2, :cond_18

    .line 483
    .line 484
    invoke-virtual {v12, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    move v8, v9

    .line 492
    goto :goto_b

    .line 493
    :cond_18
    move v2, v5

    .line 494
    goto :goto_9

    .line 495
    :cond_19
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 496
    .line 497
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getSystemSharedLibraryNamesAndPaths()Ljava/util/Map;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 502
    .line 503
    .line 504
    move-result v3

    .line 505
    if-eqz v3, :cond_1a

    .line 506
    .line 507
    goto :goto_b

    .line 508
    :cond_1a
    new-instance v3, Ljava/util/ArrayList;

    .line 509
    .line 510
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 511
    .line 512
    .line 513
    move-result-object v4

    .line 514
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 515
    .line 516
    .line 517
    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda3;

    .line 518
    .line 519
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 520
    .line 521
    .line 522
    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 523
    .line 524
    .line 525
    move v4, v8

    .line 526
    :goto_a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 527
    .line 528
    .line 529
    move-result v6

    .line 530
    if-ge v4, v6, :cond_1c

    .line 531
    .line 532
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v6

    .line 536
    check-cast v6, Ljava/lang/String;

    .line 537
    .line 538
    const-string v7, "library:"

    .line 539
    .line 540
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    if-eqz v2, :cond_1b

    .line 547
    .line 548
    const-string v7, " path:"

    .line 549
    .line 550
    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v6

    .line 557
    check-cast v6, Ljava/lang/String;

    .line 558
    .line 559
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    :cond_1b
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 563
    .line 564
    .line 565
    add-int/2addr v4, v5

    .line 566
    goto :goto_a

    .line 567
    :cond_1c
    :goto_b
    return v8

    .line 568
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 569
    .line 570
    .line 571
    move-result-object v2

    .line 572
    move v3, v8

    .line 573
    :goto_c
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v4

    .line 577
    if-eqz v4, :cond_20

    .line 578
    .line 579
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 580
    .line 581
    .line 582
    move-result v6

    .line 583
    const/16 v7, 0x5d9

    .line 584
    .line 585
    if-eq v6, v7, :cond_1d

    .line 586
    .line 587
    goto :goto_d

    .line 588
    :cond_1d
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    move-result v6

    .line 592
    if-eqz v6, :cond_1e

    .line 593
    .line 594
    move v3, v5

    .line 595
    goto :goto_c

    .line 596
    :cond_1e
    :goto_d
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    .line 597
    .line 598
    .line 599
    move-result v6

    .line 600
    const/16 v7, 0x2d

    .line 601
    .line 602
    if-eq v6, v7, :cond_1f

    .line 603
    .line 604
    move-object v11, v4

    .line 605
    goto :goto_c

    .line 606
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 607
    .line 608
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .line 623
    .line 624
    :goto_e
    move v8, v9

    .line 625
    goto/16 :goto_12

    .line 626
    .line 627
    :catch_0
    move-exception v0

    .line 628
    goto :goto_11

    .line 629
    :cond_20
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 630
    .line 631
    const v1, 0x402000

    .line 632
    .line 633
    .line 634
    invoke-interface {v0, v11, v1, v8}, Landroid/content/pm/IPackageManager;->queryInstrumentationAsUser(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    .line 635
    .line 636
    .line 637
    move-result-object v0

    .line 638
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    new-instance v1, Lcom/android/server/pm/PackageManagerShellCommand$1;

    .line 643
    .line 644
    invoke-direct {v1, v5}, Lcom/android/server/pm/PackageManagerShellCommand$1;-><init>(I)V

    .line 645
    .line 646
    .line 647
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 648
    .line 649
    .line 650
    if-eqz v0, :cond_21

    .line 651
    .line 652
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 653
    .line 654
    .line 655
    move-result v1

    .line 656
    goto :goto_f

    .line 657
    :cond_21
    move v1, v8

    .line 658
    :goto_f
    move v4, v8

    .line 659
    :goto_10
    if-ge v4, v1, :cond_23

    .line 660
    .line 661
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 662
    .line 663
    .line 664
    move-result-object v6

    .line 665
    check-cast v6, Landroid/content/pm/InstrumentationInfo;

    .line 666
    .line 667
    const-string v7, "instrumentation:"

    .line 668
    .line 669
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 670
    .line 671
    .line 672
    if-eqz v3, :cond_22

    .line 673
    .line 674
    iget-object v7, v6, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    .line 675
    .line 676
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    :cond_22
    new-instance v7, Landroid/content/ComponentName;

    .line 683
    .line 684
    iget-object v9, v6, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    .line 685
    .line 686
    iget-object v11, v6, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    .line 687
    .line 688
    invoke-direct {v7, v9, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    .line 690
    .line 691
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v7

    .line 695
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    const-string v7, " (target="

    .line 699
    .line 700
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    iget-object v6, v6, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 704
    .line 705
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 706
    .line 707
    .line 708
    const-string v6, ")"

    .line 709
    .line 710
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    add-int/2addr v4, v5

    .line 714
    goto :goto_10

    .line 715
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 716
    .line 717
    const-string v3, "Error: "

    .line 718
    .line 719
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    goto :goto_e

    .line 737
    :cond_23
    :goto_12
    return v8

    .line 738
    :pswitch_9
    const-string/jumbo v1, "user"

    .line 739
    .line 740
    .line 741
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 742
    .line 743
    .line 744
    move-result-object v9

    .line 745
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    .line 746
    .line 747
    .line 748
    move-result-object v10

    .line 749
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    .line 750
    .line 751
    .line 752
    move-result-object v11

    .line 753
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrFileDescriptor()Ljava/io/FileDescriptor;

    .line 754
    .line 755
    .line 756
    move-result-object v12

    .line 757
    const-string v1, "list"

    .line 758
    .line 759
    filled-new-array {v1}, [Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v13

    .line 763
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getShellCallback()Landroid/os/ShellCallback;

    .line 764
    .line 765
    .line 766
    move-result-object v14

    .line 767
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->adoptResultReceiver()Landroid/os/ResultReceiver;

    .line 768
    .line 769
    .line 770
    move-result-object v15

    .line 771
    invoke-interface/range {v9 .. v15}, Landroid/os/IBinder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    .line 772
    .line 773
    .line 774
    return v8

    .line 775
    :pswitch_a
    invoke-virtual {v0, v8, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(ZZ)I

    .line 776
    .line 777
    .line 778
    move-result v0

    .line 779
    return v0

    .line 780
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 781
    .line 782
    .line 783
    move-result-object v1

    .line 784
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 785
    .line 786
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;

    .line 787
    .line 788
    .line 789
    move-result-object v0

    .line 790
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 791
    .line 792
    .line 793
    move-result-object v0

    .line 794
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$1;

    .line 795
    .line 796
    invoke-direct {v2, v8}, Lcom/android/server/pm/PackageManagerShellCommand$1;-><init>(I)V

    .line 797
    .line 798
    .line 799
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 800
    .line 801
    .line 802
    if-eqz v0, :cond_24

    .line 803
    .line 804
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 805
    .line 806
    .line 807
    move-result v2

    .line 808
    goto :goto_13

    .line 809
    :cond_24
    move v2, v8

    .line 810
    :goto_13
    move v3, v8

    .line 811
    :goto_14
    if-ge v3, v2, :cond_27

    .line 812
    .line 813
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    move-result-object v4

    .line 817
    check-cast v4, Landroid/content/pm/FeatureInfo;

    .line 818
    .line 819
    const-string v6, "feature:"

    .line 820
    .line 821
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 822
    .line 823
    .line 824
    iget-object v6, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 825
    .line 826
    if-eqz v6, :cond_26

    .line 827
    .line 828
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    iget v6, v4, Landroid/content/pm/FeatureInfo;->version:I

    .line 832
    .line 833
    if-lez v6, :cond_25

    .line 834
    .line 835
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    iget v4, v4, Landroid/content/pm/FeatureInfo;->version:I

    .line 839
    .line 840
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 841
    .line 842
    .line 843
    :cond_25
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 844
    .line 845
    .line 846
    goto :goto_15

    .line 847
    :cond_26
    new-instance v6, Ljava/lang/StringBuilder;

    .line 848
    .line 849
    const-string/jumbo v7, "reqGlEsVersion=0x"

    .line 850
    .line 851
    .line 852
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 853
    .line 854
    .line 855
    iget v4, v4, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 856
    .line 857
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v4

    .line 861
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    .line 863
    .line 864
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 865
    .line 866
    .line 867
    move-result-object v4

    .line 868
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 869
    .line 870
    .line 871
    :goto_15
    add-int/2addr v3, v5

    .line 872
    goto :goto_14

    .line 873
    :cond_27
    return v8

    .line 874
    :pswitch_c
    invoke-virtual {v0, v8, v8}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(ZZ)I

    .line 875
    .line 876
    .line 877
    move-result v0

    .line 878
    return v0

    .line 879
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 880
    .line 881
    .line 882
    move-result-object v1

    .line 883
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 884
    .line 885
    invoke-virtual {v0, v8}, Landroid/permission/PermissionManager;->getAllPermissionGroups(I)Ljava/util/List;

    .line 886
    .line 887
    .line 888
    move-result-object v0

    .line 889
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 890
    .line 891
    .line 892
    move-result v2

    .line 893
    move v3, v8

    .line 894
    :goto_16
    if-ge v3, v2, :cond_28

    .line 895
    .line 896
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    move-result-object v4

    .line 900
    check-cast v4, Landroid/content/pm/PermissionGroupInfo;

    .line 901
    .line 902
    const-string/jumbo v6, "permission group:"

    .line 903
    .line 904
    .line 905
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    iget-object v4, v4, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    .line 909
    .line 910
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 911
    .line 912
    .line 913
    add-int/2addr v3, v5

    .line 914
    goto :goto_16

    .line 915
    :cond_28
    return v8

    .line 916
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListStagedSessions()I

    .line 917
    .line 918
    .line 919
    move-result v0

    .line 920
    return v0

    .line 921
    :sswitch_data_0
    .sparse-switch
        -0x431ede9c -> :sswitch_a
        -0x3b73d86e -> :sswitch_9
        -0x301acbba -> :sswitch_8
        -0x11531bc3 -> :sswitch_7
        0x35cb79 -> :sswitch_6
        0x6a68e08 -> :sswitch_5
        0x20752f6e -> :sswitch_4
        0x2cc154ed -> :sswitch_3
        0x3071b299 -> :sswitch_2
        0x4392f484 -> :sswitch_1
        0x6a7808c2 -> :sswitch_0
    .end sparse-switch

    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    .line 950
    .line 951
    .line 952
    .line 953
    .line 954
    .line 955
    .line 956
    .line 957
    .line 958
    .line 959
    .line 960
    .line 961
    .line 962
    .line 963
    .line 964
    .line 965
    .line 966
    .line 967
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_c
        :pswitch_7
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 968
    .line 969
    .line 970
    .line 971
    .line 972
    .line 973
    .line 974
    .line 975
    .line 976
    .line 977
    .line 978
    .line 979
    .line 980
    .line 981
    .line 982
    .line 983
    .line 984
    .line 985
    .line 986
    .line 987
    .line 988
    .line 989
    .line 990
    .line 991
    .line 992
    .line 993
    :sswitch_data_1
    .sparse-switch
        0x5d7 -> :sswitch_f
        0x5d9 -> :sswitch_e
        0x5da -> :sswitch_d
        0x5e6 -> :sswitch_c
        0x5e8 -> :sswitch_b
    .end sparse-switch

    .line 994
    .line 995
    .line 996
    .line 997
    .line 998
    .line 999
    .line 1000
    .line 1001
    .line 1002
    .line 1003
    .line 1004
    .line 1005
    .line 1006
    .line 1007
    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    .line 1013
    .line 1014
    .line 1015
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final runListPackages(ZZ)I
    .locals 42

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "Error: "

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    const-string/jumbo v0, "sdk:"

    .line 8
    .line 9
    .line 10
    :goto_0
    move-object v3, v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const-string/jumbo v0, "package:"

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    move/from16 v7, p1

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    const/4 v8, -0x1

    .line 24
    const/4 v9, -0x1

    .line 25
    const/4 v10, 0x0

    .line 26
    const/4 v11, 0x0

    .line 27
    const/4 v12, 0x0

    .line 28
    const/4 v13, 0x0

    .line 29
    const/4 v14, 0x0

    .line 30
    const/4 v15, 0x0

    .line 31
    const/16 v16, 0x0

    .line 32
    .line 33
    const/16 v17, 0x0

    .line 34
    .line 35
    const/16 v18, 0x0

    .line 36
    .line 37
    const/16 v19, 0x0

    .line 38
    .line 39
    :goto_2
    :pswitch_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const/high16 v20, 0x200000

    .line 44
    .line 45
    const/high16 v21, 0x4000000

    .line 46
    .line 47
    if-eqz v5, :cond_2

    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 50
    .line 51
    .line 52
    move-result v22

    .line 53
    sparse-switch v22, :sswitch_data_0

    .line 54
    .line 55
    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :sswitch_0
    const-string v6, "--apex-only"

    .line 59
    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v6

    .line 64
    if-eqz v6, :cond_1

    .line 65
    .line 66
    const/16 v6, 0xc

    .line 67
    .line 68
    goto/16 :goto_4

    .line 69
    .line 70
    :catch_0
    move-exception v0

    .line 71
    move-object v5, v2

    .line 72
    move-object v3, v4

    .line 73
    goto/16 :goto_1b

    .line 74
    .line 75
    :sswitch_1
    const-string v6, "--match-libraries"

    .line 76
    .line 77
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_1

    .line 82
    .line 83
    const/16 v6, 0x10

    .line 84
    .line 85
    goto/16 :goto_4

    .line 86
    .line 87
    :sswitch_2
    const-string v6, "--user"

    .line 88
    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    if-eqz v6, :cond_1

    .line 94
    .line 95
    const/16 v6, 0xe

    .line 96
    .line 97
    goto/16 :goto_4

    .line 98
    .line 99
    :sswitch_3
    const-string v6, "--show-stopped"

    .line 100
    .line 101
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_1

    .line 106
    .line 107
    const/16 v6, 0x11

    .line 108
    .line 109
    goto/16 :goto_4

    .line 110
    .line 111
    :sswitch_4
    const-string v6, "--factory-only"

    .line 112
    .line 113
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    if-eqz v6, :cond_1

    .line 118
    .line 119
    const/16 v6, 0xd

    .line 120
    .line 121
    goto/16 :goto_4

    .line 122
    .line 123
    :sswitch_5
    const-string v6, "--uid"

    .line 124
    .line 125
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    if-eqz v6, :cond_1

    .line 130
    .line 131
    const/16 v6, 0xf

    .line 132
    .line 133
    goto/16 :goto_4

    .line 134
    .line 135
    :sswitch_6
    const-string v6, "-u"

    .line 136
    .line 137
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    if-eqz v6, :cond_1

    .line 142
    .line 143
    const/16 v6, 0x9

    .line 144
    .line 145
    goto/16 :goto_4

    .line 146
    .line 147
    :sswitch_7
    const-string v6, "-s"

    .line 148
    .line 149
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v6

    .line 153
    if-eqz v6, :cond_1

    .line 154
    .line 155
    const/4 v6, 0x6

    .line 156
    goto/16 :goto_4

    .line 157
    .line 158
    :sswitch_8
    const-string v6, "-q"

    .line 159
    .line 160
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v6

    .line 164
    if-eqz v6, :cond_1

    .line 165
    .line 166
    const/4 v6, 0x7

    .line 167
    goto :goto_4

    .line 168
    :sswitch_9
    const-string v6, "-l"

    .line 169
    .line 170
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    if-eqz v6, :cond_1

    .line 175
    .line 176
    const/4 v6, 0x5

    .line 177
    goto :goto_4

    .line 178
    :sswitch_a
    const-string v6, "-i"

    .line 179
    .line 180
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-eqz v6, :cond_1

    .line 185
    .line 186
    const/4 v6, 0x4

    .line 187
    goto :goto_4

    .line 188
    :sswitch_b
    const-string v6, "-f"

    .line 189
    .line 190
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    if-eqz v6, :cond_1

    .line 195
    .line 196
    const/4 v6, 0x3

    .line 197
    goto :goto_4

    .line 198
    :sswitch_c
    const-string v6, "-e"

    .line 199
    .line 200
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    if-eqz v6, :cond_1

    .line 205
    .line 206
    const/4 v6, 0x1

    .line 207
    goto :goto_4

    .line 208
    :sswitch_d
    const-string v6, "-d"

    .line 209
    .line 210
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    if-eqz v6, :cond_1

    .line 215
    .line 216
    const/4 v6, 0x0

    .line 217
    goto :goto_4

    .line 218
    :sswitch_e
    const-string v6, "-a"

    .line 219
    .line 220
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v6

    .line 224
    if-eqz v6, :cond_1

    .line 225
    .line 226
    const/4 v6, 0x2

    .line 227
    goto :goto_4

    .line 228
    :sswitch_f
    const-string v6, "-U"

    .line 229
    .line 230
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v6

    .line 234
    if-eqz v6, :cond_1

    .line 235
    .line 236
    const/16 v6, 0x8

    .line 237
    .line 238
    goto :goto_4

    .line 239
    :sswitch_10
    const-string v6, "-3"

    .line 240
    .line 241
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    if-eqz v6, :cond_1

    .line 246
    .line 247
    const/16 v6, 0xa

    .line 248
    .line 249
    goto :goto_4

    .line 250
    :sswitch_11
    const-string v6, "--show-versioncode"

    .line 251
    .line 252
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    if-eqz v6, :cond_1

    .line 257
    .line 258
    const/16 v6, 0xb

    .line 259
    .line 260
    goto :goto_4

    .line 261
    :cond_1
    :goto_3
    const/4 v6, -0x1

    .line 262
    :goto_4
    packed-switch v6, :pswitch_data_0

    .line 263
    .line 264
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    .line 270
    const-string v1, "Error: Unknown option: "

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    const/4 v1, -0x1

    .line 286
    return v1

    .line 287
    :pswitch_1
    const/16 v17, 0x1

    .line 288
    .line 289
    goto/16 :goto_2

    .line 290
    .line 291
    :pswitch_2
    or-int v0, v0, v21

    .line 292
    .line 293
    goto/16 :goto_2

    .line 294
    .line 295
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    move-result v9

    .line 303
    :pswitch_4
    const/16 v19, 0x1

    .line 304
    .line 305
    goto/16 :goto_2

    .line 306
    .line 307
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v5

    .line 311
    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    move-result v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    goto/16 :goto_2

    .line 316
    .line 317
    :pswitch_6
    or-int v0, v0, v20

    .line 318
    .line 319
    goto/16 :goto_2

    .line 320
    .line 321
    :pswitch_7
    const/high16 v5, 0x40000000    # 2.0f

    .line 322
    .line 323
    or-int/2addr v0, v5

    .line 324
    const/4 v14, 0x1

    .line 325
    goto/16 :goto_2

    .line 326
    .line 327
    :pswitch_8
    const/16 v16, 0x1

    .line 328
    .line 329
    goto/16 :goto_2

    .line 330
    .line 331
    :pswitch_9
    const/4 v13, 0x1

    .line 332
    goto/16 :goto_2

    .line 333
    .line 334
    :pswitch_a
    or-int/lit16 v0, v0, 0x2000

    .line 335
    .line 336
    goto/16 :goto_2

    .line 337
    .line 338
    :pswitch_b
    const/4 v15, 0x1

    .line 339
    goto/16 :goto_2

    .line 340
    .line 341
    :pswitch_c
    const/4 v12, 0x1

    .line 342
    goto/16 :goto_2

    .line 343
    .line 344
    :pswitch_d
    const/16 v18, 0x1

    .line 345
    .line 346
    goto/16 :goto_2

    .line 347
    .line 348
    :pswitch_e
    const/4 v7, 0x1

    .line 349
    goto/16 :goto_2

    .line 350
    .line 351
    :pswitch_f
    const v5, 0x20402000

    .line 352
    .line 353
    .line 354
    or-int/2addr v0, v5

    .line 355
    goto/16 :goto_2

    .line 356
    .line 357
    :pswitch_10
    const/4 v11, 0x1

    .line 358
    goto/16 :goto_2

    .line 359
    .line 360
    :pswitch_11
    const/4 v10, 0x1

    .line 361
    goto/16 :goto_2

    .line 362
    .line 363
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    .line 368
    .line 369
    if-eqz v6, :cond_6

    .line 370
    .line 371
    invoke-static {}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->isCarlifeForceConnect()Z

    .line 372
    .line 373
    .line 374
    move-result v6

    .line 375
    if-eqz v6, :cond_6

    .line 376
    .line 377
    if-eqz v5, :cond_3

    .line 378
    .line 379
    const-string v6, "com.baidu.carlife"

    .line 380
    .line 381
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result v6

    .line 385
    goto :goto_5

    .line 386
    :cond_3
    const/4 v6, 0x0

    .line 387
    :goto_5
    if-nez v6, :cond_5

    .line 388
    .line 389
    const-string v6, "carlife"

    .line 390
    .line 391
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result v6

    .line 395
    if-nez v6, :cond_5

    .line 396
    .line 397
    if-nez v5, :cond_4

    .line 398
    .line 399
    goto :goto_6

    .line 400
    :cond_4
    move-object/from16 v24, v2

    .line 401
    .line 402
    move-object/from16 v23, v4

    .line 403
    .line 404
    const/4 v4, 0x1

    .line 405
    const/4 v6, 0x0

    .line 406
    goto :goto_7

    .line 407
    :cond_5
    :goto_6
    const-string/jumbo v0, "package:com.baidu.carlife"

    .line 408
    .line 409
    .line 410
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 411
    .line 412
    .line 413
    const/4 v6, 0x0

    .line 414
    return v6

    .line 415
    :cond_6
    const/4 v6, 0x0

    .line 416
    move-object/from16 v24, v2

    .line 417
    .line 418
    move-object/from16 v23, v4

    .line 419
    .line 420
    const/4 v4, 0x1

    .line 421
    :goto_7
    new-array v2, v4, [I

    .line 422
    .line 423
    aput v8, v2, v6

    .line 424
    .line 425
    const/4 v4, -0x1

    .line 426
    if-ne v8, v4, :cond_7

    .line 427
    .line 428
    const-class v2, Lcom/android/server/pm/UserManagerInternal;

    .line 429
    .line 430
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v2

    .line 434
    check-cast v2, Lcom/android/server/pm/UserManagerInternal;

    .line 435
    .line 436
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    :cond_7
    if-eqz p2, :cond_8

    .line 441
    .line 442
    or-int v0, v0, v21

    .line 443
    .line 444
    :cond_8
    move v4, v0

    .line 445
    new-instance v6, Ljava/util/HashMap;

    .line 446
    .line 447
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 448
    .line 449
    .line 450
    array-length v8, v2

    .line 451
    move-object/from16 v21, v6

    .line 452
    .line 453
    const/4 v6, 0x0

    .line 454
    :goto_8
    if-ge v6, v8, :cond_22

    .line 455
    .line 456
    aget v0, v2, v6

    .line 457
    .line 458
    move-object/from16 v25, v2

    .line 459
    .line 460
    :try_start_1
    const-string/jumbo v2, "runListPackages"
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 461
    .line 462
    .line 463
    move/from16 v26, v8

    .line 464
    .line 465
    const/4 v8, 0x0

    .line 466
    :try_start_2
    invoke-static {v0, v8, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    .line 467
    .line 468
    .line 469
    move-result v2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 470
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 471
    .line 472
    move/from16 v28, v6

    .line 473
    .line 474
    move/from16 v27, v7

    .line 475
    .line 476
    int-to-long v6, v4

    .line 477
    invoke-interface {v8, v6, v7, v2}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    .line 478
    .line 479
    .line 480
    move-result-object v8

    .line 481
    invoke-virtual {v8}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 482
    .line 483
    .line 484
    move-result-object v8

    .line 485
    move/from16 v29, v4

    .line 486
    .line 487
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 488
    .line 489
    .line 490
    move-result v4

    .line 491
    move-object/from16 v30, v3

    .line 492
    .line 493
    const/4 v3, 0x0

    .line 494
    :goto_9
    if-ge v3, v4, :cond_21

    .line 495
    .line 496
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v31

    .line 500
    move/from16 v32, v4

    .line 501
    .line 502
    move-object/from16 v4, v31

    .line 503
    .line 504
    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 505
    .line 506
    move-object/from16 v31, v8

    .line 507
    .line 508
    new-instance v8, Ljava/lang/StringBuilder;

    .line 509
    .line 510
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 511
    .line 512
    .line 513
    move/from16 v33, v3

    .line 514
    .line 515
    if-eqz v5, :cond_9

    .line 516
    .line 517
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 518
    .line 519
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 520
    .line 521
    .line 522
    move-result v3

    .line 523
    if-nez v3, :cond_9

    .line 524
    .line 525
    move/from16 v36, v0

    .line 526
    .line 527
    move/from16 v38, v2

    .line 528
    .line 529
    move-object/from16 v34, v5

    .line 530
    .line 531
    :goto_a
    move-wide/from16 v40, v6

    .line 532
    .line 533
    move/from16 p1, v9

    .line 534
    .line 535
    move-object/from16 v6, v21

    .line 536
    .line 537
    move-object/from16 v2, v30

    .line 538
    .line 539
    const/16 v35, 0x1

    .line 540
    .line 541
    goto/16 :goto_16

    .line 542
    .line 543
    :cond_9
    iget-boolean v3, v4, Landroid/content/pm/PackageInfo;->isApex:Z

    .line 544
    .line 545
    move-object/from16 v34, v5

    .line 546
    .line 547
    const/4 v5, -0x1

    .line 548
    if-eq v9, v5, :cond_a

    .line 549
    .line 550
    if-nez v3, :cond_a

    .line 551
    .line 552
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 553
    .line 554
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 555
    .line 556
    if-eq v5, v9, :cond_a

    .line 557
    .line 558
    move/from16 v36, v0

    .line 559
    .line 560
    move/from16 v38, v2

    .line 561
    .line 562
    goto :goto_a

    .line 563
    :cond_a
    if-nez v3, :cond_b

    .line 564
    .line 565
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 566
    .line 567
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 568
    .line 569
    const/16 v35, 0x1

    .line 570
    .line 571
    and-int/lit8 v5, v5, 0x1

    .line 572
    .line 573
    if-eqz v5, :cond_c

    .line 574
    .line 575
    move/from16 v5, v35

    .line 576
    .line 577
    goto :goto_b

    .line 578
    :cond_b
    const/16 v35, 0x1

    .line 579
    .line 580
    :cond_c
    const/4 v5, 0x0

    .line 581
    :goto_b
    move/from16 p1, v9

    .line 582
    .line 583
    if-nez v3, :cond_d

    .line 584
    .line 585
    iget-object v9, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 586
    .line 587
    iget-boolean v9, v9, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 588
    .line 589
    if-eqz v9, :cond_d

    .line 590
    .line 591
    move/from16 v9, v35

    .line 592
    .line 593
    goto :goto_c

    .line 594
    :cond_d
    const/4 v9, 0x0

    .line 595
    :goto_c
    if-eqz v10, :cond_f

    .line 596
    .line 597
    if-nez v9, :cond_e

    .line 598
    .line 599
    goto :goto_f

    .line 600
    :cond_e
    :goto_d
    move/from16 v36, v0

    .line 601
    .line 602
    move/from16 v38, v2

    .line 603
    .line 604
    move-wide/from16 v40, v6

    .line 605
    .line 606
    :goto_e
    move-object/from16 v6, v21

    .line 607
    .line 608
    move-object/from16 v2, v30

    .line 609
    .line 610
    goto/16 :goto_16

    .line 611
    .line 612
    :cond_f
    :goto_f
    if-eqz v11, :cond_10

    .line 613
    .line 614
    if-eqz v9, :cond_e

    .line 615
    .line 616
    :cond_10
    if-eqz v12, :cond_11

    .line 617
    .line 618
    if-eqz v5, :cond_e

    .line 619
    .line 620
    :cond_11
    if-eqz v13, :cond_12

    .line 621
    .line 622
    if-nez v5, :cond_e

    .line 623
    .line 624
    :cond_12
    if-eqz v14, :cond_13

    .line 625
    .line 626
    if-nez v3, :cond_13

    .line 627
    .line 628
    goto :goto_d

    .line 629
    :cond_13
    if-eqz v15, :cond_14

    .line 630
    .line 631
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 632
    .line 633
    iget-object v9, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 634
    .line 635
    invoke-interface {v5, v9, v2}, Landroid/content/pm/IPackageManager;->isPackageQuarantinedForUser(Ljava/lang/String;I)Z

    .line 636
    .line 637
    .line 638
    move-result v5

    .line 639
    if-nez v5, :cond_14

    .line 640
    .line 641
    goto :goto_d

    .line 642
    :cond_14
    if-eqz p2, :cond_19

    .line 643
    .line 644
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 645
    .line 646
    iget-object v9, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 647
    .line 648
    invoke-interface {v5, v9, v6, v7, v0}, Landroid/content/pm/IPackageManager;->getDeclaredSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    .line 649
    .line 650
    .line 651
    move-result-object v5

    .line 652
    if-nez v5, :cond_15

    .line 653
    .line 654
    goto :goto_d

    .line 655
    :cond_15
    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 656
    .line 657
    .line 658
    move-result-object v5

    .line 659
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 660
    .line 661
    .line 662
    move-result v9

    .line 663
    move/from16 v36, v0

    .line 664
    .line 665
    const/4 v0, 0x0

    .line 666
    :goto_10
    if-ge v0, v9, :cond_17

    .line 667
    .line 668
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    move-result-object v37

    .line 672
    check-cast v37, Landroid/content/pm/SharedLibraryInfo;

    .line 673
    .line 674
    move/from16 v38, v2

    .line 675
    .line 676
    invoke-virtual/range {v37 .. v37}, Landroid/content/pm/SharedLibraryInfo;->getType()I

    .line 677
    .line 678
    .line 679
    move-result v2

    .line 680
    move-object/from16 v39, v5

    .line 681
    .line 682
    const/4 v5, 0x3

    .line 683
    if-ne v2, v5, :cond_16

    .line 684
    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    .line 686
    .line 687
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 688
    .line 689
    .line 690
    invoke-virtual/range {v37 .. v37}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v2

    .line 694
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    const-string v2, ":"

    .line 698
    .line 699
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    move-wide/from16 v40, v6

    .line 703
    .line 704
    invoke-virtual/range {v37 .. v37}, Landroid/content/pm/SharedLibraryInfo;->getLongVersion()J

    .line 705
    .line 706
    .line 707
    move-result-wide v5

    .line 708
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 709
    .line 710
    .line 711
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    goto :goto_11

    .line 716
    :cond_16
    move-wide/from16 v40, v6

    .line 717
    .line 718
    add-int/lit8 v0, v0, 0x1

    .line 719
    .line 720
    move/from16 v2, v38

    .line 721
    .line 722
    move-object/from16 v5, v39

    .line 723
    .line 724
    goto :goto_10

    .line 725
    :cond_17
    move/from16 v38, v2

    .line 726
    .line 727
    move-wide/from16 v40, v6

    .line 728
    .line 729
    const/4 v0, 0x0

    .line 730
    :goto_11
    if-nez v0, :cond_18

    .line 731
    .line 732
    goto :goto_e

    .line 733
    :cond_18
    :goto_12
    move-object/from16 v2, v30

    .line 734
    .line 735
    goto :goto_13

    .line 736
    :cond_19
    move/from16 v36, v0

    .line 737
    .line 738
    move/from16 v38, v2

    .line 739
    .line 740
    move-wide/from16 v40, v6

    .line 741
    .line 742
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 743
    .line 744
    goto :goto_12

    .line 745
    :goto_13
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    if-eqz v27, :cond_1a

    .line 749
    .line 750
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 751
    .line 752
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 753
    .line 754
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    const-string v5, "="

    .line 758
    .line 759
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    :cond_1a
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    if-eqz v16, :cond_1c

    .line 766
    .line 767
    const-string v0, " versionCode:"

    .line 768
    .line 769
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 773
    .line 774
    if-eqz v0, :cond_1b

    .line 775
    .line 776
    iget-wide v5, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 777
    .line 778
    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 779
    .line 780
    .line 781
    goto :goto_14

    .line 782
    :cond_1b
    invoke-virtual {v4}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 783
    .line 784
    .line 785
    move-result-wide v5

    .line 786
    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 787
    .line 788
    .line 789
    :cond_1c
    :goto_14
    if-eqz v17, :cond_1e

    .line 790
    .line 791
    const-string v0, " stopped="

    .line 792
    .line 793
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    .line 795
    .line 796
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 797
    .line 798
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 799
    .line 800
    and-int v0, v0, v20

    .line 801
    .line 802
    if-eqz v0, :cond_1d

    .line 803
    .line 804
    const-string/jumbo v0, "true"

    .line 805
    .line 806
    .line 807
    goto :goto_15

    .line 808
    :cond_1d
    const-string v0, "false"

    .line 809
    .line 810
    :goto_15
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    .line 812
    .line 813
    :cond_1e
    if-eqz v18, :cond_1f

    .line 814
    .line 815
    const-string v0, "  installer="

    .line 816
    .line 817
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    .line 819
    .line 820
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 821
    .line 822
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 823
    .line 824
    invoke-interface {v0, v5}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v0

    .line 828
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    .line 830
    .line 831
    :cond_1f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v0

    .line 835
    new-instance v5, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda2;

    .line 836
    .line 837
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 838
    .line 839
    .line 840
    move-object/from16 v6, v21

    .line 841
    .line 842
    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    move-result-object v0

    .line 846
    check-cast v0, Ljava/util/List;

    .line 847
    .line 848
    if-eqz v19, :cond_20

    .line 849
    .line 850
    if-nez v3, :cond_20

    .line 851
    .line 852
    iget-object v3, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 853
    .line 854
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 855
    .line 856
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v3

    .line 860
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    .line 862
    .line 863
    :cond_20
    :goto_16
    add-int/lit8 v3, v33, 0x1

    .line 864
    .line 865
    move/from16 v9, p1

    .line 866
    .line 867
    move-object/from16 v30, v2

    .line 868
    .line 869
    move-object/from16 v21, v6

    .line 870
    .line 871
    move-object/from16 v8, v31

    .line 872
    .line 873
    move/from16 v4, v32

    .line 874
    .line 875
    move-object/from16 v5, v34

    .line 876
    .line 877
    move/from16 v0, v36

    .line 878
    .line 879
    move/from16 v2, v38

    .line 880
    .line 881
    move-wide/from16 v6, v40

    .line 882
    .line 883
    goto/16 :goto_9

    .line 884
    .line 885
    :cond_21
    move-object/from16 v34, v5

    .line 886
    .line 887
    move/from16 p1, v9

    .line 888
    .line 889
    move-object/from16 v6, v21

    .line 890
    .line 891
    move-object/from16 v2, v30

    .line 892
    .line 893
    const/16 v35, 0x1

    .line 894
    .line 895
    move-object/from16 v5, v24

    .line 896
    .line 897
    goto :goto_19

    .line 898
    :catch_1
    move-exception v0

    .line 899
    move-object v2, v3

    .line 900
    move/from16 v29, v4

    .line 901
    .line 902
    move-object/from16 v34, v5

    .line 903
    .line 904
    move/from16 v28, v6

    .line 905
    .line 906
    move/from16 v27, v7

    .line 907
    .line 908
    :goto_17
    move/from16 p1, v9

    .line 909
    .line 910
    move-object/from16 v6, v21

    .line 911
    .line 912
    const/16 v35, 0x1

    .line 913
    .line 914
    goto :goto_18

    .line 915
    :catch_2
    move-exception v0

    .line 916
    move-object v2, v3

    .line 917
    move/from16 v29, v4

    .line 918
    .line 919
    move-object/from16 v34, v5

    .line 920
    .line 921
    move/from16 v28, v6

    .line 922
    .line 923
    move/from16 v27, v7

    .line 924
    .line 925
    move/from16 v26, v8

    .line 926
    .line 927
    goto :goto_17

    .line 928
    :goto_18
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 929
    .line 930
    .line 931
    move-result-object v3

    .line 932
    new-instance v4, Ljava/lang/StringBuilder;

    .line 933
    .line 934
    move-object/from16 v5, v24

    .line 935
    .line 936
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 937
    .line 938
    .line 939
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    .line 940
    .line 941
    .line 942
    move-result-object v0

    .line 943
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    .line 945
    .line 946
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 947
    .line 948
    .line 949
    move-result-object v0

    .line 950
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 951
    .line 952
    .line 953
    :goto_19
    add-int/lit8 v0, v28, 0x1

    .line 954
    .line 955
    move/from16 v9, p1

    .line 956
    .line 957
    move-object v3, v2

    .line 958
    move-object/from16 v24, v5

    .line 959
    .line 960
    move-object/from16 v21, v6

    .line 961
    .line 962
    move-object/from16 v2, v25

    .line 963
    .line 964
    move/from16 v8, v26

    .line 965
    .line 966
    move/from16 v7, v27

    .line 967
    .line 968
    move/from16 v4, v29

    .line 969
    .line 970
    move-object/from16 v5, v34

    .line 971
    .line 972
    move v6, v0

    .line 973
    goto/16 :goto_8

    .line 974
    .line 975
    :cond_22
    move-object/from16 v6, v21

    .line 976
    .line 977
    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 978
    .line 979
    .line 980
    move-result-object v0

    .line 981
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 982
    .line 983
    .line 984
    move-result-object v0

    .line 985
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 986
    .line 987
    .line 988
    move-result v1

    .line 989
    if-eqz v1, :cond_24

    .line 990
    .line 991
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 992
    .line 993
    .line 994
    move-result-object v1

    .line 995
    check-cast v1, Ljava/util/Map$Entry;

    .line 996
    .line 997
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 998
    .line 999
    .line 1000
    move-result-object v2

    .line 1001
    check-cast v2, Ljava/lang/String;

    .line 1002
    .line 1003
    move-object/from16 v3, v23

    .line 1004
    .line 1005
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1006
    .line 1007
    .line 1008
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 1009
    .line 1010
    .line 1011
    move-result-object v1

    .line 1012
    check-cast v1, Ljava/util/List;

    .line 1013
    .line 1014
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 1015
    .line 1016
    .line 1017
    move-result v2

    .line 1018
    if-nez v2, :cond_23

    .line 1019
    .line 1020
    const-string v2, " uid:"

    .line 1021
    .line 1022
    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1023
    .line 1024
    .line 1025
    const-string v2, ","

    .line 1026
    .line 1027
    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v1

    .line 1031
    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1032
    .line 1033
    .line 1034
    :cond_23
    invoke-virtual {v3}, Ljava/io/PrintWriter;->println()V

    .line 1035
    .line 1036
    .line 1037
    move-object/from16 v23, v3

    .line 1038
    .line 1039
    goto :goto_1a

    .line 1040
    :cond_24
    const/4 v1, 0x0

    .line 1041
    return v1

    .line 1042
    :goto_1b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1043
    .line 1044
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1045
    .line 1046
    .line 1047
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v0

    .line 1051
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    .line 1053
    .line 1054
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v0

    .line 1058
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1059
    .line 1060
    .line 1061
    const/4 v1, -0x1

    .line 1062
    return v1

    .line 1063
    :sswitch_data_0
    .sparse-switch
        -0x1d6f426b -> :sswitch_11
        0x5a6 -> :sswitch_10
        0x5c8 -> :sswitch_f
        0x5d4 -> :sswitch_e
        0x5d7 -> :sswitch_d
        0x5d8 -> :sswitch_c
        0x5d9 -> :sswitch_b
        0x5dc -> :sswitch_a
        0x5df -> :sswitch_9
        0x5e4 -> :sswitch_8
        0x5e6 -> :sswitch_7
        0x5e8 -> :sswitch_6
        0x2905ab0 -> :sswitch_5
        0x2e2ebc2f -> :sswitch_4
        0x3ca6989d -> :sswitch_3
        0x4f7b216b -> :sswitch_2
        0x574ac2f1 -> :sswitch_1
        0x6bd72bd7 -> :sswitch_0
    .end sparse-switch

    .line 1064
    .line 1065
    .line 1066
    .line 1067
    .line 1068
    .line 1069
    .line 1070
    .line 1071
    .line 1072
    .line 1073
    .line 1074
    .line 1075
    .line 1076
    .line 1077
    .line 1078
    .line 1079
    .line 1080
    .line 1081
    .line 1082
    .line 1083
    .line 1084
    .line 1085
    .line 1086
    .line 1087
    .line 1088
    .line 1089
    .line 1090
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_4
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final runListStagedSessions()I
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, -0x1

    .line 3
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const-string v4, "  "

    .line 10
    .line 11
    const/16 v5, 0x78

    .line 12
    .line 13
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    new-instance v3, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;

    .line 17
    .line 18
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-eqz v4, :cond_3

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    sparse-switch v5, :sswitch_data_0

    .line 32
    .line 33
    .line 34
    :goto_1
    move v5, v1

    .line 35
    goto :goto_2

    .line 36
    :sswitch_0
    const-string v5, "--only-ready"

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-nez v5, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    const/4 v5, 0x2

    .line 46
    goto :goto_2

    .line 47
    :sswitch_1
    const-string v5, "--only-sessionid"

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-nez v5, :cond_1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    move v5, v0

    .line 57
    goto :goto_2

    .line 58
    :sswitch_2
    const-string v5, "--only-parent"

    .line 59
    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-nez v5, :cond_2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const/4 v5, 0x0

    .line 68
    :goto_2
    packed-switch v5, :pswitch_data_0

    .line 69
    .line 70
    .line 71
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v0, "Error: Unknown option: "

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {v2, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->close()V

    .line 92
    .line 93
    .line 94
    return v1

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    goto :goto_3

    .line 97
    :pswitch_0
    :try_start_2
    iput-boolean v0, v3, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlyReady:Z

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :pswitch_1
    iput-boolean v0, v3, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlySessionId:Z

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :pswitch_2
    iput-boolean v0, v3, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;->onlyParent:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_3
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 107
    .line 108
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-interface {p0}, Landroid/content/pm/IPackageInstaller;->getStagedSessions()Landroid/content/pm/ParceledListSlice;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {v2, p0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->printSessionList(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->close()V

    .line 124
    .line 125
    .line 126
    return v0

    .line 127
    :catch_0
    move-exception p0

    .line 128
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string v3, "Failure ["

    .line 134
    .line 135
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v3, " - "

    .line 150
    .line 151
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string p0, "]"

    .line 162
    .line 163
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-virtual {v2, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->close()V

    .line 174
    .line 175
    .line 176
    return v1

    .line 177
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 178
    .line 179
    .line 180
    goto :goto_4

    .line 181
    :catchall_1
    move-exception v0

    .line 182
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 183
    .line 184
    .line 185
    :goto_4
    throw p0

    .line 186
    nop

    .line 187
    :sswitch_data_0
    .sparse-switch
        -0x7a952fb5 -> :sswitch_2
        -0x6e25b510 -> :sswitch_1
        0x4ebe19e2 -> :sswitch_0
    .end sparse-switch

    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final runLogVisibility()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    :cond_0
    move v2, v1

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, -0x1

    .line 12
    if-eqz v3, :cond_2

    .line 13
    .line 14
    const-string v2, "--disable"

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    const-string v2, "--enable"

    .line 23
    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    const-string p0, "Error: Unknown option: "

    .line 31
    .line 32
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v4

    .line 40
    :cond_1
    const/4 v2, 0x0

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_5

    .line 47
    .line 48
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    .line 49
    .line 50
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 55
    .line 56
    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    sget-boolean v3, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 62
    .line 63
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->isSystemOrRootOrShell(I)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_4

    .line 72
    .line 73
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-interface {v3, v0}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    if-eqz v3, :cond_3

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mAppsFilter:Lcom/android/server/pm/AppsFilterImpl;

    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/pm/AppsFilterBase;->mFeatureConfig:Lcom/android/server/pm/FeatureConfig;

    .line 90
    .line 91
    iget v0, v3, Lcom/android/server/pm/PackageSetting;->mAppId:I

    .line 92
    .line 93
    invoke-interface {p0, v0, v2}, Lcom/android/server/pm/FeatureConfig;->enableLogging(IZ)V

    .line 94
    .line 95
    .line 96
    return v1

    .line 97
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 98
    .line 99
    const-string v1, "No package found for "

    .line 100
    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0

    .line 109
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 110
    .line 111
    const-string v0, "Only the system or shell can set visibility logging."

    .line 112
    .line 113
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :cond_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    const-string v0, "Error: no package specified"

    .line 122
    .line 123
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return v4
.end method

.method public final runMovePackage()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v0, "Error: package name not specified"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v3, "internal"

    .line 23
    .line 24
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    :cond_1
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 32
    .line 33
    invoke-interface {v3, v0, v2}, Landroid/content/pm/IPackageManager;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 38
    .line 39
    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    :goto_0
    invoke-static {v2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    const-wide/16 v2, 0x3e8

    .line 50
    .line 51
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 55
    .line 56
    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const/16 v0, -0x64

    .line 62
    .line 63
    if-ne v2, v0, :cond_3

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const-string v0, "Success"

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const/4 p0, 0x0

    .line 75
    return p0

    .line 76
    :cond_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    const-string v0, "Failure ["

    .line 81
    .line 82
    const-string v3, "]"

    .line 83
    .line 84
    invoke-static {v2, p0, v0, v3}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return v1
.end method

.method public final runMovePrimaryStorage()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "internal"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 15
    .line 16
    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->movePrimaryStorage(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 21
    .line 22
    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    :goto_0
    invoke-static {v1}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    const-wide/16 v1, 0x3e8

    .line 33
    .line 34
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 38
    .line 39
    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/16 v0, -0x64

    .line 45
    .line 46
    if-ne v1, v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    const-string v0, "Success"

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x0

    .line 58
    return p0

    .line 59
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const-string v0, "Failure ["

    .line 64
    .line 65
    const-string v2, "]"

    .line 66
    .line 67
    invoke-static {v1, p0, v0, v2}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 p0, 0x1

    .line 71
    return p0
.end method

.method public final runPath()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v2, "--user"

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v1

    .line 26
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string v0, "Error: no package specified"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_1
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->BAIDU_CARLIFE:Z

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    invoke-static {}, Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;->isCarlifeForceConnect()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    const-string v3, "com.baidu.carlife"

    .line 54
    .line 55
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    const-string/jumbo v0, "package:/data/app/~~iNjKNe-7WKMgdZXJDtvyIw==/com.baidu.carlife-TV26JIouWEDzMsoGghKuXg==/base.apk"

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return v1

    .line 72
    :cond_2
    const/16 v1, -0x2710

    .line 73
    .line 74
    const-string/jumbo v3, "runPath"

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v1, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-virtual {p0, v0, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->displayPackageFilePath(ILjava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    return p0
.end method

.method public final runQueryIntentActivities()V
    .locals 8

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    .line 12
    .line 13
    int-to-long v3, v3

    .line 14
    iget v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 15
    .line 16
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-gtz v2, :cond_0

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 47
    .line 48
    .line 49
    const-string v2, " activities found:"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v2, Landroid/util/PrintWriterPrinter;

    .line 55
    .line 56
    invoke-direct {v2, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-ge v3, v4, :cond_3

    .line 64
    .line 65
    const-string v4, "  Activity #"

    .line 66
    .line 67
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 71
    .line 72
    .line 73
    const-string v4, ":"

    .line 74
    .line 75
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v4, "    "

    .line 79
    .line 80
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 85
    .line 86
    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    .line 87
    .line 88
    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    .line 89
    .line 90
    invoke-static {v2, v4, v5, v6, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 91
    .line 92
    .line 93
    add-int/lit8 v3, v3, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception p0

    .line 97
    goto :goto_3

    .line 98
    :cond_1
    new-instance v2, Landroid/util/PrintWriterPrinter;

    .line 99
    .line 100
    invoke-direct {v2, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 101
    .line 102
    .line 103
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-ge v3, v1, :cond_3

    .line 108
    .line 109
    const-string v1, ""

    .line 110
    .line 111
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 116
    .line 117
    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    .line 118
    .line 119
    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    .line 120
    .line 121
    invoke-static {v2, v1, v4, v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 122
    .line 123
    .line 124
    add-int/lit8 v3, v3, 0x1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    :goto_2
    const-string p0, "No activities found"

    .line 128
    .line 129
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    .line 131
    .line 132
    :cond_3
    return-void

    .line 133
    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 134
    .line 135
    const-string v1, "Failed calling service"

    .line 136
    .line 137
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    throw v0

    .line 141
    :catch_1
    move-exception p0

    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    throw v0
.end method

.method public final runQueryIntentReceivers()V
    .locals 8

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    .line 12
    .line 13
    int-to-long v3, v3

    .line 14
    iget v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 15
    .line 16
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-gtz v2, :cond_0

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 47
    .line 48
    .line 49
    const-string v2, " receivers found:"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v2, Landroid/util/PrintWriterPrinter;

    .line 55
    .line 56
    invoke-direct {v2, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-ge v3, v4, :cond_3

    .line 64
    .line 65
    const-string v4, "  Receiver #"

    .line 66
    .line 67
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 71
    .line 72
    .line 73
    const-string v4, ":"

    .line 74
    .line 75
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v4, "    "

    .line 79
    .line 80
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 85
    .line 86
    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    .line 87
    .line 88
    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    .line 89
    .line 90
    invoke-static {v2, v4, v5, v6, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 91
    .line 92
    .line 93
    add-int/lit8 v3, v3, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception p0

    .line 97
    goto :goto_3

    .line 98
    :cond_1
    new-instance v2, Landroid/util/PrintWriterPrinter;

    .line 99
    .line 100
    invoke-direct {v2, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 101
    .line 102
    .line 103
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-ge v3, v1, :cond_3

    .line 108
    .line 109
    const-string v1, ""

    .line 110
    .line 111
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 116
    .line 117
    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    .line 118
    .line 119
    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    .line 120
    .line 121
    invoke-static {v2, v1, v4, v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 122
    .line 123
    .line 124
    add-int/lit8 v3, v3, 0x1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    :goto_2
    const-string p0, "No receivers found"

    .line 128
    .line 129
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    .line 131
    .line 132
    :cond_3
    return-void

    .line 133
    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 134
    .line 135
    const-string v1, "Failed calling service"

    .line 136
    .line 137
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    throw v0

    .line 141
    :catch_1
    move-exception p0

    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    throw v0
.end method

.method public final runQueryIntentServices()V
    .locals 8

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    .line 12
    .line 13
    int-to-long v3, v3

    .line 14
    iget v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 15
    .line 16
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-gtz v2, :cond_0

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 47
    .line 48
    .line 49
    const-string v2, " services found:"

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v2, Landroid/util/PrintWriterPrinter;

    .line 55
    .line 56
    invoke-direct {v2, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-ge v3, v4, :cond_3

    .line 64
    .line 65
    const-string v4, "  Service #"

    .line 66
    .line 67
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 71
    .line 72
    .line 73
    const-string v4, ":"

    .line 74
    .line 75
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const-string v4, "    "

    .line 79
    .line 80
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 85
    .line 86
    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    .line 87
    .line 88
    iget-boolean v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    .line 89
    .line 90
    invoke-static {v2, v4, v5, v6, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 91
    .line 92
    .line 93
    add-int/lit8 v3, v3, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception p0

    .line 97
    goto :goto_3

    .line 98
    :cond_1
    new-instance v2, Landroid/util/PrintWriterPrinter;

    .line 99
    .line 100
    invoke-direct {v2, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 101
    .line 102
    .line 103
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-ge v3, v1, :cond_3

    .line 108
    .line 109
    const-string v1, ""

    .line 110
    .line 111
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 116
    .line 117
    iget-boolean v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    .line 118
    .line 119
    iget-boolean v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    .line 120
    .line 121
    invoke-static {v2, v1, v4, v5, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 122
    .line 123
    .line 124
    add-int/lit8 v3, v3, 0x1

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_2
    :goto_2
    const-string p0, "No services found"

    .line 128
    .line 129
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    .line 131
    .line 132
    :cond_3
    return-void

    .line 133
    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 134
    .line 135
    const-string v1, "Failed calling service"

    .line 136
    .line 137
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    throw v0

    .line 141
    :catch_1
    move-exception p0

    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .line 150
    .line 151
    throw v0
.end method

.method public final runRemoveUser()I
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, -0x1

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x0

    .line 5
    move v4, v3

    .line 6
    move v5, v4

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v6

    .line 11
    if-eqz v6, :cond_3

    .line 12
    .line 13
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v7

    .line 17
    sparse-switch v7, :sswitch_data_0

    .line 18
    .line 19
    .line 20
    :goto_1
    move v7, v1

    .line 21
    goto :goto_2

    .line 22
    :sswitch_0
    const-string v7, "--wait"

    .line 23
    .line 24
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    if-nez v7, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move v7, v0

    .line 32
    goto :goto_2

    .line 33
    :sswitch_1
    const-string v7, "-w"

    .line 34
    .line 35
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-nez v7, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move v7, v2

    .line 43
    goto :goto_2

    .line 44
    :sswitch_2
    const-string v7, "--set-ephemeral-if-in-use"

    .line 45
    .line 46
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v7

    .line 50
    if-nez v7, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move v7, v3

    .line 54
    :goto_2
    packed-switch v7, :pswitch_data_0

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    const-string v0, "Error: unknown option: "

    .line 62
    .line 63
    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return v1

    .line 71
    :pswitch_0
    move v5, v2

    .line 72
    goto :goto_0

    .line 73
    :pswitch_1
    move v4, v2

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    if-nez v1, :cond_4

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const-string v0, "Error: no user id specified."

    .line 86
    .line 87
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return v2

    .line 91
    :cond_4
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    const-string/jumbo v6, "user"

    .line 96
    .line 97
    .line 98
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-static {v6}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    const-string v7, "PackageManagerShellCommand"

    .line 107
    .line 108
    if-eqz v4, :cond_9

    .line 109
    .line 110
    const-string v4, "Removing "

    .line 111
    .line 112
    const-string v5, " or set as ephemeral if in use."

    .line 113
    .line 114
    invoke-static {v1, v4, v5, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {v6, v1, v3}, Landroid/os/IUserManager;->removeUserWhenPossible(IZ)I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    const/4 v5, -0x5

    .line 122
    if-eq v4, v5, :cond_8

    .line 123
    .line 124
    if-eqz v4, :cond_7

    .line 125
    .line 126
    if-eq v4, v2, :cond_6

    .line 127
    .line 128
    if-eq v4, v0, :cond_5

    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    const-string v1, "Error: couldn\'t remove or mark ephemeral user id %d\n"

    .line 143
    .line 144
    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    const-string v1, "Success: user %d is already being removed\n"

    .line 161
    .line 162
    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 163
    .line 164
    .line 165
    :goto_3
    move v2, v3

    .line 166
    goto :goto_4

    .line 167
    :cond_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    const-string v1, "Success: user %d set as ephemeral\n"

    .line 180
    .line 181
    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 186
    .line 187
    .line 188
    move-result-object p0

    .line 189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    const-string v1, "Success: user %d removed\n"

    .line 198
    .line 199
    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    const-string v1, "Error: user %d is a permanent admin main user\n"

    .line 216
    .line 217
    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 218
    .line 219
    .line 220
    :goto_4
    return v2

    .line 221
    :cond_9
    const-string v0, "Error: couldn\'t remove user id "

    .line 222
    .line 223
    if-eqz v5, :cond_c

    .line 224
    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    const-string v5, "Removing (and waiting for completion) user "

    .line 228
    .line 229
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    .line 243
    .line 244
    invoke-direct {v4, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 245
    .line 246
    .line 247
    new-instance v5, Lcom/android/server/pm/PackageManagerShellCommand$4;

    .line 248
    .line 249
    invoke-direct {v5, v1, v4}, Lcom/android/server/pm/PackageManagerShellCommand$4;-><init>(ILjava/util/concurrent/CountDownLatch;)V

    .line 250
    .line 251
    .line 252
    const-class v7, Lcom/android/server/pm/UserManagerInternal;

    .line 253
    .line 254
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    check-cast v7, Lcom/android/server/pm/UserManagerInternal;

    .line 259
    .line 260
    invoke-virtual {v7, v5}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    .line 261
    .line 262
    .line 263
    :try_start_0
    invoke-interface {v6, v1}, Landroid/os/IUserManager;->removeUser(I)Z

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    if-eqz v6, :cond_b

    .line 268
    .line 269
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 270
    .line 271
    const-wide/16 v8, 0xa

    .line 272
    .line 273
    invoke-virtual {v4, v8, v9, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-nez v0, :cond_a

    .line 278
    .line 279
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    const-string v3, "Error: Remove user %d timed out\n"

    .line 284
    .line 285
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v4

    .line 289
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    invoke-virtual {v0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    .line 295
    .line 296
    :goto_5
    invoke-virtual {v7, v5}, Lcom/android/server/pm/UserManagerInternal;->removeUserLifecycleListener(Lcom/android/server/pm/PackageManagerShellCommand$4;)V

    .line 297
    .line 298
    .line 299
    goto :goto_9

    .line 300
    :catchall_0
    move-exception p0

    .line 301
    goto :goto_7

    .line 302
    :catch_0
    move-exception v0

    .line 303
    goto :goto_6

    .line 304
    :cond_a
    invoke-virtual {v7, v5}, Lcom/android/server/pm/UserManagerInternal;->removeUserLifecycleListener(Lcom/android/server/pm/PackageManagerShellCommand$4;)V

    .line 305
    .line 306
    .line 307
    goto :goto_8

    .line 308
    :cond_b
    :try_start_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    .line 326
    .line 327
    goto :goto_5

    .line 328
    :goto_6
    :try_start_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 329
    .line 330
    .line 331
    move-result-object p0

    .line 332
    const-string v3, "Error: Remove user %d wait interrupted: %s\n"

    .line 333
    .line 334
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {p0, v3, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 343
    .line 344
    .line 345
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 346
    .line 347
    .line 348
    move-result-object p0

    .line 349
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 350
    .line 351
    .line 352
    goto :goto_5

    .line 353
    :goto_7
    invoke-virtual {v7, v5}, Lcom/android/server/pm/UserManagerInternal;->removeUserLifecycleListener(Lcom/android/server/pm/PackageManagerShellCommand$4;)V

    .line 354
    .line 355
    .line 356
    throw p0

    .line 357
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    const-string v5, "Removing user "

    .line 360
    .line 361
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v4

    .line 371
    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    invoke-interface {v6, v1}, Landroid/os/IUserManager;->removeUser(I)Z

    .line 375
    .line 376
    .line 377
    move-result v4

    .line 378
    if-eqz v4, :cond_d

    .line 379
    .line 380
    :goto_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 381
    .line 382
    .line 383
    move-result-object p0

    .line 384
    const-string v0, "Success: removed user"

    .line 385
    .line 386
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    return v3

    .line 390
    :cond_d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 391
    .line 392
    .line 393
    move-result-object p0

    .line 394
    invoke-static {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 395
    .line 396
    .line 397
    :goto_9
    return v2

    .line 398
    nop

    .line 399
    :sswitch_data_0
    .sparse-switch
        -0x4149182c -> :sswitch_2
        0x5ea -> :sswitch_1
        0x4f7bc715 -> :sswitch_0
    .end sparse-switch

    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final runRenameUser()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "Error: no user id specified."

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, -0x2

    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string v1, "PackageManagerShellCommand"

    .line 34
    .line 35
    if-nez p0, :cond_2

    .line 36
    .line 37
    const-string v2, "Resetting name of user "

    .line 38
    .line 39
    invoke-static {v0, v2, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const-string v2, "Renaming user "

    .line 44
    .line 45
    const-string v3, " to \'"

    .line 46
    .line 47
    const-string v4, "\'"

    .line 48
    .line 49
    invoke-static {v0, v2, v3, p0, v4}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    const-string/jumbo v1, "user"

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v1}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-interface {v1, v0, p0}, Landroid/os/IUserManager;->setUserName(ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 p0, 0x0

    .line 71
    return p0
.end method

.method public final runResetPermissions()V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mLegacyPermissionManager:Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal;->this$0:Lcom/android/server/pm/permission/LegacyPermissionManagerService;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-string v1, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    .line 8
    .line 9
    const-string/jumbo v2, "revokeRuntimePermission"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v1, 0x3e8

    .line 20
    .line 21
    if-eq v0, v1, :cond_0

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermissionManagerService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 28
    .line 29
    const-string/jumbo v1, "resetRuntimePermissions"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    .line 36
    .line 37
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 42
    .line 43
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 50
    .line 51
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    array-length v2, v1

    .line 60
    const/4 v3, 0x0

    .line 61
    :goto_0
    if-ge v3, v2, :cond_1

    .line 62
    .line 63
    aget v4, v1, v3

    .line 64
    .line 65
    new-instance v5, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal$$ExternalSyntheticLambda0;

    .line 66
    .line 67
    invoke-direct {v5, v0, v4}, Lcom/android/server/pm/permission/LegacyPermissionManagerService$Internal$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v5}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    return-void
.end method

.method public final runResolveActivity()V
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mQueryFlags:I

    .line 12
    .line 13
    int-to-long v3, v3

    .line 14
    iget v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 15
    .line 16
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const-string p0, "No activity found"

    .line 27
    .line 28
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    new-instance v2, Landroid/util/PrintWriterPrinter;

    .line 35
    .line 36
    invoke-direct {v2, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 37
    .line 38
    .line 39
    const-string v1, ""

    .line 40
    .line 41
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    .line 42
    .line 43
    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    .line 44
    .line 45
    invoke-static {v2, v1, v0, v3, p0}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void

    .line 49
    :goto_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 50
    .line 51
    const-string v1, "Failed calling service"

    .line 52
    .line 53
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :catch_1
    move-exception p0

    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    throw v0
.end method

.method public final runRollbackApp()I
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-wide/32 v1, 0xea60

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    const-string v1, "--staged-ready-timeout"

    .line 15
    .line 16
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string v0, "Unknown option: "

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p0

    .line 43
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    const/4 v4, 0x1

    .line 48
    if-nez v3, :cond_2

    .line 49
    .line 50
    const-string p0, "Error: package name not specified"

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return v4

    .line 56
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    const-string v6, "com.android.shell"

    .line 59
    .line 60
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    const/4 v8, 0x0

    .line 65
    invoke-virtual {v5, v6, v8, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    new-instance v6, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    .line 70
    .line 71
    invoke-direct {v6}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>()V

    .line 72
    .line 73
    .line 74
    const-class v7, Landroid/content/rollback/RollbackManager;

    .line 75
    .line 76
    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Landroid/content/rollback/RollbackManager;

    .line 81
    .line 82
    invoke-virtual {v5}, Landroid/content/rollback/RollbackManager;->getAvailableRollbacks()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    const/4 v9, 0x0

    .line 91
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    if-eqz v10, :cond_5

    .line 96
    .line 97
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    check-cast v10, Landroid/content/rollback/RollbackInfo;

    .line 102
    .line 103
    invoke-virtual {v10}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v12

    .line 115
    if-eqz v12, :cond_3

    .line 116
    .line 117
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v12

    .line 121
    check-cast v12, Landroid/content/rollback/PackageRollbackInfo;

    .line 122
    .line 123
    invoke-virtual {v12}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v12

    .line 127
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v12

    .line 131
    if-eqz v12, :cond_4

    .line 132
    .line 133
    move-object v9, v10

    .line 134
    goto :goto_1

    .line 135
    :cond_5
    if-nez v9, :cond_6

    .line 136
    .line 137
    const-string p0, "No available rollbacks for: "

    .line 138
    .line 139
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return v4

    .line 147
    :cond_6
    invoke-virtual {v9}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    invoke-virtual {v5, v3, v7, v10}, Landroid/content/rollback/RollbackManager;->commitRollback(ILjava/util/List;Landroid/content/IntentSender;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    const-string v5, "android.content.rollback.extra.STATUS"

    .line 167
    .line 168
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-eqz v5, :cond_7

    .line 173
    .line 174
    new-instance p0, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string v1, "Failure ["

    .line 177
    .line 178
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    const-string v1, "android.content.rollback.extra.STATUS_MESSAGE"

    .line 182
    .line 183
    invoke-virtual {v3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v1, "]"

    .line 191
    .line 192
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    return v4

    .line 203
    :cond_7
    invoke-virtual {v9}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-eqz v3, :cond_8

    .line 208
    .line 209
    const-wide/16 v3, 0x0

    .line 210
    .line 211
    cmp-long v3, v1, v3

    .line 212
    .line 213
    if-lez v3, :cond_8

    .line 214
    .line 215
    invoke-virtual {v9}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doWaitForStagedSessionReady(IJLjava/io/PrintWriter;)I

    .line 220
    .line 221
    .line 222
    move-result p0

    .line 223
    return p0

    .line 224
    :cond_8
    const-string p0, "Success"

    .line 225
    .line 226
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    return v8

    .line 230
    :catch_0
    move-exception p0

    .line 231
    new-instance v0, Ljava/lang/RuntimeException;

    .line 232
    .line 233
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 234
    .line 235
    .line 236
    throw v0
.end method

.method public final runSetDistractingRestriction()I
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    move v4, v3

    .line 9
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    if-eqz v5, :cond_4

    .line 14
    .line 15
    const-string v6, "--flag"

    .line 16
    .line 17
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-nez v6, :cond_1

    .line 22
    .line 23
    const-string v3, "--user"

    .line 24
    .line 25
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    const-string p0, "Error: Unknown option: "

    .line 32
    .line 33
    invoke-virtual {p0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return v0

    .line 41
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    const-string v6, "hide-notifications"

    .line 58
    .line 59
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-nez v6, :cond_3

    .line 64
    .line 65
    const-string v6, "hide-from-suggestions"

    .line 66
    .line 67
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-nez v6, :cond_2

    .line 72
    .line 73
    const-string p0, "Unrecognized flag: "

    .line 74
    .line 75
    invoke-virtual {p0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    return v0

    .line 83
    :cond_2
    or-int/2addr v4, v0

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    or-int/lit8 v4, v4, 0x2

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_5

    .line 97
    .line 98
    const-string p0, "Error: package name not specified"

    .line 99
    .line 100
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return v0

    .line 104
    :cond_5
    :try_start_0
    const-string/jumbo v6, "set-distracting"

    .line 105
    .line 106
    .line 107
    const/16 v7, -0x2710

    .line 108
    .line 109
    invoke-static {v3, v7, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 114
    .line 115
    new-array v6, v2, [Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    check-cast v5, [Ljava/lang/String;

    .line 122
    .line 123
    invoke-interface {p0, v5, v4, v3}, Landroid/content/pm/IPackageManager;->setDistractingPackageRestrictionsAsUser([Ljava/lang/String;II)[Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    array-length v3, p0

    .line 128
    if-lez v3, :cond_6

    .line 129
    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v3, "Could not set restriction for: "

    .line 136
    .line 137
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .line 153
    .line 154
    return v0

    .line 155
    :catch_0
    move-exception p0

    .line 156
    goto :goto_1

    .line 157
    :cond_6
    return v2

    .line 158
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return v0
.end method

.method public final runSetEnabledSetting(I)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v3, "--user"

    .line 11
    .line 12
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v1, v2

    .line 28
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    const/4 v3, 0x1

    .line 33
    if-nez v9, :cond_1

    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "Error: no package or component specified"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return v3

    .line 45
    :cond_1
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerShellCommand;->shellRestrictionsHelper:Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;

    .line 46
    .line 47
    const/4 v5, 0x3

    .line 48
    invoke-virtual {v4, v5, v9}, Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;->isRestrictedPackage(ILjava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_2

    .line 53
    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "Failed to change state of package: "

    .line 59
    .line 60
    invoke-virtual {v1, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return v3

    .line 68
    :cond_2
    const/16 v3, -0x2710

    .line 69
    .line 70
    const-string/jumbo v4, "runSetEnabledSetting"

    .line 71
    .line 72
    .line 73
    invoke-static {v1, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    const-string v15, " new state: "

    .line 82
    .line 83
    if-nez v3, :cond_3

    .line 84
    .line 85
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 86
    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string/jumbo v5, "shell:"

    .line 90
    .line 91
    .line 92
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    const/4 v6, 0x0

    .line 107
    move-object v4, v9

    .line 108
    move/from16 v5, p1

    .line 109
    .line 110
    move v7, v1

    .line 111
    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    const-string v4, "Package "

    .line 119
    .line 120
    invoke-static {v4, v9, v15}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 125
    .line 126
    invoke-interface {v0, v9, v1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerShellCommand;->enabledSettingToString(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return v2

    .line 145
    :cond_3
    iget-object v10, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 146
    .line 147
    const/4 v13, 0x0

    .line 148
    const-string/jumbo v4, "shell"

    .line 149
    .line 150
    .line 151
    move-object v11, v3

    .line 152
    move/from16 v12, p1

    .line 153
    .line 154
    move v14, v1

    .line 155
    move-object v5, v15

    .line 156
    move-object v15, v4

    .line 157
    invoke-interface/range {v10 .. v15}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;IIILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    new-instance v6, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v7, "Component "

    .line 167
    .line 168
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 182
    .line 183
    invoke-interface {v0, v3, v1}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerShellCommand;->enabledSettingToString(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    return v2
.end method

.method public final runSetHarmfulAppWarning()I
    .locals 3

    .line 1
    const/4 v0, -0x2

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    const-string v0, "--user"

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "Error: Unknown option: "

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 p0, -0x1

    .line 39
    return p0

    .line 40
    :cond_1
    const/16 v1, -0x2710

    .line 41
    .line 42
    const-string/jumbo v2, "runSetHarmfulAppWarning"

    .line 43
    .line 44
    .line 45
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 58
    .line 59
    invoke-interface {p0, v1, v2, v0}, Landroid/content/pm/IPackageManager;->setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    return p0
.end method

.method public final runSetHiddenSetting(Z)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v2, "--user"

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v1

    .line 26
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string p1, "Error: no package or component specified"

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_1
    const/16 v3, -0x2710

    .line 44
    .line 45
    const-string/jumbo v4, "runSetHiddenSetting"

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 53
    .line 54
    invoke-interface {v3, v2, p1, v0}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string v3, "Package "

    .line 62
    .line 63
    const-string v4, " new hidden state: "

    .line 64
    .line 65
    invoke-static {v3, v2, v4}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 70
    .line 71
    invoke-interface {p0, v2, v0}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return v1
.end method

.method public final runSetHomeActivity()I
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    const-string v2, "--user"

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    const-string p0, "Error: Unknown option: "

    .line 23
    .line 24
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return v4

    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const/16 v5, 0x2f

    .line 46
    .line 47
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-gez v5, :cond_2

    .line 52
    .line 53
    :goto_1
    move-object v7, v3

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-nez v3, :cond_3

    .line 60
    .line 61
    const-string p0, "Error: invalid component name"

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return v4

    .line 67
    :cond_3
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    goto :goto_1

    .line 72
    :goto_2
    const/16 v3, -0x2710

    .line 73
    .line 74
    const-string/jumbo v5, "runSetHomeActivity"

    .line 75
    .line 76
    .line 77
    invoke-static {v2, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    new-instance v3, Ljava/util/concurrent/CompletableFuture;

    .line 82
    .line 83
    invoke-direct {v3}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 84
    .line 85
    .line 86
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    const-class v5, Landroid/app/role/RoleManager;

    .line 89
    .line 90
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    move-object v5, p0

    .line 95
    check-cast v5, Landroid/app/role/RoleManager;

    .line 96
    .line 97
    const-string v6, "android.app.role.HOME"

    .line 98
    .line 99
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    new-instance v11, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda5;

    .line 108
    .line 109
    invoke-direct {v11, v3}, Lcom/android/server/pm/PackageManagerShellCommand$$ExternalSyntheticLambda5;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 110
    .line 111
    .line 112
    const/4 v8, 0x0

    .line 113
    invoke-virtual/range {v5 .. v11}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    check-cast p0, Ljava/lang/Boolean;

    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    if-eqz p0, :cond_4

    .line 127
    .line 128
    const-string p0, "Success"

    .line 129
    .line 130
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return v1

    .line 134
    :catch_0
    move-exception p0

    .line 135
    goto :goto_3

    .line 136
    :cond_4
    const-string p0, "Error: Failed to set default home."

    .line 137
    .line 138
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .line 140
    .line 141
    return v4

    .line 142
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return v4
.end method

.method public final runSetInstallLocation()I
    .locals 4

    .line 1
    const-string v0, "Error: install location has to be a number."

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v0, "Error: no install location specified."

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return v2

    .line 20
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 25
    .line 26
    invoke-interface {v3, v1}, Landroid/content/pm/IPackageManager;->setInstallLocation(I)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :cond_1
    const/4 p0, 0x0

    .line 41
    return p0

    .line 42
    :catch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return v2
.end method

.method public final runSetInstaller()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v3, Lcom/android/server/om/SemSamsungThemeUtils;->disableOverlayList:Ljava/util/List;

    .line 16
    .line 17
    const-string v3, "com.samsung.android.themecenter"

    .line 18
    .line 19
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v0, "Set installer failed with internal error"

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return v2

    .line 35
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 36
    .line 37
    invoke-interface {v2, v0, v1}, Landroid/content/pm/IPackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v0, "Success"

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return p0

    .line 51
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string v0, "Must provide both target and installer package names"

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return v2
.end method

.method public final runSetPermissionEnforced()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v0, "Error: no permission specified"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v0, "Error: no enforcement specified"

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return v1

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    return p0
.end method

.method public final runSetSilentUpdatesPolicy()I
    .locals 12

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    move-object v5, v3

    .line 10
    move-object v7, v5

    .line 11
    move v6, v4

    .line 12
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v8

    .line 16
    if-eqz v8, :cond_3

    .line 17
    .line 18
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v9

    .line 22
    sparse-switch v9, :sswitch_data_0

    .line 23
    .line 24
    .line 25
    :goto_1
    move v9, v0

    .line 26
    goto :goto_2

    .line 27
    :sswitch_0
    const-string v9, "--allow-unlimited-silent-updates"

    .line 28
    .line 29
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v9

    .line 33
    if-nez v9, :cond_0

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    const/4 v9, 0x2

    .line 37
    goto :goto_2

    .line 38
    :sswitch_1
    const-string v9, "--throttle-time"

    .line 39
    .line 40
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    if-nez v9, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v9, v1

    .line 48
    goto :goto_2

    .line 49
    :sswitch_2
    const-string v9, "--reset"

    .line 50
    .line 51
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-nez v9, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move v9, v4

    .line 59
    :goto_2
    packed-switch v9, :pswitch_data_0

    .line 60
    .line 61
    .line 62
    const-string p0, "Error: Unknown option: "

    .line 63
    .line 64
    invoke-virtual {p0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    return v0

    .line 72
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    goto :goto_0

    .line 77
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v8

    .line 85
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    goto :goto_0

    .line 90
    :pswitch_2
    move v6, v1

    .line 91
    goto :goto_0

    .line 92
    :cond_3
    if-eqz v5, :cond_4

    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 95
    .line 96
    .line 97
    move-result-wide v8

    .line 98
    const-wide/16 v10, 0x0

    .line 99
    .line 100
    cmp-long v4, v8, v10

    .line 101
    .line 102
    if-gez v4, :cond_4

    .line 103
    .line 104
    new-instance p0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v1, "Error: Invalid value for \"--throttle-time\":"

    .line 107
    .line 108
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return v0

    .line 122
    :cond_4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 123
    .line 124
    invoke-interface {p0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    if-eqz v6, :cond_5

    .line 129
    .line 130
    invoke-interface {p0, v3}, Landroid/content/pm/IPackageInstaller;->setAllowUnlimitedSilentUpdates(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-wide/16 v3, -0x1

    .line 134
    .line 135
    invoke-interface {p0, v3, v4}, Landroid/content/pm/IPackageInstaller;->setSilentUpdatesThrottleTime(J)V

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :catch_0
    move-exception p0

    .line 140
    goto :goto_4

    .line 141
    :cond_5
    if-eqz v7, :cond_6

    .line 142
    .line 143
    invoke-interface {p0, v7}, Landroid/content/pm/IPackageInstaller;->setAllowUnlimitedSilentUpdates(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :cond_6
    if-eqz v5, :cond_7

    .line 147
    .line 148
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 149
    .line 150
    .line 151
    move-result-wide v3

    .line 152
    invoke-interface {p0, v3, v4}, Landroid/content/pm/IPackageInstaller;->setSilentUpdatesThrottleTime(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .line 154
    .line 155
    :cond_7
    :goto_3
    return v1

    .line 156
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v3, "Failure ["

    .line 159
    .line 160
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v3, " - "

    .line 175
    .line 176
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string p0, "]"

    .line 187
    .line 188
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    return v0

    .line 199
    :sswitch_data_0
    .sparse-switch
        -0x60476451 -> :sswitch_2
        0x2dfd71f0 -> :sswitch_1
        0x3bbbf162 -> :sswitch_0
    .end sparse-switch

    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final runSetStoppedState()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v2, "--user"

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v1

    .line 26
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string v0, "Error: no package specified"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_1
    const/16 v3, -0x2710

    .line 44
    .line 45
    const-string/jumbo v4, "runSetStoppedState"

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 53
    .line 54
    invoke-interface {v3, v2, v1, v0}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    const-string v4, "Package "

    .line 62
    .line 63
    const-string v5, " new stopped state: "

    .line 64
    .line 65
    invoke-static {v4, v2, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 70
    .line 71
    invoke-interface {p0, v2, v0}, Landroid/content/pm/IPackageManager;->isPackageStoppedForUser(Ljava/lang/String;I)Z

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return v1
.end method

.method public final runSetUserRestriction()I
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v2, "--user"

    .line 9
    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v0, v1

    .line 26
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v4, "1"

    .line 35
    .line 36
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const/4 v5, 0x1

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const-string v4, "0"

    .line 45
    .line 46
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    move v5, v1

    .line 53
    :goto_1
    const/16 p0, -0x2710

    .line 54
    .line 55
    const-string/jumbo v3, "runSetUserRestriction"

    .line 56
    .line 57
    .line 58
    invoke-static {v0, p0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    const-string/jumbo v0, "user"

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0, v2, v5, p0}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 74
    .line 75
    .line 76
    return v1

    .line 77
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const-string v0, "Error: valid value not specified"

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return v5
.end method

.method public final runStreamingInstall()I
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->UNSUPPORTED_INSTALL_CMD_OPTS:Ljava/util/Set;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams(Ljava/util/Set;)Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 8
    .line 9
    iget-object v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader;->getStreamingDataLoaderParams(Landroid/os/ShellCommand;)Landroid/content/pm/DataLoaderParams;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setDataLoaderParams(Landroid/content/pm/DataLoaderParams;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->doRunInstall(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public final runSuspend(IZ)I
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    new-instance v4, Landroid/os/PersistableBundle;

    .line 10
    .line 11
    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v5, Landroid/os/PersistableBundle;

    .line 15
    .line 16
    invoke-direct {v5}, Landroid/os/PersistableBundle;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v7, 0x0

    .line 21
    move v9, v6

    .line 22
    move-object v8, v7

    .line 23
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v10

    .line 27
    if-eqz v10, :cond_d

    .line 28
    .line 29
    const/4 v11, -0x1

    .line 30
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result v12

    .line 34
    sparse-switch v12, :sswitch_data_0

    .line 35
    .line 36
    .line 37
    goto/16 :goto_1

    .line 38
    .line 39
    :sswitch_0
    const-string v12, "--user"

    .line 40
    .line 41
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v12

    .line 45
    if-nez v12, :cond_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    const/4 v11, 0x7

    .line 49
    goto :goto_1

    .line 50
    :sswitch_1
    const-string v12, "--les"

    .line 51
    .line 52
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v12

    .line 56
    if-nez v12, :cond_1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/4 v11, 0x6

    .line 60
    goto :goto_1

    .line 61
    :sswitch_2
    const-string v12, "--lel"

    .line 62
    .line 63
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v12

    .line 67
    if-nez v12, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const/4 v11, 0x5

    .line 71
    goto :goto_1

    .line 72
    :sswitch_3
    const-string v12, "--led"

    .line 73
    .line 74
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    if-nez v12, :cond_3

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    move v11, v1

    .line 82
    goto :goto_1

    .line 83
    :sswitch_4
    const-string v12, "--aes"

    .line 84
    .line 85
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v12

    .line 89
    if-nez v12, :cond_4

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    const/4 v11, 0x3

    .line 93
    goto :goto_1

    .line 94
    :sswitch_5
    const-string v12, "--ael"

    .line 95
    .line 96
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v12

    .line 100
    if-nez v12, :cond_5

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    const/4 v11, 0x2

    .line 104
    goto :goto_1

    .line 105
    :sswitch_6
    const-string v12, "--aed"

    .line 106
    .line 107
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v12

    .line 111
    if-nez v12, :cond_6

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_6
    move v11, v2

    .line 115
    goto :goto_1

    .line 116
    :sswitch_7
    const-string v12, "--dialogMessage"

    .line 117
    .line 118
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v12

    .line 122
    if-nez v12, :cond_7

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_7
    move v11, v6

    .line 126
    :goto_1
    packed-switch v11, :pswitch_data_0

    .line 127
    .line 128
    .line 129
    const-string v0, "Error: Unknown option: "

    .line 130
    .line 131
    invoke-virtual {v0, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return v2

    .line 139
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    invoke-static {v9}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    move-result v9

    .line 147
    goto :goto_0

    .line 148
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v12

    .line 156
    if-nez p2, :cond_8

    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :cond_8
    const-string v13, "--a"

    .line 161
    .line 162
    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 163
    .line 164
    .line 165
    move-result v13

    .line 166
    if-eqz v13, :cond_9

    .line 167
    .line 168
    move-object v13, v4

    .line 169
    goto :goto_2

    .line 170
    :cond_9
    move-object v13, v5

    .line 171
    :goto_2
    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    .line 172
    .line 173
    .line 174
    move-result v10

    .line 175
    const/16 v14, 0x64

    .line 176
    .line 177
    if-eq v10, v14, :cond_c

    .line 178
    .line 179
    const/16 v14, 0x6c

    .line 180
    .line 181
    if-eq v10, v14, :cond_b

    .line 182
    .line 183
    const/16 v14, 0x73

    .line 184
    .line 185
    if-eq v10, v14, :cond_a

    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :cond_a
    invoke-virtual {v13, v11, v12}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    goto/16 :goto_0

    .line 193
    .line 194
    :cond_b
    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    .line 199
    .line 200
    .line 201
    move-result-wide v14

    .line 202
    invoke-virtual {v13, v11, v14, v15}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_c
    invoke-static {v12}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 208
    .line 209
    .line 210
    move-result-object v10

    .line 211
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    .line 212
    .line 213
    .line 214
    move-result-wide v14

    .line 215
    invoke-virtual {v13, v11, v14, v15}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_0

    .line 219
    .line 220
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v8

    .line 224
    goto/16 :goto_0

    .line 225
    .line 226
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 231
    .line 232
    .line 233
    move-result v10

    .line 234
    if-eqz v10, :cond_e

    .line 235
    .line 236
    const-string v0, "Error: package name not specified"

    .line 237
    .line 238
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    return v2

    .line 242
    :cond_e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 243
    .line 244
    .line 245
    move-result v10

    .line 246
    if-nez v10, :cond_f

    .line 247
    .line 248
    const-string/jumbo v10, "root"

    .line 249
    .line 250
    .line 251
    :goto_3
    move-object/from16 v20, v10

    .line 252
    .line 253
    goto :goto_4

    .line 254
    :cond_f
    const-string v10, "com.android.shell"

    .line 255
    .line 256
    goto :goto_3

    .line 257
    :goto_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 258
    .line 259
    .line 260
    move-result v10

    .line 261
    if-nez v10, :cond_10

    .line 262
    .line 263
    new-instance v10, Landroid/content/pm/SuspendDialogInfo$Builder;

    .line 264
    .line 265
    invoke-direct {v10}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v10, v8}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    .line 269
    .line 270
    .line 271
    move-result-object v8

    .line 272
    invoke-virtual {v8}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    move-object/from16 v18, v8

    .line 277
    .line 278
    goto :goto_5

    .line 279
    :cond_10
    move-object/from16 v18, v7

    .line 280
    .line 281
    :goto_5
    :try_start_0
    const-string/jumbo v8, "runSuspend"

    .line 282
    .line 283
    .line 284
    const/16 v10, -0x2710

    .line 285
    .line 286
    invoke-static {v9, v10, v8}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    .line 287
    .line 288
    .line 289
    move-result v8

    .line 290
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerShellCommand;->shellRestrictionsHelper:Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;

    .line 291
    .line 292
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 296
    .line 297
    .line 298
    move-result v10

    .line 299
    if-eqz v10, :cond_12

    .line 300
    .line 301
    :cond_11
    move-object v11, v7

    .line 302
    goto :goto_7

    .line 303
    :cond_12
    move v10, v6

    .line 304
    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 305
    .line 306
    .line 307
    move-result v11

    .line 308
    if-ge v10, v11, :cond_11

    .line 309
    .line 310
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object v11

    .line 314
    check-cast v11, Ljava/lang/String;

    .line 315
    .line 316
    invoke-virtual {v9, v2, v11}, Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;->isRestrictedPackage(ILjava/lang/String;)Z

    .line 317
    .line 318
    .line 319
    move-result v12

    .line 320
    if-eqz v12, :cond_13

    .line 321
    .line 322
    goto :goto_7

    .line 323
    :cond_13
    add-int/2addr v10, v2

    .line 324
    goto :goto_6

    .line 325
    :goto_7
    if-eqz v11, :cond_14

    .line 326
    .line 327
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .line 335
    .line 336
    const-string v4, "Error: cmd restricted - package: "

    .line 337
    .line 338
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    return v2

    .line 352
    :catch_0
    move-exception v0

    .line 353
    goto :goto_b

    .line 354
    :cond_14
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 355
    .line 356
    new-array v9, v6, [Ljava/lang/String;

    .line 357
    .line 358
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v9

    .line 362
    move-object v14, v9

    .line 363
    check-cast v14, [Ljava/lang/String;

    .line 364
    .line 365
    invoke-virtual {v4}, Landroid/os/PersistableBundle;->size()I

    .line 366
    .line 367
    .line 368
    move-result v9

    .line 369
    if-lez v9, :cond_15

    .line 370
    .line 371
    move-object/from16 v16, v4

    .line 372
    .line 373
    goto :goto_8

    .line 374
    :cond_15
    move-object/from16 v16, v7

    .line 375
    .line 376
    :goto_8
    invoke-virtual {v5}, Landroid/os/PersistableBundle;->size()I

    .line 377
    .line 378
    .line 379
    move-result v4

    .line 380
    if-lez v4, :cond_16

    .line 381
    .line 382
    move-object/from16 v17, v5

    .line 383
    .line 384
    goto :goto_9

    .line 385
    :cond_16
    move-object/from16 v17, v7

    .line 386
    .line 387
    :goto_9
    const/16 v21, 0x0

    .line 388
    .line 389
    move/from16 v15, p2

    .line 390
    .line 391
    move/from16 v19, p1

    .line 392
    .line 393
    move/from16 v22, v8

    .line 394
    .line 395
    invoke-interface/range {v13 .. v22}, Landroid/content/pm/IPackageManager;->setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;ILjava/lang/String;II)[Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move v4, v6

    .line 399
    :goto_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 400
    .line 401
    .line 402
    move-result v5

    .line 403
    if-ge v4, v5, :cond_17

    .line 404
    .line 405
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v5

    .line 409
    check-cast v5, Ljava/lang/String;

    .line 410
    .line 411
    new-instance v7, Ljava/lang/StringBuilder;

    .line 412
    .line 413
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    .line 415
    .line 416
    const-string v9, "Package "

    .line 417
    .line 418
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    const-string v9, " new suspended state: "

    .line 425
    .line 426
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    iget-object v9, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 430
    .line 431
    invoke-interface {v9, v5, v8}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    .line 432
    .line 433
    .line 434
    move-result v5

    .line 435
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v5

    .line 442
    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    .line 444
    .line 445
    add-int/2addr v4, v2

    .line 446
    goto :goto_a

    .line 447
    :cond_17
    return v6

    .line 448
    :goto_b
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    return v2

    .line 456
    nop

    .line 457
    :sswitch_data_0
    .sparse-switch
        -0x25a4801 -> :sswitch_7
        0x2900f20 -> :sswitch_6
        0x2900f28 -> :sswitch_5
        0x2900f2f -> :sswitch_4
        0x290386b -> :sswitch_3
        0x2903873 -> :sswitch_2
        0x290387a -> :sswitch_1
        0x4f7b216b -> :sswitch_0
    .end sparse-switch

    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final runTrimCaches()I
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v0, "Error: no size specified"

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    sub-int/2addr v2, v1

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/16 v4, 0x30

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    if-lt v3, v4, :cond_2

    .line 31
    .line 32
    const/16 v4, 0x39

    .line 33
    .line 34
    if-le v3, v4, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-wide/16 v2, 0x1

    .line 38
    .line 39
    goto :goto_5

    .line 40
    :cond_2
    :goto_0
    const/16 v4, 0x4b

    .line 41
    .line 42
    if-eq v3, v4, :cond_8

    .line 43
    .line 44
    const/16 v4, 0x6b

    .line 45
    .line 46
    if-ne v3, v4, :cond_3

    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_3
    const/16 v4, 0x4d

    .line 50
    .line 51
    if-eq v3, v4, :cond_7

    .line 52
    .line 53
    const/16 v4, 0x6d

    .line 54
    .line 55
    if-ne v3, v4, :cond_4

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_4
    const/16 v4, 0x47

    .line 59
    .line 60
    if-eq v3, v4, :cond_6

    .line 61
    .line 62
    const/16 v4, 0x67

    .line 63
    .line 64
    if-ne v3, v4, :cond_5

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v2, "Invalid suffix: "

    .line 74
    .line 75
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return v1

    .line 89
    :cond_6
    :goto_1
    const-wide/32 v3, 0x40000000

    .line 90
    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_7
    :goto_2
    const-wide/32 v3, 0x100000

    .line 94
    .line 95
    .line 96
    goto :goto_4

    .line 97
    :cond_8
    :goto_3
    const-wide/16 v3, 0x400

    .line 98
    .line 99
    :goto_4
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    move-wide v2, v3

    .line 104
    :goto_5
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 105
    .line 106
    .line 107
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    mul-long v8, v0, v2

    .line 109
    .line 110
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const-string v1, "internal"

    .line 115
    .line 116
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_9

    .line 121
    .line 122
    const/4 v0, 0x0

    .line 123
    :cond_9
    move-object v7, v0

    .line 124
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;

    .line 125
    .line 126
    invoke-direct {v2}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 127
    .line 128
    .line 129
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 130
    .line 131
    const/4 v10, 0x2

    .line 132
    move-object v11, v2

    .line 133
    invoke-interface/range {v6 .. v11}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V

    .line 134
    .line 135
    .line 136
    monitor-enter v2

    .line 137
    :catch_0
    :goto_6
    :try_start_1
    iget-boolean p0, v2, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .line 139
    if-nez p0, :cond_a

    .line 140
    .line 141
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    .line 143
    .line 144
    goto :goto_6

    .line 145
    :catchall_0
    move-exception p0

    .line 146
    goto :goto_7

    .line 147
    :cond_a
    :try_start_3
    monitor-exit v2

    .line 148
    return v5

    .line 149
    :goto_7
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    throw p0

    .line 151
    :catch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    const-string v2, "Error: expected number at: "

    .line 156
    .line 157
    invoke-static {p0, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return v1
.end method

.method public final runUnarchive()I
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, -0x1

    .line 6
    move v2, v1

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x1

    .line 12
    if-eqz v3, :cond_2

    .line 13
    .line 14
    const-string v2, "--user"

    .line 15
    .line 16
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eq v2, v1, :cond_0

    .line 31
    .line 32
    const/4 v3, -0x2

    .line 33
    if-eq v2, v3, :cond_0

    .line 34
    .line 35
    const-class v3, Lcom/android/server/pm/UserManagerInternal;

    .line 36
    .line 37
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/android/server/pm/UserManagerInternal;

    .line 42
    .line 43
    invoke-virtual {v3, v2}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-nez v3, :cond_0

    .line 48
    .line 49
    const-string p0, "Failure [user "

    .line 50
    .line 51
    const-string v1, " doesn\'t exist]"

    .line 52
    .line 53
    invoke-static {v2, v0, p0, v1}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return v4

    .line 57
    :cond_1
    const-string p0, "Error: Unknown option: "

    .line 58
    .line 59
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return v4

    .line 67
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-nez v1, :cond_3

    .line 72
    .line 73
    const-string p0, "Error: package name not specified"

    .line 74
    .line 75
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return v4

    .line 79
    :cond_3
    const/4 v3, 0x0

    .line 80
    const-string/jumbo v5, "runArchive"

    .line 81
    .line 82
    .line 83
    invoke-static {v2, v3, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    new-instance v5, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    .line 88
    .line 89
    invoke-direct {v5}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>()V

    .line 90
    .line 91
    .line 92
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 93
    .line 94
    invoke-interface {v6}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    .line 105
    .line 106
    .line 107
    move-result-object v5

    .line 108
    new-instance v7, Landroid/os/UserHandle;

    .line 109
    .line 110
    invoke-direct {v7, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v6, v1, p0, v5, v7}, Landroid/content/pm/IPackageInstaller;->requestUnarchive(Ljava/lang/String;Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    .line 116
    const-string p0, "Success"

    .line 117
    .line 118
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return v3

    .line 122
    :catch_0
    move-exception p0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string v2, "Failure ["

    .line 126
    .line 127
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string p0, "]"

    .line 138
    .line 139
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return v4
.end method

.method public final runUninstall()I
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v0, 0x2

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, -0x1

    .line 11
    move v8, v4

    .line 12
    move v9, v5

    .line 13
    const-wide/16 v10, -0x1

    .line 14
    .line 15
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v12

    .line 19
    if-eqz v12, :cond_4

    .line 20
    .line 21
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v13

    .line 25
    sparse-switch v13, :sswitch_data_0

    .line 26
    .line 27
    .line 28
    :goto_1
    move v13, v5

    .line 29
    goto :goto_2

    .line 30
    :sswitch_0
    const-string v13, "--versionCode"

    .line 31
    .line 32
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v13

    .line 36
    if-nez v13, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move v13, v0

    .line 40
    goto :goto_2

    .line 41
    :sswitch_1
    const-string v13, "--user"

    .line 42
    .line 43
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v13

    .line 47
    if-nez v13, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v13, v2

    .line 51
    goto :goto_2

    .line 52
    :sswitch_2
    const-string v13, "-k"

    .line 53
    .line 54
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v13

    .line 58
    if-nez v13, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    move v13, v4

    .line 62
    :goto_2
    packed-switch v13, :pswitch_data_0

    .line 63
    .line 64
    .line 65
    const-string v0, "Error: Unknown option: "

    .line 66
    .line 67
    invoke-virtual {v0, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return v2

    .line 75
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v10

    .line 83
    goto :goto_0

    .line 84
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    invoke-static {v9}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-eq v9, v5, :cond_0

    .line 93
    .line 94
    const/4 v12, -0x2

    .line 95
    if-eq v9, v12, :cond_0

    .line 96
    .line 97
    const-class v12, Lcom/android/server/pm/UserManagerInternal;

    .line 98
    .line 99
    invoke-static {v12}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    check-cast v12, Lcom/android/server/pm/UserManagerInternal;

    .line 104
    .line 105
    invoke-virtual {v12, v9}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 106
    .line 107
    .line 108
    move-result-object v12

    .line 109
    if-nez v12, :cond_0

    .line 110
    .line 111
    const-string v0, "Failure [user "

    .line 112
    .line 113
    const-string v1, " doesn\'t exist]"

    .line 114
    .line 115
    invoke-static {v9, v3, v0, v1}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    return v2

    .line 119
    :pswitch_2
    move v8, v2

    .line 120
    goto :goto_0

    .line 121
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v12

    .line 125
    if-nez v12, :cond_5

    .line 126
    .line 127
    const-string v0, "Error: package name not specified"

    .line 128
    .line 129
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return v2

    .line 133
    :cond_5
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerShellCommand;->shellRestrictionsHelper:Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;

    .line 134
    .line 135
    const/4 v14, 0x3

    .line 136
    invoke-virtual {v13, v14, v12}, Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;->isRestrictedPackage(ILjava/lang/String;)Z

    .line 137
    .line 138
    .line 139
    move-result v13

    .line 140
    if-eqz v13, :cond_6

    .line 141
    .line 142
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    const-string v1, "Failed to uninstall a package: "

    .line 147
    .line 148
    invoke-virtual {v1, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    return v2

    .line 156
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getRemainingArgs()Ljava/util/ArrayList;

    .line 157
    .line 158
    .line 159
    move-result-object v13

    .line 160
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 161
    .line 162
    .line 163
    move-result v14

    .line 164
    const-string v15, "Success"

    .line 165
    .line 166
    const/4 v2, 0x0

    .line 167
    if-nez v14, :cond_a

    .line 168
    .line 169
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    new-instance v6, Landroid/content/pm/PackageInstaller$SessionParams;

    .line 174
    .line 175
    invoke-direct {v6, v0}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 176
    .line 177
    .line 178
    iget v7, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 179
    .line 180
    or-int/2addr v0, v7

    .line 181
    iput v0, v6, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 182
    .line 183
    iput-object v12, v6, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v1, v6, v2, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    :try_start_0
    invoke-virtual {v1, v2, v13, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doRemoveSplits(ILjava/util/Collection;Z)I

    .line 190
    .line 191
    .line 192
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 193
    if-eqz v0, :cond_7

    .line 194
    .line 195
    :goto_3
    :try_start_1
    invoke-virtual {v1, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    .line 197
    .line 198
    :catch_0
    const/4 v2, 0x1

    .line 199
    goto :goto_4

    .line 200
    :cond_7
    :try_start_2
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(I)I

    .line 201
    .line 202
    .line 203
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 204
    if-eqz v0, :cond_8

    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_8
    :try_start_3
    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    .line 209
    .line 210
    move v2, v4

    .line 211
    :goto_4
    return v2

    .line 212
    :catchall_0
    move-exception v0

    .line 213
    move/from16 v16, v4

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :catchall_1
    move-exception v0

    .line 217
    const/16 v16, 0x1

    .line 218
    .line 219
    :goto_5
    if-eqz v16, :cond_9

    .line 220
    .line 221
    :try_start_4
    invoke-virtual {v1, v2, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 222
    .line 223
    .line 224
    :catch_1
    :cond_9
    throw v0

    .line 225
    :cond_a
    if-ne v9, v5, :cond_b

    .line 226
    .line 227
    or-int/2addr v8, v0

    .line 228
    :cond_b
    const-string/jumbo v5, "runUninstall"

    .line 229
    .line 230
    .line 231
    invoke-static {v9, v4, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    new-instance v9, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    .line 236
    .line 237
    invoke-direct {v9}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>()V

    .line 238
    .line 239
    .line 240
    const-class v13, Landroid/content/pm/PackageManagerInternal;

    .line 241
    .line 242
    invoke-static {v13}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v13

    .line 246
    check-cast v13, Landroid/content/pm/PackageManagerInternal;

    .line 247
    .line 248
    check-cast v13, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    .line 249
    .line 250
    iget-object v14, v13, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 251
    .line 252
    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 253
    .line 254
    .line 255
    move-result-object v14

    .line 256
    invoke-interface {v14, v12}, Lcom/android/server/pm/Computer;->isApexPackage(Ljava/lang/String;)Z

    .line 257
    .line 258
    .line 259
    move-result v14

    .line 260
    const-string v2, "]"

    .line 261
    .line 262
    if-eqz v14, :cond_10

    .line 263
    .line 264
    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 269
    .line 270
    .line 271
    move-result v14

    .line 272
    invoke-static {v14}, Lcom/android/server/pm/PackageManagerServiceUtils;->isRootOrShell(I)Z

    .line 273
    .line 274
    .line 275
    move-result v14

    .line 276
    if-eqz v14, :cond_f

    .line 277
    .line 278
    new-instance v14, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    .line 279
    .line 280
    iget-object v6, v13, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 281
    .line 282
    iget-object v7, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 283
    .line 284
    invoke-direct {v14, v5, v7, v1, v12}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(ILandroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    and-int/2addr v0, v8

    .line 288
    const/4 v1, -0x5

    .line 289
    if-nez v0, :cond_c

    .line 290
    .line 291
    const-string v0, "Can\'t uninstall an apex for a single user"

    .line 292
    .line 293
    invoke-virtual {v14, v12, v1, v0}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_6

    .line 297
    .line 298
    :cond_c
    iget-object v0, v13, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    .line 299
    .line 300
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    const-wide/32 v7, 0x40000000

    .line 305
    .line 306
    .line 307
    invoke-interface {v0, v12, v7, v8, v4}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    if-nez v0, :cond_d

    .line 312
    .line 313
    const-string v0, " is not an apex package"

    .line 314
    .line 315
    invoke-virtual {v12, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {v14, v12, v1, v0}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 320
    .line 321
    .line 322
    goto/16 :goto_6

    .line 323
    .line 324
    :cond_d
    const-wide/16 v7, -0x1

    .line 325
    .line 326
    cmp-long v5, v10, v7

    .line 327
    .line 328
    if-eqz v5, :cond_e

    .line 329
    .line 330
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 331
    .line 332
    .line 333
    move-result-wide v7

    .line 334
    cmp-long v5, v7, v10

    .line 335
    .line 336
    if-eqz v5, :cond_e

    .line 337
    .line 338
    new-instance v5, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    const-string v6, "Active version "

    .line 341
    .line 342
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    .line 346
    .line 347
    .line 348
    move-result-wide v6

    .line 349
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    const-string v0, " is not equal to "

    .line 353
    .line 354
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {v14, v12, v1, v0}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 368
    .line 369
    .line 370
    goto :goto_6

    .line 371
    :cond_e
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 372
    .line 373
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 374
    .line 375
    iget-object v5, v6, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 376
    .line 377
    check-cast v5, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    .line 378
    .line 379
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 380
    .line 381
    .line 382
    :try_start_5
    invoke-virtual {v5}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    .line 383
    .line 384
    .line 385
    move-result-object v5

    .line 386
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-interface {v5, v0}, Landroid/apex/IApexService;->unstagePackages(Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 391
    .line 392
    .line 393
    const/4 v0, 0x0

    .line 394
    const/4 v1, 0x1

    .line 395
    invoke-virtual {v14, v12, v1, v0}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 396
    .line 397
    .line 398
    goto :goto_6

    .line 399
    :catch_2
    const-string v0, "Failed to uninstall apex "

    .line 400
    .line 401
    invoke-virtual {v0, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-virtual {v14, v12, v1, v0}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 406
    .line 407
    .line 408
    goto :goto_6

    .line 409
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    .line 410
    .line 411
    const-string v1, "Not allowed to uninstall apexes"

    .line 412
    .line 413
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    throw v0

    .line 417
    :cond_10
    and-int/2addr v0, v8

    .line 418
    if-nez v0, :cond_12

    .line 419
    .line 420
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 421
    .line 422
    const-wide/32 v6, 0x4000000

    .line 423
    .line 424
    .line 425
    invoke-interface {v0, v12, v6, v7, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    if-nez v0, :cond_11

    .line 430
    .line 431
    const-string v0, "Failure [not installed for "

    .line 432
    .line 433
    invoke-static {v5, v3, v0, v2}, Lcom/android/server/am/ActiveServices$$ExternalSyntheticOutline0;->m(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    const/4 v6, 0x1

    .line 437
    return v6

    .line 438
    :cond_11
    const/4 v6, 0x1

    .line 439
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 440
    .line 441
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 442
    .line 443
    and-int/2addr v0, v6

    .line 444
    if-eqz v0, :cond_12

    .line 445
    .line 446
    or-int/lit8 v8, v8, 0x4

    .line 447
    .line 448
    :cond_12
    move/from16 v20, v8

    .line 449
    .line 450
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 451
    .line 452
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    .line 453
    .line 454
    .line 455
    move-result-object v17

    .line 456
    new-instance v0, Landroid/content/pm/VersionedPackage;

    .line 457
    .line 458
    invoke-direct {v0, v12, v10, v11}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    .line 462
    .line 463
    .line 464
    move-result-object v21

    .line 465
    const/16 v19, 0x0

    .line 466
    .line 467
    move-object/from16 v18, v0

    .line 468
    .line 469
    move/from16 v22, v5

    .line 470
    .line 471
    invoke-interface/range {v17 .. v22}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    .line 472
    .line 473
    .line 474
    :goto_6
    invoke-virtual {v9}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    .line 475
    .line 476
    .line 477
    move-result-object v0

    .line 478
    const-string v1, "android.content.pm.extra.STATUS"

    .line 479
    .line 480
    const/4 v5, 0x1

    .line 481
    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 482
    .line 483
    .line 484
    move-result v1

    .line 485
    if-nez v1, :cond_13

    .line 486
    .line 487
    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    return v4

    .line 491
    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 492
    .line 493
    const-string v4, "Failure ["

    .line 494
    .line 495
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    const-string v4, "android.content.pm.extra.STATUS_MESSAGE"

    .line 499
    .line 500
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v0

    .line 504
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    const/4 v1, 0x1

    .line 518
    return v1

    .line 519
    :sswitch_data_0
    .sparse-switch
        0x5de -> :sswitch_2
        0x4f7b216b -> :sswitch_1
        0x704d4945 -> :sswitch_0
    .end sparse-switch

    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final runWaitForHandler(Z)I
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-wide/32 v1, 0xea60

    .line 6
    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const/4 v4, -0x1

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    const-string v1, "--timeout"

    .line 16
    .line 17
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    const-string p0, "Error: Unknown option: "

    .line 24
    .line 25
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return v4

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-wide/16 v5, 0x0

    .line 43
    .line 44
    cmp-long v3, v1, v5

    .line 45
    .line 46
    if-gtz v3, :cond_2

    .line 47
    .line 48
    new-instance p0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string p1, "Error: --timeout value must be positive: "

    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return v4

    .line 66
    :cond_2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 67
    .line 68
    invoke-interface {p0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->waitForHandler(JZ)Z

    .line 69
    .line 70
    .line 71
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    if-eqz p0, :cond_3

    .line 73
    .line 74
    const-string p0, "Success"

    .line 75
    .line 76
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const/4 p0, 0x0

    .line 80
    return p0

    .line 81
    :cond_3
    const-string p0, "Timeout. PackageManager handlers are still busy."

    .line 82
    .line 83
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return v4

    .line 87
    :catch_0
    move-exception p0

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v1, "Failure ["

    .line 91
    .line 92
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, " - "

    .line 107
    .line 108
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string p0, "]"

    .line 119
    .line 120
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return v4
.end method

.method public final setAppCategoryHintDeveloper()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, -0x1

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 21
    .line 22
    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->clearAppCategoryHintDeveloper(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 27
    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-interface {v2, v0, v1}, Landroid/content/pm/IPackageManager;->setAppCategoryHintDeveloper(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 40
    .line 41
    const-wide/16 v2, 0x0

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-interface {p0, v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string v2, "app: "

    .line 49
    .line 50
    if-nez p0, :cond_1

    .line 51
    .line 52
    const-string p0, " not found!"

    .line 53
    .line 54
    invoke-static {v1, v2, v0, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x1

    .line 58
    return p0

    .line 59
    :cond_1
    const-string v3, ", category: "

    .line 60
    .line 61
    invoke-static {v2, v0, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 66
    .line 67
    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 68
    .line 69
    .line 70
    return v4
.end method

.method public final setAppCategoryHintUser()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, -0x1

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 21
    .line 22
    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->clearAppCategoryHintUser(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 27
    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-interface {v2, v0, v1}, Landroid/content/pm/IPackageManager;->setAppCategoryHintUser(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 40
    .line 41
    const-wide/16 v2, 0x0

    .line 42
    .line 43
    const/4 v4, 0x0

    .line 44
    invoke-interface {p0, v0, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string v2, "app: "

    .line 49
    .line 50
    if-nez p0, :cond_1

    .line 51
    .line 52
    const-string p0, " not found!"

    .line 53
    .line 54
    invoke-static {v1, v2, v0, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 p0, 0x1

    .line 58
    return p0

    .line 59
    :cond_1
    const-string v3, ", category: "

    .line 60
    .line 61
    invoke-static {v2, v0, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 66
    .line 67
    invoke-static {v0, p0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 68
    .line 69
    .line 70
    return v4
.end method

.method public final setOrClearPermissionFlags(Z)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    const-string v3, "--user"

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const/4 v2, 0x1

    .line 31
    if-nez v3, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    const-string p1, "Error: no package specified"

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return v2

    .line 43
    :cond_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    if-nez v4, :cond_3

    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string p1, "Error: no permission specified"

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return v2

    .line 59
    :cond_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    if-nez v5, :cond_4

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    const-string p1, "Error: no permission flags specified"

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return v2

    .line 75
    :cond_4
    move v6, v0

    .line 76
    :goto_1
    if-eqz v5, :cond_6

    .line 77
    .line 78
    sget-object v7, Lcom/android/server/pm/PackageManagerShellCommand;->SUPPORTED_PERMISSION_FLAGS:Ljava/util/Map;

    .line 79
    .line 80
    check-cast v7, Landroid/util/ArrayMap;

    .line 81
    .line 82
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v8

    .line 86
    if-nez v8, :cond_5

    .line 87
    .line 88
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    const-string p1, "Error: specified flag "

    .line 93
    .line 94
    const-string v0, " is not one of "

    .line 95
    .line 96
    invoke-static {p1, v5, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    sget-object v0, Lcom/android/server/pm/PackageManagerShellCommand;->SUPPORTED_PERMISSION_FLAGS_LIST:Ljava/util/List;

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return v2

    .line 113
    :cond_5
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    check-cast v5, Ljava/lang/Integer;

    .line 118
    .line 119
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    or-int/2addr v6, v5

    .line 124
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    goto :goto_1

    .line 129
    :cond_6
    const/16 v2, -0x2710

    .line 130
    .line 131
    const-string/jumbo v5, "runGrantRevokePermission"

    .line 132
    .line 133
    .line 134
    invoke-static {v1, v2, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IILjava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    if-eqz p1, :cond_7

    .line 143
    .line 144
    move p1, v6

    .line 145
    goto :goto_2

    .line 146
    :cond_7
    move p1, v0

    .line 147
    :goto_2
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 148
    .line 149
    move v5, v6

    .line 150
    move v6, p1

    .line 151
    invoke-virtual/range {v2 .. v7}, Landroid/permission/PermissionManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 152
    .line 153
    .line 154
    return v0
.end method

.method public final uninstallSystemUpdates(Ljava/lang/String;)I
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 7
    .line 8
    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-wide/32 v3, 0x102000

    .line 13
    .line 14
    .line 15
    const/4 v9, 0x1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 19
    .line 20
    invoke-interface {p0, v3, v4, v1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(JI)Landroid/content/pm/ParceledListSlice;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    goto/16 :goto_2

    .line 31
    .line 32
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 38
    .line 39
    invoke-interface {p0, p1, v3, v4, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-object p0, v5

    .line 47
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    move p1, v1

    .line 52
    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_2

    .line 57
    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    move-object v10, v3

    .line 63
    check-cast v10, Landroid/content/pm/ApplicationInfo;

    .line 64
    .line 65
    invoke-virtual {v10}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v4, "Uninstalling updates to "

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v4, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v4, "..."

    .line 87
    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    new-instance v11, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    .line 99
    .line 100
    invoke-direct {v11}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>()V

    .line 101
    .line 102
    .line 103
    new-instance v4, Landroid/content/pm/VersionedPackage;

    .line 104
    .line 105
    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 106
    .line 107
    iget v5, v10, Landroid/content/pm/ApplicationInfo;->versionCode:I

    .line 108
    .line 109
    invoke-direct {v4, v3, v5}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    .line 113
    .line 114
    .line 115
    move-result-object v7

    .line 116
    const/4 v5, 0x0

    .line 117
    const/4 v6, 0x0

    .line 118
    const/4 v8, 0x0

    .line 119
    move-object v3, v2

    .line 120
    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    const-string v4, "android.content.pm.extra.STATUS"

    .line 128
    .line 129
    invoke-virtual {v3, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_1

    .line 134
    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v3, "Couldn\'t uninstall package: "

    .line 141
    .line 142
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .line 156
    .line 157
    move p1, v9

    .line 158
    goto :goto_1

    .line 159
    :cond_2
    if-eqz p1, :cond_3

    .line 160
    .line 161
    return v1

    .line 162
    :cond_3
    const-string p0, "Success"

    .line 163
    .line 164
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    return v9

    .line 168
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v2, "Failure ["

    .line 171
    .line 172
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v2, " - "

    .line 187
    .line 188
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string p0, "]"

    .line 199
    .line 200
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    return v1
.end method
