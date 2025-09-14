.class public final enum Lcom/android/server/credentials/metrics/ApiName;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/credentials/metrics/ApiName;

.field public static final enum GET_CREDENTIAL:Lcom/android/server/credentials/metrics/ApiName;

.field public static final enum GET_CREDENTIAL_PROVIDER_SERVICES:Lcom/android/server/credentials/metrics/ApiName;

.field public static final enum GET_CREDENTIAL_VIA_REGISTRY:Lcom/android/server/credentials/metrics/ApiName;

.field public static final enum IS_ENABLED_CREDENTIAL_PROVIDER_SERVICE:Lcom/android/server/credentials/metrics/ApiName;

.field public static final enum SET_ENABLED_PROVIDERS:Lcom/android/server/credentials/metrics/ApiName;

.field public static final enum UNKNOWN:Lcom/android/server/credentials/metrics/ApiName;

.field public static final sRequestInfoToMetric:Ljava/util/Map;


# instance fields
.field private final mInnerMetricCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v0, Lcom/android/server/credentials/metrics/ApiName;

    .line 3
    const-string v1, "UNKNOWN"

    .line 5
    const/4 v10, 0x0

    .line 6
    invoke-direct {v0, v10, v10, v1}, Lcom/android/server/credentials/metrics/ApiName;-><init>(IILjava/lang/String;)V

    .line 9
    sput-object v0, Lcom/android/server/credentials/metrics/ApiName;->UNKNOWN:Lcom/android/server/credentials/metrics/ApiName;

    .line 11
    new-instance v11, Lcom/android/server/credentials/metrics/ApiName;

    .line 13
    const-string v1, "GET_CREDENTIAL"

    .line 15
    const/4 v12, 0x1

    .line 16
    invoke-direct {v11, v12, v12, v1}, Lcom/android/server/credentials/metrics/ApiName;-><init>(IILjava/lang/String;)V

    .line 19
    sput-object v11, Lcom/android/server/credentials/metrics/ApiName;->GET_CREDENTIAL:Lcom/android/server/credentials/metrics/ApiName;

    .line 21
    new-instance v13, Lcom/android/server/credentials/metrics/ApiName;

    .line 23
    const-string v1, "GET_CREDENTIAL_VIA_REGISTRY"

    .line 25
    const/4 v14, 0x2

    .line 26
    const/16 v2, 0x9

    .line 28
    invoke-direct {v13, v14, v2, v1}, Lcom/android/server/credentials/metrics/ApiName;-><init>(IILjava/lang/String;)V

    .line 31
    sput-object v13, Lcom/android/server/credentials/metrics/ApiName;->GET_CREDENTIAL_VIA_REGISTRY:Lcom/android/server/credentials/metrics/ApiName;

    .line 33
    new-instance v15, Lcom/android/server/credentials/metrics/ApiName;

    .line 35
    const-string v1, "CREATE_CREDENTIAL"

    .line 37
    const/4 v9, 0x3

    .line 38
    invoke-direct {v15, v9, v14, v1}, Lcom/android/server/credentials/metrics/ApiName;-><init>(IILjava/lang/String;)V

    .line 41
    new-instance v8, Lcom/android/server/credentials/metrics/ApiName;

    .line 43
    const-string v1, "CLEAR_CREDENTIAL"

    .line 45
    const/4 v7, 0x4

    .line 46
    invoke-direct {v8, v7, v9, v1}, Lcom/android/server/credentials/metrics/ApiName;-><init>(IILjava/lang/String;)V

    .line 49
    new-instance v5, Lcom/android/server/credentials/metrics/ApiName;

    .line 51
    const-string v1, "IS_ENABLED_CREDENTIAL_PROVIDER_SERVICE"

    .line 53
    const/4 v3, 0x5

    .line 54
    invoke-direct {v5, v3, v7, v1}, Lcom/android/server/credentials/metrics/ApiName;-><init>(IILjava/lang/String;)V

    .line 57
    sput-object v5, Lcom/android/server/credentials/metrics/ApiName;->IS_ENABLED_CREDENTIAL_PROVIDER_SERVICE:Lcom/android/server/credentials/metrics/ApiName;

    .line 59
    new-instance v6, Lcom/android/server/credentials/metrics/ApiName;

    .line 61
    const-string v1, "SET_ENABLED_PROVIDERS"

    .line 63
    const/4 v4, 0x6

    .line 64
    invoke-direct {v6, v4, v3, v1}, Lcom/android/server/credentials/metrics/ApiName;-><init>(IILjava/lang/String;)V

    .line 67
    sput-object v6, Lcom/android/server/credentials/metrics/ApiName;->SET_ENABLED_PROVIDERS:Lcom/android/server/credentials/metrics/ApiName;

    .line 69
    new-instance v3, Lcom/android/server/credentials/metrics/ApiName;

    .line 71
    const-string v1, "GET_CREDENTIAL_PROVIDER_SERVICES"

    .line 73
    const/4 v7, 0x7

    .line 74
    invoke-direct {v3, v7, v4, v1}, Lcom/android/server/credentials/metrics/ApiName;-><init>(IILjava/lang/String;)V

    .line 77
    sput-object v3, Lcom/android/server/credentials/metrics/ApiName;->GET_CREDENTIAL_PROVIDER_SERVICES:Lcom/android/server/credentials/metrics/ApiName;

    .line 79
    new-instance v4, Lcom/android/server/credentials/metrics/ApiName;

    .line 81
    const-string v1, "REGISTER_CREDENTIAL_DESCRIPTION"

    .line 83
    const/16 v9, 0x8

    .line 85
    invoke-direct {v4, v9, v7, v1}, Lcom/android/server/credentials/metrics/ApiName;-><init>(IILjava/lang/String;)V

    .line 88
    new-instance v7, Lcom/android/server/credentials/metrics/ApiName;

    .line 90
    const-string v1, "UNREGISTER_CREDENTIAL_DESCRIPTION"

    .line 92
    invoke-direct {v7, v2, v9, v1}, Lcom/android/server/credentials/metrics/ApiName;-><init>(IILjava/lang/String;)V

    .line 95
    move-object v1, v11

    .line 96
    move-object v2, v13

    .line 97
    move-object v9, v3

    .line 98
    move-object v3, v15

    .line 99
    move-object/from16 v18, v4

    .line 101
    move-object v4, v8

    .line 102
    move-object/from16 v16, v7

    .line 104
    const/4 v14, 0x4

    .line 105
    move-object v7, v9

    .line 106
    move-object v9, v8

    .line 107
    move-object/from16 v8, v18

    .line 109
    move-object/from16 v19, v9

    .line 111
    const/16 v17, 0x3

    .line 113
    move-object/from16 v9, v16

    .line 115
    filled-new-array/range {v0 .. v9}, [Lcom/android/server/credentials/metrics/ApiName;

    .line 118
    move-result-object v0

    .line 119
    sput-object v0, Lcom/android/server/credentials/metrics/ApiName;->$VALUES:[Lcom/android/server/credentials/metrics/ApiName;

    .line 121
    new-array v0, v14, [Ljava/util/Map$Entry;

    .line 123
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    .line 125
    iget v2, v15, Lcom/android/server/credentials/metrics/ApiName;->mInnerMetricCode:I

    .line 127
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    move-result-object v2

    .line 131
    const-string v3, "android.credentials.selection.TYPE_CREATE"

    .line 133
    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 136
    aput-object v1, v0, v10

    .line 138
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    .line 140
    iget v2, v11, Lcom/android/server/credentials/metrics/ApiName;->mInnerMetricCode:I

    .line 142
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    move-result-object v2

    .line 146
    const-string v3, "android.credentials.selection.TYPE_GET"

    .line 148
    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    aput-object v1, v0, v12

    .line 153
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    .line 155
    iget v2, v13, Lcom/android/server/credentials/metrics/ApiName;->mInnerMetricCode:I

    .line 157
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    move-result-object v2

    .line 161
    const-string v3, "android.credentials.selection.TYPE_GET_VIA_REGISTRY"

    .line 163
    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 166
    const/4 v2, 0x2

    .line 167
    aput-object v1, v0, v2

    .line 169
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    .line 171
    move-object/from16 v2, v19

    .line 173
    iget v2, v2, Lcom/android/server/credentials/metrics/ApiName;->mInnerMetricCode:I

    .line 175
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    move-result-object v2

    .line 179
    const-string v3, "android.credentials.selection.TYPE_UNDEFINED"

    .line 181
    invoke-direct {v1, v3, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 184
    aput-object v1, v0, v17

    .line 186
    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    .line 189
    move-result-object v0

    .line 190
    sput-object v0, Lcom/android/server/credentials/metrics/ApiName;->sRequestInfoToMetric:Ljava/util/Map;

    .line 192
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput p2, p0, Lcom/android/server/credentials/metrics/ApiName;->mInnerMetricCode:I

    .line 6
    return-void
.end method

.method public static getMetricCodeFromRequestInfo(Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/credentials/metrics/ApiName;->sRequestInfoToMetric:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 9
    const-string p0, "ApiName"

    .line 11
    const-string v0, "Attempted to use an unsupported string key request info"

    .line 13
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    sget-object p0, Lcom/android/server/credentials/metrics/ApiName;->UNKNOWN:Lcom/android/server/credentials/metrics/ApiName;

    .line 18
    iget p0, p0, Lcom/android/server/credentials/metrics/ApiName;->mInnerMetricCode:I

    .line 20
    return p0

    .line 21
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Ljava/lang/Integer;

    .line 27
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/credentials/metrics/ApiName;
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/credentials/metrics/ApiName;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/credentials/metrics/ApiName;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/server/credentials/metrics/ApiName;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/credentials/metrics/ApiName;->$VALUES:[Lcom/android/server/credentials/metrics/ApiName;

    .line 3
    invoke-virtual {v0}, [Lcom/android/server/credentials/metrics/ApiName;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/server/credentials/metrics/ApiName;

    .line 9
    return-object v0
.end method


# virtual methods
.method public final getMetricCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/credentials/metrics/ApiName;->mInnerMetricCode:I

    .line 3
    return p0
.end method
