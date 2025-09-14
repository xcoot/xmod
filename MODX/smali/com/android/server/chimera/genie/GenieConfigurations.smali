.class public final Lcom/android/server/chimera/genie/GenieConfigurations;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final GENAI_UNLOAD_MEMORY_PSI_LEVEL:I

.field public static final GENAI_UNLOAD_MODEL_TIMEOUT:I

.field public static final GENAI_UNLOAD_OOMADJ_THRESHOLD:I

.field public static final GENAI_UNLOAD_THRESHOLD:I

.field public static final MODEL_COUNT:I

.field public static final sAIVersion:I

.field public static final sAIVersionGoogleModelSize:Ljava/util/Map;

.field public static final sAIVersionSepModelSize:Ljava/util/Map;

.field public static final sAllowedBroadcastActions:Ljava/util/List;

.field public static final sAllowedPackages:Ljava/util/List;

.field public static final sGenAIPackageMap:Ljava/util/Map;

.field public static sIsChinaDevice:Z


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1
    const-string/jumbo v0, "ro.slmk.genie.model_count"

    .line 4
    const-string v1, "1"

    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 13
    move-result v0

    .line 14
    sput v0, Lcom/android/server/chimera/genie/GenieConfigurations;->MODEL_COUNT:I

    .line 16
    const-string/jumbo v0, "ro.slmk.genie.unload.threshold"

    .line 19
    const-string v2, "2097152"

    .line 21
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    move-result v0

    .line 29
    sput v0, Lcom/android/server/chimera/genie/GenieConfigurations;->GENAI_UNLOAD_THRESHOLD:I

    .line 31
    const-string/jumbo v0, "ro.slmk.genie.oomadj.threshold"

    .line 34
    const-string v2, "850"

    .line 36
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 43
    move-result v0

    .line 44
    sput v0, Lcom/android/server/chimera/genie/GenieConfigurations;->GENAI_UNLOAD_OOMADJ_THRESHOLD:I

    .line 46
    const-string/jumbo v0, "ro.slmk.genie.oomadj.psilevel"

    .line 49
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    move-result v0

    .line 57
    sput v0, Lcom/android/server/chimera/genie/GenieConfigurations;->GENAI_UNLOAD_MEMORY_PSI_LEVEL:I

    .line 59
    const-string/jumbo v0, "ro.slmk.genie.unload.timeout"

    .line 62
    const-string v1, "7200"

    .line 64
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 71
    move-result v0

    .line 72
    mul-int/lit16 v0, v0, 0x3e8

    .line 74
    sput v0, Lcom/android/server/chimera/genie/GenieConfigurations;->GENAI_UNLOAD_MODEL_TIMEOUT:I

    .line 76
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 79
    move-result-object v0

    .line 80
    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_AI_VERSION"

    .line 82
    const/4 v2, -0x1

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 86
    move-result v0

    .line 87
    sput v0, Lcom/android/server/chimera/genie/GenieConfigurations;->sAIVersion:I

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    .line 91
    const-string/jumbo v20, "com.samsung.android.accessibility.talkback"

    .line 94
    const-string/jumbo v21, "com.samsung.android.scs"

    .line 97
    const-string/jumbo v1, "com.sec.android.app.camera"

    .line 100
    const-string/jumbo v2, "com.samsung.android.honeyboard"

    .line 103
    const-string/jumbo v3, "com.samsung.android.offline.languagemodel.test_client"

    .line 106
    const-string/jumbo v4, "com.samsung.android.offline.languagemodel"

    .line 109
    const-string/jumbo v5, "com.samsung.android.wallpaper.magician"

    .line 112
    const-string/jumbo v6, "com.samsung.android.wallpaper.live"

    .line 115
    const-string/jumbo v7, "com.sec.android.mimage.photoretouching"

    .line 118
    const-string/jumbo v8, "com.sec.android.gallery3d"

    .line 121
    const-string/jumbo v9, "com.samsung.android.app.notes"

    .line 124
    const-string/jumbo v10, "com.sec.android.app.voicenote"

    .line 127
    const-string/jumbo v11, "com.sec.android.app.shealth"

    .line 130
    const-string/jumbo v12, "com.samsung.android.app.moments"

    .line 133
    const-string/jumbo v13, "com.samsung.android.oneconnect"

    .line 136
    const-string/jumbo v14, "com.sec.android.app.sbrowser"

    .line 139
    const-string/jumbo v15, "com.samsung.android.dialer"

    .line 142
    const-string/jumbo v16, "com.samsung.android.smartsuggestions"

    .line 145
    const-string/jumbo v17, "com.samsung.android.smartsuggestions:moneta"

    .line 148
    const-string/jumbo v18, "com.android.systemui"

    .line 151
    const-string/jumbo v19, "com.google.android.apps.messaging"

    .line 154
    filled-new-array/range {v1 .. v21}, [Ljava/lang/String;

    .line 157
    move-result-object v1

    .line 158
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 161
    move-result-object v1

    .line 162
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 165
    sput-object v0, Lcom/android/server/chimera/genie/GenieConfigurations;->sAllowedPackages:Ljava/util/List;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    .line 169
    const-string/jumbo v1, "com.samsung.GEN_AI_RECLAIM"

    .line 172
    const-string v2, "AICORE_BROADCAST_ACTION_MODEL_LOADING"

    .line 174
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 177
    move-result-object v1

    .line 178
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 181
    move-result-object v1

    .line 182
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 185
    sput-object v0, Lcom/android/server/chimera/genie/GenieConfigurations;->sAllowedBroadcastActions:Ljava/util/List;

    .line 187
    new-instance v0, Lcom/android/server/chimera/genie/GenieConfigurations$1;

    .line 189
    invoke-direct {v0}, Lcom/android/server/chimera/genie/GenieConfigurations$1;-><init>()V

    .line 192
    sput-object v0, Lcom/android/server/chimera/genie/GenieConfigurations;->sAIVersionSepModelSize:Ljava/util/Map;

    .line 194
    new-instance v0, Lcom/android/server/chimera/genie/GenieConfigurations$2;

    .line 196
    invoke-direct {v0}, Lcom/android/server/chimera/genie/GenieConfigurations$2;-><init>()V

    .line 199
    sput-object v0, Lcom/android/server/chimera/genie/GenieConfigurations;->sAIVersionGoogleModelSize:Ljava/util/Map;

    .line 201
    new-instance v0, Lcom/android/server/chimera/genie/GenieConfigurations$3;

    .line 203
    invoke-direct {v0}, Lcom/android/server/chimera/genie/GenieConfigurations$3;-><init>()V

    .line 206
    sput-object v0, Lcom/android/server/chimera/genie/GenieConfigurations;->sGenAIPackageMap:Ljava/util/Map;

    .line 208
    const/4 v0, 0x0

    .line 209
    sput-boolean v0, Lcom/android/server/chimera/genie/GenieConfigurations;->sIsChinaDevice:Z

    .line 211
    return-void
.end method
