.class public final Lcom/android/server/smartclip/SpenGarageSpecManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/android/server/smartclip/SpenGarageSpecManager;


# instance fields
.field public final mIsBundledSpenSupported:Z

.field public final mSupportedExternalSpenFeatures:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mIsBundledSpenSupported:Z

    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, p0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mSupportedExternalSpenFeatures:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_SPEN_GARAGE_SPEC"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const-string v4, "SpenGarageSpecManager"

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    const-string p0, "Spen Garage Spec is empty"

    .line 34
    .line 35
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    goto/16 :goto_3

    .line 39
    .line 40
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mIsBundledSpenSupported:Z

    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, " "

    .line 47
    .line 48
    const-string v5, ""

    .line 49
    .line 50
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const-string v3, ","

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    array-length v5, v3

    .line 61
    move v6, v1

    .line 62
    :goto_0
    if-ge v6, v5, :cond_6

    .line 63
    .line 64
    aget-object v7, v3, v6

    .line 65
    .line 66
    const-string v8, "="

    .line 67
    .line 68
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    array-length v8, v7

    .line 73
    const/4 v9, 0x2

    .line 74
    if-eq v8, v9, :cond_1

    .line 75
    .line 76
    const-string v7, "Incorrect Spec, strSpec : "

    .line 77
    .line 78
    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_1
    aget-object v8, v7, v1

    .line 87
    .line 88
    aget-object v7, v7, v0

    .line 89
    .line 90
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    const-string/jumbo v9, "unbundled_spec"

    .line 94
    .line 95
    .line 96
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v9

    .line 100
    if-nez v9, :cond_3

    .line 101
    .line 102
    const-string v9, "bundled"

    .line 103
    .line 104
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v8

    .line 108
    if-nez v8, :cond_2

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    iput-boolean v8, p0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mIsBundledSpenSupported:Z

    .line 120
    .line 121
    const-string v8, "bundle = "

    .line 122
    .line 123
    invoke-static {v8, v7, v4}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_3
    const-string v8, "\\|"

    .line 128
    .line 129
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    const-string/jumbo v9, "unbundled_spec = "

    .line 134
    .line 135
    .line 136
    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    array-length v7, v8

    .line 144
    move v9, v1

    .line 145
    :goto_1
    if-ge v9, v7, :cond_5

    .line 146
    .line 147
    aget-object v10, v8, v9

    .line 148
    .line 149
    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v10

    .line 153
    invoke-static {v10}, Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;->valueOf(Ljava/lang/String;)Lcom/android/server/smartclip/SpenGarageSpecManager$SupportedExternalSpenFeature;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    if-eqz v10, :cond_4

    .line 158
    .line 159
    iget-object v11, p0, Lcom/android/server/smartclip/SpenGarageSpecManager;->mSupportedExternalSpenFeatures:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    :cond_4
    add-int/2addr v9, v0

    .line 165
    goto :goto_1

    .line 166
    :cond_5
    :goto_2
    add-int/2addr v6, v0

    .line 167
    goto :goto_0

    .line 168
    :cond_6
    :goto_3
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/smartclip/SpenGarageSpecManager;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/smartclip/SpenGarageSpecManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/smartclip/SpenGarageSpecManager;->sInstance:Lcom/android/server/smartclip/SpenGarageSpecManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/android/server/smartclip/SpenGarageSpecManager;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/android/server/smartclip/SpenGarageSpecManager;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/android/server/smartclip/SpenGarageSpecManager;->sInstance:Lcom/android/server/smartclip/SpenGarageSpecManager;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/smartclip/SpenGarageSpecManager;->sInstance:Lcom/android/server/smartclip/SpenGarageSpecManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw v1
.end method
