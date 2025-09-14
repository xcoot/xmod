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

    .line 3
    invoke-direct {v0}, Lcom/android/server/enterprise/storage/EdmStorageDefs$1;-><init>()V

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/android/server/enterprise/storage/EdmStorageDefs;->sAppPackageNameControlMasks:Ljava/util/Map;

    .line 12
    const-string/jumbo v15, "targetPortNumber"

    .line 15
    const-string/jumbo v16, "status"

    .line 18
    const-string/jumbo v1, "id"

    .line 21
    const-string v2, "adminUid"

    .line 23
    const-string/jumbo v3, "ipAddress"

    .line 26
    const-string/jumbo v4, "portNumber"

    .line 29
    const-string/jumbo v5, "portLocation"

    .line 32
    const-string/jumbo v6, "packageName"

    .line 35
    const-string/jumbo v7, "signature"

    .line 38
    const-string/jumbo v8, "networkInterface"

    .line 41
    const-string/jumbo v9, "networkInterfaceStr"

    .line 44
    const-string/jumbo v10, "direction"

    .line 47
    const-string/jumbo v11, "protocol"

    .line 50
    const-string v12, "addressType"

    .line 52
    const-string/jumbo v13, "targetIpAddress"

    .line 55
    const-string/jumbo v14, "ruleType"

    .line 58
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_RULE_COLUMNS:[Ljava/lang/String;

    .line 64
    const-string v0, "adminUid"

    .line 66
    const-string/jumbo v1, "userID"

    .line 69
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_POLICY_STATUS_COLUMNS:[Ljava/lang/String;

    .line 75
    return-void
.end method
