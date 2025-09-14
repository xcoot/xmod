.class public abstract Lcom/android/server/enterprise/storage/EdmStorageDefs;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final FIREWALL_POLICY_STATUS_COLUMNS:[Ljava/lang/String;

.field public static final FIREWALL_RULE_COLUMNS:[Ljava/lang/String;

.field public static final sAppPackageNameControlMasks:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageDefs$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/server/enterprise/storage/EdmStorageDefs$1;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/android/server/enterprise/storage/EdmStorageDefs;->sAppPackageNameControlMasks:Ljava/util/Map;

    .line 11
    .line 12
    const-string/jumbo v15, "targetPortNumber"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v16, "status"

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "id"

    .line 19
    .line 20
    .line 21
    const-string v2, "adminUid"

    .line 22
    .line 23
    const-string/jumbo v3, "ipAddress"

    .line 24
    .line 25
    .line 26
    const-string/jumbo v4, "portNumber"

    .line 27
    .line 28
    .line 29
    const-string/jumbo v5, "portLocation"

    .line 30
    .line 31
    .line 32
    const-string/jumbo v6, "packageName"

    .line 33
    .line 34
    .line 35
    const-string/jumbo v7, "signature"

    .line 36
    .line 37
    .line 38
    const-string/jumbo v8, "networkInterface"

    .line 39
    .line 40
    .line 41
    const-string/jumbo v9, "networkInterfaceStr"

    .line 42
    .line 43
    .line 44
    const-string/jumbo v10, "direction"

    .line 45
    .line 46
    .line 47
    const-string/jumbo v11, "protocol"

    .line 48
    .line 49
    .line 50
    const-string v12, "addressType"

    .line 51
    .line 52
    const-string/jumbo v13, "targetIpAddress"

    .line 53
    .line 54
    .line 55
    const-string/jumbo v14, "ruleType"

    .line 56
    .line 57
    .line 58
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_RULE_COLUMNS:[Ljava/lang/String;

    .line 63
    .line 64
    const-string v0, "adminUid"

    .line 65
    .line 66
    const-string/jumbo v1, "userID"

    .line 67
    .line 68
    .line 69
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_POLICY_STATUS_COLUMNS:[Ljava/lang/String;

    .line 74
    .line 75
    return-void
.end method
