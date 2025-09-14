.class public final Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final Companion:Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig$Companion;

.field public static final JSON_KEY_APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final JSON_KEY_FEATURES:Ljava/lang/String; = "features"


# instance fields
.field private final appVersion:Ljava/lang/String;

.field private final features:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->Companion:Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 1
    const-string v0, "appVersion"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/android/server/core/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "features"

    .line 7
    .line 8
    invoke-static {v0, p2}, Lcom/android/server/core/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->appVersion:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->features:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->appVersion:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->features:Ljava/util/Map;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->copy(Ljava/lang/String;Ljava/util/Map;)Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->appVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final component2()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->features:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/Map;)Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;
    .locals 0

    .line 1
    const-string p0, "appVersion"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/android/server/core/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "features"

    .line 7
    .line 8
    invoke-static {p0, p2}, Lcom/android/server/core/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;

    .line 12
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->appVersion:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->appVersion:Ljava/lang/String;

    .line 16
    .line 17
    if-nez v1, :cond_3

    .line 18
    .line 19
    if-nez v3, :cond_2

    .line 20
    .line 21
    move v1, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    move v1, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :goto_0
    if-nez v1, :cond_4

    .line 30
    .line 31
    return v2

    .line 32
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->features:Ljava/util/Map;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->features:Ljava/util/Map;

    .line 35
    .line 36
    if-nez p0, :cond_6

    .line 37
    .line 38
    if-nez p1, :cond_5

    .line 39
    .line 40
    move p0, v0

    .line 41
    goto :goto_1

    .line 42
    :cond_5
    move p0, v2

    .line 43
    goto :goto_1

    .line 44
    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    :goto_1
    if-nez p0, :cond_7

    .line 49
    .line 50
    return v2

    .line 51
    :cond_7
    return v0
.end method

.method public final getAppVersion()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->appVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getFeatures()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->features:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->appVersion:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->features:Ljava/util/Map;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    add-int/2addr p0, v0

    .line 16
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "FeatureConfig(appVersion="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->appVersion:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", features="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/android/scs/ai/sdkcommon/feature/FeatureConfig;->features:Ljava/util/Map;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 p0, 0x29

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
