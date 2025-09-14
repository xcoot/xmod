.class public abstract Lcom/android/server/enterprise/utils/NetdHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CMD_DELIMITER:Ljava/lang/String;

.field public static final CMD_INVALID:I

.field public static final CMD_PATH:Ljava/lang/String;

.field public static final PARAM_DELIMITER:Ljava/lang/String;

.field public static final allowedCommands:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    const-string/jumbo v2, "ip rule"

    .line 10
    const/4 v3, 0x1

    .line 11
    const-string/jumbo v4, "ip -6 rule"

    .line 14
    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    const/4 v1, 0x2

    .line 18
    const-string/jumbo v2, "ip route"

    .line 21
    const/4 v3, 0x3

    .line 22
    const-string/jumbo v4, "ip -6 route"

    .line 25
    invoke-static {v1, v0, v2, v3, v4}, Lcom/android/server/devicepolicy/AbUpdateInstaller$$ExternalSyntheticOutline0;->m(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    .line 28
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/android/server/enterprise/utils/NetdHelper;->allowedCommands:Ljava/util/Map;

    .line 34
    const/4 v0, -0x1

    .line 35
    sput v0, Lcom/android/server/enterprise/utils/NetdHelper;->CMD_INVALID:I

    .line 37
    const-string v0, ";"

    .line 39
    sput-object v0, Lcom/android/server/enterprise/utils/NetdHelper;->CMD_DELIMITER:Ljava/lang/String;

    .line 41
    const-string v0, "\\s+"

    .line 43
    sput-object v0, Lcom/android/server/enterprise/utils/NetdHelper;->PARAM_DELIMITER:Ljava/lang/String;

    .line 45
    const-string v0, "/system/bin/"

    .line 47
    sput-object v0, Lcom/android/server/enterprise/utils/NetdHelper;->CMD_PATH:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static getCmdNumber(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .line 1
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    sget-object v0, Lcom/android/server/enterprise/utils/NetdHelper;->CMD_PATH:Ljava/lang/String;

    .line 11
    const-string v1, ""

    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    sget-object v0, Lcom/android/server/enterprise/utils/NetdHelper;->allowedCommands:Ljava/util/Map;

    .line 23
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object v0

    .line 31
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/util/Map$Entry;

    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/lang/String;

    .line 49
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 55
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Ljava/lang/Integer;

    .line 61
    return-object p0

    .line 62
    :cond_1
    sget p0, Lcom/android/server/enterprise/utils/NetdHelper;->CMD_INVALID:I

    .line 64
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method

.method public static getCmdParams(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p0}, Lcom/android/server/enterprise/utils/NetdHelper;->getCmdNumber(Ljava/lang/String;)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 18
    move-result v2

    .line 19
    sget v3, Lcom/android/server/enterprise/utils/NetdHelper;->CMD_INVALID:I

    .line 21
    if-ne v2, v3, :cond_1

    .line 23
    return-object v0

    .line 24
    :cond_1
    sget-object v0, Lcom/android/server/enterprise/utils/NetdHelper;->CMD_PATH:Ljava/lang/String;

    .line 26
    const-string v2, ""

    .line 28
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    sget-object v0, Lcom/android/server/enterprise/utils/NetdHelper;->allowedCommands:Ljava/util/Map;

    .line 34
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/CharSequence;

    .line 40
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    sget-object v0, Lcom/android/server/enterprise/utils/NetdHelper;->PARAM_DELIMITER:Ljava/lang/String;

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_2
    :goto_0
    return-object v0
.end method
