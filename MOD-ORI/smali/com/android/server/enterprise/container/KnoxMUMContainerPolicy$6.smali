.class public abstract synthetic Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $SwitchMap$com$samsung$android$knox$SemPersonaState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaState;->values()[Lcom/samsung/android/knox/SemPersonaState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    sput-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$6;->$SwitchMap$com$samsung$android$knox$SemPersonaState:[I

    .line 9
    .line 10
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$6;->$SwitchMap$com$samsung$android$knox$SemPersonaState:[I

    .line 20
    .line 21
    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x2

    .line 28
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 29
    .line 30
    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$6;->$SwitchMap$com$samsung$android$knox$SemPersonaState:[I

    .line 31
    .line 32
    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x3

    .line 39
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 40
    .line 41
    :catch_2
    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$6;->$SwitchMap$com$samsung$android$knox$SemPersonaState:[I

    .line 42
    .line 43
    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const/4 v2, 0x4

    .line 50
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 51
    .line 52
    :catch_3
    :try_start_4
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$6;->$SwitchMap$com$samsung$android$knox$SemPersonaState:[I

    .line 53
    .line 54
    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const/4 v2, 0x5

    .line 61
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 62
    .line 63
    :catch_4
    :try_start_5
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$6;->$SwitchMap$com$samsung$android$knox$SemPersonaState:[I

    .line 64
    .line 65
    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    const/4 v2, 0x6

    .line 72
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 73
    .line 74
    :catch_5
    :try_start_6
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$6;->$SwitchMap$com$samsung$android$knox$SemPersonaState:[I

    .line 75
    .line 76
    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    const/4 v2, 0x7

    .line 83
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 84
    .line 85
    :catch_6
    :try_start_7
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$6;->$SwitchMap$com$samsung$android$knox$SemPersonaState:[I

    .line 86
    .line 87
    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->CREATING:Lcom/samsung/android/knox/SemPersonaState;

    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    const/16 v2, 0x8

    .line 94
    .line 95
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 96
    .line 97
    :catch_7
    :try_start_8
    sget-object v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$6;->$SwitchMap$com$samsung$android$knox$SemPersonaState:[I

    .line 98
    .line 99
    sget-object v1, Lcom/samsung/android/knox/SemPersonaState;->DELETING:Lcom/samsung/android/knox/SemPersonaState;

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    const/16 v2, 0x9

    .line 106
    .line 107
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 108
    .line 109
    :catch_8
    return-void
.end method
