.class final Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ALLOWED_REASONS:[I

.field public static final BLOCKED_REASONS:[I


# instance fields
.field public allowedReasons:I

.field public blockedReasons:I

.field public effectiveBlockedReasons:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0xb

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->BLOCKED_REASONS:[I

    .line 9
    .line 10
    new-array v0, v0, [I

    .line 11
    .line 12
    fill-array-data v0, :array_1

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->ALLOWED_REASONS:[I

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x20
        0x40
        0x10000
        0x20000
        0x40000
        0x100
        0x200
    .end array-data

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    :array_1
    .array-data 4
        0x1
        0x2
        0x20
        0x4
        0x8
        0x10
        0x40
        0x80
        0x10000
        0x20000
        0x40000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 8
    .line 9
    iput v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 10
    .line 11
    return-void
.end method

.method public static allowedReasonToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_b

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_a

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_9

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    if-eq p0, v0, :cond_8

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    if-eq p0, v0, :cond_7

    .line 15
    .line 16
    const/16 v0, 0x10

    .line 17
    .line 18
    if-eq p0, v0, :cond_6

    .line 19
    .line 20
    const/16 v0, 0x20

    .line 21
    .line 22
    if-eq p0, v0, :cond_5

    .line 23
    .line 24
    const/16 v0, 0x40

    .line 25
    .line 26
    if-eq p0, v0, :cond_4

    .line 27
    .line 28
    const/16 v0, 0x80

    .line 29
    .line 30
    if-eq p0, v0, :cond_3

    .line 31
    .line 32
    const/high16 v0, 0x10000

    .line 33
    .line 34
    if-eq p0, v0, :cond_2

    .line 35
    .line 36
    const/high16 v0, 0x20000

    .line 37
    .line 38
    if-eq p0, v0, :cond_1

    .line 39
    .line 40
    const/high16 v0, 0x40000

    .line 41
    .line 42
    if-eq p0, v0, :cond_0

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v1, "Unknown allowedReason: "

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "NetworkPolicy"

    .line 59
    .line 60
    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :cond_0
    const-string p0, "METERED_FOREGROUND"

    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_1
    const-string p0, "METERED_SYSTEM"

    .line 72
    .line 73
    return-object p0

    .line 74
    :cond_2
    const-string p0, "METERED_USER_EXEMPTED"

    .line 75
    .line 76
    return-object p0

    .line 77
    :cond_3
    const-string p0, "NOT_IN_BACKGROUND"

    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_4
    const-string p0, "LOW_POWER_STANDBY_ALLOWLIST"

    .line 81
    .line 82
    return-object p0

    .line 83
    :cond_5
    const-string p0, "TOP"

    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_6
    const-string p0, "RESTRICTED_MODE_PERMISSIONS"

    .line 87
    .line 88
    return-object p0

    .line 89
    :cond_7
    const-string p0, "POWER_SAVE_EXCEPT_IDLE_ALLOWLIST"

    .line 90
    .line 91
    return-object p0

    .line 92
    :cond_8
    const-string p0, "POWER_SAVE_ALLOWLIST"

    .line 93
    .line 94
    return-object p0

    .line 95
    :cond_9
    const-string p0, "FOREGROUND"

    .line 96
    .line 97
    return-object p0

    .line 98
    :cond_a
    const-string p0, "SYSTEM"

    .line 99
    .line 100
    return-object p0

    .line 101
    :cond_b
    const-string p0, "NONE"

    .line 102
    .line 103
    return-object p0
.end method

.method public static blockedReasonToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_b

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_a

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_9

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    if-eq p0, v0, :cond_8

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    if-eq p0, v0, :cond_7

    .line 15
    .line 16
    const/16 v0, 0x20

    .line 17
    .line 18
    if-eq p0, v0, :cond_6

    .line 19
    .line 20
    const/16 v0, 0x40

    .line 21
    .line 22
    if-eq p0, v0, :cond_5

    .line 23
    .line 24
    const/16 v0, 0x100

    .line 25
    .line 26
    if-eq p0, v0, :cond_4

    .line 27
    .line 28
    const/16 v0, 0x200

    .line 29
    .line 30
    if-eq p0, v0, :cond_3

    .line 31
    .line 32
    const/high16 v0, 0x10000

    .line 33
    .line 34
    if-eq p0, v0, :cond_2

    .line 35
    .line 36
    const/high16 v0, 0x20000

    .line 37
    .line 38
    if-eq p0, v0, :cond_1

    .line 39
    .line 40
    const/high16 v0, 0x40000

    .line 41
    .line 42
    if-eq p0, v0, :cond_0

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v1, "Unknown blockedReason: "

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "NetworkPolicy"

    .line 59
    .line 60
    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :cond_0
    const-string p0, "METERED_ADMIN_DISABLED"

    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_1
    const-string p0, "METERED_USER_RESTRICTED"

    .line 72
    .line 73
    return-object p0

    .line 74
    :cond_2
    const-string p0, "DATA_SAVER"

    .line 75
    .line 76
    return-object p0

    .line 77
    :cond_3
    const-string p0, "FIREWALL_DATA"

    .line 78
    .line 79
    return-object p0

    .line 80
    :cond_4
    const-string p0, "FIREWALL_WIFI"

    .line 81
    .line 82
    return-object p0

    .line 83
    :cond_5
    const-string p0, "APP_BACKGROUND"

    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_6
    const-string p0, "LOW_POWER_STANDBY"

    .line 87
    .line 88
    return-object p0

    .line 89
    :cond_7
    const-string p0, "RESTRICTED_MODE"

    .line 90
    .line 91
    return-object p0

    .line 92
    :cond_8
    const-string p0, "APP_STANDBY"

    .line 93
    .line 94
    return-object p0

    .line 95
    :cond_9
    const-string p0, "DOZE"

    .line 96
    .line 97
    return-object p0

    .line 98
    :cond_a
    const-string p0, "BATTERY_SAVER"

    .line 99
    .line 100
    return-object p0

    .line 101
    :cond_b
    const-string p0, "NONE"

    .line 102
    .line 103
    return-object p0
.end method

.method public static blockedReasonsToString(I)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonToString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    sget-object v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->BLOCKED_REASONS:[I

    .line 15
    .line 16
    :goto_0
    const-string/jumbo v3, "|"

    .line 17
    .line 18
    .line 19
    const-string v4, ""

    .line 20
    .line 21
    const/16 v5, 0xb

    .line 22
    .line 23
    if-ge v0, v5, :cond_3

    .line 24
    .line 25
    aget v5, v2, v0

    .line 26
    .line 27
    and-int v6, p0, v5

    .line 28
    .line 29
    if-eqz v6, :cond_2

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-nez v6, :cond_1

    .line 36
    .line 37
    move-object v3, v4

    .line 38
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonToString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    not-int v3, v5

    .line 49
    and-int/2addr p0, v3

    .line 50
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    if-eqz p0, :cond_5

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    move-object v3, v4

    .line 62
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v2, "Unknown blockedReasons: "

    .line 75
    .line 76
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    const-string v0, "NetworkPolicy"

    .line 87
    .line 88
    invoke-static {v0, p0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    return-object p0
.end method

.method public static getEffectiveBlockedReasons(II)I
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return p0

    .line 4
    :cond_0
    and-int/lit8 v0, p1, 0x1

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const/high16 v0, -0x10000

    .line 9
    .line 10
    and-int/2addr p0, v0

    .line 11
    :cond_1
    const/high16 v0, 0x20000

    .line 12
    .line 13
    and-int/2addr v0, p1

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    const v0, 0xffff

    .line 17
    .line 18
    .line 19
    and-int/2addr p0, v0

    .line 20
    :cond_2
    and-int/lit8 v0, p1, 0x2

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    and-int/lit8 p0, p0, -0x8

    .line 25
    .line 26
    :cond_3
    const/high16 v0, 0x40000

    .line 27
    .line 28
    and-int/2addr v0, p1

    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    const v0, -0x30001

    .line 32
    .line 33
    .line 34
    and-int/2addr p0, v0

    .line 35
    :cond_4
    and-int/lit8 v0, p1, 0x20

    .line 36
    .line 37
    if-eqz v0, :cond_5

    .line 38
    .line 39
    and-int/lit8 p0, p0, -0x21

    .line 40
    .line 41
    :cond_5
    and-int/lit8 v0, p1, 0x4

    .line 42
    .line 43
    if-eqz v0, :cond_6

    .line 44
    .line 45
    and-int/lit8 p0, p0, -0x48

    .line 46
    .line 47
    :cond_6
    and-int/lit8 v0, p1, 0x8

    .line 48
    .line 49
    if-eqz v0, :cond_7

    .line 50
    .line 51
    and-int/lit8 p0, p0, -0x46

    .line 52
    .line 53
    :cond_7
    and-int/lit8 v0, p1, 0x10

    .line 54
    .line 55
    if-eqz v0, :cond_8

    .line 56
    .line 57
    and-int/lit8 p0, p0, -0x9

    .line 58
    .line 59
    :cond_8
    const/high16 v0, 0x10000

    .line 60
    .line 61
    and-int/2addr v0, p1

    .line 62
    if-eqz v0, :cond_9

    .line 63
    .line 64
    const v0, -0x10001

    .line 65
    .line 66
    .line 67
    and-int/2addr p0, v0

    .line 68
    :cond_9
    and-int/lit8 v0, p1, 0x40

    .line 69
    .line 70
    if-eqz v0, :cond_a

    .line 71
    .line 72
    and-int/lit8 p0, p0, -0x21

    .line 73
    .line 74
    :cond_a
    and-int/lit16 p1, p1, 0x80

    .line 75
    .line 76
    if-eqz p1, :cond_b

    .line 77
    .line 78
    and-int/lit8 p0, p0, -0x41

    .line 79
    .line 80
    :cond_b
    return p0
.end method

.method public static toString(III)Ljava/lang/String;
    .locals 7

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{blocked="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonsToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",allowed="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    if-nez p1, :cond_0

    .line 4
    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasonToString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v2, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->ALLOWED_REASONS:[I

    :goto_0
    const/16 v3, 0xb

    const-string/jumbo v4, "|"

    const-string v5, ""

    if-ge p0, v3, :cond_3

    aget v3, v2, p0

    and-int v6, p1, v3

    if-eqz v6, :cond_2

    .line 7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_1

    move-object v4, v5

    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasonToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v3

    and-int/2addr p1, v3

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_5

    .line 9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_4

    move-object v4, v5

    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown allowedReasons: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 13
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",effective="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasonsToString(I)Ljava/lang/String;

    move-result-object p0

    .line 15
    const-string/jumbo p1, "}"

    .line 16
    invoke-static {v0, p0, p1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final deriveUidRules()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x8

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/16 v1, 0x400

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    and-int/lit8 v2, v0, 0x67

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    or-int/lit8 v1, v1, 0x40

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 19
    .line 20
    and-int/lit8 v2, v2, 0x67

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    or-int/lit8 v1, v1, 0x20

    .line 25
    .line 26
    :cond_2
    :goto_1
    and-int/lit16 v2, v0, 0x100

    .line 27
    .line 28
    if-eqz v2, :cond_3

    .line 29
    .line 30
    or-int/lit8 v1, v1, 0x40

    .line 31
    .line 32
    :cond_3
    and-int/lit16 v2, v0, 0x200

    .line 33
    .line 34
    if-eqz v2, :cond_4

    .line 35
    .line 36
    or-int/lit8 v1, v1, 0x40

    .line 37
    .line 38
    :cond_4
    const/high16 v2, 0x60000

    .line 39
    .line 40
    and-int/2addr v0, v2

    .line 41
    if-eqz v0, :cond_5

    .line 42
    .line 43
    or-int/lit8 v1, v1, 0x4

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_5
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 47
    .line 48
    const/high16 v2, 0x20000

    .line 49
    .line 50
    and-int/2addr v2, v0

    .line 51
    const/high16 v3, 0x40000

    .line 52
    .line 53
    if-eqz v2, :cond_6

    .line 54
    .line 55
    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 56
    .line 57
    and-int/2addr v2, v3

    .line 58
    if-eqz v2, :cond_6

    .line 59
    .line 60
    :goto_2
    or-int/lit8 v1, v1, 0x2

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_6
    const/high16 v2, 0x10000

    .line 64
    .line 65
    and-int/2addr v0, v2

    .line 66
    if-eqz v0, :cond_8

    .line 67
    .line 68
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 69
    .line 70
    and-int/2addr v2, v0

    .line 71
    if-eqz v2, :cond_7

    .line 72
    .line 73
    or-int/lit8 v1, v1, 0x20

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_7
    and-int/2addr v0, v3

    .line 77
    if-eqz v0, :cond_8

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_8
    :goto_3
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 81
    .line 82
    if-eqz v0, :cond_9

    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string/jumbo v2, "uidBlockedState="

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p0, " -> uidRule="

    .line 96
    .line 97
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    const-string v0, "NetworkPolicy"

    .line 112
    .line 113
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    :cond_9
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    iget v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    iget p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    invoke-static {v0, v1, p0}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->toString(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateEffectiveBlockedReasons()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 2
    .line 3
    const-string v1, "NetworkPolicy"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    const-string/jumbo v2, "updateEffectiveBlockedReasons(): no blocked reasons"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    :cond_0
    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 18
    .line 19
    iget v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->allowedReasons:I

    .line 20
    .line 21
    invoke-static {v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->getEffectiveBlockedReasons(II)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iput v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string/jumbo v2, "updateEffectiveBlockedReasons(): blockedReasons="

    .line 32
    .line 33
    .line 34
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->blockedReasons:I

    .line 38
    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, ", effectiveReasons="

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->effectiveBlockedReasons:I

    .line 52
    .line 53
    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void
.end method
